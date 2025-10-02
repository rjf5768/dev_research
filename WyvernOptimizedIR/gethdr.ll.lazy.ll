; ModuleID = './gethdr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/gethdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@Quiet_Flag = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unexpected next_start_code %08x (ignored)\0A\00", align 1
@ld = external dso_local global %struct.layer_data*, align 8
@vertical_size = external dso_local global i32, align 4
@Non_Linear_quantizer_scale = external dso_local global [32 x i8], align 16
@horizontal_size = external dso_local global i32, align 4
@aspect_ratio_information = external dso_local global i32, align 4
@frame_rate_code = external dso_local global i32, align 4
@bit_rate_value = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sequence_header()\00", align 1
@vbv_buffer_size = external dso_local global i32, align 4
@constrained_parameters_flag = external dso_local global i32, align 4
@scan = external dso_local global [2 x [64 x i8]], align 16
@default_intra_quantizer_matrix = external dso_local global [64 x i8], align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"reserved extension start code ID %d\0A\00", align 1
@layer_id = external dso_local global i32, align 4
@profile_and_level_indication = external dso_local global i32, align 4
@progressive_sequence = external dso_local global i32, align 4
@chroma_format = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"sequence_extension\00", align 1
@low_delay = external dso_local global i32, align 4
@frame_rate_extension_n = external dso_local global i32, align 4
@frame_rate_extension_d = external dso_local global i32, align 4
@frame_rate_Table = internal global [16 x double] [double 0.000000e+00, double 0x4036FA1E2D85C116, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@frame_rate = external dso_local global double, align 8
@profile = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@bit_rate = external dso_local global double, align 8
@video_format = external dso_local global i32, align 4
@color_description = external dso_local global i32, align 4
@color_primaries = external dso_local global i32, align 4
@transfer_characteristics = external dso_local global i32, align 4
@matrix_coefficients = external dso_local global i32, align 4
@display_horizontal_size = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"sequence_display_extension\00", align 1
@display_vertical_size = external dso_local global i32, align 4
@lower_layer_prediction_horizontal_size = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"sequence_scalable_extension()\00", align 1
@lower_layer_prediction_vertical_size = external dso_local global i32, align 4
@horizontal_subsampling_factor_m = external dso_local global i32, align 4
@horizontal_subsampling_factor_n = external dso_local global i32, align 4
@vertical_subsampling_factor_m = external dso_local global i32, align 4
@vertical_subsampling_factor_n = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"temporal scalability not implemented\0A\00", align 1
@repeat_first_field = external dso_local global i32, align 4
@top_field_first = external dso_local global i32, align 4
@picture_structure = external dso_local global i32, align 4
@frame_center_horizontal_offset = external dso_local global [3 x i32], align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"picture_display_extension, first marker bit\00", align 1
@frame_center_vertical_offset = external dso_local global [3 x i32], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"picture_display_extension, second marker bit\00", align 1
@f_code = external dso_local global [2 x [2 x i32]], align 16
@intra_dc_precision = external dso_local global i32, align 4
@frame_pred_frame_dct = external dso_local global i32, align 4
@concealment_motion_vectors = external dso_local global i32, align 4
@intra_vlc_format = external dso_local global i32, align 4
@chroma_420_type = external dso_local global i32, align 4
@progressive_frame = external dso_local global i32, align 4
@composite_display_flag = external dso_local global i32, align 4
@v_axis = external dso_local global i32, align 4
@field_sequence = external dso_local global i32, align 4
@sub_carrier = external dso_local global i32, align 4
@burst_amplitude = external dso_local global i32, align 4
@sub_carrier_phase = external dso_local global i32, align 4
@lower_layer_temporal_reference = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"picture_spatial_scalable_extension(), first marker bit\00", align 1
@lower_layer_horizontal_offset = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"picture_spatial_scalable_extension(), second marker bit\00", align 1
@lower_layer_vertical_offset = external dso_local global i32, align 4
@spatial_temporal_weight_code_table_index = external dso_local global i32, align 4
@lower_layer_progressive_frame = external dso_local global i32, align 4
@lower_layer_deinterlaced_field_select = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"temporal scalability not supported\0A\00", align 1
@copyright_flag = external dso_local global i32, align 4
@copyright_identifier = external dso_local global i32, align 4
@original_or_copy = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"copyright_extension(), first marker bit\00", align 1
@copyright_number_1 = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"copyright_extension(), second marker bit\00", align 1
@copyright_number_2 = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"copyright_extension(), third marker bit\00", align 1
@copyright_number_3 = external dso_local global i32, align 4
@Verbose_Flag = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"copyright_extension (byte %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  copyright_flag =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  copyright_identifier=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  original_or_copy = %d (original=1, copy=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  copyright_number_1=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"  copyright_number_2=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  copyright_number_3=%d\0A\00", align 1
@base = external dso_local global %struct.layer_data, align 8
@True_Framenum_max = internal global i32 -1, align 4
@Temporal_Reference_Base = internal global i32 0, align 4
@Temporal_Reference_GOP_Reset = internal global i32 0, align 4
@drop_flag = external dso_local global i32, align 4
@hour = external dso_local global i32, align 4
@minute = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"group_of_pictures_header()\00", align 1
@sec = external dso_local global i32, align 4
@frame = external dso_local global i32, align 4
@closed_gop = external dso_local global i32, align 4
@broken_link = external dso_local global i32, align 4
@temporal_reference = external dso_local global i32, align 4
@picture_coding_type = external dso_local global i32, align 4
@vbv_delay = external dso_local global i32, align 4
@full_pel_forward_vector = external dso_local global i32, align 4
@forward_f_code = external dso_local global i32, align 4
@full_pel_backward_vector = external dso_local global i32, align 4
@backward_f_code = external dso_local global i32, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap = internal global i32 0, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_old = internal global i32 0, align 4
@True_Framenum = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Hdr() #0 {
  br label %1

1:                                                ; preds = %13, %0
  call void @next_start_code()
  %2 = call i32 @Get_Bits32() #3
  switch i32 %2, label %7 [
    i32 435, label %3
    i32 440, label %4
    i32 256, label %5
    i32 439, label %6
  ]

3:                                                ; preds = %1
  call void @sequence_header()
  br label %13

4:                                                ; preds = %1
  call void @group_of_pictures_header()
  br label %13

5:                                                ; preds = %1
  call void @picture_header()
  br label %14

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %12

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #4
  br label %12

12:                                               ; preds = %9, %7
  br label %13

13:                                               ; preds = %12, %4, %3
  br label %1

14:                                               ; preds = %6, %5
  %.0 = phi i32 [ 0, %6 ], [ 1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @next_start_code() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 6
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 7
  call void @Flush_Buffer(i32 noundef %4) #3
  br label %5

5:                                                ; preds = %7, %0
  %6 = call i32 @Show_Bits(i32 noundef 24) #3
  %.not = icmp eq i32 %6, 1
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  call void @Flush_Buffer(i32 noundef 8) #3
  br label %5, !llvm.loop !4

8:                                                ; preds = %5
  ret void
}

declare dso_local i32 @Get_Bits32() #1

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_header() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 12) #3
  store i32 %1, i32* @horizontal_size, align 4
  %2 = call i32 @Get_Bits(i32 noundef 12) #3
  store i32 %2, i32* @vertical_size, align 4
  %3 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %3, i32* @aspect_ratio_information, align 4
  %4 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %4, i32* @frame_rate_code, align 4
  %5 = call i32 @Get_Bits(i32 noundef 18) #3
  store i32 %5, i32* @bit_rate_value, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @Get_Bits(i32 noundef 10) #3
  store i32 %6, i32* @vbv_buffer_size, align 4
  %7 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %7, i32* @constrained_parameters_flag, align 4
  %8 = call i32 @Get_Bits(i32 noundef 1) #3
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i64 0, i32 12
  store i32 %8, i32* %10, align 8
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %25, label %11

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %22, %11
  %.0 = phi i32 [ 0, %11 ], [ %23, %22 ]
  %13 = icmp ult i32 %.0, 64
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = call i32 @Get_Bits(i32 noundef 8) #3
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i64 0, i32 8, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !6

