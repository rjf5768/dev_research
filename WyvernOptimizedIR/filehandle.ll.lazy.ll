; ModuleID = './filehandle.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @error(i8* noundef %0, i32 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  call void @flush_dpb() #6
  call void @exit(i32 noundef %1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @flush_dpb() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_PPS(i32 noundef %0, i32 noundef %1) #3 {
  %3 = call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 noundef %1) #6
  %4 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %5 = call i32 %4(%struct.NALU_t* noundef %3) #6
  %6 = add nsw i32 %5, %0
  call void @FreeNALU(%struct.NALU_t* noundef %3) #6
  ret i32 %6
}

declare dso_local %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 noundef) #1

declare dso_local void @FreeNALU(%struct.NALU_t* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_sequence() #3 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 34
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  %4 = select i1 %.not, i32 1, i32 3
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 75
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %0
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 26, i64 0
  call void @OpenAnnexbFile(i8* noundef nonnull %9) #6
  br label %18

10:                                               ; preds = %0
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i64 0, i32 26, i64 0
  call void @OpenRTPFile(i8* noundef nonnull %12) #6
  br label %18

13:                                               ; preds = %0
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i64 0, i32 75
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16) #6
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1)
  br label %40

18:                                               ; preds = %10, %7
  %storemerge = phi i32 (%struct.NALU_t*)* [ @WriteRTPNALU, %10 ], [ @WriteAnnexbNALU, %7 ]
  store i32 (%struct.NALU_t*)* %storemerge, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %19 = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #6
  %20 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %21 = call i32 %20(%struct.NALU_t* noundef %19) #6
  call void @FreeNALU(%struct.NALU_t* noundef %19) #6
  br label %22

22:                                               ; preds = %26, %18
  %.02 = phi i32 [ %21, %18 ], [ %25, %26 ]
  %.01 = phi i32 [ 0, %18 ], [ %27, %26 ]
  %23 = icmp ult i32 %.01, %4
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = call i32 @write_PPS(i32 noundef %.02, i32 noundef %.01)
  br label %26

26:                                               ; preds = %24
  %27 = add nuw nsw i32 %.01, 1
  br label %22, !llvm.loop !4

28:                                               ; preds = %22
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i64 0, i32 35
  %31 = load i32, i32* %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %37, label %32

32:                                               ; preds = %28
  %33 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU() #6
  %34 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %35 = call i32 %34(%struct.NALU_t* noundef %33) #6
  %36 = add nsw i32 %.02, %35
  call void @FreeNALU(%struct.NALU_t* noundef %33) #6
  br label %37

37:                                               ; preds = %32, %28
  %.1 = phi i32 [ %36, %32 ], [ %.02, %28 ]
  %38 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %39 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %38, i64 0, i32 35
  store i32 %.1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %13
  %.0 = phi i32 [ 1, %13 ], [ 0, %37 ]
  ret i32 %.0
}

declare dso_local void @OpenAnnexbFile(i8* noundef) #1

declare dso_local i32 @WriteAnnexbNALU(%struct.NALU_t* noundef) #1

declare dso_local void @OpenRTPFile(i8* noundef) #1

declare dso_local i32 @WriteRTPNALU(%struct.NALU_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #4

declare dso_local %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #1

declare dso_local %struct.NALU_t* @GenerateSEImessage_NALU(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rewrite_paramsets() #3 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 34
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  %4 = select i1 %.not, i32 1, i32 3
  %5 = call %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #6
  %6 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %7 = call i32 %6(%struct.NALU_t* noundef %5) #6
  call void @FreeNALU(%struct.NALU_t* noundef %5) #6
  br label %8

8:                                                ; preds = %12, %0
  %.01 = phi i32 [ %7, %0 ], [ %11, %12 ]
  %.0 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %9 = icmp ult i32 %.0, %4
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = call i32 @write_PPS(i32 noundef %.01, i32 noundef %.0)
  br label %12

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !6

14:                                               ; preds = %8
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i64 0, i32 35
  %17 = load i32, i32* %16, align 4
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %23, label %18

18:                                               ; preds = %14
  %19 = call %struct.NALU_t* (...) @GenerateSEImessage_NALU() #6
  %20 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %21 = call i32 %20(%struct.NALU_t* noundef %19) #6
  %22 = add nsw i32 %.01, %21
  call void @FreeNALU(%struct.NALU_t* noundef %19) #6
  br label %23

23:                                               ; preds = %18, %14
  %.1 = phi i32 [ %22, %18 ], [ %.01, %14 ]
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %25 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i64 0, i32 35
  store i32 %.1, i32* %25, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @terminate_sequence() #3 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 75
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %0
  call void (...) @CloseAnnexbFile() #6
  br label %11

5:                                                ; preds = %0
  call void (...) @CloseRTPFile() #6
  br label %12

6:                                                ; preds = %0
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i64 0, i32 75
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9) #6
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1)
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %6, %5
  %.0 = phi i32 [ 1, %6 ], [ 0, %5 ], [ 1, %11 ]
  ret i32 %.0
}

declare dso_local void @CloseAnnexbFile(...) #1

declare dso_local void @CloseRTPFile(...) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
