#!/bin/bash
# XRay Instrumentation and Compilation
# Converts .ll files to XRay-instrumented binaries

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

# Help message
show_help() {
    echo "Usage: $0 <input.ll> [original|optimized]"
    echo ""
    echo "Examples:"
    echo "  $0 testing/7zCrc_opt.ll              # Process optimized version"
    echo "  $0 testing/7zCrc_original.ll original  # Process original version"
    echo "  $0 AfterOptimizedLLVM_IR/20000112-1_opt.ll"
    echo ""
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

INPUT_LL="$1"
VERSION="${2:-optimized}"  # Default to optimized

if [ ! -f "$INPUT_LL" ]; then
    echo -e "${RED}Error: File not found: $INPUT_LL${NC}"
    exit 1
fi

# Extract base name
BASENAME=$(basename "$INPUT_LL" .ll)

echo "=========================================="
echo "XRay Instrumentation & Compilation"
echo "=========================================="
echo "Input:   $INPUT_LL"
echo "Version: $VERSION"
echo "Output:  work/$VERSION/${BASENAME}.bin"
echo ""

# Step 1: Add XRay instrumentation to the IR
echo -e "${BLUE}[1/4]${NC} Adding XRay instrumentation..."

$OPT -passes='xray-instrument' \
    "$INPUT_LL" \
    -o "work/$VERSION/${BASENAME}.xray.ll"

echo -e "${GREEN}✓${NC} Created: work/$VERSION/${BASENAME}.xray.ll"

# Step 2: Compile IR to object file
echo -e "${BLUE}[2/4]${NC} Compiling to object file..."

$LLC -filetype=obj \
    "work/$VERSION/${BASENAME}.xray.ll" \
    -o "work/$VERSION/${BASENAME}.o"

echo -e "${GREEN}✓${NC} Created: work/$VERSION/${BASENAME}.o"

# Step 3: Link to executable
echo -e "${BLUE}[3/4]${NC} Linking executable..."

# Try to link; some programs may need additional libraries
if $CLANG -fxray-instrument \
    "work/$VERSION/${BASENAME}.o" \
    -o "work/$VERSION/${BASENAME}.bin" 2>"work/$VERSION/${BASENAME}.link.log"; then
    echo -e "${GREEN}✓${NC} Created: work/$VERSION/${BASENAME}.bin"
else
    echo -e "${YELLOW}⚠${NC}  Linking had warnings (see work/$VERSION/${BASENAME}.link.log)"
    
    # Check if binary was still created
    if [ -f "work/$VERSION/${BASENAME}.bin" ]; then
        echo -e "${GREEN}✓${NC} Binary created despite warnings"
    else
        echo -e "${RED}✗${NC} Linking failed!"
        cat "work/$VERSION/${BASENAME}.link.log"
        exit 1
    fi
fi

# Step 4: Verify XRay instrumentation
echo -e "${BLUE}[4/4]${NC} Verifying XRay instrumentation..."

if nm "work/$VERSION/${BASENAME}.bin" | grep -q "__xray"; then
    echo -e "${GREEN}✓${NC} XRay symbols found in binary"
    
    # Count instrumented functions
    XRAY_COUNT=$(nm "work/$VERSION/${BASENAME}.bin" | grep "__xray_" | wc -l)
    echo "   Found $XRAY_COUNT XRay-related symbols"
else
    echo -e "${YELLOW}⚠${NC}  No XRay symbols found"
    echo "   The binary may not have instrumentable functions"
    echo "   (very small or all-inlined programs)"
fi

echo ""
echo -e "${GREEN}Success!${NC} Binary ready for XRay profiling:"
echo "  work/$VERSION/${BASENAME}.bin"
echo ""
echo "Next step:"
echo "  ./03_run_xray_tests.sh work/$VERSION/${BASENAME}"
echo ""

