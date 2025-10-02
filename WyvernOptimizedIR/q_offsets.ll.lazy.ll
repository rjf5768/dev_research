; ModuleID = './q_offsets.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/q_offsets.c"
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

@offset4x4_check = dso_local global [6 x i32] zeroinitializer, align 16
@offset8x8_check = dso_local global [2 x i32] zeroinitializer, align 4
@OffsetBits = dso_local constant i32 11, align 4
@input = external dso_local global %struct.InputParameters*, align 8
@LevelOffset4x4Luma = dso_local global i32**** null, align 8
@LevelOffset4x4Chroma = dso_local global i32***** null, align 8
@LevelOffset8x8Luma = dso_local global i32**** null, align 8
@OffsetList4x4input = dso_local global i16** null, align 8
@OffsetList8x8input = dso_local global i16** null, align 8
@OffsetList4x4 = dso_local global i16** null, align 8
@OffsetList8x8 = dso_local global i16** null, align 8
@OffsetType4x4 = internal constant [15 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERP\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERP\00", [24 x i8] c"INTRA4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERB\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERB\00", [24 x i8] c"INTER4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERP\00", [24 x i8] c"INTER4X4_CHROMAV_INTERP\00", [24 x i8] c"INTER4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERB\00", [24 x i8] c"INTER4X4_CHROMAV_INTERB\00"], align 16
@OffsetType8x8 = internal constant [5 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERB\00\00\00\00"], align 16
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Offset_intra_default_intra = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset_intra_default_chroma = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset_intra_default_inter = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset_inter_default = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset8_intra_default_intra = internal constant [64 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 16
@Offset8_intra_default_inter = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@Offset8_inter_default = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 16
@img = external dso_local global %struct.ImageParameters*, align 8
@qp_per_matrix = external dso_local global i32*, align 8
@AdaptRndWeight = dso_local global i32 0, align 4
@AdaptRndCrWeight = dso_local global i32 0, align 4
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_QOffsets() #0 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 172
  %3 = load i32, i32* %2, align 8
  %4 = mul nsw i32 %3, 6
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 6
  %7 = add nsw i32 %6, 1
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 173
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 6
  %12 = add nsw i32 %11, 3
  %13 = sdiv i32 %12, 6
  %14 = add nsw i32 %13, 1
  %15 = call i32 @imax(i32 noundef %7, i32 noundef %14)
  %16 = call i32 @get_mem4Dint(i32***** noundef nonnull @LevelOffset4x4Luma, i32 noundef 2, i32 noundef %15, i32 noundef 4, i32 noundef 4) #10
  %17 = call i32 @get_mem5Dint(i32****** noundef nonnull @LevelOffset4x4Chroma, i32 noundef 2, i32 noundef 2, i32 noundef %15, i32 noundef 4, i32 noundef 4) #10
  %18 = call i32 @get_mem4Dint(i32***** noundef nonnull @LevelOffset8x8Luma, i32 noundef 2, i32 noundef %15, i32 noundef 8, i32 noundef 8) #10
  %19 = call i32 @get_mem2Dshort(i16*** noundef nonnull @OffsetList4x4input, i32 noundef 15, i32 noundef 16) #10
  %20 = call i32 @get_mem2Dshort(i16*** noundef nonnull @OffsetList8x8input, i32 noundef 5, i32 noundef 64) #10
  %21 = call i32 @get_mem2Dshort(i16*** noundef nonnull @OffsetList4x4, i32 noundef 15, i32 noundef 16) #10
  %22 = call i32 @get_mem2Dshort(i16*** noundef nonnull @OffsetList8x8, i32 noundef 5, i32 noundef 64) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imax(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

declare dso_local i32 @get_mem4Dint(i32***** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @get_mem5Dint(i32****** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @get_mem2Dshort(i16*** noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_QOffsets() #0 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 172
  %3 = load i32, i32* %2, align 8
  %4 = mul nsw i32 %3, 6
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 6
  %7 = add nsw i32 %6, 1
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 173
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 6
  %12 = add nsw i32 %11, 3
  %13 = sdiv i32 %12, 6
  %14 = add nsw i32 %13, 1
  %15 = call i32 @imax(i32 noundef %7, i32 noundef %14)
  %16 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  call void @free_mem4Dint(i32**** noundef %16, i32 noundef 2, i32 noundef %15) #10
  %17 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  call void @free_mem5Dint(i32***** noundef %17, i32 noundef 2, i32 noundef 2, i32 noundef %15) #10
  %18 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  call void @free_mem4Dint(i32**** noundef %18, i32 noundef 2, i32 noundef %15) #10
  %19 = load i16**, i16*** @OffsetList8x8, align 8
  call void @free_mem2Dshort(i16** noundef %19) #10
  %20 = load i16**, i16*** @OffsetList4x4, align 8
  call void @free_mem2Dshort(i16** noundef %20) #10
  %21 = load i16**, i16*** @OffsetList8x8input, align 8
  call void @free_mem2Dshort(i16** noundef %21) #10
  %22 = load i16**, i16*** @OffsetList4x4input, align 8
  call void @free_mem2Dshort(i16** noundef %22) #10
  ret void
}

declare dso_local void @free_mem4Dint(i32**** noundef, i32 noundef, i32 noundef) #2

declare dso_local void @free_mem5Dint(i32***** noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @free_mem2Dshort(i16** noundef) #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @CheckOffsetParameterName(i8* noundef readonly %0, i32* nocapture noundef writeonly %1) #3 {
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %15, %2
  %.01 = phi i32 [ 0, %2 ], [ %16, %15 ]
  br i1 true, label %4, label %6

4:                                                ; preds = %3
  %5 = icmp ult i32 %.01, 15
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i1 [ false, %3 ], [ %5, %4 ]
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [15 x [24 x i8]], [15 x [24 x i8]]* @OffsetType4x4, i64 0, i64 %9, i64 0
  %11 = call i32 @strcmp(i8* noundef nonnull %10, i8* noundef nonnull dereferenceable(1) %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %33

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

17:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %30, %17
  %.1 = phi i32 [ 0, %17 ], [ %31, %30 ]
  br i1 true, label %19, label %21

19:                                               ; preds = %18
  %20 = icmp ult i32 %.1, 5
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i1 [ false, %18 ], [ %20, %19 ]
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = zext i32 %.1 to i64
  %25 = getelementptr inbounds [5 x [24 x i8]], [5 x [24 x i8]]* @OffsetType8x8, i64 0, i64 %24, i64 0
  %26 = call i32 @strcmp(i8* noundef nonnull %25, i8* noundef nonnull dereferenceable(1) %0) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !6

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %28, %13
  %.0 = phi i32 [ %.01, %13 ], [ %.1, %28 ], [ -1, %32 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ParseQOffsetMatrix(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [1000 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  br label %8

8:                                                ; preds = %51, %2
  %.09 = phi i8* [ %0, %2 ], [ %.312, %51 ]
  %.05 = phi i32 [ 0, %2 ], [ %.4, %51 ]
  %.03 = phi i32 [ 0, %2 ], [ %.14, %51 ]
  %.02 = phi i32 [ 0, %2 ], [ %.3, %51 ]
  %9 = icmp ult i8* %.09, %7
  br i1 %9, label %10, label %52

10:                                               ; preds = %8
  %11 = load i8, i8* %.09, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %43 [
    i32 13, label %13
    i32 35, label %15
    i32 10, label %25
    i32 32, label %27
    i32 9, label %27
    i32 34, label %31
    i32 44, label %41
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, i8* %.09, i64 1
  br label %51

15:                                               ; preds = %10
  store i8 0, i8* %.09, align 1
  br label %16

16:                                               ; preds = %22, %15
  %.110 = phi i8* [ %.09, %15 ], [ %23, %22 ]
  %17 = load i8, i8* %.110, align 1
  %.not19 = icmp eq i8 %17, 10
  br i1 %.not19, label %20, label %18

18:                                               ; preds = %16
  %19 = icmp ult i8* %.110, %7
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i1 [ false, %16 ], [ %19, %18 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, i8* %.110, i64 1
  br label %16, !llvm.loop !7

24:                                               ; preds = %20
  br label %51

25:                                               ; preds = %10
  %26 = getelementptr inbounds i8, i8* %.09, i64 1
  store i8 0, i8* %.09, align 1
  br label %51

27:                                               ; preds = %10, %10
  %.not18 = icmp eq i32 %.03, 0
  br i1 %.not18, label %29, label %28

28:                                               ; preds = %27
  br label %30

29:                                               ; preds = %27
  store i8 0, i8* %.09, align 1
  br label %30

30:                                               ; preds = %29, %28
  %.16 = phi i32 [ %.05, %28 ], [ 0, %29 ]
  %.211 = getelementptr inbounds i8, i8* %.09, i64 1
  br label %51

31:                                               ; preds = %10
  %32 = getelementptr inbounds i8, i8* %.09, i64 1
  store i8 0, i8* %.09, align 1
  %.not17 = icmp eq i32 %.03, 0
  br i1 %.not17, label %33, label %38

33:                                               ; preds = %31
  %34 = add nsw i32 %.02, 1
  %35 = sext i32 %.02 to i64
  %36 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %35
  store i8* %32, i8** %36, align 8
  %37 = xor i32 %.05, -1
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %33
  %.27 = phi i32 [ 0, %38 ], [ %37, %33 ]
  %.1 = phi i32 [ %.02, %38 ], [ %34, %33 ]
  %40 = xor i32 %.03, -1
  br label %51

41:                                               ; preds = %10
  %42 = getelementptr inbounds i8, i8* %.09, i64 1
  br label %51

43:                                               ; preds = %10
  %.not20 = icmp eq i32 %.05, 0
  br i1 %.not20, label %44, label %49

44:                                               ; preds = %43
  %45 = add nsw i32 %.02, 1
  %46 = sext i32 %.02 to i64
  %47 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %46
  store i8* %.09, i8** %47, align 8
  %48 = xor i32 %.05, -1
  br label %49

49:                                               ; preds = %44, %43
  %.38 = phi i32 [ %.05, %43 ], [ %48, %44 ]
  %.2 = phi i32 [ %.02, %43 ], [ %45, %44 ]
  %50 = getelementptr inbounds i8, i8* %.09, i64 1
  br label %51

51:                                               ; preds = %49, %41, %39, %30, %25, %24, %13
  %.312 = phi i8* [ %50, %49 ], [ %42, %41 ], [ %32, %39 ], [ %.211, %30 ], [ %26, %25 ], [ %.110, %24 ], [ %14, %13 ]
  %.4 = phi i32 [ %.38, %49 ], [ 0, %41 ], [ %.27, %39 ], [ %.16, %30 ], [ 0, %25 ], [ 0, %24 ], [ %.05, %13 ]
  %.14 = phi i32 [ %.03, %49 ], [ %.03, %41 ], [ %40, %39 ], [ %.03, %30 ], [ 0, %25 ], [ 0, %24 ], [ %.03, %13 ]
  %.3 = phi i32 [ %.2, %49 ], [ %.02, %41 ], [ %.1, %39 ], [ %.02, %30 ], [ %.02, %25 ], [ %.02, %24 ], [ %.02, %13 ]
  br label %8, !llvm.loop !8

52:                                               ; preds = %8
  %53 = add nsw i32 %.02, -1
  br label %54

54:                                               ; preds = %118, %52
  %.014 = phi i32 [ 0, %52 ], [ %120, %118 ]
  %55 = icmp slt i32 %.014, %53
  br i1 %55, label %56, label %121

56:                                               ; preds = %54
  %57 = zext i32 %.014 to i64
  %58 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @CheckOffsetParameterName(i8* noundef %59, i32* noundef nonnull %5)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = zext i32 %.014 to i64
  %64 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* noundef %65) #10
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300) #10
  br label %67

67:                                               ; preds = %62, %56
  %68 = add nuw nsw i32 %.014, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %71) #11
  %.not = icmp eq i32 %72, 0
  br i1 %.not, label %74, label %73

73:                                               ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(78) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(78) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 78, i1 false)
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300) #10
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i32, i32* %5, align 4
  %.not15 = icmp eq i32 %75, 0
  br i1 %.not15, label %76, label %83

76:                                               ; preds = %74
  %77 = load i16**, i16*** @OffsetList4x4input, align 8
  %78 = sext i32 %60 to i64
  %79 = getelementptr inbounds i16*, i16** %77, i64 %78
  %80 = load i16*, i16** %79, align 8
  %81 = sext i32 %60 to i64
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* @offset4x4_check, i64 0, i64 %81
  store i32 1, i32* %82, align 4
  br label %90

83:                                               ; preds = %74
  %84 = load i16**, i16*** @OffsetList8x8input, align 8
  %85 = sext i32 %60 to i64
  %86 = getelementptr inbounds i16*, i16** %84, i64 %85
  %87 = load i16*, i16** %86, align 8
  %88 = sext i32 %60 to i64
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* @offset8x8_check, i64 0, i64 %88
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %76
  %.01 = phi i32 [ 64, %83 ], [ 16, %76 ]
  %.0 = phi i16* [ %87, %83 ], [ %80, %76 ]
  br label %91

91:                                               ; preds = %115, %90
  %.013 = phi i32 [ 0, %90 ], [ %116, %115 ]
  %92 = icmp ult i32 %.013, %.01
  br i1 %92, label %93, label %117

93:                                               ; preds = %91
  %94 = add nuw nsw i32 %.014, 2
  %95 = add nuw nsw i32 %94, %.013
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %98, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %4) #10
  %.not16 = icmp eq i32 %99, 1
  br i1 %.not16, label %110, label %100

100:                                              ; preds = %93
  %101 = zext i32 %.014 to i64
  %102 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = add nuw nsw i32 %.014, 2
  %105 = add nuw nsw i32 %104, %.013
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %3, i64 0, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* noundef %103, i8* noundef %108) #10
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300) #10
  br label %110

110:                                              ; preds = %100, %93
  %111 = load i32, i32* %4, align 4
  %112 = trunc i32 %111 to i16
  %113 = zext i32 %.013 to i64
  %114 = getelementptr inbounds i16, i16* %.0, i64 %113
  store i16 %112, i16* %114, align 2
  br label %115

115:                                              ; preds = %110
  %116 = add nuw nsw i32 %.013, 1
  br label %91, !llvm.loop !9

117:                                              ; preds = %91
  %putchar = call i32 @putchar(i32 46)
  br label %118

118:                                              ; preds = %117
  %119 = add nuw nsw i32 %.013, 2
  %120 = add nuw nsw i32 %.014, %119
  br label %54, !llvm.loop !10

121:                                              ; preds = %54
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #5

declare dso_local void @error(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #5

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init_QOffsetMatrix() #0 {
  call void @allocate_QOffsets()
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 184
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %19, label %4

4:                                                ; preds = %0
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i64 0, i32 183, i64 0
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %6) #10
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 183, i64 0
  %10 = call i8* @GetConfigFileContent(i8* noundef nonnull %9, i32 noundef 0) #10
  %.not1 = icmp eq i8* %10, null
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %4
  %12 = call i64 @strlen(i8* noundef nonnull %10) #11
  %13 = trunc i64 %12 to i32
  call void @ParseQOffsetMatrix(i8* noundef nonnull %10, i32 noundef %13)
  br label %18

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0)) #10
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i64 0, i32 184
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %11
  %putchar = call i32 @putchar(i32 10)
  call void @free(i8* noundef %10) #10
  br label %19

19:                                               ; preds = %18, %0
  call void @InitOffsetParam()
  ret void
}

declare dso_local i8* @GetConfigFileContent(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @InitOffsetParam() #6 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 184
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %13, label %4

4:                                                ; preds = %0
  %5 = load i8**, i8*** bitcast (i16*** @OffsetList4x4 to i8***), align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8**, i8*** bitcast (i16*** @OffsetList4x4input to i8***), align 8
  %8 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(480) %6, i8* noundef nonnull align 2 dereferenceable(480) %8, i64 480, i1 false)
  %9 = load i8**, i8*** bitcast (i16*** @OffsetList8x8 to i8***), align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8**, i8*** bitcast (i16*** @OffsetList8x8input to i8***), align 8
  %12 = load i8*, i8** %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(640) %10, i8* noundef nonnull align 2 dereferenceable(640) %12, i64 640, i1 false)
  br label %62

13:                                               ; preds = %0
  %14 = load i8**, i8*** bitcast (i16*** @OffsetList4x4 to i8***), align 8
  %15 = load i8*, i8** %14, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(32) %15, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([16 x i16]* @Offset_intra_default_intra to i8*), i64 32, i1 false)
  br label %16

