; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/ratectl.c'
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
  %3 = alloca %struct.macroblock*, align 8
  %4 = alloca i16, align 2
  store %struct.macroblock* %0, %struct.macroblock** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = call i32 @calc_MAD()
  %6 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %6, i32 0, i32 14
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  store i32 %5, i32* %13, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 160
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 120
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %2
  %22 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %23 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %22, i32 0, i32 14
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %33 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %21
  %41 = load i16, i16* %4, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %21
  %45 = load i16, i16* %4, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp ne i32 %46, 14
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %50 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 37
  store i32 1, i32* %50, align 8
  br label %66

51:                                               ; preds = %44, %40
  %52 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %53 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %55 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %54, i32 0, i32 35
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %58 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %60 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %64, i32 0, i32 37
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %51, %48
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 122
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %66
  %72 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %73 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %76 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %75, i32 0, i32 26
  store i32 %74, i32* %76, align 4
  %77 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %78 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %81 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %80, i32 0, i32 23
  store i32 %79, i32* %81, align 8
  %82 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 37
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %86 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %85, i32 0, i32 27
  store i32 %84, i32* %86, align 8
  %87 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %88 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %91 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %90, i32 0, i32 19
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i64 0, i64 %93
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 134
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 %98
  store i32 %89, i32* %99, align 4
  %100 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  %104 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %103, i32 0, i32 19
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i64 0, i64 %106
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 134
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 %111
  store i32 %102, i32* %112, align 4
  br label %113

113:                                              ; preds = %71, %66
  br label %114

114:                                              ; preds = %113, %2
  %115 = load %struct.macroblock*, %struct.macroblock** %3, align 8
  call void @set_chroma_qp(%struct.macroblock* noundef %115)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_MAD() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iabs(i32 noundef %18)
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %8, !llvm.loop !4

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %4, !llvm.loop !6

