; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/nal.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, i32*, i32*, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, i32*, i32, i32 }
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

@NAL_Payload_buffer = internal global i8* null, align 8
@stats = external dso_local global %struct.StatParameters*, align 8
@img = external dso_local global %struct.ImageParameters*, align 8
@input = external dso_local global %struct.InputParameters*, align 8
@.str = private unnamed_addr constant [27 x i8] c"NAL_Payload_buffer != NULL\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/nal.c\00", align 1
@__PRETTY_FUNCTION__.AllocNalPayloadBuffer = private unnamed_addr constant [29 x i8] c"void AllocNalPayloadBuffer()\00", align 1
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
define dso_local void @SODBtoRBSP(%struct.Bitstream* noundef %0) #0 {
  %2 = alloca %struct.Bitstream*, align 8
  store %struct.Bitstream* %0, %struct.Bitstream** %2, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %4 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 8
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 1
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 8
  %9 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %10 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 1
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 8
  %15 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %20 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %23 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, %21
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 8
  %28 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %29 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %28, i32 0, i32 2
  %30 = load i8, i8* %29, align 8
  %31 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %32 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %31, i32 0, i32 9
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %35 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8 %30, i8* %39, align 1
  %40 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %41 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %40, i32 0, i32 1
  store i32 8, i32* %41, align 4
  %42 = load %struct.Bitstream*, %struct.Bitstream** %2, align 8
  %43 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %42, i32 0, i32 2
  store i8 0, i8* %43, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @RBSPtoEBSP(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** @NAL_Payload_buffer, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %19, i64 %24, i1 false)
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %74, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8*, i8** @NAL_Payload_buffer, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 252
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 3, i8* %47, align 1
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %43, %34, %31
  %51 = load i8*, i8** @NAL_Payload_buffer, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i8*, i8** @NAL_Payload_buffer, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %71

70:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %27, !llvm.loop !4

77:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %110, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 3, i8* %98, align 1
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 3
  store i32 %100, i32* %10, align 4
  %101 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %102 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %101, i32 0, i32 24
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %102, i64 0, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 16
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 3
  store i32 %112, i32* %9, align 4
  br label %78, !llvm.loop !6

113:                                              ; preds = %78
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocNalPayloadBuffer() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 14
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 166
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %4, %7
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 167
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = mul nsw i32 %8, %15
  %17 = mul nsw i32 %16, 5
  store i32 %17, i32* %1, align 4
  call void @FreeNalPayloadBuffer()
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 1) #4
  store i8* %20, i8** @NAL_Payload_buffer, align 8
  %21 = load i8*, i8** @NAL_Payload_buffer, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %25

24:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.AllocNalPayloadBuffer, i64 0, i64 0)) #5
  unreachable

25:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeNalPayloadBuffer() #0 {
  %1 = load i8*, i8** @NAL_Payload_buffer, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** @NAL_Payload_buffer, align 8
  call void @free(i8* noundef %4) #4
  store i8* null, i8** @NAL_Payload_buffer, align 8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