16:                                               ; preds = %24, %13
  %.0 = phi i32 [ 1, %13 ], [ %25, %24 ]
  %17 = icmp ult i32 %.0, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = load i16**, i16*** @OffsetList4x4, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds i16*, i16** %19, i64 %20
  %22 = bitcast i16** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(32) %23, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([16 x i16]* @Offset_intra_default_chroma to i8*), i64 32, i1 false)
  br label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !11

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %35, %26
  %.1 = phi i32 [ 3, %26 ], [ %36, %35 ]
  %28 = icmp ult i32 %.1, 9
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load i16**, i16*** @OffsetList4x4, align 8
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds i16*, i16** %30, i64 %31
  %33 = bitcast i16** %32 to i8**
  %34 = load i8*, i8** %33, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(32) %34, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([16 x i16]* @Offset_intra_default_inter to i8*), i64 32, i1 false)
  br label %35

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !12

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %46, %37
  %.2 = phi i32 [ 9, %37 ], [ %47, %46 ]
  %39 = icmp ult i32 %.2, 15
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = load i16**, i16*** @OffsetList4x4, align 8
  %42 = zext i32 %.2 to i64
  %43 = getelementptr inbounds i16*, i16** %41, i64 %42
  %44 = bitcast i16** %43 to i8**
  %45 = load i8*, i8** %44, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(32) %45, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([16 x i16]* @Offset_inter_default to i8*), i64 32, i1 false)
  br label %46