24:                                               ; preds = %12
  br label %39

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %36, %25
  %.1 = phi i32 [ 0, %25 ], [ %37, %36 ]
  %27 = icmp ult i32 %.1, 64
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* @default_intra_quantizer_matrix, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i64 0, i32 8, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = add nuw nsw i32 %.1, 1
  br label %26, !llvm.loop !7

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %24
  %40 = call i32 @Get_Bits(i32 noundef 1) #3
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %42 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i64 0, i32 13
  store i32 %40, i32* %42, align 4
  %.not1 = icmp eq i32 %40, 0
  br i1 %.not1, label %57, label %43

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %54, %43
  %.2 = phi i32 [ 0, %43 ], [ %55, %54 ]
  %45 = icmp ult i32 %.2, 64
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = call i32 @Get_Bits(i32 noundef 8) #3
  %48 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %49 = zext i32 %.2 to i64
  %50 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %48, i64 0, i32 9, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = add nuw nsw i32 %.2, 1
  br label %44, !llvm.loop !8

56:                                               ; preds = %44
  br label %67

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %64, %57
  %.3 = phi i32 [ 0, %57 ], [ %65, %64 ]
  %59 = icmp ult i32 %.3, 64
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %62 = zext i32 %.3 to i64
  %63 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %61, i64 0, i32 9, i64 %62
  store i32 16, i32* %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = add nuw nsw i32 %.3, 1
  br label %58, !llvm.loop !9

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %83, %67
  %.4 = phi i32 [ 0, %67 ], [ %84, %83 ]
  %69 = icmp ult i32 %.4, 64
  br i1 %69, label %70, label %85

