; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/mpeg2dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/mpeg2dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@Version = dso_local global [28 x i8] c"mpeg2decode V1.2a, 96/07/19\00", align 16
@Author = dso_local global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 16
@scan = dso_local global [2 x [64 x i8]] [[64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?"], align 16
@default_intra_quantizer_matrix = dso_local global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 16
@Non_Linear_quantizer_scale = dso_local global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 16
@Inverse_Table_6_9 = dso_local global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 16
@base = dso_local global %struct.layer_data zeroinitializer, align 8
@ld = dso_local global %struct.layer_data* null, align 8
@Main_Bitstream_Filename = dso_local global i8* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Base layer input file %s not found\0A\00", align 1
@Error_Text = dso_local global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [52 x i8] c"Decoder currently does not parse transport streams\0A\00", align 1
@System_Stream_Flag = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to recognize stream type\0A\00", align 1
@Two_Streams = dso_local global i32 0, align 4
@enhan = dso_local global %struct.layer_data zeroinitializer, align 8
@Enhancement_Layer_Bitstream_Filename = dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"enhancment layer bitstream file %s not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Output_Type = dso_local global i32 0, align 4
@hiQdither = dso_local global i32 0, align 4
@Quiet_Flag = dso_local global i32 0, align 4
@Trace_Flag = dso_local global i32 0, align 4
@Fault_Flag = dso_local global i32 0, align 4
@Verbose_Flag = dso_local global i32 0, align 4
@Spatial_Flag = dso_local global i32 0, align 4
@Reference_IDCT_Flag = dso_local global i32 0, align 4
@Frame_Store_Flag = dso_local global i32 0, align 4
@Display_Progressive_Flag = dso_local global i32 0, align 4
@Ersatz_Flag = dso_local global i32 0, align 4
@Big_Picture_Flag = dso_local global i32 0, align 4
@Verify_Flag = dso_local global i32 0, align 4
@Stats_Flag = dso_local global i32 0, align 4
@User_Data_Flag = dso_local global i32 0, align 4
@Main_Bitstream_Flag = dso_local global i32 0, align 4
@Output_Picture_Filename = dso_local global i8* null, align 8
@Substitute_Picture_Filename = dso_local global i8* null, align 8
@Clip = dso_local global i8* null, align 8
@backward_reference_frame = dso_local global [3 x i8*] zeroinitializer, align 16
@forward_reference_frame = dso_local global [3 x i8*] zeroinitializer, align 16
@auxframe = dso_local global [3 x i8*] zeroinitializer, align 16
@current_frame = dso_local global [3 x i8*] zeroinitializer, align 16
@substitute_frame = dso_local global [3 x i8*] zeroinitializer, align 16
@llframe0 = dso_local global [3 x i8*] zeroinitializer, align 16
@llframe1 = dso_local global [3 x i8*] zeroinitializer, align 16
@lltmp = dso_local global i16* null, align 8
@Lower_Layer_Picture_Filename = dso_local global i8* null, align 8
@Coded_Picture_Width = dso_local global i32 0, align 4
@Coded_Picture_Height = dso_local global i32 0, align 4
@Chroma_Width = dso_local global i32 0, align 4
@Chroma_Height = dso_local global i32 0, align 4
@block_count = dso_local global i32 0, align 4
@Second_Field = dso_local global i32 0, align 4
@profile = dso_local global i32 0, align 4
@level = dso_local global i32 0, align 4
@horizontal_size = dso_local global i32 0, align 4
@vertical_size = dso_local global i32 0, align 4
@mb_width = dso_local global i32 0, align 4
@mb_height = dso_local global i32 0, align 4
@bit_rate = dso_local global double 0.000000e+00, align 8
@frame_rate = dso_local global double 0.000000e+00, align 8
@aspect_ratio_information = dso_local global i32 0, align 4
@frame_rate_code = dso_local global i32 0, align 4
@bit_rate_value = dso_local global i32 0, align 4
@vbv_buffer_size = dso_local global i32 0, align 4
@constrained_parameters_flag = dso_local global i32 0, align 4
@profile_and_level_indication = dso_local global i32 0, align 4
@progressive_sequence = dso_local global i32 0, align 4
@chroma_format = dso_local global i32 0, align 4
@low_delay = dso_local global i32 0, align 4
@frame_rate_extension_n = dso_local global i32 0, align 4
@frame_rate_extension_d = dso_local global i32 0, align 4
@video_format = dso_local global i32 0, align 4
@color_description = dso_local global i32 0, align 4
@color_primaries = dso_local global i32 0, align 4
@transfer_characteristics = dso_local global i32 0, align 4
@matrix_coefficients = dso_local global i32 0, align 4
@display_horizontal_size = dso_local global i32 0, align 4
@display_vertical_size = dso_local global i32 0, align 4
@temporal_reference = dso_local global i32 0, align 4
@picture_coding_type = dso_local global i32 0, align 4
@vbv_delay = dso_local global i32 0, align 4
@full_pel_forward_vector = dso_local global i32 0, align 4
@forward_f_code = dso_local global i32 0, align 4
@full_pel_backward_vector = dso_local global i32 0, align 4
@backward_f_code = dso_local global i32 0, align 4
@f_code = dso_local global [2 x [2 x i32]] zeroinitializer, align 16
@intra_dc_precision = dso_local global i32 0, align 4
@picture_structure = dso_local global i32 0, align 4
@top_field_first = dso_local global i32 0, align 4
@frame_pred_frame_dct = dso_local global i32 0, align 4
@concealment_motion_vectors = dso_local global i32 0, align 4
@intra_vlc_format = dso_local global i32 0, align 4
@repeat_first_field = dso_local global i32 0, align 4
@chroma_420_type = dso_local global i32 0, align 4
@progressive_frame = dso_local global i32 0, align 4
@composite_display_flag = dso_local global i32 0, align 4
@v_axis = dso_local global i32 0, align 4
@field_sequence = dso_local global i32 0, align 4
@sub_carrier = dso_local global i32 0, align 4
@burst_amplitude = dso_local global i32 0, align 4
@sub_carrier_phase = dso_local global i32 0, align 4
@frame_center_horizontal_offset = dso_local global [3 x i32] zeroinitializer, align 4
@frame_center_vertical_offset = dso_local global [3 x i32] zeroinitializer, align 4
@layer_id = dso_local global i32 0, align 4
@lower_layer_prediction_horizontal_size = dso_local global i32 0, align 4
@lower_layer_prediction_vertical_size = dso_local global i32 0, align 4
@horizontal_subsampling_factor_m = dso_local global i32 0, align 4
@horizontal_subsampling_factor_n = dso_local global i32 0, align 4
@vertical_subsampling_factor_m = dso_local global i32 0, align 4
@vertical_subsampling_factor_n = dso_local global i32 0, align 4
@lower_layer_temporal_reference = dso_local global i32 0, align 4
@lower_layer_horizontal_offset = dso_local global i32 0, align 4
@lower_layer_vertical_offset = dso_local global i32 0, align 4
@spatial_temporal_weight_code_table_index = dso_local global i32 0, align 4
@lower_layer_progressive_frame = dso_local global i32 0, align 4
@lower_layer_deinterlaced_field_select = dso_local global i32 0, align 4
@copyright_flag = dso_local global i32 0, align 4
@copyright_identifier = dso_local global i32 0, align 4
@original_or_copy = dso_local global i32 0, align 4
@copyright_number_1 = dso_local global i32 0, align 4
@copyright_number_2 = dso_local global i32 0, align 4
@copyright_number_3 = dso_local global i32 0, align 4
@drop_flag = dso_local global i32 0, align 4
@hour = dso_local global i32 0, align 4
@minute = dso_local global i32 0, align 4
@sec = dso_local global i32 0, align 4
@frame = dso_local global i32 0, align 4
@closed_gop = dso_local global i32 0, align 4
@broken_link = dso_local global i32 0, align 4
@Decode_Layer = dso_local global i32 0, align 4
@global_MBA = dso_local global i32 0, align 4
@global_pic = dso_local global i32 0, align 4
@True_Framenum = dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Clip[] malloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1195 x i8] c"Usage:  mpeg2decode {options}\0AOptions: -b  file  main bitstream (base or spatial enhancement layer)\0A         -cn file  conformance report (n: level)\0A         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\0A         -f        store/display interlaced video in frame format\0A         -g        concatenated file format for substitution method (-x)\0A         -in file  information & statistics report  (n: level)\0A         -l  file  file name pattern for lower layer sequence\0A                   (for spatial scalability)\0A         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\0A         -q        disable warnings to stderr\0A         -r        use double precision reference IDCT\0A         -t        enable low level tracing to stdout\0A         -u  file  print user_data to stdio or file\0A         -vn       verbose output (n: level)\0A         -x  file  filename pattern of picture substitution sequence\0A\0AFile patterns:  for sequential filenames, \22printf\22 style, e.g. rec%%d\0A                 or rec%%d%%c for fieldwise storage\0ALevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\0A\0AExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\0A         \0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"ERROR: -b must be followed the main bitstream filename\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"This program not compiled for Verify_Flag option\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"ERROR: -e must be followed by filename\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -i option\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"ERROR: -l must be followed by filename\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"ERROR: -o must be followed by filename\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -t option\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"This program not compiled for -v option\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"ERROR: -x must be followed by filename\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"undefined option -%c ignored. Exiting program\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"There must be a main bitstream specified (-b filename)\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"streams out of sync\0A\00", align 1
@Initialize_Sequence.Table_6_20 = internal global [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"unsupported scalability mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"backward_reference_frame[] malloc failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"forward_reference_frame[] malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"auxframe[] malloc failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"substitute_frame[] malloc failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"llframe0 malloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"llframe1 malloc failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lltmp malloc failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @Clear_Options()
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  call void @Process_Options(i32 noundef %8, i8** noundef %9)
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %10 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %11 = call i32 (i8*, i32, ...) @open(i8* noundef %10, i32 noundef 0)
  store i32 %11, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef %15)
  call void @exit(i32 noundef 1) #5
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  call void @Initialize_Buffer()
  %21 = call i32 @Show_Bits(i32 noundef 8)
  %22 = icmp eq i32 %21, 71
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #6
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  call void @next_start_code()
  %26 = call i32 @Show_Bits(i32 noundef 32)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %31 [
    i32 435, label %28
    i32 442, label %29
    i32 480, label %30
  ]

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %30

30:                                               ; preds = %25, %29
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #6
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %30, %28
  %34 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %35 = call i64 @lseek(i32 noundef %34, i64 noundef 0, i32 noundef 0) #6
  call void @Initialize_Buffer()
  br label %36

36:                                               ; preds = %33, %17
  %37 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %41 = call i64 @lseek(i32 noundef %40, i64 noundef 0, i32 noundef 0) #6
  br label %42

42:                                               ; preds = %39, %36
  call void @Initialize_Buffer()
  %43 = load i32, i32* @Two_Streams, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %46 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %47 = call i32 (i8*, i32, ...) @open(i8* noundef %46, i32 noundef 0)
  store i32 %47, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef %50) #6
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  call void @Initialize_Buffer()
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %53

