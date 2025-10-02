; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/q_offsets.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 172
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 6, %6
  %8 = add nsw i32 3, %7
  %9 = sub nsw i32 %8, 0
  %10 = sdiv i32 %9, 6
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 173
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 6, %14
  %16 = add nsw i32 3, %15
  %17 = sub nsw i32 %16, 0
  %18 = sdiv i32 %17, 6
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @imax(i32 noundef %20, i32 noundef %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @get_mem4Dint(i32***** noundef @LevelOffset4x4Luma, i32 noundef 2, i32 noundef %23, i32 noundef 4, i32 noundef 4)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @get_mem5Dint(i32****** noundef @LevelOffset4x4Chroma, i32 noundef 2, i32 noundef 2, i32 noundef %25, i32 noundef 4, i32 noundef 4)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @get_mem4Dint(i32***** noundef @LevelOffset8x8Luma, i32 noundef 2, i32 noundef %27, i32 noundef 8, i32 noundef 8)
  %29 = call i32 @get_mem2Dshort(i16*** noundef @OffsetList4x4input, i32 noundef 15, i32 noundef 16)
  %30 = call i32 @get_mem2Dshort(i16*** noundef @OffsetList8x8input, i32 noundef 5, i32 noundef 64)
  %31 = call i32 @get_mem2Dshort(i16*** noundef @OffsetList4x4, i32 noundef 15, i32 noundef 16)
  %32 = call i32 @get_mem2Dshort(i16*** noundef @OffsetList8x8, i32 noundef 5, i32 noundef 64)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @imax(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

declare dso_local i32 @get_mem4Dint(i32***** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @get_mem5Dint(i32****** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @get_mem2Dshort(i16*** noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_QOffsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 172
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 6, %6
  %8 = add nsw i32 3, %7
  %9 = sub nsw i32 %8, 0
  %10 = sdiv i32 %9, 6
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 173
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 6, %14
  %16 = add nsw i32 3, %15
  %17 = sub nsw i32 %16, 0
  %18 = sdiv i32 %17, 6
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @imax(i32 noundef %20, i32 noundef %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %24 = load i32, i32* %3, align 4
  call void @free_mem4Dint(i32**** noundef %23, i32 noundef 2, i32 noundef %24)
  %25 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %26 = load i32, i32* %3, align 4
  call void @free_mem5Dint(i32***** noundef %25, i32 noundef 2, i32 noundef 2, i32 noundef %26)
  %27 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %28 = load i32, i32* %3, align 4
  call void @free_mem4Dint(i32**** noundef %27, i32 noundef 2, i32 noundef %28)
  %29 = load i16**, i16*** @OffsetList8x8, align 8
  call void @free_mem2Dshort(i16** noundef %29)
  %30 = load i16**, i16*** @OffsetList4x4, align 8
  call void @free_mem2Dshort(i16** noundef %30)
  %31 = load i16**, i16*** @OffsetList8x8input, align 8
  call void @free_mem2Dshort(i16** noundef %31)
  %32 = load i16**, i16*** @OffsetList4x4input, align 8
  call void @free_mem2Dshort(i16** noundef %32)
  ret void
}

declare dso_local void @free_mem4Dint(i32**** noundef, i32 noundef, i32 noundef) #1

declare dso_local void @free_mem5Dint(i32***** noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @free_mem2Dshort(i16** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CheckOffsetParameterName(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [15 x [24 x i8]], [15 x [24 x i8]]* @OffsetType4x4, i64 0, i64 %10
  %12 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 15
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i1 [ false, %8 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [15 x [24 x i8]], [15 x [24 x i8]]* @OffsetType4x4, i64 0, i64 %21
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %22, i64 0, i64 0
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* noundef %23, i8* noundef %24) #5
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29
  br label %8, !llvm.loop !4

33:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %59, %33
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x [24 x i8]], [5 x [24 x i8]]* @OffsetType8x8, i64 0, i64 %37
  %39 = getelementptr inbounds [24 x i8], [24 x i8]* %38, i64 0, i64 0
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 5
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %60

46:                                               ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x [24 x i8]], [5 x [24 x i8]]* @OffsetType8x8, i64 0, i64 %48
  %50 = getelementptr inbounds [24 x i8], [24 x i8]* %49, i64 0, i64 0
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcmp(i8* noundef %50, i8* noundef %51) #5
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56
  br label %35, !llvm.loop !6

60:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ParseQOffsetMatrix(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1000 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %99, %2
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %85 [
    i32 13, label %32
    i32 35, label %35
    i32 10, label %52
    i32 32, label %55
    i32 9, label %55
    i32 34, label %65
    i32 44, label %82
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %99

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %48, %35
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  br label %37, !llvm.loop !7

51:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %99

52:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  store i8 0, i8* %53, align 1
  br label %99

55:                                               ; preds = %28, %28
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  br label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 0, i8* %62, align 1
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %99

65:                                               ; preds = %28
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 0, i8* %66, align 1
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %74
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = xor i32 %76, -1
  store i32 %77, i32* %9, align 4
  br label %79

78:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %99

82:                                               ; preds = %28
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %99

85:                                               ; preds = %28
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %92
  store i8* %89, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = xor i32 %94, -1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %88, %85
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %96, %82, %79, %64, %52, %51, %32
  br label %24, !llvm.loop !8

100:                                              ; preds = %24
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %205, %100
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %209

107:                                              ; preds = %103
  store i32 0, i32* %17, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @CheckOffsetParameterName(i8* noundef %113, i32* noundef %16)
  store i32 %114, i32* %6, align 4
  %115 = icmp sgt i32 0, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* noundef %122) #6
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300)
  br label %124

124:                                              ; preds = %116, %107
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef %132) #5
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0)) #6
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300)
  br label %137

137:                                              ; preds = %135, %124
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %137
  store i32 16, i32* %15, align 4
  %143 = load i16**, i16*** @OffsetList4x4input, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16*, i16** %143, i64 %145
  %147 = load i16*, i16** %146, align 8
  store i16* %147, i16** %18, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* @offset4x4_check, i64 0, i64 %149
  store i32 1, i32* %150, align 4
  br label %160

151:                                              ; preds = %137
  store i32 64, i32* %15, align 4
  %152 = load i16**, i16*** @OffsetList8x8input, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16*, i16** %152, i64 %154
  %156 = load i16*, i16** %155, align 8
  store i16* %156, i16** %18, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* @offset8x8_check, i64 0, i64 %158
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %142
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %197, %160
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %161
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %173, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* noundef %12) #6
  %175 = icmp ne i32 1, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %165
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* noundef %180, i8* noundef %188) #6
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 300)
  br label %190