46:                                               ; preds = %40
  %47 = add nuw nsw i32 %.2, 1
  br label %38, !llvm.loop !13

48:                                               ; preds = %38
  %49 = load i8**, i8*** bitcast (i16*** @OffsetList8x8 to i8***), align 8
  %50 = load i8*, i8** %49, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(128) %50, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([64 x i16]* @Offset8_intra_default_intra to i8*), i64 128, i1 false)
  %51 = getelementptr inbounds i8*, i8** %49, i64 1
  %52 = load i8*, i8** %51, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(128) %52, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i1 false)
  %53 = getelementptr inbounds i8*, i8** %49, i64 2
  %54 = load i8*, i8** %53, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(128) %54, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i1 false)
  %55 = load i16**, i16*** @OffsetList8x8, align 8
  %56 = getelementptr inbounds i16*, i16** %55, i64 3
  %57 = bitcast i16** %56 to i8**
  %58 = load i8*, i8** %57, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(128) %58, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i1 false)
  %59 = getelementptr inbounds i16*, i16** %55, i64 4
  %60 = bitcast i16** %59 to i8**
  %61 = load i8*, i8** %60, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(128) %61, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i1 false)
  br label %62

62:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @CalculateOffsetParam() #8 {
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i64 0, i32 5
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %18