70:                                               ; preds = %68
  %71 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %72 = zext i32 %.4 to i64
  %73 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %71, i64 0, i32 8, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %.4 to i64
  %76 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %71, i64 0, i32 10, i64 %75
  store i32 %74, i32* %76, align 4
  %77 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %78 = zext i32 %.4 to i64
  %79 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %77, i64 0, i32 9, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %.4 to i64
  %82 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %77, i64 0, i32 11, i64 %81
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %70
  %84 = add nuw nsw i32 %.4, 1
  br label %68, !llvm.loop !10

85:                                               ; preds = %68
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @group_of_pictures_header() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = icmp eq %struct.layer_data* %1, @base
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @True_Framenum_max, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @Temporal_Reference_Base, align 4
  store i32 1, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %7, i32* @drop_flag, align 4
  %8 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %8, i32* @hour, align 4
  %9 = call i32 @Get_Bits(i32 noundef 6) #3
  store i32 %9, i32* @minute, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 noundef 6) #3
  store i32 %10, i32* @sec, align 4
  %11 = call i32 @Get_Bits(i32 noundef 6) #3
  store i32 %11, i32* @frame, align 4
  %12 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %12, i32* @closed_gop, align 4
  %13 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %13, i32* @broken_link, align 4
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_header() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 20
  store i32 0, i32* %2, align 8
  %3 = call i32 @Get_Bits(i32 noundef 10) #3
  store i32 %3, i32* @temporal_reference, align 4
  %4 = call i32 @Get_Bits(i32 noundef 3) #3
  store i32 %4, i32* @picture_coding_type, align 4
  %5 = call i32 @Get_Bits(i32 noundef 16) #3
  store i32 %5, i32* @vbv_delay, align 4
  %6 = load i32, i32* @picture_coding_type, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @picture_coding_type, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %0
  %12 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %12, i32* @full_pel_forward_vector, align 4
  %13 = call i32 @Get_Bits(i32 noundef 3) #3
  store i32 %13, i32* @forward_f_code, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @picture_coding_type, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %18, i32* @full_pel_backward_vector, align 4
  %19 = call i32 @Get_Bits(i32 noundef 3) #3
  store i32 %19, i32* @backward_f_code, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = call i32 @extra_bit_information()
  call void @extension_and_user_data()
  call void @Update_Temporal_Reference_Tacking_Data()
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @Flush_Buffer(i32 noundef) #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slice_header() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 16
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @vertical_size, align 4
  %6 = icmp sgt i32 %5, 2800
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @Get_Bits(i32 noundef 3) #3
  br label %10

