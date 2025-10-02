; ModuleID = './refbuf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/refbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@width_pad = dso_local global i32 0, align 4
@height_pad = dso_local global i32 0, align 4
@width_pad_cr = dso_local global i32 0, align 4
@chroma_shift_x = dso_local global i32 0, align 4
@height_pad_cr = dso_local global i32 0, align 4
@chroma_shift_y = dso_local global i32 0, align 4
@chroma_mask_mv_y = dso_local global i8 0, align 1
@chroma_mask_mv_x = dso_local global i8 0, align 1
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
@shift_cr_x = dso_local global i32 0, align 4
@shift_cr_y = dso_local global i32 0, align 4
@img_padded_size_x = dso_local global i32 0, align 4
@img_cr_padded_size_x = dso_local global i32 0, align 4
@start_me_refinement_hp = dso_local global i32 0, align 4
@start_me_refinement_qp = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16* @FastLine4X(i16**** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, 3
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16***, i16**** %0, i64 %5
  %7 = load i16***, i16**** %6, align 8
  %8 = and i32 %2, 3
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16**, i16*** %7, i64 %9
  %11 = load i16**, i16*** %10, align 8
  %12 = ashr i32 %1, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16*, i16** %11, i64 %13
  %15 = load i16*, i16** %14, align 8
  %16 = ashr i32 %2, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  ret i16* %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16* @UMVLine4X(i16**** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @width_pad, align 4
  %5 = ashr i32 %2, 2
  %6 = call i32 @iClip3(i32 noundef 0, i32 noundef %4, i32 noundef %5)
  %7 = load i32, i32* @height_pad, align 4
  %8 = ashr i32 %1, 2
  %9 = call i32 @iClip3(i32 noundef 0, i32 noundef %7, i32 noundef %8)
  %10 = and i32 %1, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i16***, i16**** %0, i64 %11
  %13 = load i16***, i16**** %12, align 8
  %14 = and i32 %2, 3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16**, i16*** %13, i64 %15
  %17 = load i16**, i16*** %16, align 8
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds i16*, i16** %17, i64 %18
  %20 = load i16*, i16** %19, align 8
  %21 = sext i32 %6 to i64
  %22 = getelementptr inbounds i16, i16* %20, i64 %21
  ret i16* %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = call i32 @imax(i32 noundef %2, i32 noundef %0)
  %5 = call i32 @imin(i32 noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16* @UMVLine8X_chroma(i16**** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @width_pad_cr, align 4
  %5 = load i32, i32* @chroma_shift_x, align 4
  %6 = ashr i32 %2, %5
  %7 = call i32 @iClip3(i32 noundef 0, i32 noundef %4, i32 noundef %6)
  %8 = load i32, i32* @height_pad_cr, align 4
  %9 = load i32, i32* @chroma_shift_y, align 4
  %10 = ashr i32 %1, %9
  %11 = call i32 @iClip3(i32 noundef 0, i32 noundef %8, i32 noundef %10)
  %12 = load i8, i8* @chroma_mask_mv_y, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, %1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16***, i16**** %0, i64 %15
  %17 = load i16***, i16**** %16, align 8
  %18 = load i8, i8* @chroma_mask_mv_x, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, %2
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i16**, i16*** %17, i64 %21
  %23 = load i16**, i16*** %22, align 8
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds i16*, i16** %23, i64 %24
  %26 = load i16*, i16** %25, align 8
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  ret i16* %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i16* @FastLine8X_chroma(i16**** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i8, i8* @chroma_mask_mv_y, align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, %1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i16***, i16**** %0, i64 %7
  %9 = load i16***, i16**** %8, align 8
  %10 = load i8, i8* @chroma_mask_mv_x, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, %2
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16**, i16*** %9, i64 %13
  %15 = load i16**, i16*** %14, align 8
  %16 = load i32, i32* @chroma_shift_y, align 4
  %17 = ashr i32 %1, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16*, i16** %15, i64 %18
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* @chroma_shift_x, align 4
  %22 = ashr i32 %2, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  ret i16* %24
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imin(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