53:                                               ; preds = %52, %42
  call void @Initialize_Decoder()
  %54 = call i32 @Decode_Bitstream()
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %56 = call i32 @close(i32 noundef %55)
  %57 = load i32, i32* @Two_Streams, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 8
  %61 = call i32 @close(i32 noundef %60)
  br label %62

62:                                               ; preds = %59, %53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @Process_Options(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @Version, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @Author, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([1195 x i8], [1195 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

13:                                               ; preds = %2
  store i32 -1, i32* @Output_Type, align 4
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %179, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %182

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %179

49:                                               ; preds = %39
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @toupper(i32 noundef %57) #7
  switch i32 %58, label %167 [
    i32 66, label %59
    i32 67, label %75
    i32 69, label %77
    i32 70, label %93
    i32 71, label %94
    i32 73, label %95
    i32 76, label %97
    i32 79, label %113
    i32 81, label %144
    i32 82, label %145
    i32 84, label %146
    i32 85, label %148
    i32 86, label %149
    i32 88, label %151
  ]

59:                                               ; preds = %49
  store i32 1, i32* @Main_Bitstream_Flag, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %59
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  br label %74

67:                                               ; preds = %62
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** @Main_Bitstream_Filename, align 8
  br label %74

74:                                               ; preds = %67, %65
  br label %178

75:                                               ; preds = %49
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %178

77:                                               ; preds = %49
  store i32 1, i32* @Two_Streams, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %77
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

85:                                               ; preds = %80
  %86 = load i8**, i8*** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  br label %92

92:                                               ; preds = %85
  br label %178

93:                                               ; preds = %49
  store i32 1, i32* @Frame_Store_Flag, align 4
  br label %178

94:                                               ; preds = %49
  store i32 1, i32* @Big_Picture_Flag, align 4
  br label %178

95:                                               ; preds = %49
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %178

97:                                               ; preds = %49
  store i32 1, i32* @Spatial_Flag, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %97
  %104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

105:                                              ; preds = %100
  %106 = load i8**, i8*** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** @Lower_Layer_Picture_Filename, align 8
  br label %112

112:                                              ; preds = %105
  br label %178

113:                                              ; preds = %49
  %114 = load i8**, i8*** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = call i32 @atoi(i8* noundef %119) #7
  store i32 %120, i32* @Output_Type, align 4
  %121 = load i32, i32* @Output_Type, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load i32, i32* @Output_Type, align 4
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %113
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %143

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130, %127
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

135:                                              ; preds = %130
  %136 = load i8**, i8*** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** @Output_Picture_Filename, align 8
  br label %142

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %126
  br label %178

144:                                              ; preds = %49
  store i32 1, i32* @Quiet_Flag, align 4
  br label %178

145:                                              ; preds = %49
  store i32 1, i32* @Reference_IDCT_Flag, align 4
  br label %178

146:                                              ; preds = %49
  %147 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  br label %178

148:                                              ; preds = %49
  store i32 1, i32* @User_Data_Flag, align 4
  br label %149

149:                                              ; preds = %49, %148
  %150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  br label %178

151:                                              ; preds = %49
  store i32 1, i32* @Ersatz_Flag, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154, %151
  %158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

159:                                              ; preds = %154
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** @Substitute_Picture_Filename, align 8
  br label %166

166:                                              ; preds = %159
  br label %178

167:                                              ; preds = %49
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %169 = load i8**, i8*** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %168, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 noundef %176)
  call void @exit(i32 noundef -1) #5
  unreachable

178:                                              ; preds = %166, %149, %146, %145, %144, %143, %112, %95, %94, %93, %92, %75, %74
  br label %179

179:                                              ; preds = %178, %39
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %14, !llvm.loop !4

182:                                              ; preds = %14
  %183 = load i32, i32* @Main_Bitstream_Flag, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32, i32* @Output_Type, align 4
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @Output_Type, align 4
  %192 = icmp eq i32 %191, 5
  br i1 %192, label %193, label %197

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @Frame_Store_Flag, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, i32* @Display_Progressive_Flag, align 4
  br label %198

197:                                              ; preds = %193, %190
  store i32 0, i32* @Display_Progressive_Flag, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* @Output_Type, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 9, i32* @Output_Type, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %202

202:                                              ; preds = %201, %198
  ret void
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @Initialize_Buffer() #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef %4)
  call void @exit(i32 noundef 1) #5
  unreachable
}

declare dso_local void @next_start_code() #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Decoder() #0 {
  %1 = alloca i32, align 4
  %2 = call noalias i8* @malloc(i64 noundef 1024) #6
  store i8* %2, i8** @Clip, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @Error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i8*, i8** @Clip, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 384
  store i8* %7, i8** @Clip, align 8
  store i32 -384, i32* %1, align 4
  br label %8

8:                                                ; preds = %30, %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 640
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 255, %18 ], [ %20, %19 ]
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %21 ]
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** @Clip, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %8, !llvm.loop !6

