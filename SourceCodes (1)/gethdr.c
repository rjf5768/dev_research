; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/gethdr.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %18, %0
  call void @next_start_code()
  %4 = call i32 @Get_Bits32()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %10 [
    i32 435, label %6
    i32 440, label %7
    i32 256, label %8
    i32 439, label %9
  ]

6:                                                ; preds = %3
  call void @sequence_header()
  br label %18

7:                                                ; preds = %3
  call void @group_of_pictures_header()
  br label %18

8:                                                ; preds = %3
  call void @picture_header()
  store i32 1, i32* %1, align 4
  br label %19

9:                                                ; preds = %3
  store i32 0, i32* %1, align 4
  br label %19

10:                                               ; preds = %3
  %11 = load i32, i32* @Quiet_Flag, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %10
  br label %18

18:                                               ; preds = %17, %7, %6
  br label %3

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @next_start_code() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 6
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 7
  call void @Flush_Buffer(i32 noundef %4)
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i32 @Show_Bits(i32 noundef 24)
  %7 = zext i32 %6 to i64
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @Flush_Buffer(i32 noundef 8)
  br label %5, !llvm.loop !4

10:                                               ; preds = %5
  ret void
}

declare dso_local i32 @Get_Bits32() #1

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i32 @Get_Bits(i32 noundef 12)
  store i32 %6, i32* @horizontal_size, align 4
  %7 = call i32 @Get_Bits(i32 noundef 12)
  store i32 %7, i32* @vertical_size, align 4
  %8 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %8, i32* @aspect_ratio_information, align 4
  %9 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %9, i32* @frame_rate_code, align 4
  %10 = call i32 @Get_Bits(i32 noundef 18)
  store i32 %10, i32* @bit_rate_value, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @Get_Bits(i32 noundef 10)
  store i32 %11, i32* @vbv_buffer_size, align 4
  %12 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %12, i32* @constrained_parameters_flag, align 4
  %13 = call i32 @Get_Bits(i32 noundef 1)
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = icmp ne i32 %13, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i32 @Get_Bits(i32 noundef 8)
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %29
  store i32 %22, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %18, !llvm.loop !6

34:                                               ; preds = %18
  br label %54

35:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %1, align 4
  %38 = icmp slt i32 %37, 64
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @default_intra_quantizer_matrix, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %46 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %45, i32 0, i32 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %46, i64 0, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %36, !llvm.loop !7

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %34
  %55 = call i32 @Get_Bits(i32 noundef 1)
  %56 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 4
  %58 = icmp ne i32 %55, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = call i32 @Get_Bits(i32 noundef 8)
  %65 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %66 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %65, i32 0, i32 9
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %66, i64 0, i64 %71
  store i32 %64, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %60, !llvm.loop !8

76:                                               ; preds = %60
  br label %91

77:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %87, %77
  %79 = load i32, i32* %1, align 4
  %80 = icmp slt i32 %79, 64
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %83 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %82, i32 0, i32 9
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %83, i64 0, i64 %85
  store i32 16, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %78, !llvm.loop !9

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %76
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32, i32* %1, align 4
  %94 = icmp slt i32 %93, 64
  br i1 %94, label %95, label %121

95:                                               ; preds = %92
  %96 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %97 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %96, i32 0, i32 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %97, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %103 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %102, i32 0, i32 10
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %103, i64 0, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %108 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %107, i32 0, i32 9
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %114 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %113, i32 0, i32 11
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %114, i64 0, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %95
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %92, !llvm.loop !10

