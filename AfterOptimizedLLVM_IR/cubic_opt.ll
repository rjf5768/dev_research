; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/cubic.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/cubic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32* noundef %4, double* noundef %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, x86_fp80* %13, align 16
  %24 = load double, double* %9, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %14, align 16
  %28 = load double, double* %10, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %13, align 16
  %34 = load x86_fp80, x86_fp80* %14, align 16
  %35 = fmul x86_fp80 0xK4000C000000000000000, %34
  %36 = fneg x86_fp80 %35
  %37 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %32, x86_fp80 %33, x86_fp80 %36)
  %38 = fdiv x86_fp80 %37, 0xK40029000000000000000
  store x86_fp80 %38, x86_fp80* %16, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 0xK40008000000000000000, %39
  %41 = load x86_fp80, x86_fp80* %13, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* %13, align 16
  %44 = load x86_fp80, x86_fp80* %13, align 16
  %45 = fmul x86_fp80 0xK40029000000000000000, %44
  %46 = load x86_fp80, x86_fp80* %14, align 16
  %47 = fmul x86_fp80 %45, %46
  %48 = fneg x86_fp80 %47
  %49 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %42, x86_fp80 %43, x86_fp80 %48)
  %50 = load x86_fp80, x86_fp80* %15, align 16
  %51 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 0xK4003D800000000000000, x86_fp80 %50, x86_fp80 %49)
  %52 = fdiv x86_fp80 %51, 0xK4004D800000000000000
  store x86_fp80 %52, x86_fp80* %17, align 16
  %53 = load x86_fp80, x86_fp80* %17, align 16
  %54 = load x86_fp80, x86_fp80* %17, align 16
  %55 = load x86_fp80, x86_fp80* %16, align 16
  %56 = load x86_fp80, x86_fp80* %16, align 16
  %57 = fmul x86_fp80 %55, %56
  %58 = load x86_fp80, x86_fp80* %16, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = fneg x86_fp80 %59
  %61 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %53, x86_fp80 %54, x86_fp80 %60)
  %62 = fptrunc x86_fp80 %61 to double
  store double %62, double* %18, align 8
  %63 = load double, double* %18, align 8
  %64 = fcmp ole double %63, 0.000000e+00
  br i1 %64, label %65, label %130

65:                                               ; preds = %6
  %66 = load i32*, i32** %11, align 8
  store i32 3, i32* %66, align 4
  %67 = load x86_fp80, x86_fp80* %17, align 16
  %68 = load x86_fp80, x86_fp80* %16, align 16
  %69 = load x86_fp80, x86_fp80* %16, align 16
  %70 = fmul x86_fp80 %68, %69
  %71 = load x86_fp80, x86_fp80* %16, align 16
  %72 = fmul x86_fp80 %70, %71
  %73 = fptrunc x86_fp80 %72 to double
  %74 = call double @sqrt(double noundef %73) #3
  %75 = fpext double %74 to x86_fp80
  %76 = fdiv x86_fp80 %67, %75
  %77 = fptrunc x86_fp80 %76 to double
  %78 = call double @acos(double noundef %77) #3
  store double %78, double* %19, align 8
  %79 = load x86_fp80, x86_fp80* %16, align 16
  %80 = fptrunc x86_fp80 %79 to double
  %81 = call double @sqrt(double noundef %80) #3
  %82 = fmul double -2.000000e+00, %81
  %83 = load double, double* %19, align 8
  %84 = fdiv double %83, 3.000000e+00
  %85 = call double @cos(double noundef %84) #3
  %86 = fmul double %82, %85
  %87 = fpext double %86 to x86_fp80
  %88 = load x86_fp80, x86_fp80* %13, align 16
  %89 = fdiv x86_fp80 %88, 0xK4000C000000000000000
  %90 = fsub x86_fp80 %87, %89
  %91 = fptrunc x86_fp80 %90 to double
  %92 = load double*, double** %12, align 8
  %93 = getelementptr inbounds double, double* %92, i64 0
  store double %91, double* %93, align 8
  %94 = load x86_fp80, x86_fp80* %16, align 16
  %95 = fptrunc x86_fp80 %94 to double
  %96 = call double @sqrt(double noundef %95) #3
  %97 = fmul double -2.000000e+00, %96
  %98 = load double, double* %19, align 8
  %99 = call double @atan(double noundef 1.000000e+00) #3
  %100 = fmul double 4.000000e+00, %99
  %101 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %100, double %98)
  %102 = fdiv double %101, 3.000000e+00
  %103 = call double @cos(double noundef %102) #3
  %104 = fmul double %97, %103
  %105 = fpext double %104 to x86_fp80
  %106 = load x86_fp80, x86_fp80* %13, align 16
  %107 = fdiv x86_fp80 %106, 0xK4000C000000000000000
  %108 = fsub x86_fp80 %105, %107
  %109 = fptrunc x86_fp80 %108 to double
  %110 = load double*, double** %12, align 8
  %111 = getelementptr inbounds double, double* %110, i64 1
  store double %109, double* %111, align 8
  %112 = load x86_fp80, x86_fp80* %16, align 16
  %113 = fptrunc x86_fp80 %112 to double
  %114 = call double @sqrt(double noundef %113) #3
  %115 = fmul double -2.000000e+00, %114
  %116 = load double, double* %19, align 8
  %117 = call double @atan(double noundef 1.000000e+00) #3
  %118 = fmul double 4.000000e+00, %117
  %119 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %118, double %116)
  %120 = fdiv double %119, 3.000000e+00
  %121 = call double @cos(double noundef %120) #3
  %122 = fmul double %115, %121
  %123 = fpext double %122 to x86_fp80
  %124 = load x86_fp80, x86_fp80* %13, align 16
  %125 = fdiv x86_fp80 %124, 0xK4000C000000000000000
  %126 = fsub x86_fp80 %123, %125
  %127 = fptrunc x86_fp80 %126 to double
  %128 = load double*, double** %12, align 8
  %129 = getelementptr inbounds double, double* %128, i64 2
  store double %127, double* %129, align 8
  br label %170

