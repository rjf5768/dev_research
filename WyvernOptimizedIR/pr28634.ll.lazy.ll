; ModuleID = './pr28634.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr28634.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global double 0xC340000000000000, align 8
@y = dso_local global double 1.000000e+00, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load double, double* @y, align 8
  %3 = fcmp ogt double %2, 0.000000e+00
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load double, double* @x, align 8
  %6 = load double, double* @y, align 8
  %7 = fadd double %6, %5
  store double %7, double* @y, align 8
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  %9 = load double, double* @y, align 8
  %10 = load double, double* @x, align 8
  %11 = fadd double %10, 1.000000e+00
  %12 = fcmp une double %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %8
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13
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
