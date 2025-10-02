; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78720.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78720.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i64 524288, i64 0
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @bar(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i64 128, i64 0
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @baz(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i64 32, i64 0
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @foo(i8 noundef signext -1)
  %3 = icmp ne i64 %2, 524288
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = call i64 @bar(i8 noundef signext -1)
  %6 = icmp ne i64 %5, 128
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = call i64 @baz(i8 noundef signext -1)
  %9 = icmp ne i64 %8, 32
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = call i64 @foo(i8 noundef signext 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = call i64 @bar(i8 noundef signext 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = call i64 @baz(i8 noundef signext 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = call i64 @foo(i8 noundef signext 31)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call i64 @bar(i8 noundef signext 31)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i64 @baz(i8 noundef signext 31)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %13, %10, %7, %4, %0
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
