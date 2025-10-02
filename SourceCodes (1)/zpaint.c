; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpaint.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_image_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }

@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@zpaint_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zeofill }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zerasepage }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zfill }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcolorimage }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zimage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zimagemask }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zstroke }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"0eofill\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0erasepage\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0fill\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"7colorimage\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"5image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"5imagemask\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0stroke\00", align 1
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@gs_image_enum_sizeof = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"image_setup\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"image_continue(quit)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"image_continue(finished)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zerasepage(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_erasepage(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_erasepage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zfill(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_fill(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_fill(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zeofill(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_eofill(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_eofill(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstroke(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_stroke(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_stroke(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcolorimage(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store i32 7, i32* %5, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  store %struct.ref_s* %9, %struct.ref_s** %6, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 252
  %15 = icmp eq i32 %14, 20
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 252
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 -20, i32* %2, align 4
  br label %103

26:                                               ; preds = %17
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -15, i32* %2, align 4
  br label %103

33:                                               ; preds = %26
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  switch i32 %38, label %45 [
    i32 1, label %39
    i32 3, label %44
    i32 4, label %44
  ]

39:                                               ; preds = %33
  %40 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -2
  store %struct.ref_s* %41, %struct.ref_s** @osp, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = call i32 @zimage(%struct.ref_s* noundef %42)
  store i32 %43, i32* %2, align 4
  br label %103

44:                                               ; preds = %33, %33
  br label %46

45:                                               ; preds = %33
  store i32 -15, i32* %2, align 4
  br label %103

46:                                               ; preds = %44
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %50 = bitcast %union.v* %49 to i16*
  %51 = load i16, i16* %50, align 8
  %52 = icmp ne i16 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 %62
  store %struct.ref_s* %63, %struct.ref_s** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %53, %46
  %67 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 8
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 252
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 -20, i32* %2, align 4
  br label %103

75:                                               ; preds = %66
  %76 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -2
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %79 = bitcast %union.v* %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %80, 8
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -15, i32* %2, align 4
  br label %103

83:                                               ; preds = %75
  %84 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -2
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %88 = bitcast %union.v* %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @image_setup(%struct.ref_s* noundef %84, i32 noundef %90, i32 noundef %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %98 = sext i32 %96 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 %99
  store %struct.ref_s* %100, %struct.ref_s** @osp, align 8
  br label %101

101:                                              ; preds = %95, %83
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %82, %74, %45, %39, %32, %25, %16
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @image_setup(%struct.ref_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_image_enum_s*, align 8
  %10 = alloca %struct.gs_matrix_s, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = xor i32 %16, -1
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ 0, %18 ]
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 9
  %23 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %24 = icmp ugt %struct.ref_s* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -5, i32* %4, align 4
  br label %243

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -4
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 252
  %33 = icmp eq i32 %32, 20
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 -20, i32* %4, align 4
  br label %243

35:                                               ; preds = %26
  %36 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 8
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 252
  %42 = icmp eq i32 %41, 20
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 -20, i32* %4, align 4
  br label %243

44:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 %52
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %55 = load i16, i16* %54, align 8
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 255
  %58 = ashr i32 %57, 2
  %59 = icmp ne i32 %58, 13
  br i1 %59, label %60, label %85

60:                                               ; preds = %49
  %61 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 %63
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 255
  %69 = ashr i32 %68, 2
  switch i32 %69, label %70 [
    i32 0, label %71
    i32 10, label %71
  ]

70:                                               ; preds = %60
  store i32 -20, i32* %4, align 4
  br label %243

71:                                               ; preds = %60, %60
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 %75
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 1
  %78 = load i16, i16* %77, align 8
  %79 = zext i16 %78 to i32
  %80 = xor i32 %79, -1
  %81 = and i32 %80, 3
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 -7, i32* %4, align 4
  br label %243

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %45, !llvm.loop !4

89:                                               ; preds = %45
  %90 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -4
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 0
  %93 = bitcast %union.v* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 -3
  %99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 0
  %100 = bitcast %union.v* %99 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89
  store i32 -23, i32* %4, align 4
  br label %243

104:                                              ; preds = %96
  %105 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 -3
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %108 = bitcast %union.v* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %243

112:                                              ; preds = %104
  %113 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i64 -1
  %115 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %114, %struct.gs_matrix_s* noundef %10)
  store i32 %115, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %243

119:                                              ; preds = %112
  %120 = load i32, i32* @gs_image_enum_sizeof, align 4
  %121 = call i8* @alloc(i32 noundef 1, i32 noundef %120, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %122 = bitcast i8* %121 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %122, %struct.gs_image_enum_s** %9, align 8
  %123 = icmp eq %struct.gs_image_enum_s* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 -25, i32* %4, align 4
  br label %243

125:                                              ; preds = %119
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %9, align 8
  %130 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %131 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 -4
  %133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 0, i32 0
  %134 = bitcast %union.v* %133 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i64 -3
  %139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i32 0, i32 0
  %140 = bitcast %union.v* %139 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef %129, %struct.gs_state_s* noundef %130, i32 noundef %136, i32 noundef %142, i32 noundef %143, %struct.gs_matrix_s* noundef %10)
  br label %163

145:                                              ; preds = %125
  %146 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %9, align 8
  %147 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %148 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %148, i64 -4
  %150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 0
  %151 = bitcast %union.v* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i64 -3
  %156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i32 0, i32 0
  %157 = bitcast %union.v* %156 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @gs_image_init(%struct.gs_image_enum_s* noundef %146, %struct.gs_state_s* noundef %147, i32 noundef %153, i32 noundef %159, i32 noundef %160, i32 noundef %161, %struct.gs_matrix_s* noundef %10)
  br label %163

