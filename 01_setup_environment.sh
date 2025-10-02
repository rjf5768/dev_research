#!/bin/bash
# XRay Setup - Environment Check and Preparation
# Run this first on your Ubuntu VM

set -e  # Exit on error

echo "=========================================="
echo "XRay Environment Setup"
echo "=========================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if command exists
check_command() {
    if command -v "$1" &> /dev/null; then
        echo -e "${GREEN}✓${NC} Found: $1 ($(command -v $1))"
        return 0
    else
        echo -e "${RED}✗${NC} Missing: $1"
        return 1
    fi
}

# Try to find versioned tools (clang-15, clang-17, etc.)
find_versioned_tool() {
    local base_name=$1
    local tool_path=""
    
    # Try common versions
    for version in 17 16 15 14 ""; do
        local name="${base_name}${version:+-$version}"
        if command -v "$name" &> /dev/null; then
            tool_path="$name"
            break
        fi
    done
    
    echo "$tool_path"
}

echo "Step 1: Checking LLVM/Clang Installation"
echo "------------------------------------------"

CLANG=$(find_versioned_tool "clang")
OPT=$(find_versioned_tool "opt")
LLC=$(find_versioned_tool "llc")
XRAY=$(find_versioned_tool "llvm-xray")

ALL_FOUND=true

if [ -z "$CLANG" ]; then
    echo -e "${RED}✗${NC} clang not found"
    ALL_FOUND=false
else
    echo -e "${GREEN}✓${NC} Found: clang -> $CLANG"
    $CLANG --version | head -1
fi

if [ -z "$OPT" ]; then
    echo -e "${RED}✗${NC} opt not found"
    ALL_FOUND=false
else
    echo -e "${GREEN}✓${NC} Found: opt -> $OPT"
fi

if [ -z "$LLC" ]; then
    echo -e "${RED}✗${NC} llc not found"
    ALL_FOUND=false
else
    echo -e "${GREEN}✓${NC} Found: llc -> $LLC"
fi

if [ -z "$XRAY" ]; then
    echo -e "${RED}✗${NC} llvm-xray not found"
    ALL_FOUND=false
else
    echo -e "${GREEN}✓${NC} Found: llvm-xray -> $XRAY"
fi

echo ""

if [ "$ALL_FOUND" = false ]; then
    echo -e "${RED}ERROR: Missing required tools${NC}"
    echo ""
    echo "Please install LLVM/Clang:"
    echo ""
    echo "  sudo apt update"
    echo "  sudo apt install -y clang-15 llvm-15 llvm-15-tools"
    echo ""
    echo "Or install the latest version:"
    echo ""
    echo "  wget https://apt.llvm.org/llvm.sh"
    echo "  chmod +x llvm.sh"
    echo "  sudo ./llvm.sh 17"
    echo ""
    exit 1
fi

# Save tool paths to config file
cat > .xray_config <<EOF
CLANG=$CLANG
OPT=$OPT
LLC=$LLC
XRAY=$XRAY
EOF

echo -e "${GREEN}Tool configuration saved to .xray_config${NC}"
echo ""

echo "Step 2: Creating Output Directories"
echo "------------------------------------"

mkdir -p results/{original,optimized,stats,logs}
mkdir -p work/{original,optimized}

echo -e "${GREEN}✓${NC} Created results/ directory structure"
echo -e "${GREEN}✓${NC} Created work/ directory structure"
echo ""

echo "Step 3: Checking Data Directories"
echo "----------------------------------"

if [ -d "sourceCodes" ]; then
    SOURCE_COUNT=$(find sourceCodes -type f | wc -l)
    echo -e "${GREEN}✓${NC} Found sourceCodes/ ($SOURCE_COUNT files)"
else
    echo -e "${YELLOW}⚠${NC}  sourceCodes/ not found (optional)"
fi

if [ -d "AfterOptimizedLLVM_IR" ]; then
    OPT_COUNT=$(find AfterOptimizedLLVM_IR -name "*.ll" | wc -l)
    echo -e "${GREEN}✓${NC} Found AfterOptimizedLLVM_IR/ ($OPT_COUNT .ll files)"
else
    echo -e "${RED}✗${NC} AfterOptimizedLLVM_IR/ not found"
    echo "   This directory is required for comparison!"
fi

if [ -d "testing" ]; then
    TEST_COUNT=$(find testing -name "*.ll" | wc -l)
    echo -e "${GREEN}✓${NC} Found testing/ ($TEST_COUNT .ll files)"
else
    echo -e "${YELLOW}⚠${NC}  testing/ not found (optional)"
fi

echo ""

echo "Step 4: System Configuration Check"
echo "-----------------------------------"

# Check CPU governor
if command -v cpupower &> /dev/null; then
    GOVERNOR=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null || echo "unknown")
    if [ "$GOVERNOR" = "performance" ]; then
        echo -e "${GREEN}✓${NC} CPU governor: $GOVERNOR (optimal)"
    else
        echo -e "${YELLOW}⚠${NC}  CPU governor: $GOVERNOR (not optimal)"
        echo "   For best results, set to 'performance':"
        echo "   sudo cpupower frequency-set -g performance"
    fi
else
    echo -e "${YELLOW}⚠${NC}  cpupower not installed (optional)"
    echo "   Install with: sudo apt install linux-tools-generic"
fi

echo ""

# Check architecture
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ] || [ "$ARCH" = "aarch64" ]; then
    echo -e "${GREEN}✓${NC} Architecture: $ARCH (XRay supported)"
else
    echo -e "${RED}✗${NC} Architecture: $ARCH (XRay may not work)"
    echo "   XRay is best supported on x86_64 and aarch64"
fi

echo ""

echo "=========================================="
echo -e "${GREEN}Setup Complete!${NC}"
echo "=========================================="
echo ""
echo "Next steps:"
echo "  1. Review: cat XRAY_SETUP_UBUNTU.md"
echo "  2. Test on one sample: ./02_instrument_and_compile.sh testing/7zCrc_opt.ll"
echo "  3. Run profiling: ./03_run_xray_tests.sh testing/7zCrc_opt"
echo ""
echo "Tool paths saved in: .xray_config"
echo ""

