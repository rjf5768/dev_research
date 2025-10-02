; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/spatscal.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/spatscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@Frame_Store_Flag = external dso_local global i32, align 4
@lower_layer_prediction_horizontal_size = external dso_local global i32, align 4
@lower_layer_prediction_vertical_size = external dso_local global i32, align 4
@progressive_frame = external dso_local global i32, align 4
@lower_layer_progressive_frame = external dso_local global i32, align 4
@llframe0 = external dso_local global [3 x i8*], align 16
@llframe1 = external dso_local global [3 x i8*], align 16
@lltmp = external dso_local global i16*, align 8
@current_frame = external dso_local global [3 x i8*], align 16
@lower_layer_horizontal_offset = external dso_local global i32, align 4
@lower_layer_vertical_offset = external dso_local global i32, align 4
@horizontal_size = external dso_local global i32, align 4
@vertical_size = external dso_local global i32, align 4
@vertical_subsampling_factor_m = external dso_local global i32, align 4
@vertical_subsampling_factor_n = external dso_local global i32, align 4
@horizontal_subsampling_factor_m = external dso_local global i32, align 4
@horizontal_subsampling_factor_n = external dso_local global i32, align 4
@picture_structure = external dso_local global i32, align 4
@__const.Read_Lower_Layer_Component_Framewise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@Lower_Layer_Picture_Filename = external dso_local global i8*, align 8
@True_Framenum = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__const.Read_Lower_Layer_Component_Fieldwise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@lower_layer_deinterlaced_field_select = external dso_local global i32, align 4
@Clip = external dso_local global i8*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Spatial_Prediction() #0 {
  %1 = load i32, i32* @Frame_Store_Flag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %5 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 0, i32 noundef %4, i32 noundef %5)
  %6 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %7 = ashr i32 %6, 1
  %8 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %9 = ashr i32 %8, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 1, i32 noundef %7, i32 noundef %9)
  %10 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %11 = ashr i32 %10, 1
  %12 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %13 = ashr i32 %12, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 2, i32 noundef %11, i32 noundef %13)
  br label %25

14:                                               ; preds = %0
  %15 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %16 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 0, i32 noundef %15, i32 noundef %16)
  %17 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %20 = ashr i32 %19, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 1, i32 noundef %18, i32 noundef %20)
  %21 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %22 = ashr i32 %21, 1
  %23 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %24 = ashr i32 %23, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 2, i32 noundef %22, i32 noundef %24)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i32, i32* @progressive_frame, align 4
  %27 = load i32, i32* @lower_layer_progressive_frame, align 4
  %28 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 0), align 16
  %29 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 0), align 16
  %30 = load i16*, i16** @lltmp, align 8
  %31 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %32 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %33 = load i32, i32* @lower_layer_vertical_offset, align 4
  %34 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %35 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %36 = load i32, i32* @horizontal_size, align 4
  %37 = load i32, i32* @vertical_size, align 4
  %38 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %39 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %40 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %41 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  %42 = load i32, i32* @picture_structure, align 4
  %43 = icmp ne i32 %42, 3
  %44 = zext i1 %43 to i32
  call void @Make_Spatial_Prediction_Frame(i32 noundef %26, i32 noundef %27, i8* noundef %28, i8* noundef %29, i16* noundef %30, i8* noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %44)
  %45 = load i32, i32* @progressive_frame, align 4
  %46 = load i32, i32* @lower_layer_progressive_frame, align 4
  %47 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 1), align 8
  %48 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 1), align 8
  %49 = load i16*, i16** @lltmp, align 8
  %50 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 1), align 8
  %51 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* @lower_layer_vertical_offset, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %56 = ashr i32 %55, 1
  %57 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %58 = ashr i32 %57, 1
  %59 = load i32, i32* @horizontal_size, align 4
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* @vertical_size, align 4
  %62 = ashr i32 %61, 1
  %63 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %64 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %65 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %66 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 noundef %45, i32 noundef %46, i8* noundef %47, i8* noundef %48, i16* noundef %49, i8* noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef 1)
  %67 = load i32, i32* @progressive_frame, align 4
  %68 = load i32, i32* @lower_layer_progressive_frame, align 4
  %69 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 2), align 16
  %70 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 2), align 16
  %71 = load i16*, i16** @lltmp, align 8
  %72 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 2), align 16
  %73 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %74 = sdiv i32 %73, 2
  %75 = load i32, i32* @lower_layer_vertical_offset, align 4
  %76 = sdiv i32 %75, 2
  %77 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %78 = ashr i32 %77, 1
  %79 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %80 = ashr i32 %79, 1
  %81 = load i32, i32* @horizontal_size, align 4
  %82 = ashr i32 %81, 1
  %83 = load i32, i32* @vertical_size, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %86 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %87 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %88 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 noundef %67, i32 noundef %68, i8* noundef %69, i8* noundef %70, i16* noundef %71, i8* noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Framewise(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [3 x [3 x i8]], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast [3 x [3 x i8]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Framewise.ext, i32 0, i32 0, i32 0), i64 9, i1 false)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %15 = load i32, i32* @True_Framenum, align 4
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef %14, i32 noundef %15) #5
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %19
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %22 = call i8* @strcat(i8* noundef %17, i8* noundef %21) #5
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %7, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  call void @exit(i32 noundef -1) #6
  unreachable

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %86, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %40 = call i32 @getc(%struct._IO_FILE* noundef %39)
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  store i8 %41, i8* %52, align 1
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %34, !llvm.loop !4