190:                                              ; preds = %176, %165
  %191 = load i32, i32* %12, align 4
  %192 = trunc i32 %191 to i16
  %193 = load i16*, i16** %18, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %193, i64 %195
  store i16 %192, i16* %196, align 2
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %161, !llvm.loop !9

200:                                              ; preds = %161
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %17, align 4
  %204 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %13, align 4
  br label %103, !llvm.loop !10

209:                                              ; preds = %103
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

declare dso_local void @error(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init_QOffsetMatrix() #0 {
  %1 = alloca i8*, align 8
  call void @allocate_QOffsets()
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 184
  %4 = load i32, i32* %3, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %0
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 183
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9)
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 183
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %14 = call i8* @GetConfigFileContent(i8* noundef %13, i32 noundef 0)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* noundef %19) #5
  %21 = trunc i64 %20 to i32
  call void @ParseQOffsetMatrix(i8* noundef %18, i32 noundef %21)
  br label %26

22:                                               ; preds = %6
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0))
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 184
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i8*, i8** %1, align 8
  call void @free(i8* noundef %28) #6
  br label %29

29:                                               ; preds = %26, %0
  call void @InitOffsetParam()
  ret void
}

declare dso_local i8* @GetConfigFileContent(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitOffsetParam() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 184
  %4 = load i32, i32* %3, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load i16**, i16*** @OffsetList4x4, align 8
  %8 = getelementptr inbounds i16*, i16** %7, i64 0
  %9 = load i16*, i16** %8, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 0
  %11 = bitcast i16* %10 to i8*
  %12 = load i16**, i16*** @OffsetList4x4input, align 8
  %13 = getelementptr inbounds i16*, i16** %12, i64 0
  %14 = load i16*, i16** %13, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 0
  %16 = bitcast i16* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %11, i8* align 2 %16, i64 480, i1 false)
  %17 = load i16**, i16*** @OffsetList8x8, align 8
  %18 = getelementptr inbounds i16*, i16** %17, i64 0
  %19 = load i16*, i16** %18, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 0
  %21 = bitcast i16* %20 to i8*
  %22 = load i16**, i16*** @OffsetList8x8input, align 8
  %23 = getelementptr inbounds i16*, i16** %22, i64 0
  %24 = load i16*, i16** %23, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 0
  %26 = bitcast i16* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %21, i8* align 2 %26, i64 640, i1 false)
  br label %103

