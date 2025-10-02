; ModuleID = './spatscal.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/spatscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%_wyvern_thunk_type.30 = type { i32 (%_wyvern_thunk_type.30*)*, i32, i1, i32 }

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
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %13, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %4 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 0, i32 noundef %3, i32 noundef %4)
  %5 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %6 = ashr i32 %5, 1
  %7 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %8 = ashr i32 %7, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 1, i32 noundef %6, i32 noundef %8)
  %9 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %10 = ashr i32 %9, 1
  %11 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %12 = ashr i32 %11, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 noundef 2, i32 noundef %10, i32 noundef %12)
  br label %24

13:                                               ; preds = %0
  %14 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %15 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 0, i32 noundef %14, i32 noundef %15)
  %16 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %17 = ashr i32 %16, 1
  %18 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %19 = ashr i32 %18, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 1, i32 noundef %17, i32 noundef %19)
  %20 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %23 = ashr i32 %22, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 noundef 2, i32 noundef %21, i32 noundef %23)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32, i32* @progressive_frame, align 4
  %26 = load i32, i32* @lower_layer_progressive_frame, align 4
  %27 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 0), align 16
  %28 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 0), align 16
  %29 = load i16*, i16** @lltmp, align 8
  %30 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %31 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %32 = load i32, i32* @lower_layer_vertical_offset, align 4
  %33 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %34 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %35 = load i32, i32* @horizontal_size, align 4
  %36 = load i32, i32* @vertical_size, align 4
  %37 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %38 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %39 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %40 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  %41 = load i32, i32* @picture_structure, align 4
  %42 = icmp ne i32 %41, 3
  %43 = zext i1 %42 to i32
  call void @Make_Spatial_Prediction_Frame(i32 noundef %25, i32 noundef %26, i8* noundef %27, i8* noundef %28, i16* noundef %29, i8* noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %43)
  %44 = load i32, i32* @progressive_frame, align 4
  %45 = load i32, i32* @lower_layer_progressive_frame, align 4
  %46 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 1), align 8
  %47 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 1), align 8
  %48 = load i16*, i16** @lltmp, align 8
  %49 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 1), align 8
  %50 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %51 = sdiv i32 %50, 2
  %52 = load i32, i32* @lower_layer_vertical_offset, align 4
  %53 = sdiv i32 %52, 2
  %54 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %55 = ashr i32 %54, 1
  %56 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %57 = ashr i32 %56, 1
  %58 = load i32, i32* @horizontal_size, align 4
  %59 = ashr i32 %58, 1
  %60 = load i32, i32* @vertical_size, align 4
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %63 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %64 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %65 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 noundef %44, i32 noundef %45, i8* noundef %46, i8* noundef %47, i16* noundef %48, i8* noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef 1)
  %66 = load i32, i32* @progressive_frame, align 4
  %67 = load i32, i32* @lower_layer_progressive_frame, align 4
  %68 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 2), align 16
  %69 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 2), align 16
  %70 = load i16*, i16** @lltmp, align 8
  %71 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 2), align 16
  %72 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %73 = sdiv i32 %72, 2
  %74 = load i32, i32* @lower_layer_vertical_offset, align 4
  %75 = sdiv i32 %74, 2
  %76 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %79 = ashr i32 %78, 1
  %80 = load i32, i32* @horizontal_size, align 4
  %81 = ashr i32 %80, 1
  %82 = load i32, i32* @vertical_size, align 4
  %83 = ashr i32 %82, 1
  %84 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %85 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %86 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %87 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 noundef %66, i32 noundef %67, i8* noundef %68, i8* noundef %69, i16* noundef %70, i8* noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Framewise(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [3 x [3 x i8]], align 1
  %6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %5, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %6, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Framewise.ext, i64 0, i64 0, i64 0), i64 9, i1 false)
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %9 = load i32, i32* @True_Framenum, align 4
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(1) %8, i32 noundef %9) #7
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %5, i64 0, i64 %12, i64 0
  %14 = call i8* @strcat(i8* noundef nonnull %11, i8* noundef nonnull %13) #7
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  call void @exit(i32 noundef -1) #8
  unreachable

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %57, %19
  %.0 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %21 = icmp slt i32 %.0, %2
  br i1 %21, label %22, label %59

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %35, %22
  %.01 = phi i32 [ 0, %22 ], [ %36, %35 ]
  %24 = icmp slt i32 %.01, %1
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = call i32 @getc(%struct._IO_FILE* noundef nonnull %16) #7
  %27 = trunc i32 %26 to i8
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = mul nsw i32 %.0, %1
  %32 = add nsw i32 %31, %.01
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 %27, i8* %34, align 1
  br label %35