56:                                               ; preds = %34
  %57 = load i32, i32* @lower_layer_progressive_frame, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %81, %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %68 = call i32 @getc(%struct._IO_FILE* noundef %67)
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  store i8 %69, i8* %80, align 1
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %62, !llvm.loop !6

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %29, !llvm.loop !7

89:                                               ; preds = %29
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* noundef %90)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Fieldwise(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [3 x [3 x i8]], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast [3 x [3 x i8]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Fieldwise.ext, i32 0, i32 0, i32 0), i64 9, i1 false)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %15 = load i32, i32* @True_Framenum, align 4
  %16 = load i32, i32* @lower_layer_progressive_frame, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 102, i32 97
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef %14, i32 noundef %15, i32 noundef %19) #5
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %23
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i64 0, i64 0
  %26 = call i8* @strcat(i8* noundef %21, i8* noundef %25) #5
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %7, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  call void @exit(i32 noundef -1) #6
  unreachable

32:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %44 = call i32 @getc(%struct._IO_FILE* noundef %43)
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %49, i64 %55
  store i8 %45, i8* %56, align 1
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %38, !llvm.loop !8

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @lower_layer_progressive_frame, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 2
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %33, !llvm.loop !9

68:                                               ; preds = %33
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %70 = call i32 @fclose(%struct._IO_FILE* noundef %69)
  %71 = load i32, i32* @lower_layer_progressive_frame, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %124, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %76 = load i32, i32* @True_Framenum, align 4
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %74, i8* noundef %75, i32 noundef %76, i32 noundef 98) #5
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %81, i64 0, i64 0
  %83 = call i8* @strcat(i8* noundef %78, i8* noundef %82) #5
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %85 = call noalias %struct._IO_FILE* @fopen(i8* noundef %84, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %85, %struct._IO_FILE** %7, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %87 = icmp eq %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  call void @exit(i32 noundef -1) #6
  unreachable

89:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %101 = call i32 @getc(%struct._IO_FILE* noundef %100)
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  store i8 %102, i8* %113, align 1
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %95, !llvm.loop !10

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %11, align 4
  br label %90, !llvm.loop !11

121:                                              ; preds = %90
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %123 = call i32 @fclose(%struct._IO_FILE* noundef %122)
  br label %124

124:                                              ; preds = %121, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Make_Spatial_Prediction_Frame(i32 noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3, i16* noundef %4, i8* noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i16*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32 %0, i32* %18, align 4
  store i32 %1, i32* %19, align 4
  store i8* %2, i8** %20, align 8
  store i8* %3, i8** %21, align 8
  store i16* %4, i16** %22, align 8
  store i8* %5, i8** %23, align 8
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  store i32 %16, i32* %34, align 4
  %40 = load i32, i32* %26, align 4
  %41 = load i32, i32* %33, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %32, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %38, align 4
  %45 = load i32, i32* %27, align 4
  %46 = load i32, i32* %31, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %30, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %39, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %17
  %53 = load i8*, i8** %20, align 8
  %54 = load i16*, i16** %22, align 8
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %27, align 4
  %57 = load i32, i32* %39, align 4
  %58 = load i32, i32* %30, align 4
  %59 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* noundef %53, i16* noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef 0, i32 noundef 1)
  br label %119

60:                                               ; preds = %17
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = load i32, i32* @lower_layer_deinterlaced_field_select, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i8*, i8** %21, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* noundef %67, i8* noundef %68, i32 noundef 0, i32 noundef %69, i32 noundef %70, i32 noundef %71)
  %72 = load i8*, i8** %21, align 8
  %73 = load i16*, i16** %22, align 8
  %74 = load i32, i32* %26, align 4
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %39, align 4
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* noundef %72, i16* noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef 0, i32 noundef 1)
  br label %92