27:                                               ; preds = %0
  %28 = load i16**, i16*** @OffsetList4x4, align 8
  %29 = getelementptr inbounds i16*, i16** %28, i64 0
  %30 = load i16*, i16** %29, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  %32 = bitcast i16* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %32, i8* align 16 bitcast ([16 x i16]* @Offset_intra_default_intra to i8*), i64 32, i1 false)
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %44, %27
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i16**, i16*** @OffsetList4x4, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16*, i16** %37, i64 %39
  %41 = load i16*, i16** %40, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  %43 = bitcast i16* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %43, i8* align 16 bitcast ([16 x i16]* @Offset_intra_default_chroma to i8*), i64 32, i1 false)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %33, !llvm.loop !11

47:                                               ; preds = %33
  store i32 3, i32* %1, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %1, align 4
  %50 = icmp slt i32 %49, 9
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i16**, i16*** @OffsetList4x4, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16*, i16** %52, i64 %54
  %56 = load i16*, i16** %55, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 0
  %58 = bitcast i16* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %58, i8* align 16 bitcast ([16 x i16]* @Offset_intra_default_inter to i8*), i64 32, i1 false)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %48, !llvm.loop !12

62:                                               ; preds = %48
  store i32 9, i32* %1, align 4
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i32, i32* %1, align 4
  %65 = icmp slt i32 %64, 15
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i16**, i16*** @OffsetList4x4, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16*, i16** %67, i64 %69
  %71 = load i16*, i16** %70, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 0
  %73 = bitcast i16* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %73, i8* align 16 bitcast ([16 x i16]* @Offset_inter_default to i8*), i64 32, i1 false)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %63, !llvm.loop !13

77:                                               ; preds = %63
  %78 = load i16**, i16*** @OffsetList8x8, align 8
  %79 = getelementptr inbounds i16*, i16** %78, i64 0
  %80 = load i16*, i16** %79, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 0
  %82 = bitcast i16* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %82, i8* align 16 bitcast ([64 x i16]* @Offset8_intra_default_intra to i8*), i64 128, i1 false)
  %83 = load i16**, i16*** @OffsetList8x8, align 8
  %84 = getelementptr inbounds i16*, i16** %83, i64 1
  %85 = load i16*, i16** %84, align 8
  %86 = getelementptr inbounds i16, i16* %85, i64 0
  %87 = bitcast i16* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %87, i8* align 16 bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i1 false)
  %88 = load i16**, i16*** @OffsetList8x8, align 8
  %89 = getelementptr inbounds i16*, i16** %88, i64 2
  %90 = load i16*, i16** %89, align 8
  %91 = getelementptr inbounds i16, i16* %90, i64 0
  %92 = bitcast i16* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %92, i8* align 16 bitcast ([64 x i16]* @Offset8_intra_default_inter to i8*), i64 128, i1 false)
  %93 = load i16**, i16*** @OffsetList8x8, align 8
  %94 = getelementptr inbounds i16*, i16** %93, i64 3
  %95 = load i16*, i16** %94, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 0
  %97 = bitcast i16* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %97, i8* align 16 bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i1 false)
  %98 = load i16**, i16*** @OffsetList8x8, align 8
  %99 = getelementptr inbounds i16*, i16** %98, i64 4
  %100 = load i16*, i16** %99, align 8
  %101 = getelementptr inbounds i16, i16* %100, i64 0
  %102 = bitcast i16* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %102, i8* align 16 bitcast ([64 x i16]* @Offset8_inter_default to i8*), i64 128, i1 false)
  br label %103