35:                                               ; preds = %25
  %36 = add nuw nsw i32 %.01, 1
  br label %23, !llvm.loop !4

37:                                               ; preds = %23
  %38 = load i32, i32* @lower_layer_progressive_frame, align 4
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %39, label %56

39:                                               ; preds = %37
  %40 = add nsw i32 %.0, 1
  br label %41

41:                                               ; preds = %53, %39
  %.12 = phi i32 [ 0, %39 ], [ %54, %53 ]
  %42 = icmp slt i32 %.12, %1
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = call i32 @getc(%struct._IO_FILE* noundef nonnull %16) #7
  %45 = trunc i32 %44 to i8
  %46 = sext i32 %0 to i64
  %47 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = mul nsw i32 %40, %1
  %50 = add nsw i32 %49, %.12
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 %45, i8* %52, align 1
  br label %53

53:                                               ; preds = %43
  %54 = add nuw nsw i32 %.12, 1
  br label %41, !llvm.loop !6

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %37
  %.1 = phi i32 [ %.0, %37 ], [ %40, %55 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.1, 1
  br label %20, !llvm.loop !7

59:                                               ; preds = %20
  %60 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %16) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Fieldwise(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [3 x [3 x i8]], align 1
  %6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %5, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %6, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Fieldwise.ext, i64 0, i64 0, i64 0), i64 9, i1 false)
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %9 = load i32, i32* @True_Framenum, align 4
  %10 = load i32, i32* @lower_layer_progressive_frame, align 4
  %.not = icmp eq i32 %10, 0
  %11 = select i1 %.not, i32 97, i32 102
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(1) %8, i32 noundef %9, i32 noundef %11) #7
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %5, i64 0, i64 %14, i64 0
  %16 = call i8* @strcat(i8* noundef nonnull %13, i8* noundef nonnull %15) #7
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @exit(i32 noundef -1) #8
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %40, %21
  %.0 = phi i32 [ 0, %21 ], [ %43, %40 ]
  %23 = icmp slt i32 %.0, %2
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %37, %24
  %.01 = phi i32 [ 0, %24 ], [ %38, %37 ]
  %26 = icmp slt i32 %.01, %1
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = call i32 @getc(%struct._IO_FILE* noundef nonnull %18) #7
  %29 = trunc i32 %28 to i8
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = mul nsw i32 %.0, %1
  %34 = add nsw i32 %33, %.01
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %29, i8* %36, align 1
  br label %37

37:                                               ; preds = %27
  %38 = add nuw nsw i32 %.01, 1
  br label %25, !llvm.loop !8

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @lower_layer_progressive_frame, align 4
  %.not4 = icmp eq i32 %41, 0
  %42 = select i1 %.not4, i32 2, i32 1
  %43 = add nuw nsw i32 %.0, %42
  br label %22, !llvm.loop !9

44:                                               ; preds = %22
  %45 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %18) #7
  %46 = load i32, i32* @lower_layer_progressive_frame, align 4
  %.not3 = icmp eq i32 %46, 0
  br i1 %.not3, label %47, label %83

47:                                               ; preds = %44
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %49 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %50 = load i32, i32* @True_Framenum, align 4
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %48, i8* noundef nonnull dereferenceable(1) %49, i32 noundef %50, i32 noundef 98) #7
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %53 = sext i32 %0 to i64
  %54 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %5, i64 0, i64 %53, i64 0
  %55 = call i8* @strcat(i8* noundef nonnull %52, i8* noundef nonnull %54) #7
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %57 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %56, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  %58 = icmp eq %struct._IO_FILE* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  call void @exit(i32 noundef -1) #8
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %79, %60
  %.1 = phi i32 [ 1, %60 ], [ %80, %79 ]
  %62 = icmp slt i32 %.1, %2
  br i1 %62, label %63, label %81

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %76, %63
  %.12 = phi i32 [ 0, %63 ], [ %77, %76 ]
  %65 = icmp slt i32 %.12, %1
  br i1 %65, label %66, label %78

