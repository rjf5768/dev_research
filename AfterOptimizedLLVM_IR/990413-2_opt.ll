; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990413-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990413-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %3 = call double @minus_zero()
  store double %3, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @asin(double noundef %4)
  store double %5, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fcmp une double %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal double @minus_zero() #0 {
  %1 = alloca %union.anon, align 8
  %2 = bitcast %union.anon* %1 to [2 x i32]*
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 0, i32* %3, align 8
  %4 = bitcast %union.anon* %1 to [2 x i32]*
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -2147483648, i32* %5, align 4
  %6 = bitcast %union.anon* %1 to double*
  %7 = load double, double* %6, align 8
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define internal double @asin(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fpext double %3 to x86_fp80
  %5 = load double, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fneg double %5
  %8 = call double @llvm.fmuladd.f64(double %7, double %6, double 1.000000e+00)
  %9 = fpext double %8 to x86_fp80
  %10 = call x86_fp80 @__sqrtl(x86_fp80 noundef %9)
  %11 = call x86_fp80 @__atan2l(x86_fp80 noundef %4, x86_fp80 noundef %10)
  %12 = fptrunc x86_fp80 %11 to double
  ret double %12
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__atan2l(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %6 = load x86_fp80, x86_fp80* %4, align 16
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = call x86_fp80 asm sideeffect "fpatan\0A\09", "={st},0,{st(1)},~{st(1)},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %6, x86_fp80 %7) #4, !srcloc !4
  store x86_fp80 %8, x86_fp80* %5, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  ret x86_fp80 %9
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__sqrtl(x86_fp80 noundef %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = call x86_fp80 asm sideeffect "fsqrt", "={st},0,~{dirflag},~{fpsr},~{flags}"(x86_fp80 %4) #4, !srcloc !5
  store x86_fp80 %5, x86_fp80* %3, align 16
  %6 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %6
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 443, i64 452}
!5 = !{i64 664}
