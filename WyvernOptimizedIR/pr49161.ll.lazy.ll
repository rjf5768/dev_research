; ModuleID = './pr49161.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49161.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = load i32, i32* @c, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @c, align 4
  %.not = icmp eq i32 %2, %0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #2
  unreachable

5:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  switch i32 %0, label %5 [
    i32 3, label %2
    i32 4, label %3
    i32 6, label %4
  ]

2:                                                ; preds = %1
  br label %6

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %4
  call void @bar(i32 noundef -1)
  br label %9

9:                                                ; preds = %8, %7, %6
  call void @bar(i32 noundef 0)
  %.not = icmp eq i32 %0, 4
  br i1 %.not, label %11, label %10

10:                                               ; preds = %9
  call void @bar(i32 noundef 1)
  br label %11

11:                                               ; preds = %10, %9
  %.not1 = icmp eq i32 %0, 3
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %11
  call void @bar(i32 noundef -1)
  br label %13

13:                                               ; preds = %12, %11
  call void @bar(i32 noundef 2)
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i32 noundef 3)
  %1 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