6:                                                ; preds = %0
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i64 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %16

12:                                               ; preds = %6
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i64 0, i32 5
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i32 [ 0, %11 ], [ %15, %12 ]
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi i32 [ 2, %5 ], [ %17, %16 ]
  %20 = load i32*, i32** @qp_per_matrix, align 8
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i64 0, i32 144
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 51
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32*, i32** @qp_per_matrix, align 8
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i64 0, i32 145
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 51
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i64 0, i32 122
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = sext i32 %19 to i64
  %45 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i64 0, i32 188, i64 %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @AdaptRndWeight, align 4
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i64 0, i32 122
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = sext i32 %19 to i64
  %54 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i64 0, i32 189, i64 %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @AdaptRndCrWeight, align 4
  br label %56

56:                                               ; preds = %380, %18
  %.02 = phi i32 [ 0, %18 ], [ %381, %380 ]
  %57 = call i32 @imax(i32 noundef %28, i32 noundef %37)
  %58 = icmp slt i32 %.02, %57
  br i1 %58, label %59, label %382

59:                                               ; preds = %56
  %60 = add nuw nsw i32 %.02, 4
  br label %61

61:                                               ; preds = %377, %59
  %.01 = phi i32 [ 0, %59 ], [ %378, %377 ]
  %62 = icmp ult i32 %.01, 4
  br i1 %62, label %63, label %379

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %374, %63
  %.0 = phi i32 [ 0, %63 ], [ %375, %374 ]
  %65 = icmp ult i32 %.0, 4
  br i1 %65, label %66, label %376