9:                                                ; preds = %4, %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i64 0, i32 17
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = call i32 @Get_Bits(i32 noundef 7) #3
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i64 0, i32 21
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = call i32 @Get_Bits(i32 noundef 5) #3
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i64 0, i32 16
  %24 = load i32, i32* %23, align 8
  %.not1 = icmp eq i32 %24, 0
  br i1 %.not1, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %27 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i64 0, i32 18
  %28 = load i32, i32* %27, align 8
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %34, label %29

29:                                               ; preds = %25
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  br label %36

34:                                               ; preds = %25
  %35 = shl i32 %21, 1
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %33, %29 ], [ %35, %34 ]
  br label %39

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ %21, %38 ]
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %42 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i64 0, i32 22
  store i32 %40, i32* %42, align 8
  %43 = call i32 @Get_Bits(i32 noundef 1) #3
  %.not2 = icmp eq i32 %43, 0
  br i1 %.not2, label %51, label %44

44:                                               ; preds = %39
  %45 = call i32 @Get_Bits(i32 noundef 1) #3
  %46 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %47 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %46, i64 0, i32 23
  store i32 %45, i32* %47, align 4
  %48 = call i32 @Get_Bits(i32 noundef 1) #3
  %49 = call i32 @Get_Bits(i32 noundef 6) #3
  %50 = call i32 @extra_bit_information()
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %52, i64 0, i32 23
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %44
  ret i32 %11
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @extra_bit_information() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = call i32 @Get_Bits1() #3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  call void @Flush_Buffer(i32 noundef 8) #3
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

5:                                                ; preds = %1
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @marker_bit(i8* nocapture noundef readnone %0) #0 {
  %2 = call i32 @Get_Bits(i32 noundef 1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @extension_and_user_data() #0 {
  call void @next_start_code()
  br label %1

1:                                                ; preds = %26, %0
  %2 = call i32 @Show_Bits(i32 noundef 32) #3
  %3 = icmp eq i32 %2, 437
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 434
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i1 [ true, %1 ], [ %5, %4 ]
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 437
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  call void @Flush_Buffer32() #3
  %11 = call i32 @Get_Bits(i32 noundef 4) #3
  switch i32 %11, label %21 [
    i32 1, label %12
    i32 2, label %13
    i32 3, label %14
    i32 5, label %15
    i32 7, label %16
    i32 8, label %17
    i32 9, label %18
    i32 10, label %19
    i32 4, label %20
  ]

12:                                               ; preds = %10
  call void @sequence_extension()
  br label %24

13:                                               ; preds = %10
  call void @sequence_display_extension()
  br label %24

14:                                               ; preds = %10
  call void @quant_matrix_extension()
  br label %24

15:                                               ; preds = %10
  call void @sequence_scalable_extension()
  br label %24

16:                                               ; preds = %10
  call void @picture_display_extension()
  br label %24

17:                                               ; preds = %10
  call void @picture_coding_extension()
  br label %24

18:                                               ; preds = %10
  call void @picture_spatial_scalable_extension()
  br label %24

19:                                               ; preds = %10
  call void @picture_temporal_scalable_extension()
  br label %24

20:                                               ; preds = %10
  call void @copyright_extension()
  br label %24

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11) #4
  br label %24

24:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  call void @next_start_code()
  br label %26