121:                                              ; preds = %92
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @group_of_pictures_header() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = icmp eq %struct.layer_data* %2, @base
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @True_Framenum_max, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @Temporal_Reference_Base, align 4
  store i32 1, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %11, i32* @drop_flag, align 4
  %12 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %12, i32* @hour, align 4
  %13 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %13, i32* @minute, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %14 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %14, i32* @sec, align 4
  %15 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %15, i32* @frame, align 4
  %16 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %16, i32* @closed_gop, align 4
  %17 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %17, i32* @broken_link, align 4
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 20
  store i32 0, i32* %4, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = call i32 @Get_Bits(i32 noundef 10)
  store i32 %8, i32* @temporal_reference, align 4
  %9 = call i32 @Get_Bits(i32 noundef 3)
  store i32 %9, i32* @picture_coding_type, align 4
  %10 = call i32 @Get_Bits(i32 noundef 16)
  store i32 %10, i32* @vbv_delay, align 4
  %11 = load i32, i32* @picture_coding_type, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @picture_coding_type, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %0
  %17 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %17, i32* @full_pel_forward_vector, align 4
  %18 = call i32 @Get_Bits(i32 noundef 3)
  store i32 %18, i32* @forward_f_code, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @picture_coding_type, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %23, i32* @full_pel_backward_vector, align 4
  %24 = call i32 @Get_Bits(i32 noundef 3)
  store i32 %24, i32* @backward_f_code, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @extra_bit_information()
  store i32 %26, i32* %2, align 4
  call void @extension_and_user_data()
  call void @Update_Temporal_Reference_Tacking_Data()
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @Flush_Buffer(i32 noundef) #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slice_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @vertical_size, align 4
  %16 = icmp sgt i32 %15, 2800
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @Get_Bits(i32 noundef 3)
  br label %20

19:                                               ; preds = %14, %0
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %1, align 4
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @Get_Bits(i32 noundef 7)
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 21
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %31, i32* %2, align 4
  %32 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %33 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %38 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %2, align 4
  %49 = shl i32 %48, 1
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %46, %41 ], [ %49, %47 ]
  br label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 22
  store i32 %55, i32* %57, align 8
  %58 = call i32 @Get_Bits(i32 noundef 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = call i32 @Get_Bits(i32 noundef 1)
  %62 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %63 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %62, i32 0, i32 23
  store i32 %61, i32* %63, align 4
  %64 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %64, i32* %4, align 4
  %65 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %65, i32* %5, align 4
  %66 = call i32 @extra_bit_information()
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %68, i32 0, i32 23
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @extra_bit_information() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = call i32 @Get_Bits1()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  call void @Flush_Buffer(i32 noundef 8)
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %2, !llvm.loop !11

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @marker_bit(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %4, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @extension_and_user_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @next_start_code()
  br label %3

3:                                                ; preds = %32, %0
  %4 = call i32 @Show_Bits(i32 noundef 32)
  store i32 %4, i32* %1, align 4
  %5 = icmp eq i32 %4, 437
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 434
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ true, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %33

11:                                               ; preds = %9
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 437
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  call void @Flush_Buffer32()
  %15 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  switch i32 %16, label %26 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 5, label %20
    i32 7, label %21
    i32 8, label %22
    i32 9, label %23
    i32 10, label %24
    i32 4, label %25
  ]

17:                                               ; preds = %14
  call void @sequence_extension()
  br label %30

18:                                               ; preds = %14
  call void @sequence_display_extension()
  br label %30

19:                                               ; preds = %14
  call void @quant_matrix_extension()
  br label %30

20:                                               ; preds = %14
  call void @sequence_scalable_extension()
  br label %30

21:                                               ; preds = %14
  call void @picture_display_extension()
  br label %30

22:                                               ; preds = %14
  call void @picture_coding_extension()
  br label %30

23:                                               ; preds = %14
  call void @picture_spatial_scalable_extension()
  br label %30

24:                                               ; preds = %14
  call void @picture_temporal_scalable_extension()
  br label %30

25:                                               ; preds = %14
  call void @copyright_extension()
  br label %30

26:                                               ; preds = %14
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %28)
  br label %30

30:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17
  call void @next_start_code()
  br label %32

31:                                               ; preds = %11
  call void @Flush_Buffer32()
  call void @user_data()
  br label %32

32:                                               ; preds = %31, %30
  br label %3, !llvm.loop !12

33:                                               ; preds = %9
  ret void
}

