; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/rdopt_coding_state.c'
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
  %2 = alloca %struct.CSobj*, align 8
  store %struct.CSobj* %0, %struct.CSobj** %2, align 8
  %3 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %4 = icmp ne %struct.CSobj* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %7 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 1
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %7, align 8
  %9 = icmp ne %struct.EncodingEnvironment* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %12 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %11, i32 0, i32 1
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %12, align 8
  %14 = bitcast %struct.EncodingEnvironment* %13 to i8*
  call void @free(i8* noundef %14) #4
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %17 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %16, i32 0, i32 2
  %18 = load %struct.Bitstream*, %struct.Bitstream** %17, align 8
  %19 = icmp ne %struct.Bitstream* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %22 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %21, i32 0, i32 2
  %23 = load %struct.Bitstream*, %struct.Bitstream** %22, align 8
  %24 = bitcast %struct.Bitstream* %23 to i8*
  call void @free(i8* noundef %24) #4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %27 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %26, i32 0, i32 4
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %27, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* noundef %28)
  %29 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %30 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %29, i32 0, i32 5
  %31 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %30, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* noundef %31)
  %32 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %33 = bitcast %struct.CSobj* %32 to i8*
  call void @free(i8* noundef %33) #4
  store %struct.CSobj* null, %struct.CSobj** %2, align 8
  br label %34

34:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* noundef) #2

declare dso_local void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CSobj* @create_coding_state() #0 {
  %1 = alloca %struct.CSobj*, align 8
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 344) #4
  %3 = bitcast i8* %2 to %struct.CSobj*
  store %struct.CSobj* %3, %struct.CSobj** %1, align 8
  %4 = icmp eq %struct.CSobj* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %0
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 76
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 3
  %13 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %14 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 74
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %21 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = call noalias i8* @calloc(i64 noundef %23, i64 noundef 48) #4
  %25 = bitcast i8* %24 to %struct.EncodingEnvironment*
  %26 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %27 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %26, i32 0, i32 1
  store %struct.EncodingEnvironment* %25, %struct.EncodingEnvironment** %27, align 8
  %28 = icmp eq %struct.EncodingEnvironment* %25, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %19
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %33 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %32, i32 0, i32 1
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %33, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %36 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = call noalias i8* @calloc(i64 noundef %38, i64 noundef 48) #4
  %40 = bitcast i8* %39 to %struct.Bitstream*
  %41 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %42 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %41, i32 0, i32 2
  store %struct.Bitstream* %40, %struct.Bitstream** %42, align 8
  %43 = icmp eq %struct.Bitstream* %40, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 74
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %50 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %52 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %57 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %58 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %57, i32 0, i32 4
  store %struct.MotionInfoContexts* %56, %struct.MotionInfoContexts** %58, align 8
  %59 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %60 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %61 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %60, i32 0, i32 5
  store %struct.TextureInfoContexts* %59, %struct.TextureInfoContexts** %61, align 8
  br label %67

62:                                               ; preds = %45
  %63 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %64 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %63, i32 0, i32 4
  store %struct.MotionInfoContexts* null, %struct.MotionInfoContexts** %64, align 8
  %65 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  %66 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %65, i32 0, i32 5
  store %struct.TextureInfoContexts* null, %struct.TextureInfoContexts** %66, align 8
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.CSobj*, %struct.CSobj** %1, align 8
  ret %struct.CSobj* %68
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

declare dso_local %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