29:                                               ; preds = %4
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local void @set_chroma_qp(%struct.macroblock* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @QP2Qstep(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = srem i32 %5, 6
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x double], [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %7
  %9 = load double, double* %8, align 8
  store double %9, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %12, 6
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load double, double* %4, align 8
  %17 = fmul double %16, 2.000000e+00
  store double %17, double* %4, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %10, !llvm.loop !7

21:                                               ; preds = %10
  %22 = load double, double* %4, align 8
  ret double %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Qstep2QP(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load double, double* %3, align 8
  %7 = call double @QP2Qstep(i32 noundef 0)
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = call double @QP2Qstep(i32 noundef 51)
  %13 = fcmp ogt double %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 51, i32* %2, align 4
  br label %56

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %21, %16
  %18 = load double, double* %3, align 8
  %19 = call double @QP2Qstep(i32 noundef 5)
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = fdiv double %22, 2.000000e+00
  store double %23, double* %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %17, !llvm.loop !8

26:                                               ; preds = %17
  %27 = load double, double* %3, align 8
  %28 = fcmp ole double %27, 6.562500e-01
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store double 6.250000e-01, double* %3, align 8
  store i32 0, i32* %5, align 4
  br label %51

30:                                               ; preds = %26
  %31 = load double, double* %3, align 8
  %32 = fcmp ole double %31, 7.500000e-01
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store double 6.875000e-01, double* %3, align 8
  store i32 1, i32* %5, align 4
  br label %50

34:                                               ; preds = %30
  %35 = load double, double* %3, align 8
  %36 = fcmp ole double %35, 8.437500e-01
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store double 8.125000e-01, double* %3, align 8
  store i32 2, i32* %5, align 4
  br label %49

38:                                               ; preds = %34
  %39 = load double, double* %3, align 8
  %40 = fcmp ole double %39, 9.375000e-01
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store double 8.750000e-01, double* %3, align 8
  store i32 3, i32* %5, align 4
  br label %48

42:                                               ; preds = %38
  %43 = load double, double* %3, align 8
  %44 = fcmp ole double %43, 1.062500e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store double 1.000000e+00, double* %3, align 8
  store i32 4, i32* %5, align 4
  br label %47

46:                                               ; preds = %42
  store double 1.125000e+00, double* %3, align 8
  store i32 5, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %52, 6
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %14, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @iabs(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ComputeFrameMAD() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 120
  %7 = load i32, i32* %6, align 8
  %8 = icmp ult i32 %4, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %11 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 14
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %1, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %3, !llvm.loop !9

23:                                               ; preds = %3
  %24 = load i64, i64* %1, align 8
  %25 = sitofp i64 %24 to double
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 120
  %28 = load i32, i32* %27, align 8
  %29 = uitofp i32 %28 to double
  %30 = fmul double 2.560000e+02, %29
  %31 = fdiv double %25, %30
  ret double %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_rc_generic(%struct.rc_generic* noundef %0, %struct.rc_generic* noundef %1) #0 {
  %3 = alloca %struct.rc_generic*, align 8
  %4 = alloca %struct.rc_generic*, align 8
  %5 = alloca i32*, align 8
  store %struct.rc_generic* %0, %struct.rc_generic** %3, align 8
  store %struct.rc_generic* %1, %struct.rc_generic** %4, align 8
  %6 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %6, i32 0, i32 14
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %10 = bitcast %struct.rc_generic* %9 to i8*
  %11 = load %struct.rc_generic*, %struct.rc_generic** %4, align 8
  %12 = bitcast %struct.rc_generic* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %12, i64 144, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %15 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %14, i32 0, i32 14
  store i32* %13, i32** %15, align 8
  %16 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %17 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %16, i32 0, i32 14
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load %struct.rc_generic*, %struct.rc_generic** %4, align 8
  %21 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %20, i32 0, i32 14
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 120
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %23, i64 %28, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generic_alloc(%struct.rc_generic** noundef %0) #0 {
  %2 = alloca %struct.rc_generic**, align 8
  store %struct.rc_generic** %0, %struct.rc_generic*** %2, align 8
  %3 = call noalias i8* @malloc(i64 noundef 144) #4
  %4 = bitcast i8* %3 to %struct.rc_generic*
  %5 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  store %struct.rc_generic* %4, %struct.rc_generic** %5, align 8
  %6 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %7 = load %struct.rc_generic*, %struct.rc_generic** %6, align 8
  %8 = icmp eq %struct.rc_generic* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 120
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = call noalias i8* @calloc(i64 noundef %14, i64 noundef 4) #4
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %18 = load %struct.rc_generic*, %struct.rc_generic** %17, align 8
  %19 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %18, i32 0, i32 14
  store i32* %16, i32** %19, align 8
  %20 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %21 = load %struct.rc_generic*, %struct.rc_generic** %20, align 8
  %22 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %21, i32 0, i32 14
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* null, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %25, %10
  %27 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %28 = load %struct.rc_generic*, %struct.rc_generic** %27, align 8
  %29 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @no_mem_exit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @generic_free(%struct.rc_generic** noundef %0) #0 {
  %2 = alloca %struct.rc_generic**, align 8
  store %struct.rc_generic** %0, %struct.rc_generic*** %2, align 8
  %3 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %4 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %5 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 14
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* null, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %10 = load %struct.rc_generic*, %struct.rc_generic** %9, align 8
  %11 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 14
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* noundef %13) #4
  %14 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %15 = load %struct.rc_generic*, %struct.rc_generic** %14, align 8
  %16 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %15, i32 0, i32 14
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %19 = load %struct.rc_generic*, %struct.rc_generic** %18, align 8
  %20 = icmp ne %struct.rc_generic* null, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  %23 = load %struct.rc_generic*, %struct.rc_generic** %22, align 8
  %24 = bitcast %struct.rc_generic* %23 to i8*
  call void @free(i8* noundef %24) #4
  %25 = load %struct.rc_generic**, %struct.rc_generic*** %2, align 8
  store %struct.rc_generic* null, %struct.rc_generic** %25, align 8
  br label %26

26:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