79:                                               ; preds = %63
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* noundef %80, i8* noundef %81, i32 noundef 1, i32 noundef %82, i32 noundef %83, i32 noundef %84)
  %85 = load i8*, i8** %20, align 8
  %86 = load i16*, i16** %22, align 8
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %39, align 4
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* noundef %85, i16* noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef 0, i32 noundef 1)
  br label %92

92:                                               ; preds = %79, %66
  br label %118

93:                                               ; preds = %60
  %94 = load i8*, i8** %20, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* noundef %94, i8* noundef %95, i32 noundef 1, i32 noundef %96, i32 noundef %97, i32 noundef %98)
  %99 = load i8*, i8** %21, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* noundef %99, i8* noundef %100, i32 noundef 0, i32 noundef %101, i32 noundef %102, i32 noundef %103)
  %104 = load i8*, i8** %20, align 8
  %105 = load i16*, i16** %22, align 8
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %39, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* noundef %104, i16* noundef %105, i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef %110, i32 noundef 0, i32 noundef 2)
  %111 = load i8*, i8** %21, align 8
  %112 = load i16*, i16** %22, align 8
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %39, align 4
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* noundef %111, i16* noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i32 noundef 1, i32 noundef 2)
  br label %118

118:                                              ; preds = %93, %92
  br label %119

119:                                              ; preds = %118, %52
  %120 = load i32, i32* %25, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %25, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i16*, i16** %22, align 8
  %127 = sext i32 %125 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  store i16* %129, i16** %22, align 8
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %39, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %39, align 4
  %133 = load i32, i32* %39, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 0, i32* %39, align 4
  br label %136

136:                                              ; preds = %135, %122
  %137 = load i32, i32* %29, align 4
  %138 = load i32, i32* %39, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %29, align 4
  br label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %39, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %36, align 4
  br label %162

146:                                              ; preds = %119
  %147 = load i32, i32* %28, align 4
  %148 = load i32, i32* %25, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i8*, i8** %23, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %23, align 8
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %25, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %36, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %39, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %39, align 4
  store i32 %160, i32* %36, align 4
  br label %161

161:                                              ; preds = %159, %146
  br label %162

162:                                              ; preds = %161, %144
  %163 = load i32, i32* %24, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %37, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %38, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %38, align 4
  %171 = load i32, i32* %38, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  store i32 0, i32* %38, align 4
  br label %174

174:                                              ; preds = %173, %165
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %38, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %28, align 4
  br label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %38, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %35, align 4
  br label %198

184:                                              ; preds = %162
  %185 = load i32, i32* %24, align 4
  %186 = load i8*, i8** %23, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %23, align 8
  store i32 0, i32* %37, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %24, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32, i32* %38, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %38, align 4
  store i32 %196, i32* %35, align 4
  br label %197

197:                                              ; preds = %195, %184
  br label %198