103:                                              ; preds = %77, %6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @CalculateOffsetParam() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %26

14:                                               ; preds = %0
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ 2, %13 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** @qp_per_matrix, align 8
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 144
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 51, %31
  %33 = sub nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** @qp_per_matrix, align 8
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 145
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 51, %41
  %43 = sub nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %49 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 188
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 122
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %49, i64 0, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %56, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* @AdaptRndWeight, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 189
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 122
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %62, i64 0, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* @AdaptRndCrWeight, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %499, %26
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @imax(i32 noundef %76, i32 noundef %77)
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %502

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 15, %81
  %83 = sub nsw i32 %82, 11
  store i32 %83, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %495, %80
  %85 = load i32, i32* %2, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %498

87:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %491, %87
  %89 = load i32, i32* %1, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %494

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = shl i32 %92, 2
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %175

98:                                               ; preds = %91
  %99 = load i16**, i16*** @OffsetList4x4, align 8
  %100 = getelementptr inbounds i16*, i16** %99, i64 0
  %101 = load i16*, i16** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = shl i32 %106, %107
  %109 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %110 = getelementptr inbounds i32***, i32**** %109, i64 1
  %111 = load i32***, i32**** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32**, i32*** %111, i64 %113
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %108, i32* %122, align 4
  %123 = load i16**, i16*** @OffsetList4x4, align 8
  %124 = getelementptr inbounds i16*, i16** %123, i64 1
  %125 = load i16*, i16** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %125, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = load i32, i32* %5, align 4
  %132 = shl i32 %130, %131
  %133 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %134 = getelementptr inbounds i32****, i32***** %133, i64 0
  %135 = load i32****, i32***** %134, align 8
  %136 = getelementptr inbounds i32***, i32**** %135, i64 1
  %137 = load i32***, i32**** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32**, i32*** %137, i64 %139
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %132, i32* %148, align 4
  %149 = load i16**, i16*** @OffsetList4x4, align 8
  %150 = getelementptr inbounds i16*, i16** %149, i64 2
  %151 = load i16*, i16** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, i16* %151, i64 %153
  %155 = load i16, i16* %154, align 2
  %156 = sext i16 %155 to i32
  %157 = load i32, i32* %5, align 4
  %158 = shl i32 %156, %157
  %159 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %160 = getelementptr inbounds i32****, i32***** %159, i64 1
  %161 = load i32****, i32***** %160, align 8
  %162 = getelementptr inbounds i32***, i32**** %161, i64 1
  %163 = load i32***, i32**** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32**, i32*** %163, i64 %165
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %158, i32* %174, align 4
  br label %333

175:                                              ; preds = %91
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %255

178:                                              ; preds = %175
  %179 = load i16**, i16*** @OffsetList4x4, align 8
  %180 = getelementptr inbounds i16*, i16** %179, i64 6
  %181 = load i16*, i16** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, i16* %181, i64 %183
  %185 = load i16, i16* %184, align 2
  %186 = sext i16 %185 to i32
  %187 = load i32, i32* %5, align 4
  %188 = shl i32 %186, %187
  %189 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %190 = getelementptr inbounds i32***, i32**** %189, i64 1
  %191 = load i32***, i32**** %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32**, i32*** %191, i64 %193
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %2, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %1, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %188, i32* %202, align 4
  %203 = load i16**, i16*** @OffsetList4x4, align 8
  %204 = getelementptr inbounds i16*, i16** %203, i64 7
  %205 = load i16*, i16** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i16, i16* %205, i64 %207
  %209 = load i16, i16* %208, align 2
  %210 = sext i16 %209 to i32
  %211 = load i32, i32* %5, align 4
  %212 = shl i32 %210, %211
  %213 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %214 = getelementptr inbounds i32****, i32***** %213, i64 0
  %215 = load i32****, i32***** %214, align 8
  %216 = getelementptr inbounds i32***, i32**** %215, i64 1
  %217 = load i32***, i32**** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32**, i32*** %217, i64 %219
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %2, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %212, i32* %228, align 4
  %229 = load i16**, i16*** @OffsetList4x4, align 8
  %230 = getelementptr inbounds i16*, i16** %229, i64 8
  %231 = load i16*, i16** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i16, i16* %231, i64 %233
  %235 = load i16, i16* %234, align 2
  %236 = sext i16 %235 to i32
  %237 = load i32, i32* %5, align 4
  %238 = shl i32 %236, %237
  %239 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %240 = getelementptr inbounds i32****, i32***** %239, i64 1
  %241 = load i32****, i32***** %240, align 8
  %242 = getelementptr inbounds i32***, i32**** %241, i64 1
  %243 = load i32***, i32**** %242, align 8
  %244 = load i32, i32* %3, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32**, i32*** %243, i64 %245
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %2, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %1, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %238, i32* %254, align 4
  br label %332