25:                                               ; preds = %8
  call void @Flush_Buffer32() #3
  call void @user_data()
  br label %26

26:                                               ; preds = %25, %24
  br label %1, !llvm.loop !12

27:                                               ; preds = %6
  ret void
}

declare dso_local void @Flush_Buffer32() #1

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_extension() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 16
  store i32 1, i32* %2, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 17
  store i32 0, i32* %3, align 4
  store i32 0, i32* @layer_id, align 4
  %4 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %4, i32* @profile_and_level_indication, align 4
  %5 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %5, i32* @progressive_sequence, align 4
  %6 = call i32 @Get_Bits(i32 noundef 2) #3
  store i32 %6, i32* @chroma_format, align 4
  %7 = call i32 @Get_Bits(i32 noundef 2) #3
  %8 = call i32 @Get_Bits(i32 noundef 2) #3
  %9 = call i32 @Get_Bits(i32 noundef 12) #3
  call void @marker_bit(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 noundef 8) #3
  %11 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %11, i32* @low_delay, align 4
  %12 = call i32 @Get_Bits(i32 noundef 2) #3
  store i32 %12, i32* @frame_rate_extension_n, align 4
  %13 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %13, i32* @frame_rate_extension_d, align 4
  %14 = load i32, i32* @frame_rate_code, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x double], [16 x double]* @frame_rate_Table, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load i32, i32* @frame_rate_extension_n, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @frame_rate_extension_d, align 4
  %21 = add nsw i32 %20, 1
  %22 = sdiv i32 %19, %21
  %23 = sitofp i32 %22 to double
  %24 = fmul double %17, %23
  store double %24, double* @frame_rate, align 8
  %25 = load i32, i32* @profile_and_level_indication, align 4
  %26 = and i32 %25, 128
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %33, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* @profile_and_level_indication, align 4
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 133, i32* @profile, align 4
  store i32 8, i32* @level, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %37

33:                                               ; preds = %0
  %34 = load i32, i32* @profile_and_level_indication, align 4
  %35 = ashr i32 %34, 4
  store i32 %35, i32* @profile, align 4
  %36 = and i32 %34, 15
  store i32 %36, i32* @level, align 4
  br label %37

37:                                               ; preds = %33, %32
  %38 = shl i32 %7, 12
  %39 = load i32, i32* @horizontal_size, align 4
  %40 = and i32 %39, 4095
  %41 = or i32 %38, %40
  store i32 %41, i32* @horizontal_size, align 4
  %42 = shl i32 %8, 12
  %43 = load i32, i32* @vertical_size, align 4
  %44 = and i32 %43, 4095
  %45 = or i32 %42, %44
  store i32 %45, i32* @vertical_size, align 4
  %46 = shl i32 %9, 18
  %47 = load i32, i32* @bit_rate_value, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @bit_rate_value, align 4
  %49 = sitofp i32 %48 to double
  %50 = fmul double %49, 4.000000e+02
  store double %50, double* @bit_rate, align 8
  %51 = shl i32 %10, 10
  %52 = load i32, i32* @vbv_buffer_size, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* @vbv_buffer_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_display_extension() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 3) #3
  store i32 %1, i32* @video_format, align 4
  %2 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %2, i32* @color_description, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %0
  %4 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %4, i32* @color_primaries, align 4
  %5 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %5, i32* @transfer_characteristics, align 4
  %6 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %6, i32* @matrix_coefficients, align 4
  br label %7

7:                                                ; preds = %3, %0
  %8 = call i32 @Get_Bits(i32 noundef 14) #3
  store i32 %8, i32* @display_horizontal_size, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @Get_Bits(i32 noundef 14) #3
  store i32 %9, i32* @display_vertical_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @quant_matrix_extension() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 1) #3
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 12
  store i32 %1, i32* %3, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %24, label %4

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %21, %4
  %.0 = phi i32 [ 0, %4 ], [ %22, %21 ]
  %6 = icmp ult i32 %.0, 64
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = call i32 @Get_Bits(i32 noundef 8) #3
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i64 0, i32 8, i64 %13
  store i32 %8, i32* %14, align 4
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i64 0, i32 10, i64 %19
  store i32 %8, i32* %20, align 4
  br label %21

