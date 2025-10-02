; ModuleID = './rdopt_coding_state.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/rdopt_coding_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external dso_local global %struct.InputParameters*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external dso_local global %struct.ImageParameters*, align 8
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
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_coding_state(%struct.CSobj* noundef %0) #0 {
  %.not = icmp eq %struct.CSobj* %0, null
  br i1 %.not, label %22, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 1
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %3, align 8
  %.not1 = icmp eq %struct.EncodingEnvironment* %4, null
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 1
  %7 = bitcast %struct.EncodingEnvironment** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #5
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %11 = load %struct.Bitstream*, %struct.Bitstream** %10, align 8
  %.not2 = icmp eq %struct.Bitstream* %11, null
  br i1 %.not2, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %14 = bitcast %struct.Bitstream** %13 to i8**
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %15) #5
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 4
  %18 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %17, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* noundef %18) #5
  %19 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 5
  %20 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %19, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* noundef %20) #5
  %21 = bitcast %struct.CSobj* %0 to i8*
  call void @free(i8* noundef %21) #5
  br label %22

22:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* noundef) #2

declare dso_local void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.CSobj* @create_coding_state() #0 {
  %1 = call noalias dereferenceable_or_null(344) i8* @calloc(i64 noundef 1, i64 noundef 344) #5
  %2 = bitcast i8* %1 to %struct.CSobj*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #5
  br label %5

5:                                                ; preds = %4, %0
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i64 0, i32 76
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 3
  %11 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i64 0, i32 74
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 48) #5
  %21 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 1
  %22 = bitcast %struct.EncodingEnvironment** %21 to i8**
  store i8* %20, i8** %22, align 8
  %23 = icmp eq i8* %20, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %25

25:                                               ; preds = %24, %16
  br label %28

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 1
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %27, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call noalias i8* @calloc(i64 noundef %31, i64 noundef 48) #5
  %33 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 2
  %34 = bitcast %struct.Bitstream** %33 to i8**
  store i8* %32, i8** %34, align 8
  %35 = icmp eq i8* %32, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %37

37:                                               ; preds = %36, %28
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i64 0, i32 74
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = icmp eq i32 %40, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #5
  %45 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 4
  store %struct.MotionInfoContexts* %44, %struct.MotionInfoContexts** %45, align 8
  %46 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #5
  %47 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 5
  store %struct.TextureInfoContexts* %46, %struct.TextureInfoContexts** %47, align 8
  br label %51

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 4
  store %struct.MotionInfoContexts* null, %struct.MotionInfoContexts** %49, align 8
  %50 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %2, i64 0, i32 5
  store %struct.TextureInfoContexts* null, %struct.TextureInfoContexts** %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  ret %struct.CSobj* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

declare dso_local %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

declare dso_local %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @store_coding_state(%struct.CSobj* nocapture noundef %0) #3 {
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i64 0, i32 59
  %4 = load %struct.Picture*, %struct.Picture** %3, align 8
  %5 = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 1, %7 ], [ %10, %8 ]
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 60
  %15 = load %struct.Slice*, %struct.Slice** %14, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 61
  %17 = load %struct.macroblock*, %struct.macroblock** %16, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i64 0, i32 113
  %23 = load i32, i32* %22, align 8
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %24, label %25

24:                                               ; preds = %11
  br label %99

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %54, %29
  %.0 = phi i32 [ 0, %29 ], [ %55, %54 ]
  %31 = icmp slt i32 %.0, %12
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 1
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %33, align 8
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %34, i64 %35
  %37 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %38 = load %struct.datapartition*, %struct.datapartition** %37, align 8
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %38, i64 %39, i32 1
  %41 = bitcast %struct.EncodingEnvironment* %36 to i8*
  %42 = bitcast %struct.EncodingEnvironment* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %41, i8* noundef nonnull align 8 dereferenceable(48) %42, i64 48, i1 false)
  %43 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %44 = load %struct.Bitstream*, %struct.Bitstream** %43, align 8
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %44, i64 %45
  %47 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %48 = load %struct.datapartition*, %struct.datapartition** %47, align 8
  %49 = zext i32 %.0 to i64
  %50 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %48, i64 %49, i32 0
  %51 = bitcast %struct.Bitstream** %50 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast %struct.Bitstream* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %53, i8* noundef nonnull align 8 dereferenceable(48) %52, i64 48, i1 false)
  br label %54

54:                                               ; preds = %32
  %55 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !4

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 4
  %58 = bitcast %struct.MotionInfoContexts** %57 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 7
  %61 = bitcast %struct.MotionInfoContexts** %60 to i8**
  %62 = load i8*, i8** %61, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1504) %59, i8* noundef nonnull align 8 dereferenceable(1504) %62, i64 1504, i1 false)
  %63 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 5
  %64 = bitcast %struct.TextureInfoContexts** %63 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 8
  %67 = bitcast %struct.TextureInfoContexts** %66 to i8**
  %68 = load i8*, i8** %67, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12128) %65, i8* noundef nonnull align 8 dereferenceable(12128) %68, i64 12128, i1 false)
  br label %87

69:                                               ; preds = %25
  br label %70

