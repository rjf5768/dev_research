; ModuleID = './nal.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @SODBtoRBSP(%struct.Bitstream* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 8
  %4 = shl i8 %3, 1
  %5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 2
  %6 = or i8 %4, 1
  store i8 %6, i8* %5, align 8
  %7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 2
  %11 = zext i8 %6 to i32
  %12 = shl i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %10, align 8
  %14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 9
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8 %13, i8* %20, align 1
  %21 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 1
  store i32 8, i32* %21, align 4
  %22 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i64 0, i32 2
  store i8 0, i8* %22, align 8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @RBSPtoEBSP(i8* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = load i8*, i8** @NAL_Payload_buffer, align 8
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = sub nsw i32 %2, %1
  %11 = sext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %9, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %41, %4
  %.04 = phi i32 [ %1, %4 ], [ %43, %41 ]
  %.01 = phi i32 [ %1, %4 ], [ %42, %41 ]
  %.0 = phi i32 [ 0, %4 ], [ %.2, %41 ]
  %13 = icmp slt i32 %.04, %2
  br i1 %13, label %14, label %44

14:                                               ; preds = %12
  %15 = icmp eq i32 %.0, 2
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = load i8*, i8** @NAL_Payload_buffer, align 8
  %18 = sext i32 %.04 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %.not = icmp ult i8 %20, 4
  br i1 %.not, label %21, label %25

21:                                               ; preds = %16
  %22 = sext i32 %.01 to i64
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  store i8 3, i8* %23, align 1
  %24 = add nsw i32 %.01, 1
  br label %25

25:                                               ; preds = %21, %16, %14
  %.12 = phi i32 [ %.01, %16 ], [ %24, %21 ], [ %.01, %14 ]
  %.1 = phi i32 [ %.0, %16 ], [ 0, %21 ], [ %.0, %14 ]
  %26 = load i8*, i8** @NAL_Payload_buffer, align 8
  %27 = sext i32 %.04 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i32 %.12 to i64
  %31 = getelementptr inbounds i8, i8* %0, i64 %30
  store i8 %29, i8* %31, align 1
  %32 = load i8*, i8** @NAL_Payload_buffer, align 8
  %33 = sext i32 %.04 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = add nsw i32 %.1, 1
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %37
  %.2 = phi i32 [ %38, %37 ], [ 0, %39 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %.12, 1
  %43 = add nsw i32 %.04, 1
  br label %12, !llvm.loop !4

44:                                               ; preds = %12
  br label %45

45:                                               ; preds = %65, %44
  %.15 = phi i32 [ 0, %44 ], [ %67, %65 ]
  %.23 = phi i32 [ %.01, %44 ], [ %66, %65 ]
  %46 = sub nsw i32 %3, %2
  %47 = icmp slt i32 %.15, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = sext i32 %.23 to i64
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = add nsw i32 %.23, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = add nsw i32 %.23, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %0, i64 %55
  store i8 3, i8* %56, align 1
  %57 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i64 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %57, i64 0, i32 24, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 16
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %48
  %66 = add nsw i32 %.23, 3
  %67 = add nuw nsw i32 %.15, 3
  br label %45, !llvm.loop !6

68:                                               ; preds = %45
  ret i32 %.23
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocNalPayloadBuffer() #3 {
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i64 0, i32 14
  %3 = load i32, i32* %2, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i64 0, i32 166
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %3, %6
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 15
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i64 0, i32 167
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = mul nsw i32 %7, %14
  %16 = mul nsw i32 %15, 5
  call void @FreeNalPayloadBuffer()
  %17 = sext i32 %16 to i64
  %18 = call noalias i8* @calloc(i64 noundef %17, i64 noundef 1) #6
  store i8* %18, i8** @NAL_Payload_buffer, align 8
  %.not = icmp eq i8* %18, null
  br i1 %.not, label %20, label %19

19:                                               ; preds = %0
  br label %21

20:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.AllocNalPayloadBuffer, i64 0, i64 0)) #7
  unreachable

21:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeNalPayloadBuffer() #3 {
  %1 = load i8*, i8** @NAL_Payload_buffer, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** @NAL_Payload_buffer, align 8
  call void @free(i8* noundef %3) #6
  store i8* null, i8** @NAL_Payload_buffer, align 8
  br label %4

4:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
