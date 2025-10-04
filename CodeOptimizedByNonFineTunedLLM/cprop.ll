; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/cprop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/cprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 9, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 9, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test2(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result2(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 9, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %4, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test3(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 12345, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 1, %9
  %11 = sub nsw i32 %10, 1234
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 123, %15
  %17 = add nsw i32 %16, 10
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result3(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 11112, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 12478, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test4(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 12345, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 1, %9
  %11 = sub nsw i32 %10, 1234
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 123, %15
  %17 = add nsw i32 %16, 10
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result4(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 11112, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 -12212, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test5(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 5, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 10, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 15, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 21
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %16, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result5(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 10, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 15, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 26, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test6(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 5, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 10
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %10, i32* %12, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 15
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %19, 21
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %20, i32* %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result6(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 50, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 75, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 105, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test7(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store i32 5, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 10, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 15, i32* %13, align 4
  store i32 5, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 21
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %16, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result7(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 10, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 15, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 26, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test8(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  store i32 6, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %10, i32* %12, align 4
  br label %17

13:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  %21 = mul nsw i32 %20, 21
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %21, i32* %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result8(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 4, i32* %9, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 3, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 210, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test9(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 21, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 20
  %16 = mul nsw i32 %15, 21
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9, !llvm.loop !4

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result9(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %8, !llvm.loop !6

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 21, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test10(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 10, i32* %3, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 21
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result10(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 210, %5
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test11(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %9, !llvm.loop !7

22:                                               ; preds = %9
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result11(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %8, !llvm.loop !8

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test12(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 21
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 25, %12
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result12(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 110, i32* %3, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test13(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 21
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 100, %19
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result13(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 115, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %18, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_test14(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 10, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  store i32 20, i32* %5, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i32 30, i32* %7, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 %33, %36
  %38 = sub nsw i32 %32, %37
  %39 = mul nsw i32 %31, %38
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cprop_result14(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 60, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %19, i32* %21, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 30
  %26 = mul nsw i32 20, %25
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 10, %27
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %15
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
