; ModuleID = './fp-cmp-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dnan = dso_local constant double 0x7FF8000000000000, align 8
@x = dso_local global double 1.000000e+00, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  store double 1.000000e+00, double* @x, align 8
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 false, label %4, label %5

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %7
  br i1 false, label %10, label %11

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10, %9
  br i1 false, label %12, label %13

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %11
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @link_error() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