255:                                              ; preds = %175
  %256 = load i16**, i16*** @OffsetList4x4, align 8
  %257 = getelementptr inbounds i16*, i16** %256, i64 3
  %258 = load i16*, i16** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i16, i16* %258, i64 %260
  %262 = load i16, i16* %261, align 2
  %263 = sext i16 %262 to i32
  %264 = load i32, i32* %5, align 4
  %265 = shl i32 %263, %264
  %266 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %267 = getelementptr inbounds i32***, i32**** %266, i64 1
  %268 = load i32***, i32**** %267, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32**, i32*** %268, i64 %270
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %1, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %265, i32* %279, align 4
  %280 = load i16**, i16*** @OffsetList4x4, align 8
  %281 = getelementptr inbounds i16*, i16** %280, i64 4
  %282 = load i16*, i16** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i16, i16* %282, i64 %284
  %286 = load i16, i16* %285, align 2
  %287 = sext i16 %286 to i32
  %288 = load i32, i32* %5, align 4
  %289 = shl i32 %287, %288
  %290 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %291 = getelementptr inbounds i32****, i32***** %290, i64 0
  %292 = load i32****, i32***** %291, align 8
  %293 = getelementptr inbounds i32***, i32**** %292, i64 1
  %294 = load i32***, i32**** %293, align 8
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32**, i32*** %294, i64 %296
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %2, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %1, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %289, i32* %305, align 4
  %306 = load i16**, i16*** @OffsetList4x4, align 8
  %307 = getelementptr inbounds i16*, i16** %306, i64 5
  %308 = load i16*, i16** %307, align 8
  %309 = load i32, i32* %4, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i16, i16* %308, i64 %310
  %312 = load i16, i16* %311, align 2
  %313 = sext i16 %312 to i32
  %314 = load i32, i32* %5, align 4
  %315 = shl i32 %313, %314
  %316 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %317 = getelementptr inbounds i32****, i32***** %316, i64 1
  %318 = load i32****, i32***** %317, align 8
  %319 = getelementptr inbounds i32***, i32**** %318, i64 1
  %320 = load i32***, i32**** %319, align 8
  %321 = load i32, i32* %3, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32**, i32*** %320, i64 %322
  %324 = load i32**, i32*** %323, align 8
  %325 = load i32, i32* %2, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %324, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %1, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %315, i32* %331, align 4
  br label %332

332:                                              ; preds = %255, %178
  br label %333

333:                                              ; preds = %332, %98
  %334 = load i32, i32* %6, align 4
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %413