66:                                               ; preds = %64
  %67 = shl i32 %.01, 2
  %68 = add nsw i32 %67, %.0
  %69 = icmp eq i32 %19, 2
  br i1 %69, label %70, label %130

70:                                               ; preds = %66
  %71 = load i16**, i16*** @OffsetList4x4, align 8
  %72 = load i16*, i16** %71, align 8
  %73 = sext i32 %68 to i64
  %74 = getelementptr inbounds i16, i16* %72, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = shl i32 %76, %60
  %78 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %79 = getelementptr inbounds i32***, i32**** %78, i64 1
  %80 = load i32***, i32**** %79, align 8
  %81 = zext i32 %.02 to i64
  %82 = getelementptr inbounds i32**, i32*** %80, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = zext i32 %.01 to i64
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = zext i32 %.0 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %77, i32* %88, align 4
  %89 = load i16**, i16*** @OffsetList4x4, align 8
  %90 = getelementptr inbounds i16*, i16** %89, i64 1
  %91 = load i16*, i16** %90, align 8
  %92 = sext i32 %68 to i64
  %93 = getelementptr inbounds i16, i16* %91, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = shl i32 %95, %60
  %97 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %98 = load i32****, i32***** %97, align 8
  %99 = getelementptr inbounds i32***, i32**** %98, i64 1
  %100 = load i32***, i32**** %99, align 8
  %101 = zext i32 %.02 to i64
  %102 = getelementptr inbounds i32**, i32*** %100, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = zext i32 %.01 to i64
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = zext i32 %.0 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %96, i32* %108, align 4
  %109 = load i16**, i16*** @OffsetList4x4, align 8
  %110 = getelementptr inbounds i16*, i16** %109, i64 2
  %111 = load i16*, i16** %110, align 8
  %112 = sext i32 %68 to i64
  %113 = getelementptr inbounds i16, i16* %111, i64 %112
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = shl i32 %115, %60
  %117 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %118 = getelementptr inbounds i32****, i32***** %117, i64 1
  %119 = load i32****, i32***** %118, align 8
  %120 = getelementptr inbounds i32***, i32**** %119, i64 1
  %121 = load i32***, i32**** %120, align 8
  %122 = zext i32 %.02 to i64
  %123 = getelementptr inbounds i32**, i32*** %121, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = zext i32 %.01 to i64
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = zext i32 %.0 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %116, i32* %129, align 4
  br label %255

130:                                              ; preds = %66
  %131 = icmp eq i32 %19, 1
  br i1 %131, label %132, label %193

132:                                              ; preds = %130
  %133 = load i16**, i16*** @OffsetList4x4, align 8
  %134 = getelementptr inbounds i16*, i16** %133, i64 6
  %135 = load i16*, i16** %134, align 8
  %136 = sext i32 %68 to i64
  %137 = getelementptr inbounds i16, i16* %135, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = shl i32 %139, %60
  %141 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %142 = getelementptr inbounds i32***, i32**** %141, i64 1
  %143 = load i32***, i32**** %142, align 8
  %144 = zext i32 %.02 to i64
  %145 = getelementptr inbounds i32**, i32*** %143, i64 %144
  %146 = load i32**, i32*** %145, align 8
  %147 = zext i32 %.01 to i64
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = zext i32 %.0 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32 %140, i32* %151, align 4
  %152 = load i16**, i16*** @OffsetList4x4, align 8
  %153 = getelementptr inbounds i16*, i16** %152, i64 7
  %154 = load i16*, i16** %153, align 8
  %155 = sext i32 %68 to i64
  %156 = getelementptr inbounds i16, i16* %154, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = shl i32 %158, %60
  %160 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %161 = load i32****, i32***** %160, align 8
  %162 = getelementptr inbounds i32***, i32**** %161, i64 1
  %163 = load i32***, i32**** %162, align 8
  %164 = zext i32 %.02 to i64
  %165 = getelementptr inbounds i32**, i32*** %163, i64 %164
  %166 = load i32**, i32*** %165, align 8
  %167 = zext i32 %.01 to i64
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = zext i32 %.0 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %159, i32* %171, align 4
  %172 = load i16**, i16*** @OffsetList4x4, align 8
  %173 = getelementptr inbounds i16*, i16** %172, i64 8
  %174 = load i16*, i16** %173, align 8
  %175 = sext i32 %68 to i64
  %176 = getelementptr inbounds i16, i16* %174, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  %179 = shl i32 %178, %60
  %180 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %181 = getelementptr inbounds i32****, i32***** %180, i64 1
  %182 = load i32****, i32***** %181, align 8
  %183 = getelementptr inbounds i32***, i32**** %182, i64 1
  %184 = load i32***, i32**** %183, align 8
  %185 = zext i32 %.02 to i64
  %186 = getelementptr inbounds i32**, i32*** %184, i64 %185
  %187 = load i32**, i32*** %186, align 8
  %188 = zext i32 %.01 to i64
  %189 = getelementptr inbounds i32*, i32** %187, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = zext i32 %.0 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 %179, i32* %192, align 4
  br label %254

