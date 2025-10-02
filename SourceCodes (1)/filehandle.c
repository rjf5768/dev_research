; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/filehandle.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/filehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WriteNALU = dso_local global i32 (%struct.NALU_t*)* null, align 8
@input = external dso_local global %struct.InputParameters*, align 8
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"Output File Mode %d not supported\00", align 1
@stats = external dso_local global %struct.StatParameters*, align 8
@color_formats = dso_local global i32 0, align 4
@top_pic = dso_local global %struct.Picture* null, align 8
@bottom_pic = dso_local global %struct.Picture* null, align 8
@frame_pic = dso_local global %struct.Picture* null, align 8
@frame_pic_1 = dso_local global %struct.Picture* null, align 8
@frame_pic_2 = dso_local global %struct.Picture* null, align 8
@frame_pic_3 = dso_local global %struct.Picture* null, align 8
@frame_pic_si = dso_local global %struct.Picture* null, align 8
@Bit_Buffer = dso_local global i64* null, align 8
@imgY_org = dso_local global i16** null, align 8
@imgUV_org = dso_local global i16*** null, align 8
@imgY_sub_tmp = dso_local global i32** null, align 8
@PicPos = dso_local global i32** null, align 8
@log2_max_frame_num_minus4 = dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = dso_local global i32 0, align 4
@me_tot_time = dso_local global i64 0, align 8
@me_time = dso_local global i64 0, align 8
@active_pps = dso_local global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = dso_local global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = dso_local global i32 0, align 4
@mb_adaptive = dso_local global i32 0, align 4
@MBPairIsField = dso_local global i32 0, align 4
@wp_weight = dso_local global i32*** null, align 8
@wp_offset = dso_local global i32*** null, align 8
@wbp_weight = dso_local global i32**** null, align 8
@luma_log_weight_denom = dso_local global i32 0, align 4
@chroma_log_weight_denom = dso_local global i32 0, align 4
@wp_luma_round = dso_local global i32 0, align 4
@wp_chroma_round = dso_local global i32 0, align 4
@imgY_org_top = dso_local global i16** null, align 8
@imgY_org_bot = dso_local global i16** null, align 8
@imgUV_org_top = dso_local global i16*** null, align 8
@imgUV_org_bot = dso_local global i16*** null, align 8
@imgY_org_frm = dso_local global i16** null, align 8
@imgUV_org_frm = dso_local global i16*** null, align 8
@imgY_com = dso_local global i16** null, align 8
@imgUV_com = dso_local global i16*** null, align 8
@direct_ref_idx = dso_local global i8*** null, align 8
@direct_pdir = dso_local global i8** null, align 8
@pixel_map = dso_local global i8** null, align 8
@refresh_map = dso_local global i8** null, align 8
@intras = dso_local global i32 0, align 4
@frame_ctr = dso_local global [5 x i32] zeroinitializer, align 16
@frame_no = dso_local global i32 0, align 4
@nextP_tr_fld = dso_local global i32 0, align 4
@nextP_tr_frm = dso_local global i32 0, align 4
@tot_time = dso_local global i64 0, align 8
@b8_ipredmode8x8 = dso_local global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = dso_local global [16 x i8] zeroinitializer, align 16
@gop_structure = dso_local global %struct.GOP_DATA* null, align 8
@rdopt = dso_local global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = dso_local global %struct.RD_DATA zeroinitializer, align 8
@p_stat = dso_local global %struct._IO_FILE* null, align 8
@p_log = dso_local global %struct._IO_FILE* null, align 8
@p_trace = dso_local global %struct._IO_FILE* null, align 8
@p_in = dso_local global i32 0, align 4
@p_dec = dso_local global i32 0, align 4
@mb16x16_cost_frame = dso_local global double* null, align 8
@Bytes_After_Header = dso_local global i32 0, align 4
@encode_one_macroblock = dso_local global void ()* null, align 8
@lrec = dso_local global i32** null, align 8
@lrec_uv = dso_local global i32*** null, align 8
@si_frame_indicator = dso_local global i32 0, align 4
@sp2_frame_indicator = dso_local global i32 0, align 4
@number_sp2_frames = dso_local global i32 0, align 4
@giRDOpt_B8OnlyFlag = dso_local global i32 0, align 4
@imgY_tmp = dso_local global i16** null, align 8
@imgUV_tmp = dso_local global [2 x i16**] zeroinitializer, align 16
@frameNuminGOP = dso_local global i32 0, align 4
@redundant_coding = dso_local global i32 0, align 4
@key_frame = dso_local global i32 0, align 4
@redundant_ref_idx = dso_local global i32 0, align 4
@img_pad_size_uv_x = dso_local global i32 0, align 4
@img_pad_size_uv_y = dso_local global i32 0, align 4
@chroma_mask_mv_y = dso_local global i8 0, align 1
@chroma_mask_mv_x = dso_local global i8 0, align 1
@chroma_shift_y = dso_local global i32 0, align 4
@chroma_shift_x = dso_local global i32 0, align 4
@shift_cr_x = dso_local global i32 0, align 4
@shift_cr_y = dso_local global i32 0, align 4
@img_padded_size_x = dso_local global i32 0, align 4
@img_cr_padded_size_x = dso_local global i32 0, align 4
@start_me_refinement_hp = dso_local global i32 0, align 4
@start_me_refinement_qp = dso_local global i32 0, align 4
@seiHasBufferingPeriod_info = dso_local global i32 0, align 4
@seiBufferingPeriod = dso_local global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = dso_local global i32 0, align 4
@seiPicTiming = dso_local global %struct.pictiming_information_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %6)
  call void @flush_dpb()
  %8 = load i32, i32* %4, align 4
  call void @exit(i32 noundef %8) #4
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @flush_dpb() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_PPS(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.NALU_t*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.NALU_t* null, %struct.NALU_t** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 noundef %6)
  store %struct.NALU_t* %7, %struct.NALU_t** %5, align 8
  %8 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %9 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  %10 = call i32 %8(%struct.NALU_t* noundef %9)
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  call void @FreeNALU(%struct.NALU_t* noundef %13)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 noundef) #1