33:                                               ; preds = %8
  %34 = load i32, i32* @Reference_IDCT_Flag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @Initialize_Reference_IDCT()
  br label %38

37:                                               ; preds = %33
  call void @Initialize_Fast_IDCT()
  br label %38

38:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Decode_Bitstream() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = call i32 @Headers()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @video_sequence(i32* noundef %2)
  store i32 %8, i32* %1, align 4
  br label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %1, align 4
  ret i32 %10

11:                                               ; preds = %7
  br label %3
}

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Print_Bits(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
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
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  %18 = ashr i32 %13, %17
  %19 = and i32 %18, 1
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 noundef %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8, !llvm.loop !7

24:                                               ; preds = %8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @Initialize_Reference_IDCT() #1

declare dso_local void @Initialize_Fast_IDCT() #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @Headers() #0 {
  %1 = alloca i32, align 4
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %2 = call i32 @Get_Hdr()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @Two_Streams, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %6 = call i32 @Get_Hdr()
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* @Quiet_Flag, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9, %5
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @video_sequence(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  call void @Initialize_Sequence()
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  call void @Decode_Picture(i32 noundef %8, i32 noundef %9)
  %10 = load i32, i32* @Second_Field, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %1
  br label %18

18:                                               ; preds = %31, %17
  %19 = call i32 @Headers()
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  call void @Decode_Picture(i32 noundef %22, i32 noundef %23)
  %24 = load i32, i32* @Second_Field, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %18, !llvm.loop !8

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  call void @Output_Last_Frame_of_Sequence(i32 noundef %36)
  br label %37

37:                                               ; preds = %35, %32
  call void @Deinitialize_Sequence()
  %38 = load i32, i32* %3, align 4
  %39 = load i32*, i32** %2, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @Get_Hdr() #1

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Sequence() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Two_Streams, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @Error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8, %5, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* @progressive_sequence, align 4
  store i32 1, i32* @progressive_frame, align 4
  store i32 3, i32* @picture_structure, align 4
  store i32 1, i32* @frame_pred_frame_dct, align 4
  store i32 1, i32* @chroma_format, align 4
  store i32 5, i32* @matrix_coefficients, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @horizontal_size, align 4
  %18 = add nsw i32 %17, 15
  %19 = sdiv i32 %18, 16
  store i32 %19, i32* @mb_width, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* @progressive_sequence, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @vertical_size, align 4
  %27 = add nsw i32 %26, 31
  %28 = sdiv i32 %27, 32
  %29 = mul nsw i32 2, %28
  br label %34

30:                                               ; preds = %22, %16
  %31 = load i32, i32* @vertical_size, align 4
  %32 = add nsw i32 %31, 15
  %33 = sdiv i32 %32, 16
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %29, %25 ], [ %33, %30 ]
  store i32 %35, i32* @mb_height, align 4
  %36 = load i32, i32* @mb_width, align 4
  %37 = mul nsw i32 16, %36
  store i32 %37, i32* @Coded_Picture_Width, align 4
  %38 = load i32, i32* @mb_height, align 4
  %39 = mul nsw i32 16, %38
  store i32 %39, i32* @Coded_Picture_Height, align 4
  %40 = load i32, i32* @chroma_format, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @Coded_Picture_Width, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @Coded_Picture_Width, align 4
  %46 = ashr i32 %45, 1
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  store i32 %48, i32* @Chroma_Width, align 4
  %49 = load i32, i32* @chroma_format, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @Coded_Picture_Height, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @Coded_Picture_Height, align 4
  %55 = ashr i32 %54, 1
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  store i32 %57, i32* @Chroma_Height, align 4
  %58 = load i32, i32* @chroma_format, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* @Initialize_Sequence.Table_6_20, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @block_count, align 4
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %154, %56
  %64 = load i32, i32* %1, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %157

66:                                               ; preds = %63
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @Coded_Picture_Width, align 4
  %71 = load i32, i32* @Coded_Picture_Height, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @Chroma_Width, align 4
  %75 = load i32, i32* @Chroma_Height, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = call noalias i8* @malloc(i64 noundef %79) #6
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %82
  store i8* %80, i8** %83, align 8
  %84 = icmp ne i8* %80, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  call void @Error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = call noalias i8* @malloc(i64 noundef %88) #6
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %91
  store i8* %89, i8** %92, align 8
  %93 = icmp ne i8* %89, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call void @Error(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = call noalias i8* @malloc(i64 noundef %97) #6
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %100
  store i8* %98, i8** %101, align 8
  %102 = icmp ne i8* %98, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  call void @Error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* @Ersatz_Flag, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = call noalias i8* @malloc(i64 noundef %109) #6
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 %112
  store i8* %110, i8** %113, align 8
  %114 = icmp ne i8* %110, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  call void @Error(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  br label %116

116:                                              ; preds = %115, %107
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %122 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %1, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 4, i32 1
  %128 = sdiv i32 %123, %127
  %129 = sext i32 %128 to i64
  %130 = call noalias i8* @malloc(i64 noundef %129) #6
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %132
  store i8* %130, i8** %133, align 8
  %134 = icmp ne i8* %130, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %120
  call void @Error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %138 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %1, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 4, i32 1
  %144 = sdiv i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = call noalias i8* @malloc(i64 noundef %145) #6
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %148
  store i8* %146, i8** %149, align 8
  %150 = icmp ne i8* %146, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %136
  call void @Error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  br label %152

152:                                              ; preds = %151, %136
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %1, align 4
  br label %63, !llvm.loop !9

157:                                              ; preds = %63
  %158 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %162 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %163 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %166 = sdiv i32 %164, %165
  %167 = mul nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 2
  %170 = call noalias i8* @malloc(i64 noundef %169) #6
  %171 = bitcast i8* %170 to i16*
  store i16* %171, i16** @lltmp, align 8
  %172 = icmp ne i16* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %160
  call void @Error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  br label %174

174:                                              ; preds = %173, %160
  br label %175

175:                                              ; preds = %174, %157
  ret void
}

declare dso_local void @Decode_Picture(i32 noundef, i32 noundef) #1

declare dso_local void @Output_Last_Frame_of_Sequence(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Deinitialize_Sequence() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %30, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #6
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #6
  %18 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  call void @free(i8* noundef %24) #6
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #6
  br label %29

29:                                               ; preds = %20, %5
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %2, !llvm.loop !10

33:                                               ; preds = %2
  %34 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i16*, i16** @lltmp, align 8
  %38 = bitcast i16* %37 to i8*
  call void @free(i8* noundef %38) #6
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Clear_Options() #0 {
  store i32 0, i32* @Verbose_Flag, align 4
  store i32 0, i32* @Output_Type, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  store i32 0, i32* @hiQdither, align 4
  store i32 0, i32* @Output_Type, align 4
  store i32 0, i32* @Frame_Store_Flag, align 4
  store i32 0, i32* @Spatial_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Lower_Layer_Picture_Filename, align 8
  store i32 0, i32* @Reference_IDCT_Flag, align 4
  store i32 0, i32* @Trace_Flag, align 4
  store i32 0, i32* @Quiet_Flag, align 4
  store i32 0, i32* @Ersatz_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Substitute_Picture_Filename, align 8
  store i32 0, i32* @Two_Streams, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Enhancement_Layer_Bitstream_Filename, align 8
  store i32 0, i32* @Big_Picture_Flag, align 4
  store i32 0, i32* @Main_Bitstream_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Main_Bitstream_Filename, align 8
  store i32 0, i32* @Verify_Flag, align 4
  store i32 0, i32* @Stats_Flag, align 4
  store i32 0, i32* @User_Data_Flag, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
