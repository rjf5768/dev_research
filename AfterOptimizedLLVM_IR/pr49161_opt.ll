; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49161.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49161.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @c, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @c, align 4
  %6 = icmp ne i32 %3, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #2
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %7 [
    i32 3, label %4
    i32 4, label %5
    i32 6, label %6
  ]

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %5
  br label %11

10:                                               ; preds = %6
  call void @bar(i32 noundef -1)
  br label %11

11:                                               ; preds = %10, %9, %8
  call void @bar(i32 noundef 0)
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @bar(i32 noundef 1)
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @bar(i32 noundef -1)
  br label %19

19:                                               ; preds = %18, %15
  call void @bar(i32 noundef 2)
  br label %20

20:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i32 noundef 3)
  %2 = load i32, i32* @c, align 4
  %3 = icmp ne i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
