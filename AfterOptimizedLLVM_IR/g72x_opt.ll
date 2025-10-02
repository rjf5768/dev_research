; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g72x.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g72x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@power2 = internal global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @g72x_init_state(%struct.g72x_state* noundef %0) #0 {
  %2 = alloca %struct.g72x_state*, align 8
  %3 = alloca i32, align 4
  store %struct.g72x_state* %0, %struct.g72x_state** %2, align 8
  %4 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %5 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %4, i32 0, i32 0
  store i64 34816, i64* %5, align 8
  %6 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %7 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %6, i32 0, i32 1
  store i16 544, i16* %7, align 8
  %8 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %9 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %8, i32 0, i32 2
  store i16 0, i16* %9, align 2
  %10 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %11 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %10, i32 0, i32 3
  store i16 0, i16* %11, align 4
  %12 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %13 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %12, i32 0, i32 4
  store i16 0, i16* %13, align 2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %19 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %18, i32 0, i32 5
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i16], [2 x i16]* %19, i64 0, i64 %21
  store i16 0, i16* %22, align 2
  %23 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %24 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %23, i32 0, i32 7
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i16], [2 x i16]* %24, i64 0, i64 %26
  store i16 0, i16* %27, align 2
  %28 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %29 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %28, i32 0, i32 9
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i16], [2 x i16]* %29, i64 0, i64 %31
  store i16 32, i16* %32, align 2
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %14, !llvm.loop !4

36:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %42 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %41, i32 0, i32 6
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i16], [6 x i16]* %42, i64 0, i64 %44
  store i16 0, i16* %45, align 2
  %46 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %47 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %46, i32 0, i32 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x i16], [6 x i16]* %47, i64 0, i64 %49
  store i16 32, i16* %50, align 2
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %37, !llvm.loop !6

54:                                               ; preds = %37
  %55 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %56 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %55, i32 0, i32 10
  store i8 0, i8* %56, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predictor_zero(%struct.g72x_state* noundef %0) #0 {
  %2 = alloca %struct.g72x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.g72x_state* %0, %struct.g72x_state** %2, align 8
  %5 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %5, i32 0, i32 6
  %7 = getelementptr inbounds [6 x i16], [6 x i16]* %6, i64 0, i64 0
  %8 = load i16, i16* %7, align 4
  %9 = sext i16 %8 to i32
  %10 = ashr i32 %9, 2
  %11 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %12 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %11, i32 0, i32 8
  %13 = getelementptr inbounds [6 x i16], [6 x i16]* %12, i64 0, i64 0
  %14 = load i16, i16* %13, align 4
  %15 = sext i16 %14 to i32
  %16 = call i32 @fmult(i32 noundef %10, i32 noundef %15)
  store i32 %16, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %39, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %22 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %21, i32 0, i32 6
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i16], [6 x i16]* %22, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = ashr i32 %27, 2
  %29 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %30 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %29, i32 0, i32 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i16], [6 x i16]* %30, i64 0, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = call i32 @fmult(i32 noundef %28, i32 noundef %35)
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %17, !llvm.loop !7