163:                                              ; preds = %145, %128
  %164 = phi i32 [ %144, %128 ], [ %162, %145 ]
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %243

169:                                              ; preds = %163
  %170 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i32 1
  store %struct.ref_s* %171, %struct.ref_s** @esp, align 8
  %172 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i32 0, i32 0
  %174 = bitcast %union.v* %173 to i16*
  store i16 0, i16* %174, align 8
  %175 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 1
  store i16 33, i16* %176, align 8
  %177 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %178 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i32 1
  store %struct.ref_s* %178, %struct.ref_s** @esp, align 8
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %201, %169
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %188 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %188, i64 %190
  %192 = bitcast %struct.ref_s* %187 to i8*
  %193 = bitcast %struct.ref_s* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 16, i1 false)
  br label %200

194:                                              ; preds = %182
  %195 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %195, i32 0, i32 0
  %197 = bitcast %union.v* %196 to i64*
  store i64 0, i64* %197, align 8
  %198 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %199 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %198, i32 0, i32 1
  store i16 32, i16* %199, align 8
  br label %200

200:                                              ; preds = %194, %186
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %202, i32 1
  store %struct.ref_s* %203, %struct.ref_s** @esp, align 8
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %179, !llvm.loop !6

206:                                              ; preds = %179
  %207 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %207, i32 0, i32 0
  %209 = bitcast %union.v* %208 to i64*
  store i64 0, i64* %209, align 8
  %210 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %210, i32 0, i32 1
  store i16 20, i16* %211, align 8
  %212 = load i32, i32* %12, align 4
  %213 = trunc i32 %212 to i16
  %214 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %214, i32 0, i32 2
  store i16 %213, i16* %215, align 2
  %216 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %217 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %216, i32 1
  store %struct.ref_s* %217, %struct.ref_s** @esp, align 8
  %218 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %9, align 8
  %219 = bitcast %struct.gs_image_enum_s* %218 to i8*
  %220 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %220, i32 0, i32 0
  %222 = bitcast %union.v* %221 to i8**
  store i8* %219, i8** %222, align 8
  %223 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %223, i32 0, i32 1
  store i16 52, i16* %224, align 8
  %225 = load i32, i32* @gs_image_enum_sizeof, align 4
  %226 = trunc i32 %225 to i16
  %227 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %227, i32 0, i32 2
  store i16 %226, i16* %228, align 2
  %229 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %229, i32 1
  store %struct.ref_s* %230, %struct.ref_s** @esp, align 8
  %231 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %232 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %231, i32 0, i32 0
  %233 = bitcast %union.v* %232 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %233, align 8
  %234 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %235 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %234, i32 0, i32 1
  store i16 37, i16* %235, align 8
  %236 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %237 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %236, i32 0, i32 2
  store i16 0, i16* %237, align 2
  %238 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %238, i32 1
  store %struct.ref_s* %239, %struct.ref_s** @esp, align 8
  %240 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %241 = bitcast %struct.ref_s* %239 to i8*
  %242 = bitcast %struct.ref_s* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 16, i1 false)
  store i32 1, i32* %4, align 4
  br label %243

243:                                              ; preds = %206, %167, %124, %117, %111, %103, %83, %70, %43, %34, %25
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zimage(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -2
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -15, i32* %2, align 4
  br label %37

21:                                               ; preds = %13
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %26 = bitcast %union.v* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @image_setup(%struct.ref_s* noundef %22, i32 noundef %28, i32 noundef 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -5
  store %struct.ref_s* %34, %struct.ref_s** @osp, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %20, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zimagemask(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to i16*
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = call i32 @image_setup(%struct.ref_s* noundef %14, i32 noundef %20, i32 noundef 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -5
  store %struct.ref_s* %26, %struct.ref_s** @osp, align 8
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpaint_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zpaint_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @read_matrix(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_image_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @image_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_image_enum_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %12, %struct.gs_image_enum_s** %4, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = ashr i32 %17, 2
  %19 = icmp ne i32 %18, 13
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -7
  store %struct.ref_s* %22, %struct.ref_s** @esp, align 8
  %23 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %4, align 8
  %24 = bitcast %struct.gs_image_enum_s* %23 to i8*
  %25 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %24, i32 noundef 1, i32 noundef %25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 -20, i32* %2, align 4
  br label %94

26:                                               ; preds = %1
  %27 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %4, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef %27, i8* noundef %31, i32 noundef %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %26
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -7
  store %struct.ref_s* %47, %struct.ref_s** @esp, align 8
  %48 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %4, align 8
  %49 = bitcast %struct.gs_image_enum_s* %48 to i8*
  %50 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %49, i32 noundef 1, i32 noundef %50, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %91

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -5
  store %struct.ref_s* %60, %struct.ref_s** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %72 = bitcast %union.v* %71 to i64*
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %51
  %74 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 1
  store %struct.ref_s* %75, %struct.ref_s** @esp, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %78 = bitcast %union.v* %77 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %78, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  store i16 37, i16* %80, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 2
  store i16 0, i16* %82, align 2
  %83 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 1
  store %struct.ref_s* %84, %struct.ref_s** @esp, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 %87
  %89 = bitcast %struct.ref_s* %84 to i8*
  %90 = bitcast %struct.ref_s* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %73, %45
  %92 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -1
  store %struct.ref_s* %93, %struct.ref_s** @osp, align 8
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %20
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_image_next(%struct.gs_image_enum_s* noundef, i8* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