130:                                              ; preds = %6
  %131 = load i32*, i32** %11, align 8
  store i32 1, i32* %131, align 4
  %132 = load double, double* %18, align 8
  %133 = call double @sqrt(double noundef %132) #3
  %134 = load x86_fp80, x86_fp80* %17, align 16
  %135 = fptrunc x86_fp80 %134 to double
  %136 = call double @llvm.fabs.f64(double %135)
  %137 = fadd double %133, %136
  %138 = call double @pow(double noundef %137, double noundef 0x3FD5555555555555) #3
  %139 = load double*, double** %12, align 8
  %140 = getelementptr inbounds double, double* %139, i64 0
  store double %138, double* %140, align 8
  %141 = load x86_fp80, x86_fp80* %16, align 16
  %142 = load double*, double** %12, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  %144 = load double, double* %143, align 8
  %145 = fpext double %144 to x86_fp80
  %146 = fdiv x86_fp80 %141, %145
  %147 = load double*, double** %12, align 8
  %148 = getelementptr inbounds double, double* %147, i64 0
  %149 = load double, double* %148, align 8
  %150 = fpext double %149 to x86_fp80
  %151 = fadd x86_fp80 %150, %146
  %152 = fptrunc x86_fp80 %151 to double
  store double %152, double* %148, align 8
  %153 = load x86_fp80, x86_fp80* %17, align 16
  %154 = fcmp olt x86_fp80 %153, 0xK00000000000000000000
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 -1
  %157 = sitofp i32 %156 to double
  %158 = load double*, double** %12, align 8
  %159 = getelementptr inbounds double, double* %158, i64 0
  %160 = load double, double* %159, align 8
  %161 = fmul double %160, %157
  store double %161, double* %159, align 8
  %162 = load x86_fp80, x86_fp80* %13, align 16
  %163 = fdiv x86_fp80 %162, 0xK4000C000000000000000
  %164 = load double*, double** %12, align 8
  %165 = getelementptr inbounds double, double* %164, i64 0
  %166 = load double, double* %165, align 8
  %167 = fpext double %166 to x86_fp80
  %168 = fsub x86_fp80 %167, %163
  %169 = fptrunc x86_fp80 %168 to double
  store double %169, double* %165, align 8
  br label %170

170:                                              ; preds = %130, %65
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