66:                                               ; preds = %64
  %67 = call i32 @getc(%struct._IO_FILE* noundef nonnull %57) #7
  %68 = trunc i32 %67 to i8
  %69 = sext i32 %0 to i64
  %70 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = mul nsw i32 %.1, %1
  %73 = add nsw i32 %72, %.12
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %68, i8* %75, align 1
  br label %76

76:                                               ; preds = %66
  %77 = add nuw nsw i32 %.12, 1
  br label %64, !llvm.loop !10

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.1, 2
  br label %61, !llvm.loop !11

81:                                               ; preds = %61
  %82 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %57) #7
  br label %83

83:                                               ; preds = %81, %44
  ret void

UnifiedUnreachableBlock:                          ; preds = %59, %20
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Make_Spatial_Prediction_Frame(i32 noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i16* nocapture noundef %4, i8* nocapture noundef writeonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.30, align 8
  %18 = mul nsw i32 %8, %15
  %19 = sdiv i32 %18, %14
  %20 = mul nsw i32 %9, %13
  %21 = sdiv i32 %20, %12
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %23, label %22

22:                                               ; preds = %17
  call void @Subsample_Vertical(i8* noundef %2, i16* noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1)
  br label %31

23:                                               ; preds = %17
  %.not9 = icmp eq i32 %0, 0
  br i1 %.not9, label %29, label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @lower_layer_deinterlaced_field_select, align 4
  %.not10 = icmp eq i32 %25, 0
  br i1 %.not10, label %27, label %26

26:                                               ; preds = %24
  call void @Deinterlace(i8* noundef %3, i8* noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  call void @Subsample_Vertical(i8* noundef %3, i16* noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1)
  br label %28

27:                                               ; preds = %24
  call void @Deinterlace(i8* noundef %2, i8* noundef %3, i32 noundef 1, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  call void @Subsample_Vertical(i8* noundef %2, i16* noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 1)
  br label %28

28:                                               ; preds = %27, %26
  br label %30

29:                                               ; preds = %23
  call void @Deinterlace(i8* noundef %2, i8* noundef %3, i32 noundef 1, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  call void @Deinterlace(i8* noundef %3, i8* noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %16)
  call void @Subsample_Vertical(i8* noundef %2, i16* noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 0, i32 noundef 2)
  call void @Subsample_Vertical(i8* noundef %3, i16* noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %21, i32 noundef %12, i32 noundef %13, i32 noundef 1, i32 noundef 2)
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %22
  %32 = icmp slt i32 %7, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = mul nsw i32 %8, %7
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds i16, i16* %4, i64 %36
  %38 = add nsw i32 %21, %7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %33
  %.0 = phi i32 [ 0, %40 ], [ %38, %33 ]
  %42 = icmp sgt i32 %.0, %11
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %45

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi i32 [ %11, %43 ], [ %.0, %44 ]
  br label %55

47:                                               ; preds = %31
  %48 = mul nsw i32 %10, %7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %5, i64 %49
  %51 = sub nsw i32 %11, %7
  %52 = icmp sgt i32 %51, %21
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %47
  %.03 = phi i32 [ %21, %53 ], [ %51, %47 ]
  br label %55

55:                                               ; preds = %54, %45
  %.05 = phi i8* [ %5, %45 ], [ %50, %54 ]
  %.04 = phi i16* [ %37, %45 ], [ %4, %54 ]
  %.1 = phi i32 [ %46, %45 ], [ %.03, %54 ]
  %56 = icmp slt i32 %6, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = add nsw i32 %19, %6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %57
  %.01 = phi i32 [ 0, %60 ], [ %58, %57 ]
  %62 = icmp sgt i32 %.01, %10
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %65

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %63
  %66 = phi i32 [ %10, %63 ], [ %.01, %64 ]
  br label %74

67:                                               ; preds = %55
  %68 = sext i32 %6 to i64
  %69 = getelementptr inbounds i8, i8* %.05, i64 %68
  %70 = sub nsw i32 %10, %6
  %71 = icmp sgt i32 %70, %19
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %67
  %.07 = phi i32 [ %19, %72 ], [ %70, %67 ]
  br label %74

74:                                               ; preds = %73, %65
  %.18 = phi i32 [ %66, %65 ], [ %.07, %73 ]
  %.16 = phi i8* [ %.05, %65 ], [ %69, %73 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.30*)* @_wyvern_slice_memo_Make_Spatial_Prediction_Frame_.02351395024, i32 (%_wyvern_thunk_type.30*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %6, i32* %_wyvern_thunk_arg_gep_, align 8
  call void @_wyvern_calleeclone_Subsample_Horizontal_295420599(i16* noundef %.04, i8* noundef %.16, %_wyvern_thunk_type.30* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %.18, i32 noundef %8, i32 noundef %10, i32 noundef %.1, i32 noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Subsample_Vertical(i8* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  br label %10

10:                                               ; preds = %56, %9
  %.0 = phi i32 [ %7, %9 ], [ %57, %56 ]
  %11 = icmp slt i32 %.0, %4
  br i1 %11, label %12, label %58

12:                                               ; preds = %10
  %13 = mul nsw i32 %.0, %2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %1, i64 %14
  %16 = mul nsw i32 %.0, %5
  %17 = sdiv i32 %16, %6
  %18 = mul nsw i32 %17, %2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  %21 = add nsw i32 %3, -1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ %20, %26 ]
  %29 = mul nsw i32 %.0, %5
  %30 = srem i32 %29, %6
  %31 = shl nsw i32 %30, 4
  %32 = ashr i32 %6, 1
  %33 = add nsw i32 %31, %32
  %34 = sdiv i32 %33, %6
  %35 = sub nsw i32 16, %34
  br label %36

36:                                               ; preds = %53, %27
  %.01 = phi i32 [ 0, %27 ], [ %54, %53 ]
  %37 = icmp slt i32 %.01, %2
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds i8, i8* %20, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = mul nsw i32 %35, %42
  %44 = zext i32 %.01 to i64
  %45 = getelementptr inbounds i8, i8* %28, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = mul nsw i32 %34, %47
  %49 = add nsw i32 %43, %48
  %50 = trunc i32 %49 to i16
  %51 = zext i32 %.01 to i64
  %52 = getelementptr inbounds i16, i16* %15, i64 %51
  store i16 %50, i16* %52, align 2
  br label %53

53:                                               ; preds = %38
  %54 = add nuw nsw i32 %.01, 1
  br label %36, !llvm.loop !12

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.0, %8
  br label %10, !llvm.loop !13

58:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Deinterlace(i8* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  br label %7

7:                                                ; preds = %115, %6
  %.0 = phi i32 [ %2, %6 ], [ %116, %115 ]
  %8 = icmp slt i32 %.0, %4
  br i1 %8, label %9, label %117

9:                                                ; preds = %7
  %10 = mul nsw i32 %.0, %3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = icmp eq i32 %.0, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = sext i32 %3 to i64
  br label %19

16:                                               ; preds = %9
  %17 = sext i32 %3 to i64
  %18 = sub nsw i64 0, %17
  br label %19

19:                                               ; preds = %16, %14
  %.pn = phi i64 [ %15, %14 ], [ %18, %16 ]
  %20 = getelementptr inbounds i8, i8* %12, i64 %.pn
  %21 = add nsw i32 %4, -1
  %22 = icmp eq i32 %.0, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = sext i32 %3 to i64
  %25 = sub nsw i64 0, %24
  br label %28

26:                                               ; preds = %19
  %27 = sext i32 %3 to i64
  br label %28

28:                                               ; preds = %26, %23
  %.pn2 = phi i64 [ %25, %23 ], [ %27, %26 ]
  %29 = getelementptr inbounds i8, i8* %12, i64 %.pn2
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %51, label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %48, %30
  %.01 = phi i32 [ 0, %30 ], [ %49, %48 ]
  %32 = icmp slt i32 %.01, %3
  br i1 %32, label %33, label %50

33:                                               ; preds = %31
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds i8, i8* %20, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i16
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds i8, i8* %29, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i16
  %42 = add nuw nsw i16 %37, %41
  %43 = add nuw nsw i16 %42, 1
  %44 = lshr i16 %43, 1
  %45 = trunc i16 %44 to i8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds i8, i8* %12, i64 %46
  store i8 %45, i8* %47, align 1
  br label %48

48:                                               ; preds = %33
  %49 = add nuw nsw i32 %.01, 1
  br label %31, !llvm.loop !14

50:                                               ; preds = %31
  br label %114

51:                                               ; preds = %28
  %52 = mul nsw i32 %.0, %3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %1, i64 %53
  %55 = icmp slt i32 %.0, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51
  %58 = shl nsw i32 %3, 1
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  br label %62

62:                                               ; preds = %57, %56
  %63 = phi i8* [ %54, %56 ], [ %61, %57 ]
  %64 = add nsw i32 %4, -2
  %.not3 = icmp slt i32 %.0, %64
  br i1 %.not3, label %66, label %65

65:                                               ; preds = %62
  br label %70

66:                                               ; preds = %62
  %67 = shl nsw i32 %3, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %54, i64 %68
  br label %70

70:                                               ; preds = %66, %65
  %71 = phi i8* [ %54, %65 ], [ %69, %66 ]
  br label %72

72:                                               ; preds = %111, %70
  %.1 = phi i32 [ 0, %70 ], [ %112, %111 ]
  %73 = icmp slt i32 %.1, %3
  br i1 %73, label %74, label %113

74:                                               ; preds = %72
  %75 = zext i32 %.1 to i64
  %76 = getelementptr inbounds i8, i8* %20, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = zext i32 %.1 to i64
  %80 = getelementptr inbounds i8, i8* %29, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %78, %82
  %84 = shl nuw nsw i32 %83, 3
  %85 = zext i32 %.1 to i64
  %86 = getelementptr inbounds i8, i8* %54, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = add nuw nsw i32 %84, %89
  %91 = zext i32 %.1 to i64
  %92 = getelementptr inbounds i8, i8* %63, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = zext i32 %.1 to i64
  %96 = getelementptr inbounds i8, i8* %71, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %94, %98
  %100 = sub nsw i32 %90, %99
  %101 = load i8*, i8** @Clip, align 8
  %102 = icmp sgt i32 %100, -1
  %103 = select i1 %102, i32 8, i32 7
  %104 = add nsw i32 %100, %103
  %105 = ashr i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i32 %.1 to i64
  %110 = getelementptr inbounds i8, i8* %12, i64 %109
  store i8 %108, i8* %110, align 1
  br label %111

111:                                              ; preds = %74
  %112 = add nuw nsw i32 %.1, 1
  br label %72, !llvm.loop !15

113:                                              ; preds = %72
  br label %114

114:                                              ; preds = %113, %50
  br label %115

115:                                              ; preds = %114
  %116 = add nsw i32 %.0, 2
  br label %7, !llvm.loop !16

117:                                              ; preds = %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Subsample_Horizontal(i16* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  br label %10

10:                                               ; preds = %58, %9
  %.04 = phi i32 [ 0, %9 ], [ %59, %58 ]
  %11 = icmp slt i32 %.04, %3
  br i1 %11, label %12, label %60

12:                                               ; preds = %10
  %13 = zext i32 %.04 to i64
  %14 = getelementptr inbounds i8, i8* %1, i64 %13
  %15 = add nsw i32 %.04, %2
  %16 = mul nsw i32 %15, %7
  %17 = sdiv i32 %16, %8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %0, i64 %18
  %20 = add nsw i32 %4, -1
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds i16, i16* %19, i64 1
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i16* [ %23, %22 ], [ %19, %24 ]
  %27 = mul nsw i32 %15, %7
  %28 = srem i32 %27, %8
  %29 = shl nsw i32 %28, 4
  %30 = ashr i32 %8, 1
  %31 = add nsw i32 %29, %30
  %32 = sdiv i32 %31, %8
  %33 = sub nsw i32 16, %32
  br label %34

34:                                               ; preds = %49, %25
  %.03 = phi i32 [ 0, %25 ], [ %56, %49 ]
  %.02 = phi i16* [ %19, %25 ], [ %53, %49 ]
  %.01 = phi i16* [ %26, %25 ], [ %51, %49 ]
  %.0 = phi i8* [ %14, %25 ], [ %55, %49 ]
  %35 = icmp slt i32 %.03, %6
  br i1 %35, label %36, label %57

36:                                               ; preds = %34
  %37 = load i16, i16* %.02, align 2
  %38 = sext i16 %37 to i32
  %39 = mul nsw i32 %33, %38
  %40 = load i16, i16* %.01, align 2
  %41 = sext i16 %40 to i32
  %42 = mul nsw i32 %32, %41
  %43 = add nsw i32 %39, %42
  %44 = icmp sgt i32 %43, -1
  %45 = select i1 %44, i32 128, i32 127
  %46 = add nsw i32 %43, %45
  %47 = lshr i32 %46, 8
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %.0, align 1
  br label %49

49:                                               ; preds = %36
  %50 = sext i32 %4 to i64
  %51 = getelementptr inbounds i16, i16* %.01, i64 %50
  %52 = sext i32 %4 to i64
  %53 = getelementptr inbounds i16, i16* %.02, i64 %52
  %54 = sext i32 %5 to i64
  %55 = getelementptr inbounds i8, i8* %.0, i64 %54
  %56 = add nuw nsw i32 %.03, 1
  br label %34, !llvm.loop !17

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = add nuw nsw i32 %.04, 1
  br label %10, !llvm.loop !18

60:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_Make_Spatial_Prediction_Frame_.02351395024(%_wyvern_thunk_type.30* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = icmp slt i32 %_wyvern_arg_, 0
  br i1 %0, label %sliceclone_1, label %sliceclone_4

sliceclone_1:                                     ; preds = %sliceclone_
  br label %sliceclone_2

sliceclone_2:                                     ; preds = %sliceclone_1
  %1 = sub nsw i32 0, %_wyvern_arg_
  br label %sliceclone_3

sliceclone_3:                                     ; preds = %sliceclone_4, %sliceclone_2
  %2 = phi i32 [ %1, %sliceclone_2 ], [ 0, %sliceclone_4 ]
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %2, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %2

sliceclone_4:                                     ; preds = %sliceclone_
  br label %sliceclone_3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Subsample_Horizontal_295420599(i16* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, %_wyvern_thunk_type.30* noundef %_wyvern_thunkptr, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  br label %9

9:                                                ; preds = %57, %8
  %.04 = phi i32 [ 0, %8 ], [ %58, %57 ]
  %10 = icmp slt i32 %.04, %2
  br i1 %10, label %11, label %59

11:                                               ; preds = %9
  %12 = zext i32 %.04 to i64
  %13 = getelementptr inbounds i8, i8* %1, i64 %12
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.30, %_wyvern_thunk_type.30* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.30*)*, i32 (%_wyvern_thunk_type.30*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.30* %_wyvern_thunkptr) #7
  %14 = add nsw i32 %_wyvern_thunkcall, %.04
  %15 = mul nsw i32 %14, %6
  %16 = sdiv i32 %15, %7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %0, i64 %17
  %19 = add nsw i32 %3, -1
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = getelementptr inbounds i16, i16* %18, i64 1
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i16* [ %22, %21 ], [ %18, %23 ]
  %26 = mul nsw i32 %14, %6
  %27 = srem i32 %26, %7
  %28 = shl nsw i32 %27, 4
  %29 = ashr i32 %7, 1
  %30 = add nsw i32 %28, %29
  %31 = sdiv i32 %30, %7
  %32 = sub nsw i32 16, %31
  br label %33

33:                                               ; preds = %48, %24
  %.03 = phi i32 [ 0, %24 ], [ %55, %48 ]
  %.02 = phi i16* [ %18, %24 ], [ %52, %48 ]
  %.01 = phi i16* [ %25, %24 ], [ %50, %48 ]
  %.0 = phi i8* [ %13, %24 ], [ %54, %48 ]
  %34 = icmp slt i32 %.03, %5
  br i1 %34, label %35, label %56

35:                                               ; preds = %33
  %36 = load i16, i16* %.02, align 2
  %37 = sext i16 %36 to i32
  %38 = mul nsw i32 %32, %37
  %39 = load i16, i16* %.01, align 2
  %40 = sext i16 %39 to i32
  %41 = mul nsw i32 %31, %40
  %42 = add nsw i32 %38, %41
  %43 = icmp sgt i32 %42, -1
  %44 = select i1 %43, i32 128, i32 127
  %45 = add nsw i32 %42, %44
  %46 = lshr i32 %45, 8
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %.0, align 1
  br label %48

48:                                               ; preds = %35
  %49 = sext i32 %3 to i64
  %50 = getelementptr inbounds i16, i16* %.01, i64 %49
  %51 = sext i32 %3 to i64
  %52 = getelementptr inbounds i16, i16* %.02, i64 %51
  %53 = sext i32 %4 to i64
  %54 = getelementptr inbounds i8, i8* %.0, i64 %53
  %55 = add nuw nsw i32 %.03, 1
  br label %33, !llvm.loop !17

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.04, 1
  br label %9, !llvm.loop !18

59:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
