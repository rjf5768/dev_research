#!/bin/bash
# Compare Original vs Optimized XRay Results
# Generates side-by-side comparison report

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

show_help() {
    echo "Usage: $0 <test_basename>"
    echo ""
    echo "This script compares XRay results from:"
    echo "  - results/stats/original/<test_basename>_*"
    echo "  - results/stats/optimized/<test_basename>_*"
    echo ""
    echo "Examples:"
    echo "  $0 7zCrc_opt"
    echo "  $0 test_program"
    echo ""
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

BASENAME="$1"

ORIG_DIR="results/stats/original"
OPT_DIR="results/stats/optimized"

ORIG_ACCOUNT="$ORIG_DIR/${BASENAME}_account.txt"
OPT_ACCOUNT="$OPT_DIR/${BASENAME}_account.txt"

ORIG_LOGS="results/logs/original/${BASENAME}"
OPT_LOGS="results/logs/optimized/${BASENAME}"

echo "=========================================="
echo "XRay Comparison Report"
echo "=========================================="
echo "Test: $BASENAME"
echo ""

# Check if both analyses exist
MISSING=false

if [ ! -f "$ORIG_ACCOUNT" ]; then
    echo -e "${RED}✗${NC} Missing: $ORIG_ACCOUNT"
    MISSING=true
else
    echo -e "${GREEN}✓${NC} Found: $ORIG_ACCOUNT"
fi

if [ ! -f "$OPT_ACCOUNT" ]; then
    echo -e "${RED}✗${NC} Missing: $OPT_ACCOUNT"
    MISSING=true
else
    echo -e "${GREEN}✓${NC} Found: $OPT_ACCOUNT"
fi

if [ "$MISSING" = true ]; then
    echo ""
    echo "Please run analysis on both versions first:"
    echo "  ./04_analyze_results.sh work/original/$BASENAME"
    echo "  ./04_analyze_results.sh work/optimized/$BASENAME"
    exit 1
fi

echo ""

# Create comparison report
REPORT_FILE="results/comparison_${BASENAME}.txt"

cat > "$REPORT_FILE" <<EOF
╔═══════════════════════════════════════════════════════════════════════════╗
║                    XRay Performance Comparison                            ║
║                         $BASENAME                                         
╚═══════════════════════════════════════════════════════════════════════════╝

Generated: $(date)

EOF

# Compare timing data
echo -e "${BLUE}[1/3]${NC} Comparing wall-clock timing..."

if [ -f "$ORIG_LOGS/timing_summary.txt" ] && [ -f "$OPT_LOGS/timing_summary.txt" ]; then
    ORIG_MEDIAN=$(grep "^Median:" "$ORIG_LOGS/timing_summary.txt" | awk '{print $2}')
    OPT_MEDIAN=$(grep "^Median:" "$OPT_LOGS/timing_summary.txt" | awk '{print $2}')
    
    ORIG_MEAN=$(grep "^Mean:" "$ORIG_LOGS/timing_summary.txt" | awk '{print $2}')
    OPT_MEAN=$(grep "^Mean:" "$OPT_LOGS/timing_summary.txt" | awk '{print $2}')
    
    cat >> "$REPORT_FILE" <<EOF
═══════════════════════════════════════════════════════════════════════════
1. WALL-CLOCK TIMING (seconds)
═══════════════════════════════════════════════════════════════════════════

Metric              │ Original    │ Optimized   │ Improvement
────────────────────┼─────────────┼─────────────┼──────────────
EOF
    
    # Calculate improvement
    if command -v bc &> /dev/null && [ -n "$ORIG_MEDIAN" ] && [ -n "$OPT_MEDIAN" ]; then
        MEDIAN_IMPROVEMENT=$(echo "scale=2; (($ORIG_MEDIAN - $OPT_MEDIAN) / $ORIG_MEDIAN) * 100" | bc)
        MEAN_IMPROVEMENT=$(echo "scale=2; (($ORIG_MEAN - $OPT_MEAN) / $ORIG_MEAN) * 100" | bc)
        
        printf "Median Runtime      │ %11s │ %11s │ %+11.2f%%\n" "$ORIG_MEDIAN" "$OPT_MEDIAN" "$MEDIAN_IMPROVEMENT" >> "$REPORT_FILE"
        printf "Mean Runtime        │ %11s │ %11s │ %+11.2f%%\n" "$ORIG_MEAN" "$OPT_MEAN" "$MEAN_IMPROVEMENT" >> "$REPORT_FILE"
        
        echo ""
        if (( $(echo "$MEDIAN_IMPROVEMENT > 0" | bc -l) )); then
            echo -e "  Median: ${GREEN}${MEDIAN_IMPROVEMENT}% faster${NC}"
            echo -e "  Mean:   ${GREEN}${MEAN_IMPROVEMENT}% faster${NC}"
        else
            echo -e "  Median: ${RED}${MEDIAN_IMPROVEMENT}% (slower!)${NC}"
            echo -e "  Mean:   ${RED}${MEAN_IMPROVEMENT}% (slower!)${NC}"
        fi
    else
        printf "Median Runtime      │ %11s │ %11s │ %s\n" "$ORIG_MEDIAN" "$OPT_MEDIAN" "N/A" >> "$REPORT_FILE"
        printf "Mean Runtime        │ %11s │ %11s │ %s\n" "$ORIG_MEAN" "$OPT_MEAN" "N/A" >> "$REPORT_FILE"
        echo "  (bc not available for percentage calculation)"
    fi
    
    echo "" >> "$REPORT_FILE"
fi

echo ""

# Compare function-level stats
echo -e "${BLUE}[2/3]${NC} Comparing function-level performance..."

cat >> "$REPORT_FILE" <<EOF

═══════════════════════════════════════════════════════════════════════════
2. TOP FUNCTIONS BY TIME
═══════════════════════════════════════════════════════════════════════════

ORIGINAL VERSION:
─────────────────
EOF

# Extract top 10 from original
awk '
BEGIN { in_data=0; count=0 }
/funcid.*count.*min.*max/ { in_data=1; print; next }
in_data && NF > 0 && count < 10 {
    print;
    count++
}
' "$ORIG_ACCOUNT" >> "$REPORT_FILE"

cat >> "$REPORT_FILE" <<EOF

OPTIMIZED VERSION:
──────────────────
EOF

# Extract top 10 from optimized
awk '
BEGIN { in_data=0; count=0 }
/funcid.*count.*min.*max/ { in_data=1; print; next }
in_data && NF > 0 && count < 10 {
    print;
    count++
}
' "$OPT_ACCOUNT" >> "$REPORT_FILE"

echo ""

# Summary statistics
echo -e "${BLUE}[3/3]${NC} Computing summary statistics..."

ORIG_FUNC_COUNT=$(grep -c "^[[:space:]]*[0-9]" "$ORIG_ACCOUNT" || echo "0")
OPT_FUNC_COUNT=$(grep -c "^[[:space:]]*[0-9]" "$OPT_ACCOUNT" || echo "0")

ORIG_TOTAL_TIME=$(awk '/^[[:space:]]*[0-9]/ {sum+=$7} END {printf "%.3f", sum}' "$ORIG_ACCOUNT" || echo "0")
OPT_TOTAL_TIME=$(awk '/^[[:space:]]*[0-9]/ {sum+=$7} END {printf "%.3f", sum}' "$OPT_ACCOUNT" || echo "0")

cat >> "$REPORT_FILE" <<EOF


═══════════════════════════════════════════════════════════════════════════
3. SUMMARY STATISTICS
═══════════════════════════════════════════════════════════════════════════

Metric                      │ Original    │ Optimized
────────────────────────────┼─────────────┼─────────────
Functions Traced            │ $ORIG_FUNC_COUNT           │ $OPT_FUNC_COUNT
Total Function Time (ms)    │ $ORIG_TOTAL_TIME       │ $OPT_TOTAL_TIME

EOF

if command -v bc &> /dev/null && [ "$ORIG_TOTAL_TIME" != "0" ]; then
    TIME_IMPROVEMENT=$(echo "scale=2; (($ORIG_TOTAL_TIME - $OPT_TOTAL_TIME) / $ORIG_TOTAL_TIME) * 100" | bc)
    echo "Time Reduction              │             │ ${TIME_IMPROVEMENT}%" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    if (( $(echo "$TIME_IMPROVEMENT > 0" | bc -l) )); then
        echo -e "  Total function time: ${GREEN}${TIME_IMPROVEMENT}% reduction${NC}"
    else
        echo -e "  Total function time: ${RED}${TIME_IMPROVEMENT}% (increased!)${NC}"
    fi
fi

# Add interpretation guide
cat >> "$REPORT_FILE" <<EOF

═══════════════════════════════════════════════════════════════════════════
4. INTERPRETATION GUIDE
═══════════════════════════════════════════════════════════════════════════

Column Meanings:
  funcid  - Function ID
  count   - Number of times function was called
  min     - Minimum latency (ms)
  med     - Median latency (ms)
  90p/99p - 90th/99th percentile latency (ms)
  max     - Maximum latency (ms)
  sum     - Total time spent in this function (ms)

What to Look For:
  ✓ Lower 'sum' values    → Function executes faster overall
  ✓ Lower 'med' values    → Typical execution is faster
  ✓ Lower '99p' values    → More consistent, fewer tail latencies
  ✓ Reduced 'count'       → Function may have been inlined/eliminated
  ✗ Higher values         → Optimization may have had negative effect

EOF

echo ""
echo "=========================================="
echo -e "${GREEN}Comparison Complete!${NC}"
echo "=========================================="
echo ""
echo "Report saved to: $REPORT_FILE"
echo ""
echo "View the report:"
echo "  cat $REPORT_FILE"
echo "  less $REPORT_FILE"
echo ""

# Display quick summary to terminal
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "QUICK SUMMARY"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ -f "$ORIG_LOGS/timing_summary.txt" ] && [ -f "$OPT_LOGS/timing_summary.txt" ]; then
    ORIG_MEDIAN=$(grep "^Median:" "$ORIG_LOGS/timing_summary.txt" | awk '{print $2}')
    OPT_MEDIAN=$(grep "^Median:" "$OPT_LOGS/timing_summary.txt" | awk '{print $2}')
    
    echo "Test: $BASENAME"
    echo ""
    printf "%-20s: %ss\n" "Original (median)" "$ORIG_MEDIAN"
    printf "%-20s: %ss\n" "Optimized (median)" "$OPT_MEDIAN"
    
    if command -v bc &> /dev/null && [ -n "$ORIG_MEDIAN" ] && [ -n "$OPT_MEDIAN" ]; then
        SPEEDUP=$(echo "scale=2; $ORIG_MEDIAN / $OPT_MEDIAN" | bc)
        IMPROVEMENT=$(echo "scale=2; (($ORIG_MEDIAN - $OPT_MEDIAN) / $ORIG_MEDIAN) * 100" | bc)
        
        echo ""
        printf "%-20s: %s%%\n" "Improvement" "$IMPROVEMENT"
        printf "%-20s: %sx\n" "Speedup" "$SPEEDUP"
        
        if (( $(echo "$IMPROVEMENT > 5" | bc -l) )); then
            echo -e "\n${GREEN}✓ Optimization shows significant improvement!${NC}"
        elif (( $(echo "$IMPROVEMENT > 0" | bc -l) )); then
            echo -e "\n${YELLOW}⚠ Optimization shows modest improvement${NC}"
        else
            echo -e "\n${RED}✗ Optimization did not improve performance${NC}"
        fi
    fi
fi

echo ""