336:                                              ; preds = %333
  %337 = load i16**, i16*** @OffsetList4x4, align 8
  %338 = getelementptr inbounds i16*, i16** %337, i64 12
  %339 = load i16*, i16** %338, align 8
  %340 = load i32, i32* %4, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, i16* %339, i64 %341
  %343 = load i16, i16* %342, align 2
  %344 = sext i16 %343 to i32
  %345 = load i32, i32* %5, align 4
  %346 = shl i32 %344, %345
  %347 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %348 = getelementptr inbounds i32***, i32**** %347, i64 0
  %349 = load i32***, i32**** %348, align 8
  %350 = load i32, i32* %3, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32**, i32*** %349, i64 %351
  %353 = load i32**, i32*** %352, align 8
  %354 = load i32, i32* %2, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %1, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32 %346, i32* %360, align 4
  %361 = load i16**, i16*** @OffsetList4x4, align 8
  %362 = getelementptr inbounds i16*, i16** %361, i64 13
  %363 = load i16*, i16** %362, align 8
  %364 = load i32, i32* %4, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i16, i16* %363, i64 %365
  %367 = load i16, i16* %366, align 2
  %368 = sext i16 %367 to i32
  %369 = load i32, i32* %5, align 4
  %370 = shl i32 %368, %369
  %371 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %372 = getelementptr inbounds i32****, i32***** %371, i64 0
  %373 = load i32****, i32***** %372, align 8
  %374 = getelementptr inbounds i32***, i32**** %373, i64 0
  %375 = load i32***, i32**** %374, align 8
  %376 = load i32, i32* %3, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32**, i32*** %375, i64 %377
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %2, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %1, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 %370, i32* %386, align 4
  %387 = load i16**, i16*** @OffsetList4x4, align 8
  %388 = getelementptr inbounds i16*, i16** %387, i64 14
  %389 = load i16*, i16** %388, align 8
  %390 = load i32, i32* %4, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %389, i64 %391
  %393 = load i16, i16* %392, align 2
  %394 = sext i16 %393 to i32
  %395 = load i32, i32* %5, align 4
  %396 = shl i32 %394, %395
  %397 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %398 = getelementptr inbounds i32****, i32***** %397, i64 1
  %399 = load i32****, i32***** %398, align 8
  %400 = getelementptr inbounds i32***, i32**** %399, i64 0
  %401 = load i32***, i32**** %400, align 8
  %402 = load i32, i32* %3, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32**, i32*** %401, i64 %403
  %405 = load i32**, i32*** %404, align 8
  %406 = load i32, i32* %2, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %1, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %396, i32* %412, align 4
  br label %490

413:                                              ; preds = %333
  %414 = load i16**, i16*** @OffsetList4x4, align 8
  %415 = getelementptr inbounds i16*, i16** %414, i64 9
  %416 = load i16*, i16** %415, align 8
  %417 = load i32, i32* %4, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i16, i16* %416, i64 %418
  %420 = load i16, i16* %419, align 2
  %421 = sext i16 %420 to i32
  %422 = load i32, i32* %5, align 4
  %423 = shl i32 %421, %422
  %424 = load i32****, i32***** @LevelOffset4x4Luma, align 8
  %425 = getelementptr inbounds i32***, i32**** %424, i64 0
  %426 = load i32***, i32**** %425, align 8
  %427 = load i32, i32* %3, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32**, i32*** %426, i64 %428
  %430 = load i32**, i32*** %429, align 8
  %431 = load i32, i32* %2, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32*, i32** %430, i64 %432
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %1, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  store i32 %423, i32* %437, align 4
  %438 = load i16**, i16*** @OffsetList4x4, align 8
  %439 = getelementptr inbounds i16*, i16** %438, i64 10
  %440 = load i16*, i16** %439, align 8
  %441 = load i32, i32* %4, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i16, i16* %440, i64 %442
  %444 = load i16, i16* %443, align 2
  %445 = sext i16 %444 to i32
  %446 = load i32, i32* %5, align 4
  %447 = shl i32 %445, %446
  %448 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %449 = getelementptr inbounds i32****, i32***** %448, i64 0
  %450 = load i32****, i32***** %449, align 8
  %451 = getelementptr inbounds i32***, i32**** %450, i64 0
  %452 = load i32***, i32**** %451, align 8
  %453 = load i32, i32* %3, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32**, i32*** %452, i64 %454
  %456 = load i32**, i32*** %455, align 8
  %457 = load i32, i32* %2, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32*, i32** %456, i64 %458
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %1, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %447, i32* %463, align 4
  %464 = load i16**, i16*** @OffsetList4x4, align 8
  %465 = getelementptr inbounds i16*, i16** %464, i64 11
  %466 = load i16*, i16** %465, align 8
  %467 = load i32, i32* %4, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i16, i16* %466, i64 %468
  %470 = load i16, i16* %469, align 2
  %471 = sext i16 %470 to i32
  %472 = load i32, i32* %5, align 4
  %473 = shl i32 %471, %472
  %474 = load i32*****, i32****** @LevelOffset4x4Chroma, align 8
  %475 = getelementptr inbounds i32****, i32***** %474, i64 1
  %476 = load i32****, i32***** %475, align 8
  %477 = getelementptr inbounds i32***, i32**** %476, i64 0
  %478 = load i32***, i32**** %477, align 8
  %479 = load i32, i32* %3, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32**, i32*** %478, i64 %480
  %482 = load i32**, i32*** %481, align 8
  %483 = load i32, i32* %2, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32*, i32** %482, i64 %484
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %1, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  store i32 %473, i32* %489, align 4
  br label %490

