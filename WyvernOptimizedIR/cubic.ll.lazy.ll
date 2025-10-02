; ModuleID = './cubic.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/cubic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32* nocapture noundef writeonly %4, double* nocapture noundef %5) #0 {
  %7 = fdiv double %1, %0
  %8 = fpext double %7 to x86_fp80
  %9 = fdiv double %2, %0
  %10 = fpext double %9 to x86_fp80
  %11 = fdiv double %3, %0
  %12 = fpext double %11 to x86_fp80
  %13 = fmul x86_fp80 %10, 0xKC000C000000000000000
  %14 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %8, x86_fp80 %8, x86_fp80 %13)
  %15 = fdiv x86_fp80 %14, 0xK40029000000000000000
  %16 = fmul x86_fp80 %8, 0xK40008000000000000000
  %17 = fmul x86_fp80 %16, %8
  %18 = fmul x86_fp80 %8, 0xKC0029000000000000000
  %19 = fmul x86_fp80 %18, %10
  %20 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %17, x86_fp80 %8, x86_fp80 %19)
  %21 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %12, x86_fp80 0xK4003D800000000000000, x86_fp80 %20)
  %22 = fdiv x86_fp80 %21, 0xK4004D800000000000000
  %23 = fneg x86_fp80 %15
  %24 = fmul x86_fp80 %15, %23
  %25 = fmul x86_fp80 %24, %15
  %26 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %22, x86_fp80 %22, x86_fp80 %25)
  %27 = fptrunc x86_fp80 %26 to double
  %28 = fcmp ugt double %27, 0.000000e+00
  br i1 %28, label %74, label %29

29:                                               ; preds = %6
  store i32 3, i32* %4, align 4
  %30 = fmul x86_fp80 %15, %15
  %31 = fmul x86_fp80 %30, %15
  %32 = fptrunc x86_fp80 %31 to double
  %33 = call double @sqrt(double noundef %32) #3
  %34 = fpext double %33 to x86_fp80
  %35 = fdiv x86_fp80 %22, %34
  %36 = fptrunc x86_fp80 %35 to double
  %37 = call double @acos(double noundef %36) #3
  %38 = fptrunc x86_fp80 %15 to double
  %39 = call double @sqrt(double noundef %38) #3
  %40 = fmul double %39, -2.000000e+00
  %41 = fdiv double %37, 3.000000e+00
  %42 = call double @cos(double noundef %41) #3
  %43 = fmul double %40, %42
  %44 = fpext double %43 to x86_fp80
  %45 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %46 = fsub x86_fp80 %44, %45
  %47 = fptrunc x86_fp80 %46 to double
  store double %47, double* %5, align 8
  %48 = fptrunc x86_fp80 %15 to double
  %49 = call double @sqrt(double noundef %48) #3
  %50 = fmul double %49, -2.000000e+00
  %51 = call double @atan(double noundef 1.000000e+00) #3
  %52 = fadd double %37, 0x401921FB54442D18
  %53 = fdiv double %52, 3.000000e+00
  %54 = call double @cos(double noundef %53) #3
  %55 = fmul double %50, %54
  %56 = fpext double %55 to x86_fp80
  %57 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %58 = fsub x86_fp80 %56, %57
  %59 = fptrunc x86_fp80 %58 to double
  %60 = getelementptr inbounds double, double* %5, i64 1
  store double %59, double* %60, align 8
  %61 = fptrunc x86_fp80 %15 to double
  %62 = call double @sqrt(double noundef %61) #3
  %63 = fmul double %62, -2.000000e+00
  %64 = call double @atan(double noundef 1.000000e+00) #3
  %65 = fadd double %37, 0x402921FB54442D18
  %66 = fdiv double %65, 3.000000e+00
  %67 = call double @cos(double noundef %66) #3
  %68 = fmul double %63, %67
  %69 = fpext double %68 to x86_fp80
  %70 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %71 = fsub x86_fp80 %69, %70
  %72 = fptrunc x86_fp80 %71 to double
  %73 = getelementptr inbounds double, double* %5, i64 2
  store double %72, double* %73, align 8
  br label %92

74:                                               ; preds = %6
  store i32 1, i32* %4, align 4
  %75 = call double @sqrt(double noundef %27) #3
  %76 = fptrunc x86_fp80 %22 to double
  %77 = call double @llvm.fabs.f64(double %76)
  %78 = fadd double %75, %77
  %79 = call double @pow(double noundef %78, double noundef 0x3FD5555555555555) #3
  %80 = fpext double %79 to x86_fp80
  %81 = fdiv x86_fp80 %15, %80
  %82 = fpext double %79 to x86_fp80
  %83 = fadd x86_fp80 %81, %82
  %84 = fptrunc x86_fp80 %83 to double
  %85 = fcmp olt x86_fp80 %22, 0xK00000000000000000000
  %86 = fneg double %84
  %87 = select i1 %85, double %84, double %86
  %88 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %89 = fpext double %87 to x86_fp80
  %90 = fsub x86_fp80 %89, %88
  %91 = fptrunc x86_fp80 %90 to double
  store double %91, double* %5, align 8
  br label %92

92:                                               ; preds = %74, %29
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