declare dso_local void @FreeNALU(%struct.NALU_t* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_sequence() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.NALU_t*, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 34
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 3, i32 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 75
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 0, label %15
    i32 1, label %19
  ]

15:                                               ; preds = %0
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 26
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  call void @OpenAnnexbFile(i8* noundef %18)
  store i32 (%struct.NALU_t*)* @WriteAnnexbNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %28

19:                                               ; preds = %0
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %21 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 26
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  call void @OpenRTPFile(i8* noundef %22)
  store i32 (%struct.NALU_t*)* @WriteRTPNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %28

23:                                               ; preds = %0
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 75
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26) #5
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1)
  store i32 1, i32* %1, align 4
  br label %64

28:                                               ; preds = %19, %15
  store %struct.NALU_t* null, %struct.NALU_t** %5, align 8
  %29 = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU()
  store %struct.NALU_t* %29, %struct.NALU_t** %5, align 8
  %30 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %31 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  %32 = call i32 %30(%struct.NALU_t* noundef %31)
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  call void @FreeNALU(%struct.NALU_t* noundef %35)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %44, %28
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @write_PPS(i32 noundef %41, i32 noundef %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %36, !llvm.loop !4

47:                                               ; preds = %36
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %49 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 35
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  store %struct.NALU_t* null, %struct.NALU_t** %5, align 8
  %53 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU()
  store %struct.NALU_t* %53, %struct.NALU_t** %5, align 8
  %54 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %55 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  %56 = call i32 %54(%struct.NALU_t* noundef %55)
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.NALU_t*, %struct.NALU_t** %5, align 8
  call void @FreeNALU(%struct.NALU_t* noundef %59)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %63 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %62, i32 0, i32 35
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %60, %23
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local void @OpenAnnexbFile(i8* noundef) #1

declare dso_local i32 @WriteAnnexbNALU(%struct.NALU_t* noundef) #1

declare dso_local void @OpenRTPFile(i8* noundef) #1

declare dso_local i32 @WriteRTPNALU(%struct.NALU_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

declare dso_local %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #1

declare dso_local %struct.NALU_t* @GenerateSEImessage_NALU(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rewrite_paramsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.NALU_t*, align 8
  store i32 0, i32* %2, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 3, i32 1
  store i32 %10, i32* %3, align 4
  store %struct.NALU_t* null, %struct.NALU_t** %4, align 8
  %11 = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU()
  store %struct.NALU_t* %11, %struct.NALU_t** %4, align 8
  %12 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %13 = load %struct.NALU_t*, %struct.NALU_t** %4, align 8
  %14 = call i32 %12(%struct.NALU_t* noundef %13)
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load %struct.NALU_t*, %struct.NALU_t** %4, align 8
  call void @FreeNALU(%struct.NALU_t* noundef %17)
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %26, %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @write_PPS(i32 noundef %23, i32 noundef %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %18, !llvm.loop !6

29:                                               ; preds = %18
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 35
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  store %struct.NALU_t* null, %struct.NALU_t** %4, align 8
  %35 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU()
  store %struct.NALU_t* %35, %struct.NALU_t** %4, align 8
  %36 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %37 = load %struct.NALU_t*, %struct.NALU_t** %4, align 8
  %38 = call i32 %36(%struct.NALU_t* noundef %37)
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %2, align 4
  %41 = load %struct.NALU_t*, %struct.NALU_t** %4, align 8
  call void @FreeNALU(%struct.NALU_t* noundef %41)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %45 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %44, i32 0, i32 35
  store i32 %43, i32* %45, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @terminate_sequence() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 75
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %7 [
    i32 0, label %5
    i32 1, label %6
  ]

5:                                                ; preds = %0
  call void (...) @CloseAnnexbFile()
  br label %12

6:                                                ; preds = %0
  call void (...) @CloseRTPFile()
  store i32 0, i32* %1, align 4
  br label %13

7:                                                ; preds = %0
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 75
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10) #5
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1)
  store i32 1, i32* %1, align 4
  br label %13

12:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %7, %6
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local void @CloseAnnexbFile(...) #1

declare dso_local void @CloseRTPFile(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
