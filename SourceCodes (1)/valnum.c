; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/valnum.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/OptimizerEval/valnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %5, %8
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sub nsw i32 %9, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result1(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test2(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %5, %8
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sub nsw i32 %9, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result2(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test3(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result3(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 2, i32* %10, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test4(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result4(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 2, i32* %10, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test5(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 2, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  br label %59

41:                                               ; preds = %1
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 3, %50
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 2, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result5(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 2, i32* %23, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 3, %35
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 2, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %26
  br label %44

44:                                               ; preds = %43, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test6(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 3
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 3
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 2, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sub nsw i32 %41, %44
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 %45, i32* %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result6(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 3
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 3
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 2, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 0, i32* %32, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test7(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 2, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %1
  store i32 5, i32* %4, align 4
  store i32 5, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result7(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 2, i32* %15, align 4
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test8(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %41, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 2, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %15, !llvm.loop !4

44:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result8(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 2, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9, !llvm.loop !6

26:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test9(i32* noundef %0) #0 {
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
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %15, %16
  %18 = mul nsw i32 %17, 21
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %18, i32* %20, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result9(i32* noundef %0) #0 {
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
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 0, i32* %16, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test10(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = mul nsw i32 %28, 21
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result10(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test11(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 2, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32 2, i32* %34, align 4
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %15, !llvm.loop !7

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result11(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 3
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32 2, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %8, !llvm.loop !8

22:                                               ; preds = %8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 1, i32* %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_test12(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 2, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 2, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 2, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32 2, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %15, !llvm.loop !9

40:                                               ; preds = %15
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vnum_result12(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 3
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32 2, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %8, !llvm.loop !10

22:                                               ; preds = %8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 1, i32* %24, align 4
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