198:                                              ; preds = %197, %182
  %199 = load i16*, i16** %22, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load i32, i32* %37, align 4
  %202 = load i32, i32* %35, align 4
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* %36, align 4
  %206 = load i32, i32* %32, align 4
  %207 = load i32, i32* %33, align 4
  call void @Subsample_Horizontal(i16* noundef %199, i8* noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Subsample_Vertical(i8* noundef %0, i16* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i16*, align 8
  store i8* %0, i8** %10, align 8
  store i16* %1, i16** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %20, align 4
  br label %28

28:                                               ; preds = %107, %9
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %111

32:                                               ; preds = %28
  %33 = load i16*, i16** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %20, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  store i16* %38, i16** %26, align 8
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %16, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %23, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %23, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %24, align 8
  %50 = load i32, i32* %23, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load i8*, i8** %24, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  br label %61

59:                                               ; preds = %32
  %60 = load i8*, i8** %24, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i8* [ %58, %54 ], [ %60, %59 ]
  store i8* %62, i8** %25, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %16, align 4
  %67 = srem i32 %65, %66
  %68 = mul nsw i32 16, %67
  %69 = load i32, i32* %16, align 4
  %70 = ashr i32 %69, 1
  %71 = add nsw i32 %68, %70
  %72 = load i32, i32* %16, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %22, align 4
  %75 = sub nsw i32 16, %74
  store i32 %75, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %103, %61
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = load i8*, i8** %24, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %81, %87
  %89 = load i32, i32* %22, align 4
  %90 = load i8*, i8** %25, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %89, %95
  %97 = add nsw i32 %88, %96
  %98 = trunc i32 %97 to i16
  %99 = load i16*, i16** %26, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  store i16 %98, i16* %102, align 2
  br label %103

103:                                              ; preds = %80
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %76, !llvm.loop !12

106:                                              ; preds = %76
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %20, align 4
  br label %28, !llvm.loop !13

111:                                              ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Deinterlace(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %193, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %196

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  br label %47

41:                                               ; preds = %27
  %42 = load i8*, i8** %16, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i8* [ %40, %36 ], [ %46, %41 ]
  store i8* %48, i8** %17, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  br label %64

59:                                               ; preds = %47
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i8* [ %58, %53 ], [ %63, %59 ]
  store i8* %65, i8** %18, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %79, %85
  %87 = add nsw i32 %86, 1
  %88 = lshr i32 %87, 1
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %16, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %69, !llvm.loop !14

97:                                               ; preds = %69
  br label %192

98:                                               ; preds = %64
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8* %104, i8** %19, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i8*, i8** %19, align 8
  br label %116

109:                                              ; preds = %98
  %110 = load i8*, i8** %19, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = sub i64 0, %113
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  br label %116

116:                                              ; preds = %109, %107
  %117 = phi i8* [ %108, %107 ], [ %115, %109 ]
  store i8* %117, i8** %20, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 2
  %121 = icmp sge i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i8*, i8** %19, align 8
  br label %130

124:                                              ; preds = %116
  %125 = load i8*, i8** %19, align 8
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 2, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  br label %130

130:                                              ; preds = %124, %122
  %131 = phi i8* [ %123, %122 ], [ %129, %124 ]
  store i8* %131, i8** %21, align 8
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %188, %130
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %132
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %18, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %142, %148
  %150 = mul nsw i32 8, %149
  %151 = load i8*, i8** %19, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %150, %157
  %159 = load i8*, i8** %20, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %158, %164
  %166 = load i8*, i8** %21, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %165, %171
  store i32 %172, i32* %15, align 4
  %173 = load i8*, i8** @Clip, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp sge i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 8, i32 7
  %179 = add nsw i32 %174, %178
  %180 = ashr i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %173, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 %183, i8* %187, align 1
  br label %188

188:                                              ; preds = %136
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %132, !llvm.loop !15

191:                                              ; preds = %132
  br label %192

192:                                              ; preds = %191, %97
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %14, align 4
  br label %23, !llvm.loop !16

196:                                              ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Subsample_Horizontal(i16* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i16*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  %27 = alloca i16*, align 8
  %28 = alloca i8*, align 8
  store i16* %0, i16** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %115, %9
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %28, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %18, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load i16*, i16** %10, align 8
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %46, i64 %48
  store i16* %49, i16** %26, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i16*, i16** %26, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 1
  br label %59

57:                                               ; preds = %33
  %58 = load i16*, i16** %26, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i16* [ %56, %54 ], [ %58, %57 ]
  store i16* %60, i16** %27, align 8
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %18, align 4
  %65 = srem i32 %63, %64
  %66 = mul nsw i32 16, %65
  %67 = load i32, i32* %18, align 4
  %68 = ashr i32 %67, 1
  %69 = add nsw i32 %66, %68
  %70 = load i32, i32* %18, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %24, align 4
  %73 = sub nsw i32 16, %72
  store i32 %73, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %111, %59
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = load i16*, i16** %26, align 8
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %24, align 4
  %85 = load i16*, i16** %27, align 8
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %25, align 4
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 128, i32 127
  %95 = add nsw i32 %90, %94
  %96 = ashr i32 %95, 8
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %28, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i32, i32* %15, align 4
  %100 = load i8*, i8** %28, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %28, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i16*, i16** %26, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i16, i16* %104, i64 %105
  store i16* %106, i16** %26, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i16*, i16** %27, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i16, i16* %108, i64 %109
  store i16* %110, i16** %27, align 8
  br label %111

111:                                              ; preds = %78
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  br label %74, !llvm.loop !17

114:                                              ; preds = %74
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %20, align 4
  br label %29, !llvm.loop !18

118:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