declare dso_local void @Flush_Buffer32() #1

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %7 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 16
  store i32 1, i32* %7, align 8
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 17
  store i32 0, i32* %9, align 4
  store i32 0, i32* @layer_id, align 4
  %10 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %10, i32* @profile_and_level_indication, align 4
  %11 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %11, i32* @progressive_sequence, align 4
  %12 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %12, i32* @chroma_format, align 4
  %13 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %13, i32* %1, align 4
  %14 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %14, i32* %2, align 4
  %15 = call i32 @Get_Bits(i32 noundef 12)
  store i32 %15, i32* %3, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %17, i32* @low_delay, align 4
  %18 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %18, i32* @frame_rate_extension_n, align 4
  %19 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %19, i32* @frame_rate_extension_d, align 4
  %20 = load i32, i32* @frame_rate_code, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x double], [16 x double]* @frame_rate_Table, i64 0, i64 %21
  %23 = load double, double* %22, align 8
  %24 = load i32, i32* @frame_rate_extension_n, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @frame_rate_extension_d, align 4
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %25, %27
  %29 = sitofp i32 %28 to double
  %30 = fmul double %23, %29
  store double %30, double* @frame_rate, align 8
  %31 = load i32, i32* @profile_and_level_indication, align 4
  %32 = ashr i32 %31, 7
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %0
  %36 = load i32, i32* @profile_and_level_indication, align 4
  %37 = and i32 %36, 15
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 133, i32* @profile, align 4
  store i32 8, i32* @level, align 4
  br label %40

40:                                               ; preds = %39, %35
  br label %46

41:                                               ; preds = %0
  %42 = load i32, i32* @profile_and_level_indication, align 4
  %43 = ashr i32 %42, 4
  store i32 %43, i32* @profile, align 4
  %44 = load i32, i32* @profile_and_level_indication, align 4
  %45 = and i32 %44, 15
  store i32 %45, i32* @level, align 4
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i32, i32* %1, align 4
  %48 = shl i32 %47, 12
  %49 = load i32, i32* @horizontal_size, align 4
  %50 = and i32 %49, 4095
  %51 = or i32 %48, %50
  store i32 %51, i32* @horizontal_size, align 4
  %52 = load i32, i32* %2, align 4
  %53 = shl i32 %52, 12
  %54 = load i32, i32* @vertical_size, align 4
  %55 = and i32 %54, 4095
  %56 = or i32 %53, %55
  store i32 %56, i32* @vertical_size, align 4
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 %57, 18
  %59 = load i32, i32* @bit_rate_value, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @bit_rate_value, align 4
  %61 = load i32, i32* @bit_rate_value, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 4.000000e+02
  store double %63, double* @bit_rate, align 8
  %64 = load i32, i32* %4, align 4
  %65 = shl i32 %64, 10
  %66 = load i32, i32* @vbv_buffer_size, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @vbv_buffer_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_display_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 noundef 3)
  store i32 %5, i32* @video_format, align 4
  %6 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %6, i32* @color_description, align 4
  %7 = load i32, i32* @color_description, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %10, i32* @color_primaries, align 4
  %11 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %11, i32* @transfer_characteristics, align 4
  %12 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %12, i32* @matrix_coefficients, align 4
  br label %13

