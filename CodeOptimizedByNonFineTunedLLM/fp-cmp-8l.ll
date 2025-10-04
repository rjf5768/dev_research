; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-8l.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-8l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* }
%struct.try = type { x86_fp80, x86_fp80, [6 x i32], [8 x i8] }

@main.data = internal constant [14 x { x86_fp80, x86_fp80, [6 x i32] }] [{ x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK7FFFC000000000000000, x86_fp80 0xK7FFFC000000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK00000000000000000000, x86_fp80 0xK7FFFC000000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK7FFFC000000000000000, x86_fp80 0xK00000000000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK00000000000000000000, x86_fp80 0xK00000000000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK40008000000000000000, x86_fp80 0xK3FFF8000000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK00000000000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK7FFF8000000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK7FFF8000000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK00000000000000000000, x86_fp80 0xKFFFF8000000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xKFFFF8000000000000000, x86_fp80 0xK3FFF8000000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xKFFFF8000000000000000, x86_fp80 0xKFFFF8000000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xKFFFF8000000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, { x86_fp80, x86_fp80, [6 x i32] } { x86_fp80 0xKFFFF8000000000000000, x86_fp80 0xK7FFF8000000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }], align 16
@main.tests = internal constant [6 x %struct.test] [%struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_isunordered, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_isunordered }, %struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_isless, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_isless }, %struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_islessequal, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_islessequal }, %struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_isgreater, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_isgreater }, %struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_isgreaterequal, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_isgreaterequal }, %struct.test { x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_islessgreater, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @test_not_islessgreater }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 14, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 14
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %41, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* bitcast ([14 x { x86_fp80, x86_fp80, [6 x i32] }]* @main.data to [14 x %struct.try]*), i64 0, i64 %14
  %16 = getelementptr inbounds %struct.try, %struct.try* %15, i32 0, i32 0
  %17 = load x86_fp80, x86_fp80* %16, align 16
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* bitcast ([14 x { x86_fp80, x86_fp80, [6 x i32] }]* @main.data to [14 x %struct.try]*), i64 0, i64 %19
  %21 = getelementptr inbounds %struct.try, %struct.try* %20, i32 0, i32 1
  %22 = load x86_fp80, x86_fp80* %21, align 16
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* bitcast ([14 x { x86_fp80, x86_fp80, [6 x i32] }]* @main.data to [14 x %struct.try]*), i64 0, i64 %24
  %26 = getelementptr inbounds %struct.try, %struct.try* %25, i32 0, i32 2
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.test, %struct.test* %33, i32 0, i32 0
  %35 = load x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %34, align 16
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.test, %struct.test* %38, i32 0, i32 1
  %40 = load x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %39, align 8
  call void @one_test(x86_fp80 noundef %17, x86_fp80 noundef %22, i32 noundef %30, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* noundef %35, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* noundef %40)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %9, !llvm.loop !4

44:                                               ; preds = %9
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5, !llvm.loop !6

48:                                               ; preds = %5
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_isunordered(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp uno x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_isunordered(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp uno x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_isless(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp olt x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_isless(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp olt x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_islessequal(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp ole x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_islessequal(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp ole x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_isgreater(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp ogt x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_isgreater(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp ogt x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_isgreaterequal(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp oge x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_isgreaterequal(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp oge x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_islessgreater(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp one x86_fp80 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @test_not_islessgreater(x86_fp80 noundef %0, x86_fp80 noundef %1, x86_fp80 noundef %2, x86_fp80 noundef %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  store x86_fp80 %3, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load x86_fp80, x86_fp80* %6, align 16
  %11 = fcmp one x86_fp80 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load x86_fp80, x86_fp80* %7, align 16
  br label %16

14:                                               ; preds = %4
  %15 = load x86_fp80, x86_fp80* %8, align 16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi x86_fp80 [ %13, %12 ], [ %15, %14 ]
  ret x86_fp80 %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @one_test(x86_fp80 noundef %0, x86_fp80 noundef %1, i32 noundef %2, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* noundef %3, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* noundef %4) #0 {
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca i32, align 4
  %9 = alloca x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, align 8
  %10 = alloca x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, align 8
  store x86_fp80 %0, x86_fp80* %6, align 16
  store x86_fp80 %1, x86_fp80* %7, align 16
  store i32 %2, i32* %8, align 4
  store x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* %3, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %9, align 8
  store x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)* %4, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %10, align 8
  %11 = load x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %9, align 8
  %12 = load x86_fp80, x86_fp80* %6, align 16
  %13 = load x86_fp80, x86_fp80* %7, align 16
  %14 = call x86_fp80 %11(x86_fp80 noundef %12, x86_fp80 noundef %13, x86_fp80 noundef 0xK3FFF8000000000000000, x86_fp80 noundef 0xK40008000000000000000)
  %15 = fcmp oeq x86_fp80 %14, 0xK3FFF8000000000000000
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  call void @abort() #2
  unreachable

20:                                               ; preds = %5
  %21 = load x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)*, x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80)** %10, align 8
  %22 = load x86_fp80, x86_fp80* %6, align 16
  %23 = load x86_fp80, x86_fp80* %7, align 16
  %24 = call x86_fp80 %21(x86_fp80 noundef %22, x86_fp80 noundef %23, x86_fp80 noundef 0xK4000C000000000000000, x86_fp80 noundef 0xK40018000000000000000)
  %25 = fcmp oeq x86_fp80 %24, 0xK40018000000000000000
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  call void @abort() #2
  unreachable

30:                                               ; preds = %20
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