21:                                               ; preds = %7
  %22 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !13

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %0
  %25 = call i32 @Get_Bits(i32 noundef 1) #3
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %27 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i64 0, i32 13
  store i32 %25, i32* %27, align 4
  %.not1 = icmp eq i32 %25, 0
  br i1 %.not1, label %48, label %28

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %45, %28
  %.1 = phi i32 [ 0, %28 ], [ %46, %45 ]
  %30 = icmp ult i32 %.1, 64
  br i1 %30, label %31, label %47

31:                                               ; preds = %29
  %32 = call i32 @Get_Bits(i32 noundef 8) #3
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i64 0, i32 9, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %39, i64 0, i32 11, i64 %43
  store i32 %32, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !14

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %24
  %49 = call i32 @Get_Bits(i32 noundef 1) #3
  %50 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %51 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %50, i64 0, i32 14
  store i32 %49, i32* %51, align 8
  %.not2 = icmp eq i32 %49, 0
  br i1 %.not2, label %66, label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %63, %52
  %.2 = phi i32 [ 0, %52 ], [ %64, %63 ]
  %54 = icmp ult i32 %.2, 64
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = call i32 @Get_Bits(i32 noundef 8) #3
  %57 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %58 = zext i32 %.2 to i64
  %59 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %57, i64 0, i32 10, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = add nuw nsw i32 %.2, 1
  br label %53, !llvm.loop !15

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = call i32 @Get_Bits(i32 noundef 1) #3
  %68 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %68, i64 0, i32 15
  store i32 %67, i32* %69, align 4
  %.not3 = icmp eq i32 %67, 0
  br i1 %.not3, label %84, label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %81, %70
  %.3 = phi i32 [ 0, %70 ], [ %82, %81 ]
  %72 = icmp ult i32 %.3, 64
  br i1 %72, label %73, label %83

73:                                               ; preds = %71
  %74 = call i32 @Get_Bits(i32 noundef 8) #3
  %75 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %76 = zext i32 %.3 to i64
  %77 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %75, i64 0, i32 11, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %73
  %82 = add nuw nsw i32 %.3, 1
  br label %71, !llvm.loop !16

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_scalable_extension() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 2) #3
  %2 = add i32 %1, 1
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i64 0, i32 17
  store i32 %2, i32* %4, align 4
  %5 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %5, i32* @layer_id, align 4
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %7 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i64 0, i32 17
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = call i32 @Get_Bits(i32 noundef 14) #3
  store i32 %11, i32* @lower_layer_prediction_horizontal_size, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @Get_Bits(i32 noundef 14) #3
  store i32 %12, i32* @lower_layer_prediction_vertical_size, align 4
  %13 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %13, i32* @horizontal_subsampling_factor_m, align 4
  %14 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %14, i32* @horizontal_subsampling_factor_n, align 4
  %15 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %15, i32* @vertical_subsampling_factor_m, align 4
  %16 = call i32 @Get_Bits(i32 noundef 5) #3
  store i32 %16, i32* @vertical_subsampling_factor_n, align 4
  br label %17

