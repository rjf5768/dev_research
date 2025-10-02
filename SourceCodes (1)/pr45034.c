; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45034.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45034.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, -128
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 127
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_neg() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i8 -128, i8* %1, align 1
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i8, i8* %1, align 1
  call void @fixnum_neg(i8 noundef signext %6, i8* noundef %2, i32* noundef %3)
  %7 = load i8, i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = load i32, i32* %3, align 4
  call void @foo(i32 noundef %8, i32 noundef %10, i32 noundef %11)
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i8, i8* %1, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, -128
  br i1 %17, label %25, label %18

18:                                               ; preds = %14, %5
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i8, i8* %1, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, -128
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21, %18
  %29 = load i8, i8* %1, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 127
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = load i8, i8* %1, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %1, align 1
  br label %5

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal void @fixnum_neg(i8 noundef signext %0, i8* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8, i8* %4, align 1
  store i8 %9, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %8, align 1
  %14 = load i8, i8* %8, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sle i32 %15, 127
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8, i8* %8, align 1
  %19 = sext i8 %18 to i32
  br label %28

20:                                               ; preds = %3
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 255, %22
  %24 = trunc i32 %23 to i8
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 0, %25
  %27 = sub nsw i32 %26, 1
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i32 [ %19, %17 ], [ %27, %20 ]
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %5, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, -128
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test_neg()
  %3 = icmp ne i32 %2, 0
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
