; ModuleID = './mpeg2dec.ll'
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
@str = private unnamed_addr constant [55 x i8] c"There must be a main bitstream specified (-b filename)\00", align 1
@str.1 = private unnamed_addr constant [39 x i8] c"ERROR: -x must be followed by filename\00", align 1
@str.2 = private unnamed_addr constant [40 x i8] c"This program not compiled for -v option\00", align 1
@str.3 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -t option\00", align 1
@str.4 = private unnamed_addr constant [39 x i8] c"ERROR: -o must be followed by filename\00", align 1
@str.5 = private unnamed_addr constant [39 x i8] c"ERROR: -l must be followed by filename\00", align 1
@str.6 = private unnamed_addr constant [49 x i8] c"WARNING: This program not compiled for -i option\00", align 1
@str.7 = private unnamed_addr constant [39 x i8] c"ERROR: -e must be followed by filename\00", align 1
@str.8 = private unnamed_addr constant [49 x i8] c"This program not compiled for Verify_Flag option\00", align 1
@str.9 = private unnamed_addr constant [55 x i8] c"ERROR: -b must be followed the main bitstream filename\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  call void @Clear_Options()
  call void @Process_Options(i32 noundef %0, i8** noundef %1)
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %3 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef %3, i32 noundef 0) #9
  store i32 %4, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef %8) #10
  call void @exit(i32 noundef 1) #11
  unreachable

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %25, label %12

12:                                               ; preds = %10
  call void @Initialize_Buffer() #9
  %13 = call i32 @Show_Bits(i32 noundef 8) #9
  %14 = icmp eq i32 %13, 71
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(52) getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(52) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 52, i1 false)
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %12
  call void @next_start_code() #9
  %17 = call i32 @Show_Bits(i32 noundef 32) #9
  switch i32 %17, label %21 [
    i32 435, label %18
    i32 442, label %19
    i32 480, label %20
  ]

18:                                               ; preds = %16
  br label %22

19:                                               ; preds = %16
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %20

20:                                               ; preds = %19, %16
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %22

21:                                               ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(33) getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(33) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 33, i1 false)
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %20, %18
  %23 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %24 = call i64 @lseek(i32 noundef %23, i64 noundef 0, i32 noundef 0) #9
  call void @Initialize_Buffer() #9
  br label %25

25:                                               ; preds = %22, %10
  %26 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %.not1 = icmp eq i32 %26, 0
  br i1 %.not1, label %30, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %29 = call i64 @lseek(i32 noundef %28, i64 noundef 0, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %27, %25
  call void @Initialize_Buffer() #9
  %31 = load i32, i32* @Two_Streams, align 4
  %.not2 = icmp eq i32 %31, 0
  br i1 %.not2, label %40, label %32

32:                                               ; preds = %30
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %33 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %34 = call i32 (i8*, i32, ...) @open(i8* noundef %33, i32 noundef 0) #9
  store i32 %34, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i64 0, i32 0), align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef %37) #9
  call void @Error(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  call void @Initialize_Buffer() #9
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %40

40:                                               ; preds = %39, %30
  call void @Initialize_Decoder()
  %41 = call i32 @Decode_Bitstream()
  %42 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 0), align 8
  %43 = call i32 @close(i32 noundef %42) #9
  %44 = load i32, i32* @Two_Streams, align 4
  %.not3 = icmp eq i32 %44, 0
  br i1 %.not3, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i64 0, i32 0), align 8
  %47 = call i32 @close(i32 noundef %46) #9
  br label %48

48:                                               ; preds = %45, %40
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @Process_Options(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @Version, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @Author, i64 0, i64 0)) #9
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1195 x i8], [1195 x i8]* @.str.7, i64 0, i64 0)) #9
  call void @exit(i32 noundef 0) #11
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  store i32 -1, i32* @Output_Type, align 4
  br label %8

8:                                                ; preds = %112, %7
  %.01 = phi i32 [ 1, %7 ], [ %113, %112 ]
  %9 = icmp slt i32 %.01, %0
  br i1 %9, label %10, label %114

10:                                               ; preds = %8
  %11 = sub nsw i32 %0, %.01
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %.01, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 45
  %20 = zext i1 %19 to i32
  br label %22

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %13
  %.0 = phi i32 [ 0, %21 ], [ %20, %13 ]
  %23 = sext i32 %.01 to i64
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 45
  br i1 %27, label %28, label %112