17:                                               ; preds = %10, %0
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i64 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @Error(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %23

23:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_display_extension() #0 {
  %1 = load i32, i32* @progressive_sequence, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %11, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @repeat_first_field, align 4
  %.not4 = icmp eq i32 %3, 0
  br i1 %.not4, label %9, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* @top_field_first, align 4
  %.not5 = icmp eq i32 %5, 0
  br i1 %.not5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %.01 = phi i32 [ 3, %6 ], [ 2, %7 ]
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8
  %.1 = phi i32 [ %.01, %8 ], [ 1, %9 ]
  br label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @picture_structure, align 4
  %.not2 = icmp eq i32 %12, 3
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %11
  br label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @repeat_first_field, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %.2 = phi i32 [ 3, %16 ], [ 2, %17 ]
  br label %19

19:                                               ; preds = %18, %13
  %.3 = phi i32 [ 1, %13 ], [ %.2, %18 ]
  br label %20

20:                                               ; preds = %19, %10
  %.4 = phi i32 [ %.1, %10 ], [ %.3, %19 ]
  br label %21

21:                                               ; preds = %30, %20
  %.0 = phi i32 [ 0, %20 ], [ %31, %30 ]
  %22 = icmp slt i32 %.0, %.4
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = call i32 @Get_Bits(i32 noundef 16) #3
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_horizontal_offset, i64 0, i64 %25
  store i32 %24, i32* %26, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @Get_Bits(i32 noundef 16) #3
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_vertical_offset, i64 0, i64 %28
  store i32 %27, i32* %29, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23
  %31 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !17

32:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_coding_extension() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %1, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 0), align 16
  %2 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %2, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 1), align 4
  %3 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %3, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 0), align 8
  %4 = call i32 @Get_Bits(i32 noundef 4) #3
  store i32 %4, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 1), align 4
  %5 = call i32 @Get_Bits(i32 noundef 2) #3
  store i32 %5, i32* @intra_dc_precision, align 4
  %6 = call i32 @Get_Bits(i32 noundef 2) #3
  store i32 %6, i32* @picture_structure, align 4
  %7 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %7, i32* @top_field_first, align 4
  %8 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %8, i32* @frame_pred_frame_dct, align 4
  %9 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %9, i32* @concealment_motion_vectors, align 4
  %10 = call i32 @Get_Bits(i32 noundef 1) #3
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 18
  store i32 %10, i32* %12, align 8
  %13 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %13, i32* @intra_vlc_format, align 4
  %14 = call i32 @Get_Bits(i32 noundef 1) #3
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i64 0, i32 19
  store i32 %14, i32* %16, align 4
  %17 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %17, i32* @repeat_first_field, align 4
  %18 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %18, i32* @chroma_420_type, align 4
  %19 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %19, i32* @progressive_frame, align 4
  %20 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %20, i32* @composite_display_flag, align 4
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %27, label %21

21:                                               ; preds = %0
  %22 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %22, i32* @v_axis, align 4
  %23 = call i32 @Get_Bits(i32 noundef 3) #3
  store i32 %23, i32* @field_sequence, align 4
  %24 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %24, i32* @sub_carrier, align 4
  %25 = call i32 @Get_Bits(i32 noundef 7) #3
  store i32 %25, i32* @burst_amplitude, align 4
  %26 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %26, i32* @sub_carrier_phase, align 4
  br label %27

27:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_spatial_scalable_extension() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 20
  store i32 1, i32* %2, align 8
  %3 = call i32 @Get_Bits(i32 noundef 10) #3
  store i32 %3, i32* @lower_layer_temporal_reference, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %4 = call i32 @Get_Bits(i32 noundef 15) #3
  store i32 %4, i32* @lower_layer_horizontal_offset, align 4
  %5 = icmp sgt i32 %4, 16383
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %8 = add nsw i32 %7, -32768
  store i32 %8, i32* @lower_layer_horizontal_offset, align 4
  br label %9

