#!/bin/bash
# Analyze XRay Traces and Generate Stats
# Processes XRay logs into human-readable performance data

set -e

# Load tool configuration
if [ -f ".xray_config" ]; then
    source .xray_config
else
    echo "Error: .xray_config not found. Run ./01_setup_environment.sh first"
    exit 1
fi

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

show_help() {
    echo "Usage: $0 <binary_path_without_extension>"
    echo ""
    echo "Examples:"
    echo "  $0 work/optimized/7zCrc_opt"
    echo "  $0 work/original/test_program"
    echo ""
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

BINARY_BASE="$1"
BINARY="${BINARY_BASE}.bin"

if [ ! -f "$BINARY" ]; then
    echo -e "${RED}Error: Binary not found: $BINARY${NC}"
    exit 1
fi

# Extract info
BASENAME=$(basename "$BINARY_BASE")
DIRNAME=$(dirname "$BINARY_BASE")
VERSION=$(basename "$DIRNAME")

LOG_DIR="results/logs/${VERSION}/${BASENAME}"

if [ ! -d "$LOG_DIR" ]; then
    echo -e "${RED}Error: No logs found in $LOG_DIR${NC}"
    echo "Run ./03_run_xray_tests.sh first"
    exit 1
fi

echo "=========================================="
echo "XRay Analysis"
echo "=========================================="
echo "Binary:  $BINARY"
echo "Version: $VERSION"
echo "Logs:    $LOG_DIR"
echo ""

# Find XRay log files
XRAY_LOGS=($(find "$LOG_DIR" -name "xray_*.log" | sort))

if [ ${#XRAY_LOGS[@]} -eq 0 ]; then
    echo -e "${RED}Error: No XRay logs found!${NC}"
    echo "The binary may not have generated traces."
    exit 1
fi

echo "Found ${#XRAY_LOGS[@]} XRay trace logs"
echo ""

OUTPUT_DIR="results/stats/${VERSION}"
mkdir -p "$OUTPUT_DIR"

# Analyze each log
echo -e "${BLUE}[1/3]${NC} Converting XRay traces..."

for log in "${XRAY_LOGS[@]}"; do
    logname=$(basename "$log" .log)
    echo -n "  Processing $logname... "
    
    if $XRAY convert --symbolize \
        --output="$LOG_DIR/${logname}.txt" \
        "$BINARY" "$log" 2>/dev/null; then
        echo -e "${GREEN}✓${NC}"
    else
        echo -e "${YELLOW}⚠${NC}"
    fi
done

echo ""

# Generate account summary (function-level stats)
echo -e "${BLUE}[2/3]${NC} Generating function-level statistics..."

ACCOUNT_OUTPUT="$OUTPUT_DIR/${BASENAME}_account.txt"

if $XRAY account --sort=sum --top=50 \
    --instr_map="$BINARY" \
    "${XRAY_LOGS[@]}" > "$ACCOUNT_OUTPUT" 2>/dev/null; then
    echo -e "${GREEN}✓${NC} Created: $ACCOUNT_OUTPUT"
else
    echo -e "${YELLOW}⚠${NC}  Account generation had issues (may still have partial data)"
fi

echo ""

# Display key stats
echo -e "${BLUE}[3/3]${NC} Extracting key metrics..."
echo ""

if [ -f "$ACCOUNT_OUTPUT" ]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Top 10 Functions by Total Time"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Parse and display in readable format
    awk '
    BEGIN { in_data=0; count=0 }
    /funcid.*count.*min.*max/ { in_data=1; print; next }
    in_data && NF > 0 && count < 10 {
        print;
        count++
    }
    ' "$ACCOUNT_OUTPUT"
    
    echo ""
    
    # Extract summary statistics
    TOTAL_FUNCS=$(grep -c "^[[:space:]]*[0-9]" "$ACCOUNT_OUTPUT" || echo "0")
    
    if [ "$TOTAL_FUNCS" -gt 0 ]; then
        echo "Total functions traced: $TOTAL_FUNCS"
        
        # Get total sum (if available)
        TOTAL_TIME=$(awk '/^[[:space:]]*[0-9]/ {sum+=$7} END {print sum}' "$ACCOUNT_OUTPUT" || echo "N/A")
        echo "Total execution time: $TOTAL_TIME ms"
    fi
    
    echo ""
fi

# Summary of timing data
if [ -f "$LOG_DIR/timing_summary.txt" ]; then
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Wall-Clock Timing (from time measurements)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    cat "$LOG_DIR/timing_summary.txt" | grep -E "(Min|Median|Mean|Max):"
    echo ""
fi

# Create a summary report
SUMMARY_FILE="$OUTPUT_DIR/${BASENAME}_summary.txt"

cat > "$SUMMARY_FILE" <<EOF
XRay Analysis Summary
=====================
Binary: $BINARY
Version: $VERSION
Date: $(date)

EOF

if [ -f "$LOG_DIR/timing_summary.txt" ]; then
    cat "$LOG_DIR/timing_summary.txt" >> "$SUMMARY_FILE"
    echo "" >> "$SUMMARY_FILE"
fi

if [ -f "$ACCOUNT_OUTPUT" ]; then
    echo "Function-Level Statistics:" >> "$SUMMARY_FILE"
    echo "-------------------------" >> "$SUMMARY_FILE"
    head -20 "$ACCOUNT_OUTPUT" >> "$SUMMARY_FILE"
fi

echo "=========================================="
echo -e "${GREEN}Analysis Complete!${NC}"
echo "=========================================="
echo ""
echo "Generated files:"
echo "  - Function stats: $ACCOUNT_OUTPUT"
echo "  - Summary:        $SUMMARY_FILE"
echo "  - Converted logs: $LOG_DIR/xray_*.txt"
echo ""
echo "Next step (if you have both original and optimized):"
echo "  ./05_compare_and_report.sh $BASENAME"
echo ""