28:                                               ; preds = %22
  %29 = sext i32 %.01 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @toupper(i32 noundef %34) #12
  switch i32 %35, label %102 [
    i32 66, label %36
    i32 67, label %45
    i32 69, label %46
    i32 70, label %55
    i32 71, label %56
    i32 73, label %57
    i32 76, label %58
    i32 79, label %67
    i32 81, label %88
    i32 82, label %89
    i32 84, label %90
    i32 85, label %91
    i32 86, label %92
    i32 88, label %93
  ]

36:                                               ; preds = %28
  store i32 1, i32* @Main_Bitstream_Flag, align 4
  %.not20 = icmp eq i32 %.0, 0
  br i1 %.not20, label %37, label %38

37:                                               ; preds = %36
  br i1 %12, label %38, label %39

38:                                               ; preds = %37, %36
  %puts21 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str.9, i64 0, i64 0))
  br label %44

39:                                               ; preds = %37
  %40 = add nsw i32 %.01, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** @Main_Bitstream_Filename, align 8
  br label %44

44:                                               ; preds = %39, %38
  %.1 = phi i32 [ %.01, %38 ], [ %40, %39 ]
  br label %111

45:                                               ; preds = %28
  %puts19 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.8, i64 0, i64 0))
  br label %111

46:                                               ; preds = %28
  store i32 1, i32* @Two_Streams, align 4
  %.not17 = icmp eq i32 %.0, 0
  br i1 %.not17, label %47, label %48

47:                                               ; preds = %46
  br i1 %12, label %48, label %49

48:                                               ; preds = %47, %46
  %puts18 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.7, i64 0, i64 0))
  call void @exit(i32 noundef -1) #11
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %47
  %50 = add nsw i32 %.01, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  br label %54

54:                                               ; preds = %49
  br label %111

55:                                               ; preds = %28
  store i32 1, i32* @Frame_Store_Flag, align 4
  br label %111

56:                                               ; preds = %28
  store i32 1, i32* @Big_Picture_Flag, align 4
  br label %111

57:                                               ; preds = %28
  %puts16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.6, i64 0, i64 0))
  br label %111

58:                                               ; preds = %28
  store i32 1, i32* @Spatial_Flag, align 4
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %59, label %60

59:                                               ; preds = %58
  br i1 %12, label %60, label %61

60:                                               ; preds = %59, %58
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.5, i64 0, i64 0))
  call void @exit(i32 noundef -1) #11
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %59
  %62 = add nsw i32 %.01, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %1, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** @Lower_Layer_Picture_Filename, align 8
  br label %66

66:                                               ; preds = %61
  br label %111

67:                                               ; preds = %28
  %68 = sext i32 %.01 to i64
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = call i32 @atoi(i8* noundef nonnull %71) #12
  store i32 %72, i32* @Output_Type, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @Output_Type, align 4
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %67
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %87

78:                                               ; preds = %74
  %.not12 = icmp eq i32 %.0, 0
  br i1 %.not12, label %79, label %80

79:                                               ; preds = %78
  br i1 %12, label %80, label %81

80:                                               ; preds = %79, %78
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.4, i64 0, i64 0))
  call void @exit(i32 noundef -1) #11
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %79
  %82 = add nsw i32 %.01, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** @Output_Picture_Filename, align 8
  br label %86

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %77
  %.2 = phi i32 [ %.01, %77 ], [ %82, %86 ]
  br label %111

88:                                               ; preds = %28
  store i32 1, i32* @Quiet_Flag, align 4
  br label %111

89:                                               ; preds = %28
  store i32 1, i32* @Reference_IDCT_Flag, align 4
  br label %111

90:                                               ; preds = %28
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.3, i64 0, i64 0))
  br label %111

91:                                               ; preds = %28
  store i32 1, i32* @User_Data_Flag, align 4
  br label %92

92:                                               ; preds = %91, %28
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.2, i64 0, i64 0))
  br label %111

93:                                               ; preds = %28
  store i32 1, i32* @Ersatz_Flag, align 4
  %.not8 = icmp eq i32 %.0, 0
  br i1 %.not8, label %94, label %95

94:                                               ; preds = %93
  br i1 %12, label %95, label %96

95:                                               ; preds = %94, %93
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef -1) #11
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %94
  %97 = add nsw i32 %.01, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** @Substitute_Picture_Filename, align 8
  br label %101

101:                                              ; preds = %96
  br label %111