193:                                              ; preds = %130
  %194 = load i16**, i16*** @OffsetList4x4, align 8
  %195 = getelementptr inbounds i16*, i16** %194, i64 3
  %196 = load i16*, i16** %195, align 8
  %197 = sext i32 %68 to i64
  %198 = getelementptr inbounds i16, i16* %196, i64 %197
  %199 = load i16, i16* %198, align 2
  %200 = sext i16 %199 to i32
  %201 = shl i32 %200, %60
  %202 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %203 = getelementptr inbounds i32***, i32**** %202, i64 1
  %204 = load i32***, i32**** %203, align 8
  %205 = zext i32 %.02 to i64
  %206 = getelementptr inbounds i32**, i32*** %204, i64 %205
  %207 = load i32**, i32*** %206, align 8
  %208 = zext i32 %.01 to i64
  %209 = getelementptr inbounds i32*, i32** %207, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = zext i32 %.0 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %201, i32* %212, align 4
  %213 = load i16**, i16*** @OffsetList4x4, align 8
  %214 = getelementptr inbounds i16*, i16** %213, i64 4
  %215 = load i16*, i16** %214, align 8
  %216 = sext i32 %68 to i64
  %217 = getelementptr inbounds i16, i16* %215, i64 %216
  %218 = load i16, i16* %217, align 2
  %219 = sext i16 %218 to i32
  %220 = shl i32 %219, %60
  %221 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %222 = load i32****, i32***** %221, align 8
  %223 = getelementptr inbounds i32***, i32**** %222, i64 1
  %224 = load i32***, i32**** %223, align 8
  %225 = zext i32 %.02 to i64
  %226 = getelementptr inbounds i32**, i32*** %224, i64 %225
  %227 = load i32**, i32*** %226, align 8
  %228 = zext i32 %.01 to i64
  %229 = getelementptr inbounds i32*, i32** %227, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = zext i32 %.0 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %220, i32* %232, align 4
  %233 = load i16**, i16*** @OffsetList4x4, align 8
  %234 = getelementptr inbounds i16*, i16** %233, i64 5
  %235 = load i16*, i16** %234, align 8
  %236 = sext i32 %68 to i64
  %237 = getelementptr inbounds i16, i16* %235, i64 %236
  %238 = load i16, i16* %237, align 2
  %239 = sext i16 %238 to i32
  %240 = shl i32 %239, %60
  %241 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %242 = getelementptr inbounds i32****, i32***** %241, i64 1
  %243 = load i32****, i32***** %242, align 8
  %244 = getelementptr inbounds i32***, i32**** %243, i64 1
  %245 = load i32***, i32**** %244, align 8
  %246 = zext i32 %.02 to i64
  %247 = getelementptr inbounds i32**, i32*** %245, i64 %246
  %248 = load i32**, i32*** %247, align 8
  %249 = zext i32 %.01 to i64
  %250 = getelementptr inbounds i32*, i32** %248, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = zext i32 %.0 to i64
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %240, i32* %253, align 4
  br label %254

254:                                              ; preds = %193, %132
  br label %255

255:                                              ; preds = %254, %70
  %256 = icmp eq i32 %19, 1
  br i1 %256, label %257, label %315

