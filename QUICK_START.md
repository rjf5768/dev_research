# XRay Quick Start - Ubuntu VM

## 📋 What You'll Do

Copy your research folder to Ubuntu VM → Run 5 scripts → Get performance comparison

---

## 🚀 Steps on Ubuntu VM

### 1️⃣ Copy Data to Ubuntu

```bash
# On your Ubuntu VM, receive the files (via scp, shared folder, or USB)
# Make sure you have this structure:
cd ~/dev_research
ls -la
# Should see: sourceCodes/, AfterOptimizedLLVM_IR/, testing/, *.sh files
```

### 2️⃣ Run Setup (One Time Only)

```bash
chmod +x *.sh
./01_setup_environment.sh
```

This checks that LLVM tools are installed and creates directories.

### 3️⃣ Test with One Sample

Let's use your testing files as an example:

```bash
# Step A: Generate original .ll from C source
clang-15 -S -emit-llvm -O0 testing/7zCrc_opt.cbe.c -o work/original_7zCrc.ll

# Step B: Instrument & compile ORIGINAL
./02_instrument_and_compile.sh work/original_7zCrc.ll original

# Step C: Instrument & compile OPTIMIZED
./02_instrument_and_compile.sh testing/7zCrc_opt.ll optimized

# Step D: Run XRay on both
./03_run_xray_tests.sh work/original/original_7zCrc
./03_run_xray_tests.sh work/optimized/7zCrc_opt

# Step E: Analyze both
./04_analyze_results.sh work/original/original_7zCrc
./04_analyze_results.sh work/optimized/7zCrc_opt

# Step F: Compare
./05_compare_and_report.sh original_7zCrc  # or whatever basename matches
```

**Note**: The comparison script expects matching basenames. Adjust accordingly.

---

## 📊 What You'll Get

### From Each Step:

**03_run_xray_tests.sh** → Shows:
```
Median: 0.0234s
Mean:   0.0241s
```

**04_analyze_results.sh** → Shows:
```
Top 10 Functions by Total Time

funcid  count    min      med      90p      99p      max      sum      function
    1     100   0.023    0.045    0.089    0.123    0.245    4.567    CrcUpdate
    2      50   0.012    0.018    0.025    0.034    0.056    0.923    CrcCalc
```

**05_compare_and_report.sh** → Shows:
```
Metric              │ Original    │ Optimized   │ Improvement
────────────────────┼─────────────┼─────────────┼──────────────
Median Runtime      │    0.0456s  │    0.0321s  │      +29.6%
Mean Runtime        │    0.0467s  │    0.0334s  │      +28.5%

✓ Optimization shows significant improvement!
```

---

## 🔄 Processing Multiple Files

To test all 2820 files, create a batch script:

```bash
#!/bin/bash
# batch_process.sh

for ll_file in AfterOptimizedLLVM_IR/*.ll; do
    basename=$(basename "$ll_file" .ll)
    echo "Processing $basename..."
    
    # Find corresponding source (if you want original comparison)
    # source_file="sourceCodes/${basename%_opt}"
    
    # For now, just process optimized version
    ./02_instrument_and_compile.sh "$ll_file" optimized
    ./03_run_xray_tests.sh "work/optimized/$basename"
    ./04_analyze_results.sh "work/optimized/$basename"
done

echo "All done! Results in results/stats/optimized/"
```

---

## ❓ Common Issues

### "llvm-xray not found"
```bash
# Install LLVM 15 or newer:
sudo apt update
sudo apt install clang-15 llvm-15 llvm-15-tools
```

### "No XRay symbols found"
- Program is too small or all functions were inlined
- XRay only instruments non-trivial functions
- This is OK - just means there's nothing to profile

### "Binary requires input files"
- Some programs need stdin or file arguments
- Add arguments to step 03: `./03_run_xray_tests.sh work/optimized/program input.txt`
- Or modify the C source to use hardcoded test data

### "No significant difference"
- Some optimizations don't affect runtime (e.g., only affect code size)
- Program may be too simple (runs in microseconds)
- Try larger/more complex programs from your 2820 files

---

## 💡 Tips for Best Results

1. **Pin CPU Frequency** (reduces noise):
   ```bash
   sudo cpupower frequency-set -g performance
   ```

2. **Choose Representative Programs**:
   - Look for programs with loops (more interesting optimizations)
   - Avoid trivial "hello world" style programs
   - Programs that actually compute something

3. **Check What Was Optimized**:
   ```bash
   # Compare IR before/after
   diff -u work/original_7zCrc.ll testing/7zCrc_opt.ll | less
   ```

4. **Combine with Other Tools**:
   - Use `llvm-mca` for pipeline analysis (from previous ChatGPT instructions)
   - Use `llvm-opt -passes=print<module>` to see what optimizations did

---

## 📁 File Organization

After running, you'll have:

```
dev_research/
├── results/
│   ├── logs/           # Raw XRay traces and timing data
│   │   ├── original/
│   │   └── optimized/
│   ├── stats/          # Analyzed function stats
│   │   ├── original/
│   │   └── optimized/
│   └── comparison_*.txt   # Side-by-side reports
├── work/
│   ├── original/       # Instrumented binaries (original)
│   └── optimized/      # Instrumented binaries (optimized)
└── *.sh                # Scripts
```

---

## 🎯 Your Goal: Prove Optimization Worked

Use these three metrics:

1. **Wall-clock time** (from comparison report)
   - "Optimized is 29.6% faster" ✅

2. **Hot function time** (from account stats)
   - "CrcUpdate went from 4.5ms to 2.8ms" ✅

3. **Consistency** (p99 latency)
   - "99th percentile dropped from 123µs to 87µs" ✅

Put these in your paper/presentation with the comparison tables!

---

## Need Help?

Check the detailed guide: `cat XRAY_SETUP_UBUNTU.md`