13:                                               ; preds = %9, %0
  %14 = call i32 @Get_Bits(i32 noundef 14)
  store i32 %14, i32* @display_horizontal_size, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @Get_Bits(i32 noundef 14)
  store i32 %15, i32* @display_vertical_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @quant_matrix_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i32 @Get_Bits(i32 noundef 1)
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 12
  store i32 %6, i32* %8, align 8
  %9 = icmp ne i32 %6, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 64
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = call i32 @Get_Bits(i32 noundef 8)
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 10
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 %30
  store i32 %15, i32* %31, align 4
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %11, !llvm.loop !13

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35, %0
  %37 = call i32 @Get_Bits(i32 noundef 1)
  %38 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %39 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = icmp ne i32 %37, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = call i32 @Get_Bits(i32 noundef 8)
  %47 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %48 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %47, i32 0, i32 9
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 %53
  store i32 %46, i32* %54, align 4
  %55 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %56 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %55, i32 0, i32 11
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %56, i64 0, i64 %61
  store i32 %46, i32* %62, align 4
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %42, !llvm.loop !14

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %36
  %68 = call i32 @Get_Bits(i32 noundef 1)
  %69 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %69, i32 0, i32 14
  store i32 %68, i32* %70, align 8
  %71 = icmp ne i32 %68, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %1, align 4
  %75 = icmp slt i32 %74, 64
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = call i32 @Get_Bits(i32 noundef 8)
  %78 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %79 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %78, i32 0, i32 10
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %79, i64 0, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %73, !llvm.loop !15

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %67
  %91 = call i32 @Get_Bits(i32 noundef 1)
  %92 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %93 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %92, i32 0, i32 15
  store i32 %91, i32* %93, align 4
  %94 = icmp ne i32 %91, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i32, i32* %1, align 4
  %98 = icmp slt i32 %97, 64
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = call i32 @Get_Bits(i32 noundef 8)
  %101 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %102 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %101, i32 0, i32 11
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %102, i64 0, i64 %107
  store i32 %100, i32* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %96, !llvm.loop !16

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_scalable_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 noundef 2)
  %6 = add i32 %5, 1
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 17
  store i32 %6, i32* %8, align 4
  %9 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %9, i32* @layer_id, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 17
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = call i32 @Get_Bits(i32 noundef 14)
  store i32 %15, i32* @lower_layer_prediction_horizontal_size, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @Get_Bits(i32 noundef 14)
  store i32 %16, i32* @lower_layer_prediction_vertical_size, align 4
  %17 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %17, i32* @horizontal_subsampling_factor_m, align 4
  %18 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %18, i32* @horizontal_subsampling_factor_n, align 4
  %19 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %19, i32* @vertical_subsampling_factor_m, align 4
  %20 = call i32 @Get_Bits(i32 noundef 5)
  store i32 %20, i32* @vertical_subsampling_factor_n, align 4
  br label %21

21:                                               ; preds = %14, %0
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @Error(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_display_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @progressive_sequence, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = load i32, i32* @repeat_first_field, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @top_field_first, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 3, i32* %2, align 4
  br label %17

16:                                               ; preds = %12
  store i32 2, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %31

20:                                               ; preds = %0
  %21 = load i32, i32* @picture_structure, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @repeat_first_field, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 3, i32* %2, align 4
  br label %29

28:                                               ; preds = %24
  store i32 2, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  br label %31

31:                                               ; preds = %30, %19
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = call i32 @Get_Bits(i32 noundef 16)
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_horizontal_offset, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %41 = call i32 @Get_Bits(i32 noundef 16)
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_vertical_offset, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %32, !llvm.loop !17

48:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_coding_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %5, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 0), align 16
  %6 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %6, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 1), align 4
  %7 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %7, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 0), align 8
  %8 = call i32 @Get_Bits(i32 noundef 4)
  store i32 %8, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 1), align 4
  %9 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %9, i32* @intra_dc_precision, align 4
  %10 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %10, i32* @picture_structure, align 4
  %11 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %11, i32* @top_field_first, align 4
  %12 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %12, i32* @frame_pred_frame_dct, align 4
  %13 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %13, i32* @concealment_motion_vectors, align 4
  %14 = call i32 @Get_Bits(i32 noundef 1)
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 8
  %17 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %17, i32* @intra_vlc_format, align 4
  %18 = call i32 @Get_Bits(i32 noundef 1)
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 4
  %21 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %21, i32* @repeat_first_field, align 4
  %22 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %22, i32* @chroma_420_type, align 4
  %23 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %23, i32* @progressive_frame, align 4
  %24 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %24, i32* @composite_display_flag, align 4
  %25 = load i32, i32* @composite_display_flag, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %28, i32* @v_axis, align 4
  %29 = call i32 @Get_Bits(i32 noundef 3)
  store i32 %29, i32* @field_sequence, align 4
  %30 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %30, i32* @sub_carrier, align 4
  %31 = call i32 @Get_Bits(i32 noundef 7)
  store i32 %31, i32* @burst_amplitude, align 4
  %32 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %32, i32* @sub_carrier_phase, align 4
  br label %33