257:                                              ; preds = %255
  %258 = load i16**, i16*** @OffsetList4x4, align 8
  %259 = getelementptr inbounds i16*, i16** %258, i64 12
  %260 = load i16*, i16** %259, align 8
  %261 = sext i32 %68 to i64
  %262 = getelementptr inbounds i16, i16* %260, i64 %261
  %263 = load i16, i16* %262, align 2
  %264 = sext i16 %263 to i32
  %265 = shl i32 %264, %60
  %266 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %267 = load i32***, i32**** %266, align 8
  %268 = zext i32 %.02 to i64
  %269 = getelementptr inbounds i32**, i32*** %267, i64 %268
  %270 = load i32**, i32*** %269, align 8
  %271 = zext i32 %.01 to i64
  %272 = getelementptr inbounds i32*, i32** %270, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = zext i32 %.0 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %265, i32* %275, align 4
  %276 = load i16**, i16*** @OffsetList4x4, align 8
  %277 = getelementptr inbounds i16*, i16** %276, i64 13
  %278 = load i16*, i16** %277, align 8
  %279 = sext i32 %68 to i64
  %280 = getelementptr inbounds i16, i16* %278, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = sext i16 %281 to i32
  %283 = shl i32 %282, %60
  %284 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %285 = load i32****, i32***** %284, align 8
  %286 = load i32***, i32**** %285, align 8
  %287 = zext i32 %.02 to i64
  %288 = getelementptr inbounds i32**, i32*** %286, i64 %287
  %289 = load i32**, i32*** %288, align 8
  %290 = zext i32 %.01 to i64
  %291 = getelementptr inbounds i32*, i32** %289, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = zext i32 %.0 to i64
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 %283, i32* %294, align 4
  %295 = load i16**, i16*** @OffsetList4x4, align 8
  %296 = getelementptr inbounds i16*, i16** %295, i64 14
  %297 = load i16*, i16** %296, align 8
  %298 = sext i32 %68 to i64
  %299 = getelementptr inbounds i16, i16* %297, i64 %298
  %300 = load i16, i16* %299, align 2
  %301 = sext i16 %300 to i32
  %302 = shl i32 %301, %60
  %303 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %304 = getelementptr inbounds i32****, i32***** %303, i64 1
  %305 = load i32****, i32***** %304, align 8
  %306 = load i32***, i32**** %305, align 8
  %307 = zext i32 %.02 to i64
  %308 = getelementptr inbounds i32**, i32*** %306, i64 %307
  %309 = load i32**, i32*** %308, align 8
  %310 = zext i32 %.01 to i64
  %311 = getelementptr inbounds i32*, i32** %309, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = zext i32 %.0 to i64
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32 %302, i32* %314, align 4
  br label %373

315:                                              ; preds = %255
  %316 = load i16**, i16*** @OffsetList4x4, align 8
  %317 = getelementptr inbounds i16*, i16** %316, i64 9
  %318 = load i16*, i16** %317, align 8
  %319 = sext i32 %68 to i64
  %320 = getelementptr inbounds i16, i16* %318, i64 %319
  %321 = load i16, i16* %320, align 2
  %322 = sext i16 %321 to i32
  %323 = shl i32 %322, %60
  %324 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %325 = load i32***, i32**** %324, align 8
  %326 = zext i32 %.02 to i64
  %327 = getelementptr inbounds i32**, i32*** %325, i64 %326
  %328 = load i32**, i32*** %327, align 8
  %329 = zext i32 %.01 to i64
  %330 = getelementptr inbounds i32*, i32** %328, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = zext i32 %.0 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32 %323, i32* %333, align 4
  %334 = load i16**, i16*** @OffsetList4x4, align 8
  %335 = getelementptr inbounds i16*, i16** %334, i64 10
  %336 = load i16*, i16** %335, align 8
  %337 = sext i32 %68 to i64
  %338 = getelementptr inbounds i16, i16* %336, i64 %337
  %339 = load i16, i16* %338, align 2
  %340 = sext i16 %339 to i32
  %341 = shl i32 %340, %60
  %342 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %343 = load i32****, i32***** %342, align 8
  %344 = load i32***, i32**** %343, align 8
  %345 = zext i32 %.02 to i64
  %346 = getelementptr inbounds i32**, i32*** %344, i64 %345
  %347 = load i32**, i32*** %346, align 8
  %348 = zext i32 %.01 to i64
  %349 = getelementptr inbounds i32*, i32** %347, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = zext i32 %.0 to i64
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32 %341, i32* %352, align 4
  %353 = load i16**, i16*** @OffsetList4x4, align 8
  %354 = getelementptr inbounds i16*, i16** %353, i64 11
  %355 = load i16*, i16** %354, align 8
  %356 = sext i32 %68 to i64
  %357 = getelementptr inbounds i16, i16* %355, i64 %356
  %358 = load i16, i16* %357, align 2
  %359 = sext i16 %358 to i32
  %360 = shl i32 %359, %60
  %361 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %362 = getelementptr inbounds i32****, i32***** %361, i64 1
  %363 = load i32****, i32***** %362, align 8
  %364 = load i32***, i32**** %363, align 8
  %365 = zext i32 %.02 to i64
  %366 = getelementptr inbounds i32**, i32*** %364, i64 %365
  %367 = load i32**, i32*** %366, align 8
  %368 = zext i32 %.01 to i64
  %369 = getelementptr inbounds i32*, i32** %367, i64 %368
  %370 = load i32*, i32** %369, align 8
  %371 = zext i32 %.0 to i64
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  store i32 %360, i32* %372, align 4
  br label %373

373:                                              ; preds = %315, %257
  br label %374

374:                                              ; preds = %373
  %375 = add nuw nsw i32 %.0, 1
  br label %64, !llvm.loop !14

376:                                              ; preds = %64
  br label %377

377:                                              ; preds = %376
  %378 = add nuw nsw i32 %.01, 1
  br label %61, !llvm.loop !15

379:                                              ; preds = %61
  br label %380

380:                                              ; preds = %379
  %381 = add nuw nsw i32 %.02, 1
  br label %56, !llvm.loop !16

382:                                              ; preds = %56
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @CalculateOffset8Param() #8 {
  %1 = load i32*, i32** @qp_per_matrix, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i64 0, i32 144
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 51
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %1, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  %10 = load i32*, i32** @qp_per_matrix, align 8
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i64 0, i32 145
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 51
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  br label %19

