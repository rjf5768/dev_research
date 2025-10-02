#!/bin/bash
# Run XRay-Instrumented Binaries and Collect Traces
# Runs multiple trials for statistical reliability

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

# Configuration
NUM_TRIALS=7  # Run each test 7 times for statistical reliability
WARMUP_RUNS=2  # First 2 runs are warmup (discarded)

show_help() {
    echo "Usage: $0 <binary_path_without_extension> [args...]"
    echo ""
    echo "Examples:"
    echo "  $0 work/optimized/7zCrc_opt"
    echo "  $0 work/original/test_program arg1 arg2"
    echo ""
    echo "This will run the .bin file with XRay tracing enabled."
    echo ""
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

BINARY_BASE="$1"
shift
PROGRAM_ARGS="$@"

BINARY="${BINARY_BASE}.bin"

if [ ! -f "$BINARY" ]; then
    echo -e "${RED}Error: Binary not found: $BINARY${NC}"
    echo "Did you run ./02_instrument_and_compile.sh first?"
    exit 1
fi

# Extract info
BASENAME=$(basename "$BINARY_BASE")
DIRNAME=$(dirname "$BINARY_BASE")
VERSION=$(basename "$DIRNAME")  # original or optimized

echo "=========================================="
echo "XRay Performance Profiling"
echo "=========================================="
echo "Binary:  $BINARY"
echo "Version: $VERSION"
echo "Trials:  $NUM_TRIALS (+ $WARMUP_RUNS warmup)"
echo "Args:    ${PROGRAM_ARGS:-<none>}"
echo ""

# Create log directory
LOG_DIR="results/logs/${VERSION}/${BASENAME}"
mkdir -p "$LOG_DIR"

# XRay environment configuration
export XRAY_OPTIONS="patch_premain=true xray_mode=xray-fdr verbosity=1 buffer_size=8388608"

echo -e "${BLUE}Running warmup...${NC}"

# Warmup runs (not recorded)
for i in $(seq 1 $WARMUP_RUNS); do
    echo -n "  Warmup run $i/$WARMUP_RUNS... "
    
    # Capture XRay output to get log filename
    XRAY_OUTPUT=$(mktemp)
    
    if timeout 30s "$BINARY" $PROGRAM_ARGS > /dev/null 2>"$XRAY_OUTPUT"; then
        echo -e "${GREEN}✓${NC}"
        
        # Clean up warmup XRay logs
        if grep -q "XRay:" "$XRAY_OUTPUT"; then
            WARMUP_LOG=$(grep "XRay:" "$XRAY_OUTPUT" | grep -oP 'xray-log\.[^:]+' || echo "")
            [ -n "$WARMUP_LOG" ] && rm -f "$WARMUP_LOG" 2>/dev/null
        fi
    else
        EXIT_CODE=$?
        if [ $EXIT_CODE -eq 124 ]; then
            echo -e "${YELLOW}timeout${NC}"
        else
            echo -e "${RED}failed (exit $EXIT_CODE)${NC}"
        fi
    fi
    
    rm -f "$XRAY_OUTPUT"
done

echo ""
echo -e "${BLUE}Running measured trials...${NC}"

SUCCESSFUL_RUNS=0
declare -a XRAY_LOGS

# Measured trials
for i in $(seq 1 $NUM_TRIALS); do
    echo -n "  Trial $i/$NUM_TRIALS... "
    
    XRAY_OUTPUT=$(mktemp)
    TIME_LOG="$LOG_DIR/time_${i}.txt"
    
    # Run with time measurement
    START_TIME=$(date +%s.%N)
    
    if timeout 30s "$BINARY" $PROGRAM_ARGS > "$LOG_DIR/output_${i}.txt" 2>"$XRAY_OUTPUT"; then
        END_TIME=$(date +%s.%N)
        DURATION=$(echo "$END_TIME - $START_TIME" | bc)
        
        echo "$DURATION" > "$TIME_LOG"
        
        # Find the XRay log file
        if grep -q "XRay:" "$XRAY_OUTPUT"; then
            XRAY_LOG=$(grep "XRay:" "$XRAY_OUTPUT" | grep -oP 'xray-log\.[^:]+' | head -1)
            
            if [ -n "$XRAY_LOG" ] && [ -f "$XRAY_LOG" ]; then
                # Move to our log directory
                mv "$XRAY_LOG" "$LOG_DIR/xray_${i}.log"
                XRAY_LOGS+=("$LOG_DIR/xray_${i}.log")
                
                echo -e "${GREEN}✓${NC} (${DURATION}s)"
                SUCCESSFUL_RUNS=$((SUCCESSFUL_RUNS + 1))
            else
                echo -e "${YELLOW}⚠ no trace${NC} (${DURATION}s)"
            fi
        else
            echo -e "${YELLOW}⚠ no XRay output${NC} (${DURATION}s)"
        fi
    else
        EXIT_CODE=$?
        if [ $EXIT_CODE -eq 124 ]; then
            echo -e "${RED}timeout${NC}"
        else
            echo -e "${RED}failed (exit $EXIT_CODE)${NC}"
        fi
        cat "$XRAY_OUTPUT"
    fi
    
    rm -f "$XRAY_OUTPUT"
done

echo ""

if [ $SUCCESSFUL_RUNS -eq 0 ]; then
    echo -e "${RED}Error: No successful runs!${NC}"
    echo ""
    echo "Possible reasons:"
    echo "  - Binary requires input files or arguments"
    echo "  - Binary has runtime errors"
    echo "  - No functions were instrumented (too small)"
    echo ""
    echo "Check logs in: $LOG_DIR"
    exit 1
fi

echo -e "${GREEN}Completed ${SUCCESSFUL_RUNS}/${NUM_TRIALS} successful runs${NC}"
echo ""

# Calculate timing statistics
echo -e "${BLUE}Timing Summary:${NC}"

if ls "$LOG_DIR"/time_*.txt &> /dev/null; then
    TIMES=$(cat "$LOG_DIR"/time_*.txt | sort -n)
    COUNT=$(echo "$TIMES" | wc -l)
    
    MIN=$(echo "$TIMES" | head -1)
    MAX=$(echo "$TIMES" | tail -1)
    
    # Calculate median
    MEDIAN_POS=$(( (COUNT + 1) / 2 ))
    MEDIAN=$(echo "$TIMES" | sed -n "${MEDIAN_POS}p")
    
    # Calculate mean
    MEAN=$(echo "$TIMES" | awk '{sum+=$1} END {print sum/NR}')
    
    echo "  Min:    ${MIN}s"
    echo "  Median: ${MEDIAN}s"
    echo "  Mean:   ${MEAN}s"
    echo "  Max:    ${MAX}s"
    
    # Save summary
    cat > "$LOG_DIR/timing_summary.txt" <<EOF
Binary: $BINARY
Successful Runs: $SUCCESSFUL_RUNS / $NUM_TRIALS
Min:    $MIN
Median: $MEDIAN
Mean:   $MEAN
Max:    $MAX
EOF
fi

echo ""
echo "Results saved in: $LOG_DIR"
echo ""
echo "Next step:"
echo "  ./04_analyze_results.sh $BINARY_BASE"
echo ""