102:                                              ; preds = %28
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = sext i32 %.01 to i64
  %105 = getelementptr inbounds i8*, i8** %1, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 noundef %109) #10
  call void @exit(i32 noundef -1) #11
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %101, %92, %90, %89, %88, %87, %66, %57, %56, %55, %54, %45, %44
  %.3 = phi i32 [ %97, %101 ], [ %.01, %92 ], [ %.01, %90 ], [ %.01, %89 ], [ %.01, %88 ], [ %.2, %87 ], [ %62, %66 ], [ %.01, %57 ], [ %.01, %56 ], [ %.01, %55 ], [ %50, %54 ], [ %.01, %45 ], [ %.1, %44 ]
  br label %112

112:                                              ; preds = %111, %22
  %.4 = phi i32 [ %.3, %111 ], [ %.01, %22 ]
  %113 = add nsw i32 %.4, 1
  br label %8, !llvm.loop !4

114:                                              ; preds = %8
  %115 = load i32, i32* @Main_Bitstream_Flag, align 4
  %.not = icmp eq i32 %115, 1
  br i1 %.not, label %117, label %116

116:                                              ; preds = %114
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %116, %114
  %118 = load i32, i32* @Output_Type, align 4
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @Output_Type, align 4
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %117
  %124 = load i32, i32* @Frame_Store_Flag, align 4
  %.not7 = icmp eq i32 %124, 0
  br i1 %.not7, label %126, label %125

125:                                              ; preds = %123
  br label %127

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %125
  %storemerge = phi i32 [ 0, %126 ], [ 1, %125 ]
  store i32 %storemerge, i32* @Display_Progressive_Flag, align 4
  %128 = load i32, i32* @Output_Type, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 9, i32* @Output_Type, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %131

131:                                              ; preds = %130, %127
  ret void

UnifiedUnreachableBlock:                          ; preds = %102, %95, %80, %60, %48, %4
  unreachable
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @Initialize_Buffer() #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @Error(i8* noundef %0) #4 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef %0) #10
  call void @exit(i32 noundef 1) #11
  unreachable
}

declare dso_local void @next_start_code() #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Decoder() #0 {
  %1 = call noalias dereferenceable_or_null(1024) i8* @malloc(i64 noundef 1024) #9
  store i8* %1, i8** @Clip, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  call void @Error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %3

3:                                                ; preds = %2, %0
  %4 = load i8*, i8** @Clip, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 384
  store i8* %5, i8** @Clip, align 8
  br label %6

6:                                                ; preds = %23, %3
  %.0 = phi i32 [ -384, %3 ], [ %24, %23 ]
  %7 = icmp slt i32 %.0, 640
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = icmp slt i32 %.0, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %17

11:                                               ; preds = %8
  %12 = icmp sgt i32 %.0, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %15

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 255, %13 ], [ %.0, %14 ]
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ 0, %10 ], [ %16, %15 ]
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** @Clip, align 8
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  br label %23

23:                                               ; preds = %17
  %24 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !6

25:                                               ; preds = %6
  %26 = load i32, i32* @Reference_IDCT_Flag, align 4
  %.not1 = icmp eq i32 %26, 0
  br i1 %.not1, label %28, label %27

27:                                               ; preds = %25
  call void @Initialize_Reference_IDCT() #9
  br label %29

28:                                               ; preds = %25
  call void @Initialize_Fast_IDCT() #9
  br label %29

29:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Decode_Bitstream() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %8, %0
  %3 = call i32 @Headers()
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = call i32 @video_sequence(i32* noundef nonnull %1)
  br label %8

7:                                                ; preds = %2
  ret i32 %3

8:                                                ; preds = %5
  br label %2
}

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Print_Bits(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = xor i32 %.0, -1
  %8 = add i32 %7, %1
  %9 = lshr i32 %0, %8
  %10 = and i32 %9, 1
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 noundef %10) #9
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @Initialize_Reference_IDCT() #1

declare dso_local void @Initialize_Fast_IDCT() #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @Headers() #0 {
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %1 = call i32 @Get_Hdr() #9
  %2 = load i32, i32* @Two_Streams, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %11, label %3

3:                                                ; preds = %0
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %4 = call i32 @Get_Hdr() #9
  %.not1 = icmp eq i32 %4, %1
  br i1 %.not1, label %10, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @Quiet_Flag, align 4
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %7, label %10

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %8) #13
  br label %10

10:                                               ; preds = %7, %5, %3
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %11