19:                                               ; preds = %151, %0
  %.02 = phi i32 [ 0, %0 ], [ %152, %151 ]
  %20 = call i32 @imax(i32 noundef %9, i32 noundef %18)
  %21 = icmp slt i32 %.02, %20
  br i1 %21, label %22, label %153

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %.02, 5
  br label %24

24:                                               ; preds = %148, %22
  %.01 = phi i32 [ 0, %22 ], [ %149, %148 ]
  %25 = icmp ult i32 %.01, 8
  br i1 %25, label %26, label %150

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %145, %26
  %.0 = phi i32 [ 0, %26 ], [ %146, %145 ]
  %28 = icmp ult i32 %.0, 8
  br i1 %28, label %29, label %147

29:                                               ; preds = %27
  %30 = shl i32 %.01, 3
  %31 = add nsw i32 %30, %.0
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i64 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load i16**, i16*** @OffsetList8x8, align 8
  %38 = load i16*, i16** %37, align 8
  %39 = sext i32 %31 to i64
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = shl i32 %42, %23
  %44 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %45 = getelementptr inbounds i32***, i32**** %44, i64 1
  %46 = load i32***, i32**** %45, align 8
  %47 = zext i32 %.02 to i64
  %48 = getelementptr inbounds i32**, i32*** %46, i64 %47
  %49 = load i32**, i32*** %48, align 8
  %50 = zext i32 %.01 to i64
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = zext i32 %.0 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %43, i32* %54, align 4
  br label %101

55:                                               ; preds = %29
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i64 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i16**, i16*** @OffsetList8x8, align 8
  %62 = getelementptr inbounds i16*, i16** %61, i64 2
  %63 = load i16*, i16** %62, align 8
  %64 = sext i32 %31 to i64
  %65 = getelementptr inbounds i16, i16* %63, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = shl i32 %67, %23
  %69 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %70 = getelementptr inbounds i32***, i32**** %69, i64 1
  %71 = load i32***, i32**** %70, align 8
  %72 = zext i32 %.02 to i64
  %73 = getelementptr inbounds i32**, i32*** %71, i64 %72
  %74 = load i32**, i32*** %73, align 8
  %75 = zext i32 %.01 to i64
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = zext i32 %.0 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %68, i32* %79, align 4
  br label %100

80:                                               ; preds = %55
  %81 = load i16**, i16*** @OffsetList8x8, align 8
  %82 = getelementptr inbounds i16*, i16** %81, i64 1
  %83 = load i16*, i16** %82, align 8
  %84 = sext i32 %31 to i64
  %85 = getelementptr inbounds i16, i16* %83, i64 %84
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = shl i32 %87, %23
  %89 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %90 = getelementptr inbounds i32***, i32**** %89, i64 1
  %91 = load i32***, i32**** %90, align 8
  %92 = zext i32 %.02 to i64
  %93 = getelementptr inbounds i32**, i32*** %91, i64 %92
  %94 = load i32**, i32*** %93, align 8
  %95 = zext i32 %.01 to i64
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = zext i32 %.0 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %88, i32* %99, align 4
  br label %100

100:                                              ; preds = %80, %60
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i64 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load i16**, i16*** @OffsetList8x8, align 8
  %108 = getelementptr inbounds i16*, i16** %107, i64 4
  %109 = load i16*, i16** %108, align 8
  %110 = sext i32 %31 to i64
  %111 = getelementptr inbounds i16, i16* %109, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = shl i32 %113, %23
  %115 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %116 = load i32***, i32**** %115, align 8
  %117 = zext i32 %.02 to i64
  %118 = getelementptr inbounds i32**, i32*** %116, i64 %117
  %119 = load i32**, i32*** %118, align 8
  %120 = zext i32 %.01 to i64
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = zext i32 %.0 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %114, i32* %124, align 4
  br label %144

125:                                              ; preds = %101
  %126 = load i16**, i16*** @OffsetList8x8, align 8
  %127 = getelementptr inbounds i16*, i16** %126, i64 3
  %128 = load i16*, i16** %127, align 8
  %129 = sext i32 %31 to i64
  %130 = getelementptr inbounds i16, i16* %128, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = shl i32 %132, %23
  %134 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %135 = load i32***, i32**** %134, align 8
  %136 = zext i32 %.02 to i64
  %137 = getelementptr inbounds i32**, i32*** %135, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = zext i32 %.01 to i64
  %140 = getelementptr inbounds i32*, i32** %138, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = zext i32 %.0 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %133, i32* %143, align 4
  br label %144

144:                                              ; preds = %125, %106
  br label %145

145:                                              ; preds = %144
  %146 = add nuw nsw i32 %.0, 1
  br label %27, !llvm.loop !17

147:                                              ; preds = %27
  br label %148

148:                                              ; preds = %147
  %149 = add nuw nsw i32 %.01, 1
  br label %24, !llvm.loop !18

150:                                              ; preds = %24
  br label %151

151:                                              ; preds = %150
  %152 = add nuw nsw i32 %.02, 1
  br label %19, !llvm.loop !19

153:                                              ; preds = %19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
