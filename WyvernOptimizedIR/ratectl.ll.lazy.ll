; ModuleID = './ratectl.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/ratectl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@generic_RC = dso_local global %struct.rc_generic* null, align 8
@img = external dso_local global %struct.ImageParameters*, align 8
@input = external dso_local global %struct.InputParameters*, align 8
@rdopt = dso_local global %struct.RD_DATA* null, align 8
@delta_qp_mbaff = dso_local global [2 x [2 x i32]] zeroinitializer, align 16
@qp_mbaff = dso_local global [2 x [2 x i32]] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
@diffy = dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [35 x i8] c"init_global_buffers: generic_alloc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"init_global_buffers: (*prc)->MADofMB\00", align 1
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
@generic_RC_init = dso_local global %struct.rc_generic* null, align 8
@generic_RC_best = dso_local global %struct.rc_generic* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @update_rc(%struct.macroblock* noundef %0, i16 noundef signext %1) #0 {
  %3 = call i32 @calc_MAD()
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %5 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i64 0, i32 14
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i64 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  store i32 %3, i32* %11, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i64 0, i32 160
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i64 0, i32 120
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %2
  %20 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %21 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %20, i64 0, i32 14
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %31 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %30, i64 0, i32 13
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 12
  %35 = load i32, i32* %34, align 4
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %36, label %38

36:                                               ; preds = %19
  %37 = icmp eq i16 %1, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %36, %19
  %.not2 = icmp eq i16 %1, 14
  br i1 %.not2, label %41, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 37
  store i32 1, i32* %40, align 8
  br label %49

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 35
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i64 0, i32 9
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 37
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %39
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %51 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i64 0, i32 122
  %52 = load i32, i32* %51, align 4
  %.not1 = icmp eq i32 %52, 0
  br i1 %.not1, label %85, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %57 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %56, i64 0, i32 26
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %56, i64 0, i32 23
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 37
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %64 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %63, i64 0, i32 27
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 19
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i64 0, i32 134
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i64 0, i64 %69, i64 %73
  store i32 %66, i32* %74, align 4
  %75 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i64 0, i32 19
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i64 0, i32 134
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i64 0, i64 %79, i64 %83
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %53, %49
  br label %86

86:                                               ; preds = %85, %2
  call void @set_chroma_qp(%struct.macroblock* noundef %0) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @calc_MAD() #1 {
  br label %1

1:                                                ; preds = %16, %0
  %.02 = phi i32 [ 0, %0 ], [ %.1, %16 ]
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 16
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %7, %3
  %.1 = phi i32 [ %.02, %3 ], [ %13, %7 ]
  %.01 = phi i32 [ 0, %3 ], [ %14, %7 ]
  %5 = icmp ult i32 %.01, 16
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.0 to i64
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i64 0, i64 %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iabs(i32 noundef %11)
  %13 = add nsw i32 %.1, %12
  %14 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

18:                                               ; preds = %1
  ret i32 %.02
}

