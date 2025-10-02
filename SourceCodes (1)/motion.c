; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/motion.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@picture_structure = external dso_local global i32, align 4
@top_field_first = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vectors([2 x [2 x i32]]* noundef %0, i32* noundef %1, [2 x i32]* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca [2 x [2 x i32]]*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32]*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store [2 x [2 x i32]]* %0, [2 x [2 x i32]]** %11, align 8
  store i32* %1, i32** %12, align 8
  store [2 x i32]* %2, [2 x i32]** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %79

23:                                               ; preds = %10
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = call i32 @Get_Bits(i32 noundef 1)
  %31 = load [2 x i32]*, [2 x i32]** %13, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load [2 x i32]*, [2 x i32]** %13, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 1
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 %39
  store i32 %30, i32* %40, align 4
  br label %41

41:                                               ; preds = %29, %26, %23
  %42 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %43 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %42, i64 0
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %43, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %20, align 4
  call void @motion_vector(i32* noundef %47, i32* noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef 0)
  %53 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %54 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %53, i64 0
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 0, i64 %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %60, i64 1
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  store i32 %59, i32* %65, align 4
  %66 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %67 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %66, i64 0
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %67, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %73, i64 1
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %74, i64 0, i64 %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 1
  store i32 %72, i32* %78, align 4
  br label %114

79:                                               ; preds = %10
  %80 = call i32 @Get_Bits(i32 noundef 1)
  %81 = load [2 x i32]*, [2 x i32]** %13, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 0
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %87 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %86, i64 0
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 0
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  call void @motion_vector(i32* noundef %91, i32* noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef 0)
  %97 = call i32 @Get_Bits(i32 noundef 1)
  %98 = load [2 x i32]*, [2 x i32]** %13, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 1
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %104 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %103, i64 1
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %104, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  call void @motion_vector(i32* noundef %108, i32* noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef 0)
  br label %114

114:                                              ; preds = %79, %41
  ret void
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vector(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = call i32 @Get_motion_code()
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @Get_Bits(i32 noundef %24)
  br label %27

26:                                               ; preds = %20, %7
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %16, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  call void @decode_motion_vector(i32* noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = call i32 @Get_dmvector()
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = call i32 @Get_motion_code()
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @Get_Bits(i32 noundef %49)
  br label %52

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  call void @decode_motion_vector(i32* noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call i32 @Get_dmvector()
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @Get_motion_code() #1

; Function Attrs: noinline nounwind uwtable
define internal void @decode_motion_vector(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 16, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  br label %24

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %41, %28
  br label %74

48:                                               ; preds = %24
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 0, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 %78, 1
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ]
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  ret void
}

declare dso_local i32 @Get_dmvector() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Dual_Prime_Arithmetic([2 x i32]* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @picture_structure, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %129

11:                                               ; preds = %4
  %12 = load i32, i32* @top_field_first, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %15, %18
  %20 = ashr i32 %19, 1
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load [2 x i32]*, [2 x i32]** %5, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %28, %31
  %33 = ashr i32 %32, 1
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 1
  %39 = load [2 x i32]*, [2 x i32]** %5, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 3, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %43, %46
  %48 = ashr i32 %47, 1
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load [2 x i32]*, [2 x i32]** %5, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 1
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 0, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 3, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = add nsw i32 %57, %60
  %62 = ashr i32 %61, 1
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = add nsw i32 %66, 1
  %68 = load [2 x i32]*, [2 x i32]** %5, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 1
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 1
  store i32 %67, i32* %70, align 4
  br label %128

71:                                               ; preds = %11
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 3, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %73, %76
  %78 = ashr i32 %77, 1
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load [2 x i32]*, [2 x i32]** %5, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = add nsw i32 %87, %90
  %92 = ashr i32 %91, 1
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %96, 1
  %98 = load [2 x i32]*, [2 x i32]** %5, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = add nsw i32 %101, %104
  %106 = ashr i32 %105, 1
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load [2 x i32]*, [2 x i32]** %5, align 8
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %111, i64 1
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 0
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %114, %117
  %119 = ashr i32 %118, 1
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = add nsw i32 %123, 1
  %125 = load [2 x i32]*, [2 x i32]** %5, align 8
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 1
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %71, %14
  br label %171

129:                                              ; preds = %4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = add nsw i32 %130, %133
  %135 = ashr i32 %134, 1
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load [2 x i32]*, [2 x i32]** %5, align 8
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %141, i64 0, i64 0
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = add nsw i32 %143, %146
  %148 = ashr i32 %147, 1
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = load [2 x i32]*, [2 x i32]** %5, align 8
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %153, i64 0
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %154, i64 0, i64 1
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @picture_structure, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %129
  %159 = load [2 x i32]*, [2 x i32]** %5, align 8
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %159, i64 0
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 4
  br label %170

164:                                              ; preds = %129
  %165 = load [2 x i32]*, [2 x i32]** %5, align 8
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i64 0
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %158
  br label %171

171:                                              ; preds = %170, %128
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