11:                                               ; preds = %10, %0
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @video_sequence(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  call void @Initialize_Sequence()
  call void @Decode_Picture(i32 noundef %2, i32 noundef 0) #9
  %3 = load i32, i32* @Second_Field, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %1
  %5 = add nsw i32 %2, 1
  br label %6

6:                                                ; preds = %4, %1
  %.01 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %.0 = phi i32 [ 0, %1 ], [ 1, %4 ]
  br label %7

7:                                                ; preds = %14, %6
  %.12 = phi i32 [ %.01, %6 ], [ %.23, %14 ]
  %.1 = phi i32 [ %.0, %6 ], [ %.2, %14 ]
  %8 = call i32 @Headers()
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %15, label %9

9:                                                ; preds = %7
  call void @Decode_Picture(i32 noundef %.12, i32 noundef %.1) #9
  %10 = load i32, i32* @Second_Field, align 4
  %.not6 = icmp eq i32 %10, 0
  br i1 %.not6, label %11, label %14

11:                                               ; preds = %9
  %12 = add nsw i32 %.12, 1
  %13 = add nsw i32 %.1, 1
  br label %14

14:                                               ; preds = %11, %9
  %.23 = phi i32 [ %.12, %9 ], [ %12, %11 ]
  %.2 = phi i32 [ %.1, %9 ], [ %13, %11 ]
  br label %7, !llvm.loop !8

15:                                               ; preds = %7
  %.not5 = icmp eq i32 %.1, 0
  br i1 %.not5, label %17, label %16

16:                                               ; preds = %15
  call void @Output_Last_Frame_of_Sequence(i32 noundef %.12) #9
  br label %17

17:                                               ; preds = %16, %15
  call void @Deinitialize_Sequence()
  store i32 %.12, i32* %0, align 4
  ret i32 %8
}

declare dso_local i32 @Get_Hdr() #1

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Sequence() #0 {
  %1 = load i32, i32* @Two_Streams, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %7, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i64 0, i32 17), align 4
  %.not16 = icmp eq i32 %3, 3
  br i1 %.not16, label %7, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %.not17 = icmp eq i32 %5, 1
  br i1 %.not17, label %7, label %6

6:                                                ; preds = %4
  call void @Error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %4, %2, %0
  %8 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 16), align 8
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %9, label %10

9:                                                ; preds = %7
  store i32 1, i32* @progressive_sequence, align 4
  store i32 1, i32* @progressive_frame, align 4
  store i32 3, i32* @picture_structure, align 4
  store i32 1, i32* @frame_pred_frame_dct, align 4
  store i32 1, i32* @chroma_format, align 4
  store i32 5, i32* @matrix_coefficients, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = load i32, i32* @horizontal_size, align 4
  %12 = add nsw i32 %11, 15
  %13 = sdiv i32 %12, 16
  store i32 %13, i32* @mb_width, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 16), align 8
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %22, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @progressive_sequence, align 4
  %.not15 = icmp eq i32 %16, 0
  br i1 %.not15, label %17, label %22

17:                                               ; preds = %15
  %18 = load i32, i32* @vertical_size, align 4
  %19 = add nsw i32 %18, 31
  %20 = sdiv i32 %19, 32
  %21 = shl nsw i32 %20, 1
  br label %26

22:                                               ; preds = %15, %10
  %23 = load i32, i32* @vertical_size, align 4
  %24 = add nsw i32 %23, 15
  %25 = sdiv i32 %24, 16
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ %25, %22 ]
  store i32 %27, i32* @mb_height, align 4
  %28 = load i32, i32* @mb_width, align 4
  %29 = shl nsw i32 %28, 4
  store i32 %29, i32* @Coded_Picture_Width, align 4
  %30 = shl nsw i32 %27, 4
  store i32 %30, i32* @Coded_Picture_Height, align 4
  %31 = load i32, i32* @chroma_format, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @Coded_Picture_Width, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @Coded_Picture_Width, align 4
  %37 = ashr i32 %36, 1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* @Chroma_Width, align 4
  %40 = load i32, i32* @chroma_format, align 4
  %.not4 = icmp eq i32 %40, 1
  br i1 %.not4, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @Coded_Picture_Height, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @Coded_Picture_Height, align 4
  %45 = ashr i32 %44, 1
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store i32 %47, i32* @Chroma_Height, align 4
  %48 = load i32, i32* @chroma_format, align 4
  %49 = add nsw i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @Initialize_Sequence.Table_6_20, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* @block_count, align 4
  br label %53

53:                                               ; preds = %119, %46
  %.0 = phi i32 [ 0, %46 ], [ %120, %119 ]
  %54 = icmp ult i32 %.0, 3
  br i1 %54, label %55, label %121