33:                                               ; preds = %27, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_spatial_scalable_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 20
  store i32 1, i32* %6, align 8
  %7 = call i32 @Get_Bits(i32 noundef 10)
  store i32 %7, i32* @lower_layer_temporal_reference, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %8 = call i32 @Get_Bits(i32 noundef 15)
  store i32 %8, i32* @lower_layer_horizontal_offset, align 4
  %9 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %10 = icmp sge i32 %9, 16384
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %13 = sub nsw i32 %12, 32768
  store i32 %13, i32* @lower_layer_horizontal_offset, align 4
  br label %14

14:                                               ; preds = %11, %0
  call void @marker_bit(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @Get_Bits(i32 noundef 15)
  store i32 %15, i32* @lower_layer_vertical_offset, align 4
  %16 = load i32, i32* @lower_layer_vertical_offset, align 4
  %17 = icmp sge i32 %16, 16384
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @lower_layer_vertical_offset, align 4
  %20 = sub nsw i32 %19, 32768
  store i32 %20, i32* @lower_layer_vertical_offset, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = call i32 @Get_Bits(i32 noundef 2)
  store i32 %22, i32* @spatial_temporal_weight_code_table_index, align 4
  %23 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %23, i32* @lower_layer_progressive_frame, align 4
  %24 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %24, i32* @lower_layer_deinterlaced_field_select, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_temporal_scalable_extension() #0 {
  call void @Error(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyright_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %6, i32* @copyright_flag, align 4
  %7 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %7, i32* @copyright_identifier, align 4
  %8 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %8, i32* @original_or_copy, align 4
  %9 = call i32 @Get_Bits(i32 noundef 7)
  store i32 %9, i32* %2, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 noundef 20)
  store i32 %10, i32* @copyright_number_1, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %11 = call i32 @Get_Bits(i32 noundef 22)
  store i32 %11, i32* @copyright_number_2, align 4
  call void @marker_bit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %12 = call i32 @Get_Bits(i32 noundef 22)
  store i32 %12, i32* @copyright_number_3, align 4
  %13 = load i32, i32* @Verbose_Flag, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 3
  %18 = sub nsw i32 %17, 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 noundef %18)
  %20 = load i32, i32* @Verbose_Flag, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load i32, i32* @copyright_flag, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef %23)
  %25 = load i32, i32* @copyright_identifier, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 noundef %25)
  %27 = load i32, i32* @original_or_copy, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 noundef %27)
  %29 = load i32, i32* @copyright_number_1, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 noundef %29)
  %31 = load i32, i32* @copyright_number_2, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 noundef %31)
  %33 = load i32, i32* @copyright_number_3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef %33)
  br label %35

35:                                               ; preds = %22, %15
  br label %36

36:                                               ; preds = %35, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @user_data() #0 {
  call void @next_start_code()
  ret void
}

declare dso_local void @Error(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Update_Temporal_Reference_Tacking_Data() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = icmp eq %struct.layer_data* %1, @base
  br i1 %2, label %3, label %49

3:                                                ; preds = %0
  %4 = load i32, i32* @picture_coding_type, align 4
  %5 = icmp ne i32 %4, 3
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32, i32* @temporal_reference, align 4
  %8 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @Temporal_Reference_Base, align 4
  %15 = add nsw i32 %14, 1024
  store i32 %15, i32* @Temporal_Reference_Base, align 4
  store i32 0, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @temporal_reference, align 4
  %18 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @Temporal_Reference_GOP_Reset, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %24

24:                                               ; preds = %23, %20, %16
  %25 = load i32, i32* @temporal_reference, align 4
  store i32 %25, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  store i32 0, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %26

26:                                               ; preds = %24, %6, %3
  %27 = load i32, i32* @Temporal_Reference_Base, align 4
  %28 = load i32, i32* @temporal_reference, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* @True_Framenum, align 4
  %30 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* @temporal_reference, align 4
  %34 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @True_Framenum, align 4
  %38 = add nsw i32 %37, 1024
  store i32 %38, i32* @True_Framenum, align 4
  br label %39

39:                                               ; preds = %36, %32, %26
  %40 = load i32, i32* @True_Framenum, align 4
  %41 = load i32, i32* @True_Framenum_max, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @True_Framenum, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @True_Framenum_max, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* @True_Framenum_max, align 4
  br label %49

49:                                               ; preds = %47, %0
  ret void
}

declare dso_local i32 @Get_Bits1() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
