; ModuleID = './20001122-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20001122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global double* null, align 8
@a = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca double, align 8
  store double* %1, double** @p, align 8
  br label %2

2:                                                ; preds = %5, %0
  %.0 = phi double [ 1.000000e+00, %0 ], [ %3, %5 ]
  %3 = fmul double %.0, 5.000000e-01
  %4 = fadd double %3, 1.000000e+00
  store volatile double %4, double* %1, align 8
  br label %5

5:                                                ; preds = %2
  %6 = load volatile double, double* %1, align 8
  %7 = fcmp une double %6, 1.000000e+00
  br i1 %7, label %2, label %8, !llvm.loop !4

8:                                                ; preds = %5
  %9 = fadd double %.0, 1.000000e+00
  store volatile double %9, double* @a, align 8
  %10 = load volatile double, double* @a, align 8
  %11 = fcmp oeq double %10, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
