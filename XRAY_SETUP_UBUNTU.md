# XRay Profiling on Ubuntu VM - Complete Guide

## What You'll Get from XRay

**Simple Stats You'll See:**
1. **Total runtime**: How long the program took (original vs optimized)
2. **Function execution time**: Which functions take the most time
3. **Call counts**: How many times each function was called
4. **Latency stats**: Average, min, max, p50, p90, p99 per function

**How to Use These Stats:**
- If optimized has **lower total runtime** → it completes faster ✅
- If hot functions show **reduced time** → optimizer made them more efficient ✅
- If **p99 latency dropped** → more consistent, predictable performance ✅
- Compare instruction counts (from llvm-mca) with actual runtime to validate

---

## Step-by-Step Setup on Ubuntu VM

### 1. Install LLVM/Clang with XRay Support

```bash
# On Ubuntu VM, run:
sudo apt update
sudo apt install -y clang-15 llvm-15 llvm-15-tools

# Verify installation
clang-15 --version
llvm-xray-15 --version
opt-15 --version
llc-15 --version
```

If `llvm-xray-15` is not found, you may need to build LLVM from source or use a newer version:

```bash
# Alternative: Install latest LLVM
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 17  # or latest version

# Then use: clang-17, opt-17, llc-17, llvm-xray-17
```

### 2. Copy Your Research Data to Ubuntu VM

From your Mac, copy the workspace to Ubuntu:

```bash
# On Mac (from your current directory):
# Option A: If VM has shared folders
cp -r /Users/rongf98/Desktop/dev_research /path/to/shared/folder/

# Option B: Use scp
scp -r /Users/rongf98/Desktop/dev_research username@ubuntu-vm-ip:~/

# Option C: Use Git
cd /Users/rongf98/Desktop/dev_research
git init  # if not already a repo
git add .
git commit -m "Prepare for XRay testing"
# Then pull from Ubuntu
```

### 3. Directory Structure Expected

```
dev_research/
├── sourceCodes/              # C source files (2820 files, no extension)
├── AfterOptimizedLLVM_IR/    # Optimized .ll files (e.g., 20000112-1_opt.ll)
├── WyvernOptimizedIR/        # Alternative optimized .ll files
└── testing/                  # Test samples
```

---

## Workflow Overview

```
C Source (.c) 
    ↓ [compile to IR]
Original .ll 
    ↓ [xray-instrument]
Original Instrumented .ll
    ↓ [compile + link]
Original Binary (with XRay)
    ↓ [run with XRAY_OPTIONS]
XRay Log Files
    ↓ [llvm-xray account]
Original Performance Stats

[Same process for Optimized .ll → Optimized Stats]

    ↓ [compare]
Side-by-Side Comparison Table
```

---

## What Each Script Does

### `01_setup_environment.sh`
- Checks LLVM tools are installed
- Creates output directories
- Sets up proper permissions

### `02_instrument_and_compile.sh`
- Takes your .ll files
- Adds XRay instrumentation hooks
- Compiles to executable binaries
- Handles both original and optimized versions

### `03_run_xray_tests.sh`
- Runs the instrumented binaries multiple times (for statistical reliability)
- Collects XRay trace logs
- Organizes results by test case

### `04_analyze_results.sh`
- Processes XRay logs into human-readable stats
- Generates comparison tables
- Shows you: total time, hot functions, call counts, latency percentiles

### `05_compare_and_report.sh`
- Creates side-by-side comparison
- Calculates percentage improvements
- Generates a summary report

---

## Quick Start Commands (On Ubuntu VM)

```bash
# 1. Navigate to your research directory
cd ~/dev_research

# 2. Make scripts executable
chmod +x *.sh

# 3. Setup environment
./01_setup_environment.sh

# 4. Test on a single sample first
./02_instrument_and_compile.sh testing/7zCrc_opt.ll

# 5. Run XRay profiling
./03_run_xray_tests.sh testing/7zCrc_opt

# 6. Analyze results
./04_analyze_results.sh testing/7zCrc_opt

# 7. See comparison
cat results/comparison_7zCrc_opt.txt
```

---

## Important Notes

### XRay Requirements
- **Architecture**: x86-64 or AArch64 (ARM64) Linux
- **Minimum LLVM**: Version 14+ (recommended: 15+)
- **Runtime**: Needs `compiler-rt` (usually included with Clang)

### Performance Measurement Best Practices
1. **CPU Frequency Pinning**: Lock CPU to max frequency to reduce variance
   ```bash
   sudo cpupower frequency-set -g performance
   ```

2. **Run Multiple Trials**: We run each test 5-7 times and take the median

3. **Warm-up Runs**: First run may be slower due to cold caches

4. **Same Input Data**: Use identical inputs for fair comparison

### Troubleshooting

**If XRay logs are not generated:**
- Check that binaries have XRay symbols: `nm binary | grep xray`
- Verify XRAY_OPTIONS env var is set correctly
- Try `xray_mode=xray-basic` instead of `xray-fdr` for debugging

**If binaries crash:**
- Some .ll files may be incomplete (missing main() or external functions)
- Check for undefined references during linking
- May need to add a test harness/main function

**If results show "no functions instrumented":**
- XRay only instruments non-trivial functions by default
- Add `-fxray-instruction-threshold=1` to instrument small functions

---

## Expected Output Format

### Individual Function Stats (from `llvm-xray account`)
```
Functions with latencies: 15

   funcid      count        min        med        90p        99p        max       sum  function
        1        100      0.023      0.045      0.089      0.123      0.245     4.567  CrcUpdate
        2         50      0.012      0.018      0.025      0.034      0.056     0.923  CrcCalc
        3          1     15.234     15.234     15.234     15.234     15.234    15.234  CrcGenerateTable
```

### Comparison Report (from `05_compare_and_report.sh`)
```
=== XRay Performance Comparison: 7zCrc_opt ===

Metric                    | Original    | Optimized   | Improvement
------------------------- | ----------- | ----------- | -----------
Total Runtime (ms)        |      45.67  |      32.14  |   -29.6% ✅
CrcUpdate total (ms)      |      18.23  |      11.45  |   -37.2% ✅
CrcUpdate avg (µs)        |       4.56  |       2.87  |   -37.1% ✅
CrcCalc total (ms)        |       8.92  |       6.78  |   -24.0% ✅
Instructions Executed     |  1,234,567  |    987,654  |   -20.0% ✅
```

---

## Next Steps After Getting Results

1. **Identify Hot Functions**: Focus on functions with highest `sum` (total time)
2. **Check Call Counts**: If counts differ, the optimizer may have inlined/eliminated calls
3. **Latency Tails**: Look at p99 - if optimized has lower p99, it's more consistent
4. **Cross-Reference with llvm-mca**: See if pipeline predictions match actual results
5. **Document Improvements**: Use the comparison table in your paper/report

---

## Files That Will Be Generated

```
results/
├── original/
│   ├── 7zCrc_opt.instrumented.ll     # XRay-instrumented IR
│   ├── 7zCrc_opt.bin                 # Executable binary
│   └── 7zCrc_opt.xray.log            # Raw XRay trace
├── optimized/
│   ├── 7zCrc_opt.instrumented.ll
│   ├── 7zCrc_opt.bin
│   └── 7zCrc_opt.xray.log
├── stats/
│   ├── 7zCrc_opt_original.txt        # Analyzed stats
│   └── 7zCrc_opt_optimized.txt
└── comparison_7zCrc_opt.txt          # Side-by-side comparison
```