declare dso_local %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @store_coding_state(%struct.CSobj* noundef %0) #0 {
  %2 = alloca %struct.CSobj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Slice*, align 8
  %6 = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %0, %struct.CSobj** %2, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 59
  %9 = load %struct.Picture*, %struct.Picture** %8, align 8
  %10 = getelementptr inbounds %struct.Picture, %struct.Picture* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %16 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i32 [ 1, %13 ], [ %17, %14 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 60
  %22 = load %struct.Slice*, %struct.Slice** %21, align 8
  store %struct.Slice* %22, %struct.Slice** %5, align 8
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 61
  %25 = load %struct.macroblock*, %struct.macroblock** %24, align 8
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i64 %29
  store %struct.macroblock* %30, %struct.macroblock** %6, align 8
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 113
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  br label %146

36:                                               ; preds = %18
  %37 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %38 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %48 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %47, i32 0, i32 1
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i64 %51
  %53 = load %struct.Slice*, %struct.Slice** %5, align 8
  %54 = getelementptr inbounds %struct.Slice, %struct.Slice* %53, i32 0, i32 6
  %55 = load %struct.datapartition*, %struct.datapartition** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %55, i64 %57
  %59 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %58, i32 0, i32 1
  %60 = bitcast %struct.EncodingEnvironment* %52 to i8*
  %61 = bitcast %struct.EncodingEnvironment* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 48, i1 false)
  %62 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %63 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %62, i32 0, i32 2
  %64 = load %struct.Bitstream*, %struct.Bitstream** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %64, i64 %66
  %68 = load %struct.Slice*, %struct.Slice** %5, align 8
  %69 = getelementptr inbounds %struct.Slice, %struct.Slice* %68, i32 0, i32 6
  %70 = load %struct.datapartition*, %struct.datapartition** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %70, i64 %72
  %74 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %73, i32 0, i32 0
  %75 = load %struct.Bitstream*, %struct.Bitstream** %74, align 8
  %76 = bitcast %struct.Bitstream* %67 to i8*
  %77 = bitcast %struct.Bitstream* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 48, i1 false)
  br label %78

78:                                               ; preds = %46
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %42, !llvm.loop !4

81:                                               ; preds = %42
  %82 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %83 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %82, i32 0, i32 4
  %84 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %83, align 8
  %85 = load %struct.Slice*, %struct.Slice** %5, align 8
  %86 = getelementptr inbounds %struct.Slice, %struct.Slice* %85, i32 0, i32 7
  %87 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %86, align 8
  %88 = bitcast %struct.MotionInfoContexts* %84 to i8*
  %89 = bitcast %struct.MotionInfoContexts* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 1504, i1 false)
  %90 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %91 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %90, i32 0, i32 5
  %92 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %91, align 8
  %93 = load %struct.Slice*, %struct.Slice** %5, align 8
  %94 = getelementptr inbounds %struct.Slice, %struct.Slice* %93, i32 0, i32 8
  %95 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %94, align 8
  %96 = bitcast %struct.TextureInfoContexts* %92 to i8*
  %97 = bitcast %struct.TextureInfoContexts* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 12128, i1 false)
  br label %124

98:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %105 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %104, i32 0, i32 2
  %106 = load %struct.Bitstream*, %struct.Bitstream** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %106, i64 %108
  %110 = load %struct.Slice*, %struct.Slice** %5, align 8
  %111 = getelementptr inbounds %struct.Slice, %struct.Slice* %110, i32 0, i32 6
  %112 = load %struct.datapartition*, %struct.datapartition** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %112, i64 %114
  %116 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %115, i32 0, i32 0
  %117 = load %struct.Bitstream*, %struct.Bitstream** %116, align 8
  %118 = bitcast %struct.Bitstream* %109 to i8*
  %119 = bitcast %struct.Bitstream* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 48, i1 false)
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %99, !llvm.loop !6

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123, %81
  %125 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %126 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %125, i32 0, i32 6
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %126, i64 0, i64 0
  %128 = bitcast i32* %127 to i8*
  %129 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %130 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %129, i32 0, i32 5
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i64 0, i64 0
  %132 = bitcast i32* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %132, i64 32, i1 false)
  %133 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %134 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %133, i32 0, i32 7
  %135 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %134, i64 0, i64 0
  %136 = bitcast [4 x [4 x [2 x i32]]]* %135 to i8*
  %137 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %138 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %137, i32 0, i32 9
  %139 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %138, i64 0, i64 0
  %140 = bitcast [4 x [4 x [2 x i32]]]* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 4 %140, i64 256, i1 false)
  %141 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %142 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 16
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %145 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %144, i32 0, i32 8
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %124, %35
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_coding_state(%struct.CSobj* noundef %0) #0 {
  %2 = alloca %struct.CSobj*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Slice*, align 8
  %6 = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %0, %struct.CSobj** %2, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 59
  %9 = load %struct.Picture*, %struct.Picture** %8, align 8
  %10 = getelementptr inbounds %struct.Picture, %struct.Picture* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %16 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i32 [ 1, %13 ], [ %17, %14 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 60
  %22 = load %struct.Slice*, %struct.Slice** %21, align 8
  store %struct.Slice* %22, %struct.Slice** %5, align 8
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 61
  %25 = load %struct.macroblock*, %struct.macroblock** %24, align 8
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i64 %29
  store %struct.macroblock* %30, %struct.macroblock** %6, align 8
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 113
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  br label %146

36:                                               ; preds = %18
  %37 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %38 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.Slice*, %struct.Slice** %5, align 8
  %48 = getelementptr inbounds %struct.Slice, %struct.Slice* %47, i32 0, i32 6
  %49 = load %struct.datapartition*, %struct.datapartition** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %49, i64 %51
  %53 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %52, i32 0, i32 1
  %54 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %55 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %54, i32 0, i32 1
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %56, i64 %58
  %60 = bitcast %struct.EncodingEnvironment* %53 to i8*
  %61 = bitcast %struct.EncodingEnvironment* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 48, i1 false)
  %62 = load %struct.Slice*, %struct.Slice** %5, align 8
  %63 = getelementptr inbounds %struct.Slice, %struct.Slice* %62, i32 0, i32 6
  %64 = load %struct.datapartition*, %struct.datapartition** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %64, i64 %66
  %68 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %67, i32 0, i32 0
  %69 = load %struct.Bitstream*, %struct.Bitstream** %68, align 8
  %70 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %71 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %70, i32 0, i32 2
  %72 = load %struct.Bitstream*, %struct.Bitstream** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %72, i64 %74
  %76 = bitcast %struct.Bitstream* %69 to i8*
  %77 = bitcast %struct.Bitstream* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 48, i1 false)
  br label %78

