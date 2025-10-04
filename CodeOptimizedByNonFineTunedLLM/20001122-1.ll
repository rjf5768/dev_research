; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20001122-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20001122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global double* null, align 8
@a = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %3, align 8
  store double* %4, double** @p, align 8
  br label %5

5:                                                ; preds = %11, %0
  %6 = load double, double* %3, align 8
  store double %6, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = fmul double %7, 5.000000e-01
  store double %8, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = fadd double 1.000000e+00, %9
  store volatile double %10, double* %4, align 8
  br label %11

11:                                               ; preds = %5
  %12 = load volatile double, double* %4, align 8
  %13 = fcmp une double %12, 1.000000e+00
  br i1 %13, label %5, label %14, !llvm.loop !4

14:                                               ; preds = %11
  %15 = load double, double* %2, align 8
  %16 = fadd double 1.000000e+00, %15
  store volatile double %16, double* @a, align 8
  %17 = load volatile double, double* @a, align 8
  %18 = fcmp oeq double %17, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void @abort() #2
  unreachable

20:                                               ; preds = %14
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