42:                                               ; preds = %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fmult(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 0, %17
  %19 = and i32 %18, 8191
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %19, %16 ]
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %5, align 2
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = call i32 @quan(i32 noundef %24, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %26 = sub nsw i32 %25, 6
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %6, align 2
  %28 = load i16, i16* %5, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %51

32:                                               ; preds = %20
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i16, i16* %5, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* %6, align 2
  %40 = sext i16 %39 to i32
  %41 = ashr i32 %38, %40
  br label %49

42:                                               ; preds = %32
  %43 = load i16, i16* %5, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* %6, align 2
  %46 = sext i16 %45 to i32
  %47 = sub nsw i32 0, %46
  %48 = shl i32 %44, %47
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i32 [ %41, %36 ], [ %48, %42 ]
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi i32 [ 32, %31 ], [ %50, %49 ]
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %7, align 2
  %54 = load i16, i16* %6, align 2
  %55 = sext i16 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 6
  %58 = and i32 %57, 15
  %59 = add nsw i32 %55, %58
  %60 = sub nsw i32 %59, 13
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  %62 = load i16, i16* %7, align 2
  %63 = sext i16 %62 to i32
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 63
  %66 = mul nsw i32 %63, %65
  %67 = add nsw i32 %66, 48
  %68 = ashr i32 %67, 4
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %10, align 2
  %70 = load i16, i16* %8, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %51
  %74 = load i16, i16* %10, align 2
  %75 = sext i16 %74 to i32
  %76 = load i16, i16* %8, align 2
  %77 = sext i16 %76 to i32
  %78 = shl i32 %75, %77
  %79 = and i32 %78, 32767
  br label %87

80:                                               ; preds = %51
  %81 = load i16, i16* %10, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* %8, align 2
  %84 = sext i16 %83 to i32
  %85 = sub nsw i32 0, %84
  %86 = ashr i32 %82, %85
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi i32 [ %79, %73 ], [ %86, %80 ]
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %11, align 2
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = xor i32 %90, %91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i16, i16* %11, align 2
  %96 = sext i16 %95 to i32
  %97 = sub nsw i32 0, %96
  br label %101

98:                                               ; preds = %87
  %99 = load i16, i16* %11, align 2
  %100 = sext i16 %99 to i32
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i32 [ %97, %94 ], [ %100, %98 ]
  ret i32 %102
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predictor_pole(%struct.g72x_state* noundef %0) #0 {
  %2 = alloca %struct.g72x_state*, align 8
  store %struct.g72x_state* %0, %struct.g72x_state** %2, align 8
  %3 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %4 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %3, i32 0, i32 5
  %5 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 1
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = ashr i32 %7, 2
  %9 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %10 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %9, i32 0, i32 9
  %11 = getelementptr inbounds [2 x i16], [2 x i16]* %10, i64 0, i64 1
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = call i32 @fmult(i32 noundef %8, i32 noundef %13)
  %15 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %16 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %15, i32 0, i32 5
  %17 = getelementptr inbounds [2 x i16], [2 x i16]* %16, i64 0, i64 0
  %18 = load i16, i16* %17, align 8
  %19 = sext i16 %18 to i32
  %20 = ashr i32 %19, 2
  %21 = load %struct.g72x_state*, %struct.g72x_state** %2, align 8
  %22 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %21, i32 0, i32 9
  %23 = getelementptr inbounds [2 x i16], [2 x i16]* %22, i64 0, i64 0
  %24 = load i16, i16* %23, align 8
  %25 = sext i16 %24 to i32
  %26 = call i32 @fmult(i32 noundef %20, i32 noundef %25)
  %27 = add nsw i32 %14, %26
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @step_size(%struct.g72x_state* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g72x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.g72x_state* %0, %struct.g72x_state** %3, align 8
  %7 = load %struct.g72x_state*, %struct.g72x_state** %3, align 8
  %8 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i32 0, i32 4
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp sge i32 %10, 256
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.g72x_state*, %struct.g72x_state** %3, align 8
  %14 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = sext i16 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.g72x_state*, %struct.g72x_state** %3, align 8
  %19 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = ashr i64 %20, 6
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.g72x_state*, %struct.g72x_state** %3, align 8
  %24 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = sext i16 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.g72x_state*, %struct.g72x_state** %3, align 8
  %30 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = ashr i32 %39, 6
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %49, 63
  %51 = ashr i32 %50, 6
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %43
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantize(i32 noundef %0, i32 noundef %1, i16* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @abs(i32 noundef %16) #3
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %10, align 2
  %19 = load i16, i16* %10, align 2
  %20 = sext i16 %19 to i32
  %21 = ashr i32 %20, 1
  %22 = call i32 @quan(i32 noundef %21, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %11, align 2
  %24 = load i16, i16* %10, align 2
  %25 = sext i16 %24 to i32
  %26 = shl i32 %25, 7
  %27 = load i16, i16* %11, align 2
  %28 = sext i16 %27 to i32
  %29 = ashr i32 %26, %28
  %30 = and i32 %29, 127
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %12, align 2
  %32 = load i16, i16* %11, align 2
  %33 = sext i16 %32 to i32
  %34 = shl i32 %33, 7
  %35 = load i16, i16* %12, align 2
  %36 = sext i16 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %13, align 2
  %39 = load i16, i16* %13, align 2
  %40 = sext i16 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 2
  %43 = sub nsw i32 %40, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %14, align 2
  %45 = load i16, i16* %14, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16*, i16** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @quan(i32 noundef %46, i16* noundef %47, i32 noundef %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 1
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %5, align 4
  br label %67

58:                                               ; preds = %4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 1
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %61, %52
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @quan(i32 noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i16*, i16** %5, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %15, i16** %5, align 8
  %16 = load i16, i16* %14, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8, !llvm.loop !8

24:                                               ; preds = %19, %8
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reconstruct(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %8, align 2
  %17 = load i16, i16* %8, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -32768, i32 0
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load i16, i16* %8, align 2
  %27 = sext i16 %26 to i32
  %28 = ashr i32 %27, 7
  %29 = and i32 %28, 15
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %9, align 2
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = and i32 %32, 127
  %34 = add nsw i32 128, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %10, align 2
  %36 = load i16, i16* %10, align 2
  %37 = sext i16 %36 to i32
  %38 = shl i32 %37, 7
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = sub nsw i32 14, %40
  %42 = ashr i32 %38, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %11, align 2
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i16, i16* %11, align 2
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %48, 32768
  br label %53

50:                                               ; preds = %25
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %49, %46 ], [ %52, %50 ]
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, %struct.g72x_state* noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.g72x_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i8, align 1
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i16, align 2
  %33 = alloca i16, align 2
  %34 = alloca i16, align 2
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.g72x_state* %7, %struct.g72x_state** %16, align 8
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %34, align 2
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 32767
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %18, align 2
  %43 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %44 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = ashr i64 %45, 15
  %47 = trunc i64 %46 to i16
  store i16 %47, i16* %29, align 2
  %48 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %49 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = ashr i64 %50, 10
  %52 = and i64 %51, 31
  %53 = trunc i64 %52 to i16
  store i16 %53, i16* %32, align 2
  %54 = load i16, i16* %32, align 2
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 32, %55
  %57 = load i16, i16* %29, align 2
  %58 = sext i16 %57 to i32
  %59 = shl i32 %56, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %33, align 2
  %61 = load i16, i16* %29, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp sgt i32 %62, 9
  br i1 %63, label %64, label %65

64:                                               ; preds = %8
  br label %68

65:                                               ; preds = %8
  %66 = load i16, i16* %33, align 2
  %67 = sext i16 %66 to i32
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 31744, %64 ], [ %67, %65 ]
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %30, align 2
  %71 = load i16, i16* %30, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %30, align 2
  %74 = sext i16 %73 to i32
  %75 = ashr i32 %74, 1
  %76 = add nsw i32 %72, %75
  %77 = ashr i32 %76, 1
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %31, align 2
  %79 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %80 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %79, i32 0, i32 10
  %81 = load i8, i8* %80, align 4
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i8 0, i8* %28, align 1
  br label %94

85:                                               ; preds = %68
  %86 = load i16, i16* %18, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* %31, align 2
  %89 = sext i16 %88 to i32
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i8 0, i8* %28, align 1
  br label %93

92:                                               ; preds = %85
  store i8 1, i8* %28, align 1
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  %99 = ashr i32 %98, 5
  %100 = add nsw i32 %95, %99
  %101 = trunc i32 %100 to i16
  %102 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %103 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %102, i32 0, i32 1
  store i16 %101, i16* %103, align 8
  %104 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %105 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %104, i32 0, i32 1
  %106 = load i16, i16* %105, align 8
  %107 = sext i16 %106 to i32
  %108 = icmp slt i32 %107, 544
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %111 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %110, i32 0, i32 1
  store i16 544, i16* %111, align 8
  br label %122

112:                                              ; preds = %94
  %113 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %114 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %113, i32 0, i32 1
  %115 = load i16, i16* %114, align 8
  %116 = sext i16 %115 to i32
  %117 = icmp sgt i32 %116, 5120
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %120 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %119, i32 0, i32 1
  store i16 5120, i16* %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  br label %122

122:                                              ; preds = %121, %109
  %123 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %124 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %123, i32 0, i32 1
  %125 = load i16, i16* %124, align 8
  %126 = sext i16 %125 to i64
  %127 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %128 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 0, %129
  %131 = ashr i64 %130, 6
  %132 = add nsw i64 %126, %131
  %133 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %134 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load i8, i8* %28, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %122
  %141 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %142 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %141, i32 0, i32 5
  %143 = getelementptr inbounds [2 x i16], [2 x i16]* %142, i64 0, i64 0
  store i16 0, i16* %143, align 8
  %144 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %145 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %144, i32 0, i32 5
  %146 = getelementptr inbounds [2 x i16], [2 x i16]* %145, i64 0, i64 1
  store i16 0, i16* %146, align 2
  %147 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %148 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %147, i32 0, i32 6
  %149 = getelementptr inbounds [6 x i16], [6 x i16]* %148, i64 0, i64 0
  store i16 0, i16* %149, align 4
  %150 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %151 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %150, i32 0, i32 6
  %152 = getelementptr inbounds [6 x i16], [6 x i16]* %151, i64 0, i64 1
  store i16 0, i16* %152, align 2
  %153 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %154 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %153, i32 0, i32 6
  %155 = getelementptr inbounds [6 x i16], [6 x i16]* %154, i64 0, i64 2
  store i16 0, i16* %155, align 4
  %156 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %157 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %156, i32 0, i32 6
  %158 = getelementptr inbounds [6 x i16], [6 x i16]* %157, i64 0, i64 3
  store i16 0, i16* %158, align 2
  %159 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %160 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %159, i32 0, i32 6
  %161 = getelementptr inbounds [6 x i16], [6 x i16]* %160, i64 0, i64 4
  store i16 0, i16* %161, align 4
  %162 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %163 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %162, i32 0, i32 6
  %164 = getelementptr inbounds [6 x i16], [6 x i16]* %163, i64 0, i64 5
  store i16 0, i16* %164, align 2
  br label %443

165:                                              ; preds = %122
  %166 = load i16, i16* %34, align 2
  %167 = sext i16 %166 to i32
  %168 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %169 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %168, i32 0, i32 7
  %170 = getelementptr inbounds [2 x i16], [2 x i16]* %169, i64 0, i64 0
  %171 = load i16, i16* %170, align 8
  %172 = sext i16 %171 to i32
  %173 = xor i32 %167, %172
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %24, align 2
  %175 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %176 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %175, i32 0, i32 5
  %177 = getelementptr inbounds [2 x i16], [2 x i16]* %176, i64 0, i64 1
  %178 = load i16, i16* %177, align 2
  %179 = sext i16 %178 to i32
  %180 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %181 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %180, i32 0, i32 5
  %182 = getelementptr inbounds [2 x i16], [2 x i16]* %181, i64 0, i64 1
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  %185 = ashr i32 %184, 7
  %186 = sub nsw i32 %179, %185
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %21, align 2
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %281

190:                                              ; preds = %165
  %191 = load i16, i16* %24, align 2
  %192 = sext i16 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %196 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %195, i32 0, i32 5
  %197 = getelementptr inbounds [2 x i16], [2 x i16]* %196, i64 0, i64 0
  %198 = load i16, i16* %197, align 8
  %199 = sext i16 %198 to i32
  br label %207

200:                                              ; preds = %190
  %201 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %202 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %201, i32 0, i32 5
  %203 = getelementptr inbounds [2 x i16], [2 x i16]* %202, i64 0, i64 0
  %204 = load i16, i16* %203, align 8
  %205 = sext i16 %204 to i32
  %206 = sub nsw i32 0, %205
  br label %207

207:                                              ; preds = %200, %194
  %208 = phi i32 [ %199, %194 ], [ %206, %200 ]
  %209 = trunc i32 %208 to i16
  store i16 %209, i16* %26, align 2
  %210 = load i16, i16* %26, align 2
  %211 = sext i16 %210 to i32
  %212 = icmp slt i32 %211, -8191
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i16, i16* %21, align 2
  %215 = sext i16 %214 to i32
  %216 = sub nsw i32 %215, 256
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* %21, align 2
  br label %236

218:                                              ; preds = %207
  %219 = load i16, i16* %26, align 2
  %220 = sext i16 %219 to i32
  %221 = icmp sgt i32 %220, 8191
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i16, i16* %21, align 2
  %224 = sext i16 %223 to i32
  %225 = add nsw i32 %224, 255
  %226 = trunc i32 %225 to i16
  store i16 %226, i16* %21, align 2
  br label %235

227:                                              ; preds = %218
  %228 = load i16, i16* %26, align 2
  %229 = sext i16 %228 to i32
  %230 = ashr i32 %229, 5
  %231 = load i16, i16* %21, align 2
  %232 = sext i16 %231 to i32
  %233 = add nsw i32 %232, %230
  %234 = trunc i32 %233 to i16
  store i16 %234, i16* %21, align 2
  br label %235

235:                                              ; preds = %227, %222
  br label %236

236:                                              ; preds = %235, %213
  %237 = load i16, i16* %34, align 2
  %238 = sext i16 %237 to i32
  %239 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %240 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %239, i32 0, i32 7
  %241 = getelementptr inbounds [2 x i16], [2 x i16]* %240, i64 0, i64 1
  %242 = load i16, i16* %241, align 2
  %243 = sext i16 %242 to i32
  %244 = xor i32 %238, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %236
  %247 = load i16, i16* %21, align 2
  %248 = sext i16 %247 to i32
  %249 = icmp sle i32 %248, -12160
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i16 -12288, i16* %21, align 2
  br label %262

251:                                              ; preds = %246
  %252 = load i16, i16* %21, align 2
  %253 = sext i16 %252 to i32
  %254 = icmp sge i32 %253, 12416
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i16 12288, i16* %21, align 2
  br label %261

256:                                              ; preds = %251
  %257 = load i16, i16* %21, align 2
  %258 = sext i16 %257 to i32
  %259 = sub nsw i32 %258, 128
  %260 = trunc i32 %259 to i16
  store i16 %260, i16* %21, align 2
  br label %261

261:                                              ; preds = %256, %255
  br label %262

262:                                              ; preds = %261, %250
  br label %280

263:                                              ; preds = %236
  %264 = load i16, i16* %21, align 2
  %265 = sext i16 %264 to i32
  %266 = icmp sle i32 %265, -12416
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  store i16 -12288, i16* %21, align 2
  br label %279

268:                                              ; preds = %263
  %269 = load i16, i16* %21, align 2
  %270 = sext i16 %269 to i32
  %271 = icmp sge i32 %270, 12160
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  store i16 12288, i16* %21, align 2
  br label %278

273:                                              ; preds = %268
  %274 = load i16, i16* %21, align 2
  %275 = sext i16 %274 to i32
  %276 = add nsw i32 %275, 128
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %21, align 2
  br label %278

278:                                              ; preds = %273, %272
  br label %279

279:                                              ; preds = %278, %267
  br label %280

280:                                              ; preds = %279, %262
  br label %281

281:                                              ; preds = %280, %165
  %282 = load i16, i16* %21, align 2
  %283 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %284 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %283, i32 0, i32 5
  %285 = getelementptr inbounds [2 x i16], [2 x i16]* %284, i64 0, i64 1
  store i16 %282, i16* %285, align 2
  %286 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %287 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %286, i32 0, i32 5
  %288 = getelementptr inbounds [2 x i16], [2 x i16]* %287, i64 0, i64 0
  %289 = load i16, i16* %288, align 8
  %290 = sext i16 %289 to i32
  %291 = ashr i32 %290, 8
  %292 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %293 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %292, i32 0, i32 5
  %294 = getelementptr inbounds [2 x i16], [2 x i16]* %293, i64 0, i64 0
  %295 = load i16, i16* %294, align 8
  %296 = sext i16 %295 to i32
  %297 = sub nsw i32 %296, %291
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %294, align 8
  %299 = load i32, i32* %15, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %322

301:                                              ; preds = %281
  %302 = load i16, i16* %24, align 2
  %303 = sext i16 %302 to i32
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %301
  %306 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %307 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %306, i32 0, i32 5
  %308 = getelementptr inbounds [2 x i16], [2 x i16]* %307, i64 0, i64 0
  %309 = load i16, i16* %308, align 8
  %310 = sext i16 %309 to i32
  %311 = add nsw i32 %310, 192
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %308, align 8
  br label %321

313:                                              ; preds = %301
  %314 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %315 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %314, i32 0, i32 5
  %316 = getelementptr inbounds [2 x i16], [2 x i16]* %315, i64 0, i64 0
  %317 = load i16, i16* %316, align 8
  %318 = sext i16 %317 to i32
  %319 = sub nsw i32 %318, 192
  %320 = trunc i32 %319 to i16
  store i16 %320, i16* %316, align 8
  br label %321

321:                                              ; preds = %313, %305
  br label %322

322:                                              ; preds = %321, %281
  %323 = load i16, i16* %21, align 2
  %324 = sext i16 %323 to i32
  %325 = sub nsw i32 15360, %324
  %326 = trunc i32 %325 to i16
  store i16 %326, i16* %22, align 2
  %327 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %328 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %327, i32 0, i32 5
  %329 = getelementptr inbounds [2 x i16], [2 x i16]* %328, i64 0, i64 0
  %330 = load i16, i16* %329, align 8
  %331 = sext i16 %330 to i32
  %332 = load i16, i16* %22, align 2
  %333 = sext i16 %332 to i32
  %334 = sub nsw i32 0, %333
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %322
  %337 = load i16, i16* %22, align 2
  %338 = sext i16 %337 to i32
  %339 = sub nsw i32 0, %338
  %340 = trunc i32 %339 to i16
  %341 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %342 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %341, i32 0, i32 5
  %343 = getelementptr inbounds [2 x i16], [2 x i16]* %342, i64 0, i64 0
  store i16 %340, i16* %343, align 8
  br label %359

344:                                              ; preds = %322
  %345 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %346 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %345, i32 0, i32 5
  %347 = getelementptr inbounds [2 x i16], [2 x i16]* %346, i64 0, i64 0
  %348 = load i16, i16* %347, align 8
  %349 = sext i16 %348 to i32
  %350 = load i16, i16* %22, align 2
  %351 = sext i16 %350 to i32
  %352 = icmp sgt i32 %349, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %344
  %354 = load i16, i16* %22, align 2
  %355 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %356 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %355, i32 0, i32 5
  %357 = getelementptr inbounds [2 x i16], [2 x i16]* %356, i64 0, i64 0
  store i16 %354, i16* %357, align 8
  br label %358

358:                                              ; preds = %353, %344
  br label %359

359:                                              ; preds = %358, %336
  store i32 0, i32* %17, align 4
  br label %360

360:                                              ; preds = %439, %359
  %361 = load i32, i32* %17, align 4
  %362 = icmp slt i32 %361, 6
  br i1 %362, label %363, label %442

363:                                              ; preds = %360
  %364 = load i32, i32* %9, align 4
  %365 = icmp eq i32 %364, 5
  br i1 %365, label %366, label %384

366:                                              ; preds = %363
  %367 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %368 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %367, i32 0, i32 6
  %369 = load i32, i32* %17, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [6 x i16], [6 x i16]* %368, i64 0, i64 %370
  %372 = load i16, i16* %371, align 2
  %373 = sext i16 %372 to i32
  %374 = ashr i32 %373, 9
  %375 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %376 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %375, i32 0, i32 6
  %377 = load i32, i32* %17, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [6 x i16], [6 x i16]* %376, i64 0, i64 %378
  %380 = load i16, i16* %379, align 2
  %381 = sext i16 %380 to i32
  %382 = sub nsw i32 %381, %374
  %383 = trunc i32 %382 to i16
  store i16 %383, i16* %379, align 2
  br label %402

384:                                              ; preds = %363
  %385 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %386 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %385, i32 0, i32 6
  %387 = load i32, i32* %17, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [6 x i16], [6 x i16]* %386, i64 0, i64 %388
  %390 = load i16, i16* %389, align 2
  %391 = sext i16 %390 to i32
  %392 = ashr i32 %391, 8
  %393 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %394 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %393, i32 0, i32 6
  %395 = load i32, i32* %17, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [6 x i16], [6 x i16]* %394, i64 0, i64 %396
  %398 = load i16, i16* %397, align 2
  %399 = sext i16 %398 to i32
  %400 = sub nsw i32 %399, %392
  %401 = trunc i32 %400 to i16
  store i16 %401, i16* %397, align 2
  br label %402

402:                                              ; preds = %384, %366
  %403 = load i32, i32* %13, align 4
  %404 = and i32 %403, 32767
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %438

406:                                              ; preds = %402
  %407 = load i32, i32* %13, align 4
  %408 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %409 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %408, i32 0, i32 8
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [6 x i16], [6 x i16]* %409, i64 0, i64 %411
  %413 = load i16, i16* %412, align 2
  %414 = sext i16 %413 to i32
  %415 = xor i32 %407, %414
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %427

417:                                              ; preds = %406
  %418 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %419 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %418, i32 0, i32 6
  %420 = load i32, i32* %17, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [6 x i16], [6 x i16]* %419, i64 0, i64 %421
  %423 = load i16, i16* %422, align 2
  %424 = sext i16 %423 to i32
  %425 = add nsw i32 %424, 128
  %426 = trunc i32 %425 to i16
  store i16 %426, i16* %422, align 2
  br label %437

427:                                              ; preds = %406
  %428 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %429 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %428, i32 0, i32 6
  %430 = load i32, i32* %17, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [6 x i16], [6 x i16]* %429, i64 0, i64 %431
  %433 = load i16, i16* %432, align 2
  %434 = sext i16 %433 to i32
  %435 = sub nsw i32 %434, 128
  %436 = trunc i32 %435 to i16
  store i16 %436, i16* %432, align 2
  br label %437

437:                                              ; preds = %427, %417
  br label %438

438:                                              ; preds = %437, %402
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %17, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %17, align 4
  br label %360, !llvm.loop !9

442:                                              ; preds = %360
  br label %443

443:                                              ; preds = %442, %140
  store i32 5, i32* %17, align 4
  br label %444

444:                                              ; preds = %460, %443
  %445 = load i32, i32* %17, align 4
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %463

447:                                              ; preds = %444
  %448 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %449 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %448, i32 0, i32 8
  %450 = load i32, i32* %17, align 4
  %451 = sub nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [6 x i16], [6 x i16]* %449, i64 0, i64 %452
  %454 = load i16, i16* %453, align 2
  %455 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %456 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %455, i32 0, i32 8
  %457 = load i32, i32* %17, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [6 x i16], [6 x i16]* %456, i64 0, i64 %458
  store i16 %454, i16* %459, align 2
  br label %460

460:                                              ; preds = %447
  %461 = load i32, i32* %17, align 4
  %462 = add nsw i32 %461, -1
  store i32 %462, i32* %17, align 4
  br label %444, !llvm.loop !10

463:                                              ; preds = %444
  %464 = load i16, i16* %18, align 2
  %465 = sext i16 %464 to i32
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %463
  %468 = load i32, i32* %13, align 4
  %469 = icmp sge i32 %468, 0
  %470 = zext i1 %469 to i64
  %471 = select i1 %469, i32 32, i32 64544
  %472 = trunc i32 %471 to i16
  %473 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %474 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %473, i32 0, i32 8
  %475 = getelementptr inbounds [6 x i16], [6 x i16]* %474, i64 0, i64 0
  store i16 %472, i16* %475, align 4
  br label %512

476:                                              ; preds = %463
  %477 = load i16, i16* %18, align 2
  %478 = sext i16 %477 to i32
  %479 = call i32 @quan(i32 noundef %478, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %480 = trunc i32 %479 to i16
  store i16 %480, i16* %19, align 2
  %481 = load i32, i32* %13, align 4
  %482 = icmp sge i32 %481, 0
  br i1 %482, label %483, label %494

483:                                              ; preds = %476
  %484 = load i16, i16* %19, align 2
  %485 = sext i16 %484 to i32
  %486 = shl i32 %485, 6
  %487 = load i16, i16* %18, align 2
  %488 = sext i16 %487 to i32
  %489 = shl i32 %488, 6
  %490 = load i16, i16* %19, align 2
  %491 = sext i16 %490 to i32
  %492 = ashr i32 %489, %491
  %493 = add nsw i32 %486, %492
  br label %506

494:                                              ; preds = %476
  %495 = load i16, i16* %19, align 2
  %496 = sext i16 %495 to i32
  %497 = shl i32 %496, 6
  %498 = load i16, i16* %18, align 2
  %499 = sext i16 %498 to i32
  %500 = shl i32 %499, 6
  %501 = load i16, i16* %19, align 2
  %502 = sext i16 %501 to i32
  %503 = ashr i32 %500, %502
  %504 = add nsw i32 %497, %503
  %505 = sub nsw i32 %504, 1024
  br label %506

506:                                              ; preds = %494, %483
  %507 = phi i32 [ %493, %483 ], [ %505, %494 ]
  %508 = trunc i32 %507 to i16
  %509 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %510 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %509, i32 0, i32 8
  %511 = getelementptr inbounds [6 x i16], [6 x i16]* %510, i64 0, i64 0
  store i16 %508, i16* %511, align 4
  br label %512

512:                                              ; preds = %506, %467
  %513 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %514 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %513, i32 0, i32 9
  %515 = getelementptr inbounds [2 x i16], [2 x i16]* %514, i64 0, i64 0
  %516 = load i16, i16* %515, align 8
  %517 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %518 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %517, i32 0, i32 9
  %519 = getelementptr inbounds [2 x i16], [2 x i16]* %518, i64 0, i64 1
  store i16 %516, i16* %519, align 2
  %520 = load i32, i32* %14, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %512
  %523 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %524 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %523, i32 0, i32 9
  %525 = getelementptr inbounds [2 x i16], [2 x i16]* %524, i64 0, i64 0
  store i16 32, i16* %525, align 8
  br label %578

526:                                              ; preds = %512
  %527 = load i32, i32* %14, align 4
  %528 = icmp sgt i32 %527, 0
  br i1 %528, label %529, label %546

529:                                              ; preds = %526
  %530 = load i32, i32* %14, align 4
  %531 = call i32 @quan(i32 noundef %530, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %532 = trunc i32 %531 to i16
  store i16 %532, i16* %19, align 2
  %533 = load i16, i16* %19, align 2
  %534 = sext i16 %533 to i32
  %535 = shl i32 %534, 6
  %536 = load i32, i32* %14, align 4
  %537 = shl i32 %536, 6
  %538 = load i16, i16* %19, align 2
  %539 = sext i16 %538 to i32
  %540 = ashr i32 %537, %539
  %541 = add nsw i32 %535, %540
  %542 = trunc i32 %541 to i16
  %543 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %544 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %543, i32 0, i32 9
  %545 = getelementptr inbounds [2 x i16], [2 x i16]* %544, i64 0, i64 0
  store i16 %542, i16* %545, align 8
  br label %577

546:                                              ; preds = %526
  %547 = load i32, i32* %14, align 4
  %548 = icmp sgt i32 %547, -32768
  br i1 %548, label %549, label %572

549:                                              ; preds = %546
  %550 = load i32, i32* %14, align 4
  %551 = sub nsw i32 0, %550
  %552 = trunc i32 %551 to i16
  store i16 %552, i16* %18, align 2
  %553 = load i16, i16* %18, align 2
  %554 = sext i16 %553 to i32
  %555 = call i32 @quan(i32 noundef %554, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %556 = trunc i32 %555 to i16
  store i16 %556, i16* %19, align 2
  %557 = load i16, i16* %19, align 2
  %558 = sext i16 %557 to i32
  %559 = shl i32 %558, 6
  %560 = load i16, i16* %18, align 2
  %561 = sext i16 %560 to i32
  %562 = shl i32 %561, 6
  %563 = load i16, i16* %19, align 2
  %564 = sext i16 %563 to i32
  %565 = ashr i32 %562, %564
  %566 = add nsw i32 %559, %565
  %567 = sub nsw i32 %566, 1024
  %568 = trunc i32 %567 to i16
  %569 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %570 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %569, i32 0, i32 9
  %571 = getelementptr inbounds [2 x i16], [2 x i16]* %570, i64 0, i64 0
  store i16 %568, i16* %571, align 8
  br label %576

572:                                              ; preds = %546
  %573 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %574 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %573, i32 0, i32 9
  %575 = getelementptr inbounds [2 x i16], [2 x i16]* %574, i64 0, i64 0
  store i16 -992, i16* %575, align 8
  br label %576

576:                                              ; preds = %572, %549
  br label %577

577:                                              ; preds = %576, %529
  br label %578

578:                                              ; preds = %577, %522
  %579 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %580 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %579, i32 0, i32 7
  %581 = getelementptr inbounds [2 x i16], [2 x i16]* %580, i64 0, i64 0
  %582 = load i16, i16* %581, align 8
  %583 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %584 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %583, i32 0, i32 7
  %585 = getelementptr inbounds [2 x i16], [2 x i16]* %584, i64 0, i64 1
  store i16 %582, i16* %585, align 2
  %586 = load i16, i16* %34, align 2
  %587 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %588 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %587, i32 0, i32 7
  %589 = getelementptr inbounds [2 x i16], [2 x i16]* %588, i64 0, i64 0
  store i16 %586, i16* %589, align 8
  %590 = load i8, i8* %28, align 1
  %591 = sext i8 %590 to i32
  %592 = icmp eq i32 %591, 1
  br i1 %592, label %593, label %596

593:                                              ; preds = %578
  %594 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %595 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %594, i32 0, i32 10
  store i8 0, i8* %595, align 4
  br label %607

596:                                              ; preds = %578
  %597 = load i16, i16* %21, align 2
  %598 = sext i16 %597 to i32
  %599 = icmp slt i32 %598, -11776
  br i1 %599, label %600, label %603

600:                                              ; preds = %596
  %601 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %602 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %601, i32 0, i32 10
  store i8 1, i8* %602, align 4
  br label %606

603:                                              ; preds = %596
  %604 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %605 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %604, i32 0, i32 10
  store i8 0, i8* %605, align 4
  br label %606

606:                                              ; preds = %603, %600
  br label %607

607:                                              ; preds = %606, %593
  %608 = load i32, i32* %12, align 4
  %609 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %610 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %609, i32 0, i32 2
  %611 = load i16, i16* %610, align 2
  %612 = sext i16 %611 to i32
  %613 = sub nsw i32 %608, %612
  %614 = ashr i32 %613, 5
  %615 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %616 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %615, i32 0, i32 2
  %617 = load i16, i16* %616, align 2
  %618 = sext i16 %617 to i32
  %619 = add nsw i32 %618, %614
  %620 = trunc i32 %619 to i16
  store i16 %620, i16* %616, align 2
  %621 = load i32, i32* %12, align 4
  %622 = shl i32 %621, 2
  %623 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %624 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %623, i32 0, i32 3
  %625 = load i16, i16* %624, align 4
  %626 = sext i16 %625 to i32
  %627 = sub nsw i32 %622, %626
  %628 = ashr i32 %627, 7
  %629 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %630 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %629, i32 0, i32 3
  %631 = load i16, i16* %630, align 4
  %632 = sext i16 %631 to i32
  %633 = add nsw i32 %632, %628
  %634 = trunc i32 %633 to i16
  store i16 %634, i16* %630, align 4
  %635 = load i8, i8* %28, align 1
  %636 = sext i8 %635 to i32
  %637 = icmp eq i32 %636, 1
  br i1 %637, label %638, label %641

638:                                              ; preds = %607
  %639 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %640 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %639, i32 0, i32 4
  store i16 256, i16* %640, align 2
  br label %723

641:                                              ; preds = %607
  %642 = load i32, i32* %10, align 4
  %643 = icmp slt i32 %642, 1536
  br i1 %643, label %644, label %657

644:                                              ; preds = %641
  %645 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %646 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %645, i32 0, i32 4
  %647 = load i16, i16* %646, align 2
  %648 = sext i16 %647 to i32
  %649 = sub nsw i32 512, %648
  %650 = ashr i32 %649, 4
  %651 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %652 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %651, i32 0, i32 4
  %653 = load i16, i16* %652, align 2
  %654 = sext i16 %653 to i32
  %655 = add nsw i32 %654, %650
  %656 = trunc i32 %655 to i16
  store i16 %656, i16* %652, align 2
  br label %722

657:                                              ; preds = %641
  %658 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %659 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %658, i32 0, i32 10
  %660 = load i8, i8* %659, align 4
  %661 = sext i8 %660 to i32
  %662 = icmp eq i32 %661, 1
  br i1 %662, label %663, label %676

663:                                              ; preds = %657
  %664 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %665 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %664, i32 0, i32 4
  %666 = load i16, i16* %665, align 2
  %667 = sext i16 %666 to i32
  %668 = sub nsw i32 512, %667
  %669 = ashr i32 %668, 4
  %670 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %671 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %670, i32 0, i32 4
  %672 = load i16, i16* %671, align 2
  %673 = sext i16 %672 to i32
  %674 = add nsw i32 %673, %669
  %675 = trunc i32 %674 to i16
  store i16 %675, i16* %671, align 2
  br label %721

676:                                              ; preds = %657
  %677 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %678 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %677, i32 0, i32 2
  %679 = load i16, i16* %678, align 2
  %680 = sext i16 %679 to i32
  %681 = shl i32 %680, 2
  %682 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %683 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %682, i32 0, i32 3
  %684 = load i16, i16* %683, align 4
  %685 = sext i16 %684 to i32
  %686 = sub nsw i32 %681, %685
  %687 = call i32 @abs(i32 noundef %686) #3
  %688 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %689 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %688, i32 0, i32 3
  %690 = load i16, i16* %689, align 4
  %691 = sext i16 %690 to i32
  %692 = ashr i32 %691, 3
  %693 = icmp sge i32 %687, %692
  br i1 %693, label %694, label %707

694:                                              ; preds = %676
  %695 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %696 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %695, i32 0, i32 4
  %697 = load i16, i16* %696, align 2
  %698 = sext i16 %697 to i32
  %699 = sub nsw i32 512, %698
  %700 = ashr i32 %699, 4
  %701 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %702 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %701, i32 0, i32 4
  %703 = load i16, i16* %702, align 2
  %704 = sext i16 %703 to i32
  %705 = add nsw i32 %704, %700
  %706 = trunc i32 %705 to i16
  store i16 %706, i16* %702, align 2
  br label %720

707:                                              ; preds = %676
  %708 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %709 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %708, i32 0, i32 4
  %710 = load i16, i16* %709, align 2
  %711 = sext i16 %710 to i32
  %712 = sub nsw i32 0, %711
  %713 = ashr i32 %712, 4
  %714 = load %struct.g72x_state*, %struct.g72x_state** %16, align 8
  %715 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %714, i32 0, i32 4
  %716 = load i16, i16* %715, align 2
  %717 = sext i16 %716 to i32
  %718 = add nsw i32 %717, %713
  %719 = trunc i32 %718 to i16
  store i16 %719, i16* %715, align 2
  br label %720

720:                                              ; preds = %707, %694
  br label %721

721:                                              ; preds = %720, %663
  br label %722

722:                                              ; preds = %721, %644
  br label %723

723:                                              ; preds = %722, %638
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tandem_adjust_alaw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i16* %5, i16** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, -32768
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 1
  %26 = shl i32 %25, 3
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @linear2alaw to i32 (i32, ...)*)(i32 noundef %26)
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = load i8, i8* %14, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 noundef %30)
  %32 = ashr i32 %31, 2
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %15, align 2
  %36 = load i16, i16* %15, align 2
  %37 = sext i16 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = load i16*, i16** %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @quantize(i32 noundef %37, i32 noundef %38, i16* noundef %39, i32 noundef %41)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %16, align 1
  %44 = load i8, i8* %16, align 1
  %45 = sext i8 %44 to i32
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load i8, i8* %14, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %128

51:                                               ; preds = %23
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = xor i32 %52, %53
  store i32 %54, i32* %18, align 4
  %55 = load i8, i8* %16, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %51
  %63 = load i8, i8* %14, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i8, i8* %14, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 213
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, 85
  %76 = sub nsw i32 %75, 1
  %77 = xor i32 %76, 85
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i32 [ 85, %71 ], [ %77, %72 ]
  store i32 %79, i32* %17, align 4
  br label %93

80:                                               ; preds = %62
  %81 = load i8, i8* %14, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 42
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %91

85:                                               ; preds = %80
  %86 = load i8, i8* %14, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %87, 85
  %89 = add nsw i32 %88, 1
  %90 = xor i32 %89, 85
  br label %91

91:                                               ; preds = %85, %84
  %92 = phi i32 [ 42, %84 ], [ %90, %85 ]
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %91, %78
  br label %126

94:                                               ; preds = %51
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load i8, i8* %14, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 170
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %110

104:                                              ; preds = %99
  %105 = load i8, i8* %14, align 1
  %106 = zext i8 %105 to i32
  %107 = xor i32 %106, 85
  %108 = add nsw i32 %107, 1
  %109 = xor i32 %108, 85
  br label %110

110:                                              ; preds = %104, %103
  %111 = phi i32 [ 170, %103 ], [ %109, %104 ]
  store i32 %111, i32* %17, align 4
  br label %125

112:                                              ; preds = %94
  %113 = load i8, i8* %14, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 85
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %123

117:                                              ; preds = %112
  %118 = load i8, i8* %14, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %119, 85
  %121 = sub nsw i32 %120, 1
  %122 = xor i32 %121, 85
  br label %123

123:                                              ; preds = %117, %116
  %124 = phi i32 [ 213, %116 ], [ %122, %117 ]
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %123, %110
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %48
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @linear2alaw(...) #2

declare dso_local i32 @alaw2linear(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tandem_adjust_ulaw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i16* %5, i16** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, -32768
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 2
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @linear2ulaw to i32 (i32, ...)*)(i32 noundef %25)
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %14, align 1
  %28 = load i8, i8* %14, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 noundef %29)
  %31 = ashr i32 %30, 2
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %15, align 2
  %35 = load i16, i16* %15, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32, i32* %10, align 4
  %38 = load i16*, i16** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @quantize(i32 noundef %36, i32 noundef %37, i16* noundef %38, i32 noundef %40)
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %16, align 1
  %43 = load i8, i8* %16, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %23
  %48 = load i8, i8* %14, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %119

50:                                               ; preds = %23
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = xor i32 %51, %52
  store i32 %53, i32* %18, align 4
  %54 = load i8, i8* %16, align 1
  %55 = sext i8 %54 to i32
  %56 = load i32, i32* %12, align 4
  %57 = xor i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %50
  %62 = load i8, i8* %14, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8, i8* %14, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66
  %72 = load i8, i8* %14, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, 1
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i32 [ 126, %70 ], [ %74, %71 ]
  store i32 %76, i32* %17, align 4
  br label %88

77:                                               ; preds = %61
  %78 = load i8, i8* %14, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %86

82:                                               ; preds = %77
  %83 = load i8, i8* %14, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %84, 1
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i32 [ 0, %81 ], [ %85, %82 ]
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %86, %75
  br label %117

89:                                               ; preds = %50
  %90 = load i8, i8* %14, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %103

99:                                               ; preds = %94
  %100 = load i8, i8* %14, align 1
  %101 = zext i8 %100 to i32
  %102 = sub nsw i32 %101, 1
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ 128, %98 ], [ %102, %99 ]
  store i32 %104, i32* %17, align 4
  br label %116

105:                                              ; preds = %89
  %106 = load i8, i8* %14, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 127
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %114

110:                                              ; preds = %105
  %111 = load i8, i8* %14, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, 1
  br label %114

114:                                              ; preds = %110, %109
  %115 = phi i32 [ 254, %109 ], [ %113, %110 ]
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %114, %103
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %47
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @linear2ulaw(...) #2

declare dso_local i32 @ulaw2linear(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