78:                                               ; preds = %46
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %42, !llvm.loop !7

81:                                               ; preds = %42
  %82 = load %struct.Slice*, %struct.Slice** %5, align 8
  %83 = getelementptr inbounds %struct.Slice, %struct.Slice* %82, i32 0, i32 7
  %84 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %83, align 8
  %85 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %86 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %85, i32 0, i32 4
  %87 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %86, align 8
  %88 = bitcast %struct.MotionInfoContexts* %84 to i8*
  %89 = bitcast %struct.MotionInfoContexts* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 1504, i1 false)
  %90 = load %struct.Slice*, %struct.Slice** %5, align 8
  %91 = getelementptr inbounds %struct.Slice, %struct.Slice* %90, i32 0, i32 8
  %92 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %91, align 8
  %93 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %94 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %93, i32 0, i32 5
  %95 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %94, align 8
  %96 = bitcast %struct.TextureInfoContexts* %92 to i8*
  %97 = bitcast %struct.TextureInfoContexts* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 12128, i1 false)
  br label %124

98:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load %struct.Slice*, %struct.Slice** %5, align 8
  %105 = getelementptr inbounds %struct.Slice, %struct.Slice* %104, i32 0, i32 6
  %106 = load %struct.datapartition*, %struct.datapartition** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %106, i64 %108
  %110 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %109, i32 0, i32 0
  %111 = load %struct.Bitstream*, %struct.Bitstream** %110, align 8
  %112 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %113 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %112, i32 0, i32 2
  %114 = load %struct.Bitstream*, %struct.Bitstream** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %114, i64 %116
  %118 = bitcast %struct.Bitstream* %111 to i8*
  %119 = bitcast %struct.Bitstream* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 48, i1 false)
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %99, !llvm.loop !8

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123, %81
  %125 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %126 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %125, i32 0, i32 5
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %126, i64 0, i64 0
  %128 = bitcast i32* %127 to i8*
  %129 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %130 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %129, i32 0, i32 6
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i64 0, i64 0
  %132 = bitcast i32* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %132, i64 32, i1 false)
  %133 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %133, i32 0, i32 9
  %135 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %134, i64 0, i64 0
  %136 = bitcast [4 x [4 x [2 x i32]]]* %135 to i8*
  %137 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %138 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %137, i32 0, i32 7
  %139 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], [2 x [4 x [4 x [2 x i32]]]]* %138, i64 0, i64 0
  %140 = bitcast [4 x [4 x [2 x i32]]]* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 8 %140, i64 256, i1 false)
  %141 = load %struct.CSobj*, %struct.CSobj** %2, align 8
  %142 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.macroblock*, %struct.macroblock** %6, align 8
  %145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %144, i32 0, i32 16
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %124, %35
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