55:                                               ; preds = %53
  %56 = icmp eq i32 %.0, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load i32, i32* @Coded_Picture_Width, align 4
  %59 = load i32, i32* @Coded_Picture_Height, align 4
  %60 = mul nsw i32 %58, %59
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @Chroma_Width, align 4
  %63 = load i32, i32* @Chroma_Height, align 4
  %64 = mul nsw i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %.01 = phi i32 [ %60, %57 ], [ %64, %61 ]
  %66 = sext i32 %.01 to i64
  %67 = call noalias i8* @malloc(i64 noundef %66) #9
  %68 = zext i32 %.0 to i64
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %68
  store i8* %67, i8** %69, align 8
  %.not6 = icmp eq i8* %67, null
  br i1 %.not6, label %70, label %71

70:                                               ; preds = %65
  call void @Error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %65
  %72 = sext i32 %.01 to i64
  %73 = call noalias i8* @malloc(i64 noundef %72) #9
  %74 = zext i32 %.0 to i64
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %74
  store i8* %73, i8** %75, align 8
  %.not7 = icmp eq i8* %73, null
  br i1 %.not7, label %76, label %77

76:                                               ; preds = %71
  call void @Error(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %77

77:                                               ; preds = %76, %71
  %78 = sext i32 %.01 to i64
  %79 = call noalias i8* @malloc(i64 noundef %78) #9
  %80 = zext i32 %.0 to i64
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %80
  store i8* %79, i8** %81, align 8
  %.not8 = icmp eq i8* %79, null
  br i1 %.not8, label %82, label %83

82:                                               ; preds = %77
  call void @Error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* @Ersatz_Flag, align 4
  %.not9 = icmp eq i32 %84, 0
  br i1 %.not9, label %92, label %85

85:                                               ; preds = %83
  %86 = sext i32 %.01 to i64
  %87 = call noalias i8* @malloc(i64 noundef %86) #9
  %88 = zext i32 %.0 to i64
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 %88
  store i8* %87, i8** %89, align 8
  %.not14 = icmp eq i8* %87, null
  br i1 %.not14, label %90, label %91

90:                                               ; preds = %85
  call void @Error(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  br label %91

91:                                               ; preds = %90, %85
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %97 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %98 = mul nsw i32 %96, %97
  %.not10 = icmp eq i32 %.0, 0
  %99 = select i1 %.not10, i32 1, i32 4
  %100 = sdiv i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = call noalias i8* @malloc(i64 noundef %101) #9
  %103 = zext i32 %.0 to i64
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %103
  store i8* %102, i8** %104, align 8
  %.not11 = icmp eq i8* %102, null
  br i1 %.not11, label %105, label %106

105:                                              ; preds = %95
  call void @Error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %106

106:                                              ; preds = %105, %95
  %107 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %108 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %109 = mul nsw i32 %107, %108
  %.not12 = icmp eq i32 %.0, 0
  %110 = select i1 %.not12, i32 1, i32 4
  %111 = sdiv i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = call noalias i8* @malloc(i64 noundef %112) #9
  %114 = zext i32 %.0 to i64
  %115 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %114
  store i8* %113, i8** %115, align 8
  %.not13 = icmp eq i8* %113, null
  br i1 %.not13, label %116, label %117

116:                                              ; preds = %106
  call void @Error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  br label %117

117:                                              ; preds = %116, %106
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118
  %120 = add nuw nsw i32 %.0, 1
  br label %53, !llvm.loop !9

121:                                              ; preds = %53
  %122 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %126 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %127 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %130 = sdiv i32 %128, %129
  %131 = mul nsw i32 %125, %130
  %132 = sext i32 %131 to i64
  %133 = shl nsw i64 %132, 1
  %134 = call noalias i8* @malloc(i64 noundef %133) #9
  store i8* %134, i8** bitcast (i16** @lltmp to i8**), align 8
  %.not5 = icmp eq i8* %134, null
  br i1 %.not5, label %135, label %136

135:                                              ; preds = %124
  call void @Error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  br label %136

136:                                              ; preds = %135, %124
  br label %137

137:                                              ; preds = %136, %121
  ret void
}

declare dso_local void @Decode_Picture(i32 noundef, i32 noundef) #1

declare dso_local void @Output_Last_Frame_of_Sequence(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Deinitialize_Sequence() #0 {
  store i32 0, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 16), align 8
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %2 = icmp ult i32 %.0, 3
  br i1 %2, label %3, label %25

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #9
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #9
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %12) #9
  %13 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %18) #9
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  call void @free(i8* noundef %21) #9
  br label %22

22:                                               ; preds = %15, %3
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !10

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** bitcast (i16** @lltmp to i8**), align 8
  call void @free(i8* noundef %29) #9
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @Clear_Options() #6 {
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold }

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