490:                                              ; preds = %413, %336
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %1, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %1, align 4
  br label %88, !llvm.loop !14

494:                                              ; preds = %88
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %2, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %2, align 4
  br label %84, !llvm.loop !15

498:                                              ; preds = %84
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %3, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %3, align 4
  br label %74, !llvm.loop !16

502:                                              ; preds = %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CalculateOffset8Param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32*, i32** @qp_per_matrix, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 144
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 51, %11
  %13 = sub nsw i32 %12, 0
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** @qp_per_matrix, align 8
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 145
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 51, %21
  %23 = sub nsw i32 %22, 0
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %199, %0
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @imax(i32 noundef %30, i32 noundef %31)
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %202

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 16, %35
  %37 = sub nsw i32 %36, 11
  store i32 %37, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %195, %34
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %198

41:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %191, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %194

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = shl i32 %46, 3
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %79

54:                                               ; preds = %45
  %55 = load i16**, i16*** @OffsetList8x8, align 8
  %56 = getelementptr inbounds i16*, i16** %55, i64 0
  %57 = load i16*, i16** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %62, %63
  %65 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %66 = getelementptr inbounds i32***, i32**** %65, i64 1
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %64, i32* %78, align 4
  br label %135

79:                                               ; preds = %45
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load i16**, i16*** @OffsetList8x8, align 8
  %86 = getelementptr inbounds i16*, i16** %85, i64 2
  %87 = load i16*, i16** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = load i32, i32* %5, align 4
  %94 = shl i32 %92, %93
  %95 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %96 = getelementptr inbounds i32***, i32**** %95, i64 1
  %97 = load i32***, i32**** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32**, i32*** %97, i64 %99
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %94, i32* %108, align 4
  br label %134

109:                                              ; preds = %79
  %110 = load i16**, i16*** @OffsetList8x8, align 8
  %111 = getelementptr inbounds i16*, i16** %110, i64 1
  %112 = load i16*, i16** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = load i32, i32* %5, align 4
  %119 = shl i32 %117, %118
  %120 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %121 = getelementptr inbounds i32***, i32**** %120, i64 1
  %122 = load i32***, i32**** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32**, i32*** %122, i64 %124
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %119, i32* %133, align 4
  br label %134

134:                                              ; preds = %109, %84
  br label %135

135:                                              ; preds = %134, %54
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = load i16**, i16*** @OffsetList8x8, align 8
  %142 = getelementptr inbounds i16*, i16** %141, i64 4
  %143 = load i16*, i16** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, i16* %143, i64 %145
  %147 = load i16, i16* %146, align 2
  %148 = sext i16 %147 to i32
  %149 = load i32, i32* %5, align 4
  %150 = shl i32 %148, %149
  %151 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %152 = getelementptr inbounds i32***, i32**** %151, i64 0
  %153 = load i32***, i32**** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32**, i32*** %153, i64 %155
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %150, i32* %164, align 4
  br label %190

165:                                              ; preds = %135
  %166 = load i16**, i16*** @OffsetList8x8, align 8
  %167 = getelementptr inbounds i16*, i16** %166, i64 3
  %168 = load i16*, i16** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %168, i64 %170
  %172 = load i16, i16* %171, align 2
  %173 = sext i16 %172 to i32
  %174 = load i32, i32* %5, align 4
  %175 = shl i32 %173, %174
  %176 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %177 = getelementptr inbounds i32***, i32**** %176, i64 0
  %178 = load i32***, i32**** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32**, i32*** %178, i64 %180
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %175, i32* %189, align 4
  br label %190

190:                                              ; preds = %165, %140
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %1, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %1, align 4
  br label %42, !llvm.loop !17

194:                                              ; preds = %42
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %2, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %2, align 4
  br label %38, !llvm.loop !18

198:                                              ; preds = %38
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  br label %28, !llvm.loop !19

202:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