declare dso_local void @set_chroma_qp(%struct.macroblock* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local double @QP2Qstep(i32 noundef %0) #3 {
  %2 = srem i32 %0, 6
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [6 x double], [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %3
  %5 = load double, double* %4, align 8
  br label %6

6:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %.0 = phi double [ %5, %1 ], [ %11, %10 ]
  %7 = sdiv i32 %0, 6
  %8 = icmp slt i32 %.01, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = fmul double %.0, 2.000000e+00
  %12 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !7

13:                                               ; preds = %6
  ret double %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @Qstep2QP(double noundef %0) #3 {
  %2 = call double @QP2Qstep(i32 noundef 0)
  %3 = fcmp ogt double %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %40

5:                                                ; preds = %1
  %6 = call double @QP2Qstep(i32 noundef 51)
  %7 = fcmp olt double %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %40

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %14, %10
  %.02 = phi i32 [ 0, %10 ], [ %16, %14 ]
  %.01 = phi double [ %0, %10 ], [ %15, %14 ]
  %12 = call double @QP2Qstep(i32 noundef 5)
  %13 = fcmp ogt double %.01, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = fmul double %.01, 5.000000e-01
  %16 = add nuw nsw i32 %.02, 1
  br label %11, !llvm.loop !8

17:                                               ; preds = %11
  %18 = fcmp ugt double %.01, 6.562500e-01
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  br label %37

20:                                               ; preds = %17
  %21 = fcmp ugt double %.01, 7.500000e-01
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  br label %36

23:                                               ; preds = %20
  %24 = fcmp ugt double %.01, 8.437500e-01
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %35

26:                                               ; preds = %23
  %27 = fcmp ugt double %.01, 9.375000e-01
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  br label %34

29:                                               ; preds = %26
  %30 = fcmp ugt double %.01, 1.062500e+00
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  br label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %31
  %.03 = phi i32 [ 4, %31 ], [ 5, %32 ]
  br label %34

34:                                               ; preds = %33, %28
  %.1 = phi i32 [ 3, %28 ], [ %.03, %33 ]
  br label %35

35:                                               ; preds = %34, %25
  %.2 = phi i32 [ 2, %25 ], [ %.1, %34 ]
  br label %36

36:                                               ; preds = %35, %22
  %.3 = phi i32 [ 1, %22 ], [ %.2, %35 ]
  br label %37

37:                                               ; preds = %36, %19
  %.4 = phi i32 [ 0, %19 ], [ %.3, %36 ]
  %38 = mul nsw i32 %.02, 6
  %39 = add nsw i32 %38, %.4
  br label %40

40:                                               ; preds = %37, %8, %4
  %.0 = phi i32 [ 0, %4 ], [ 51, %8 ], [ %39, %37 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @iabs(i32 noundef %0) #4 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub nsw i32 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local double @ComputeFrameMAD() #1 {
  br label %1

1:                                                ; preds = %7, %0
  %.01 = phi i32 [ 0, %0 ], [ %16, %7 ]
  %.0 = phi i64 [ 0, %0 ], [ %15, %7 ]
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i64 0, i32 120
  %4 = load i32, i32* %3, align 8
  %5 = icmp ult i32 %.01, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6
  %8 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %9 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i64 0, i32 14
  %10 = load i32*, i32** %9, align 8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %.0, %14
  %16 = add i32 %.01, 1
  br label %1, !llvm.loop !9

17:                                               ; preds = %1
  %18 = sitofp i64 %.0 to double
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i64 0, i32 120
  %21 = load i32, i32* %20, align 8
  %22 = uitofp i32 %21 to double
  %23 = fmul double %22, 2.560000e+02
  %24 = fdiv double %18, %23
  ret double %24
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @copy_rc_generic(%struct.rc_generic* nocapture noundef %0, %struct.rc_generic* nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i64 0, i32 14
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast %struct.rc_generic* %0 to i8*
  %6 = bitcast %struct.rc_generic* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(144) %5, i8* noundef nonnull align 1 dereferenceable(144) %6, i64 144, i1 false)
  %7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i64 0, i32 14
  store i32* %4, i32** %7, align 8
  %.cast = bitcast i32* %4 to i8*
  %8 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %1, i64 0, i32 14
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i64 0, i32 120
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.cast, i8* align 1 %10, i64 %15, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @generic_alloc(%struct.rc_generic** nocapture noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(144) i8* @malloc(i64 noundef 144) #8
  %3 = bitcast %struct.rc_generic** %0 to i8**
  store i8* %2, i8** %3, align 8
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i64 0, i32 120
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = call noalias i8* @calloc(i64 noundef %10, i64 noundef 4) #8
  %12 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %13 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %12, i64 0, i32 14
  %14 = bitcast i32** %13 to i8**
  store i8* %11, i8** %14, align 8
  %15 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %16 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %15, i64 0, i32 14
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %20

20:                                               ; preds = %19, %6
  %21 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %22 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %21, i64 0, i32 2
  store i32 1, i32* %22, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #7

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @generic_free(%struct.rc_generic** nocapture noundef %0) #0 {
  %2 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %3 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %2, i64 0, i32 14
  %4 = load i32*, i32** %3, align 8
  %.not = icmp eq i32* %4, null
  br i1 %.not, label %12, label %5

5:                                                ; preds = %1
  %6 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %6, i64 0, i32 14
  %8 = bitcast i32** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #8
  %10 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %11 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i64 0, i32 14
  store i32* null, i32** %11, align 8
  br label %12

12:                                               ; preds = %5, %1
  %13 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %.not1 = icmp eq %struct.rc_generic* %13, null
  br i1 %.not1, label %17, label %14

14:                                               ; preds = %12
  %15 = bitcast %struct.rc_generic** %0 to i8**
  %16 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %16) #8
  store %struct.rc_generic* null, %struct.rc_generic** %0, align 8
  br label %17

17:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