70:                                               ; preds = %84, %69
  %.1 = phi i32 [ 0, %69 ], [ %85, %84 ]
  %71 = icmp slt i32 %.1, %12
  br i1 %71, label %72, label %86

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %74 = load %struct.Bitstream*, %struct.Bitstream** %73, align 8
  %75 = zext i32 %.1 to i64
  %76 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %74, i64 %75
  %77 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %78 = load %struct.datapartition*, %struct.datapartition** %77, align 8
  %79 = zext i32 %.1 to i64
  %80 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %78, i64 %79, i32 0
  %81 = bitcast %struct.Bitstream** %80 to i8**
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast %struct.Bitstream* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %83, i8* noundef nonnull align 8 dereferenceable(48) %82, i64 48, i1 false)
  br label %84

84:                                               ; preds = %72
  %85 = add nuw nsw i32 %.1, 1
  br label %70, !llvm.loop !6

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %56
  %88 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 6, i64 0
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 5, i64 0
  %91 = bitcast i32* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %89, i8* noundef nonnull align 8 dereferenceable(32) %91, i64 32, i1 false)
  %92 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 7, i64 0
  %93 = bitcast [4 x [4 x [2 x i32]]]* %92 to i8*
  %94 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 9, i64 0
  %95 = bitcast [4 x [4 x [2 x i32]]]* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %93, i8* noundef nonnull align 4 dereferenceable(256) %95, i64 256, i1 false)
  %96 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 16
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @reset_coding_state(%struct.CSobj* nocapture noundef readonly %0) #3 {
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i64 0, i32 59
  %4 = load %struct.Picture*, %struct.Picture** %3, align 8
  %5 = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 1, %7 ], [ %10, %8 ]
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 60
  %15 = load %struct.Slice*, %struct.Slice** %14, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 61
  %17 = load %struct.macroblock*, %struct.macroblock** %16, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i64 0, i32 113
  %23 = load i32, i32* %22, align 8
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %24, label %25

24:                                               ; preds = %11
  br label %99

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %54, %29
  %.0 = phi i32 [ 0, %29 ], [ %55, %54 ]
  %31 = icmp slt i32 %.0, %12
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %34 = load %struct.datapartition*, %struct.datapartition** %33, align 8
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %34, i64 %35, i32 1
  %37 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 1
  %38 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %37, align 8
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %38, i64 %39
  %41 = bitcast %struct.EncodingEnvironment* %36 to i8*
  %42 = bitcast %struct.EncodingEnvironment* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %41, i8* noundef nonnull align 8 dereferenceable(48) %42, i64 48, i1 false)
  %43 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %44 = load %struct.datapartition*, %struct.datapartition** %43, align 8
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %44, i64 %45, i32 0
  %47 = bitcast %struct.Bitstream** %46 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %50 = load %struct.Bitstream*, %struct.Bitstream** %49, align 8
  %51 = zext i32 %.0 to i64
  %52 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %50, i64 %51
  %53 = bitcast %struct.Bitstream* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %48, i8* noundef nonnull align 8 dereferenceable(48) %53, i64 48, i1 false)
  br label %54

54:                                               ; preds = %32
  %55 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !7

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 7
  %58 = bitcast %struct.MotionInfoContexts** %57 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 4
  %61 = bitcast %struct.MotionInfoContexts** %60 to i8**
  %62 = load i8*, i8** %61, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1504) %59, i8* noundef nonnull align 8 dereferenceable(1504) %62, i64 1504, i1 false)
  %63 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 8
  %64 = bitcast %struct.TextureInfoContexts** %63 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 5
  %67 = bitcast %struct.TextureInfoContexts** %66 to i8**
  %68 = load i8*, i8** %67, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12128) %65, i8* noundef nonnull align 8 dereferenceable(12128) %68, i64 12128, i1 false)
  br label %87

69:                                               ; preds = %25
  br label %70

70:                                               ; preds = %84, %69
  %.1 = phi i32 [ 0, %69 ], [ %85, %84 ]
  %71 = icmp slt i32 %.1, %12
  br i1 %71, label %72, label %86

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i64 0, i32 6
  %74 = load %struct.datapartition*, %struct.datapartition** %73, align 8
  %75 = zext i32 %.1 to i64
  %76 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %74, i64 %75, i32 0
  %77 = bitcast %struct.Bitstream** %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 2
  %80 = load %struct.Bitstream*, %struct.Bitstream** %79, align 8
  %81 = zext i32 %.1 to i64
  %82 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %80, i64 %81
  %83 = bitcast %struct.Bitstream* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %78, i8* noundef nonnull align 8 dereferenceable(48) %83, i64 48, i1 false)
  br label %84

84:                                               ; preds = %72
  %85 = add nuw nsw i32 %.1, 1
  br label %70, !llvm.loop !8

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %56
  %88 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 5, i64 0
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 6, i64 0
  %91 = bitcast i32* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %89, i8* noundef nonnull align 8 dereferenceable(32) %91, i64 32, i1 false)
  %92 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 9, i64 0
  %93 = bitcast [4 x [4 x [2 x i32]]]* %92 to i8*
  %94 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 7, i64 0
  %95 = bitcast [4 x [4 x [2 x i32]]]* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(256) %93, i8* noundef nonnull align 8 dereferenceable(256) %95, i64 256, i1 false)
  %96 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %0, i64 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %20, i32 16
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %24
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
