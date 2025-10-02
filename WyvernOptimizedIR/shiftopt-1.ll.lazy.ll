; ModuleID = './shiftopt-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftopt-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @utest(i32 noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
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
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @link_error() #1 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stest(i32 noundef %0) #0 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
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
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @utest(i32 noundef 9)
  call void @utest(i32 noundef 0)
  call void @stest(i32 noundef 9)
  call void @stest(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