9:                                                ; preds = %6, %0
  call void @marker_bit(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 noundef 15) #3
  store i32 %10, i32* @lower_layer_vertical_offset, align 4
  %11 = icmp sgt i32 %10, 16383
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @lower_layer_vertical_offset, align 4
  %14 = add nsw i32 %13, -32768
  store i32 %14, i32* @lower_layer_vertical_offset, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 @Get_Bits(i32 noundef 2) #3
  store i32 %16, i32* @spatial_temporal_weight_code_table_index, align 4
  %17 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %17, i32* @lower_layer_progressive_frame, align 4
  %18 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %18, i32* @lower_layer_deinterlaced_field_select, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_temporal_scalable_extension() #0 {
  call void @Error(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyright_extension() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 7
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %4, i32* @copyright_flag, align 4
  %5 = call i32 @Get_Bits(i32 noundef 8) #3
  store i32 %5, i32* @copyright_identifier, align 4
  %6 = call i32 @Get_Bits(i32 noundef 1) #3
  store i32 %6, i32* @original_or_copy, align 4
  %7 = call i32 @Get_Bits(i32 noundef 7) #3
  call void @marker_bit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %8 = call i32 @Get_Bits(i32 noundef 20) #3
  store i32 %8, i32* @copyright_number_1, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %9 = call i32 @Get_Bits(i32 noundef 22) #3
  store i32 %9, i32* @copyright_number_2, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 noundef 22) #3
  store i32 %10, i32* @copyright_number_3, align 4
  %11 = load i32, i32* @Verbose_Flag, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %0
  %14 = ashr i32 %3, 3
  %15 = add nsw i32 %14, -4
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 noundef %15) #3
  %17 = load i32, i32* @Verbose_Flag, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32, i32* @copyright_flag, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef %20) #3
  %22 = load i32, i32* @copyright_identifier, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 noundef %22) #3
  %24 = load i32, i32* @original_or_copy, align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 noundef %24) #3
  %26 = load i32, i32* @copyright_number_1, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 noundef %26) #3
  %28 = load i32, i32* @copyright_number_2, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 noundef %28) #3
  %30 = load i32, i32* @copyright_number_3, align 4
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef %30) #3
  br label %32

32:                                               ; preds = %19, %13
  br label %33

33:                                               ; preds = %32, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @user_data() #0 {
  call void @next_start_code()
  ret void
}

declare dso_local void @Error(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @Update_Temporal_Reference_Tacking_Data() #2 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = icmp eq %struct.layer_data* %1, @base
  br i1 %2, label %3, label %41

3:                                                ; preds = %0
  %4 = load i32, i32* @picture_coding_type, align 4
  %.not = icmp eq i32 %4, 3
  br i1 %.not, label %22, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @temporal_reference, align 4
  %7 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %.not3 = icmp eq i32 %6, %7
  br i1 %.not3, label %22, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %13, label %10

10:                                               ; preds = %8
  %11 = load i32, i32* @Temporal_Reference_Base, align 4
  %12 = add nsw i32 %11, 1024
  store i32 %12, i32* @Temporal_Reference_Base, align 4
  store i32 0, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i32, i32* @temporal_reference, align 4
  %15 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @Temporal_Reference_GOP_Reset, align 4
  %.not5 = icmp eq i32 %18, 0
  br i1 %.not5, label %19, label %20

19:                                               ; preds = %17
  store i32 1, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %20

20:                                               ; preds = %19, %17, %13
  %21 = load i32, i32* @temporal_reference, align 4
  store i32 %21, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  store i32 0, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %22

22:                                               ; preds = %20, %5, %3
  %23 = load i32, i32* @Temporal_Reference_Base, align 4
  %24 = load i32, i32* @temporal_reference, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* @True_Framenum, align 4
  %26 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %.not1 = icmp eq i32 %26, 0
  br i1 %.not1, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @temporal_reference, align 4
  %29 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %.not2 = icmp sgt i32 %28, %29
  br i1 %.not2, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @True_Framenum, align 4
  %32 = add nsw i32 %31, 1024
  store i32 %32, i32* @True_Framenum, align 4
  br label %33

33:                                               ; preds = %30, %27, %22
  %34 = load i32, i32* @True_Framenum, align 4
  %35 = load i32, i32* @True_Framenum_max, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %37
  %.in = phi i32* [ @True_Framenum, %37 ], [ @True_Framenum_max, %38 ]
  %40 = load i32, i32* %.in, align 4
  store i32 %40, i32* @True_Framenum_max, align 4
  br label %41

41:                                               ; preds = %39, %0
  ret void
}

declare dso_local i32 @Get_Bits1() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
