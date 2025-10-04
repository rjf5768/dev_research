; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/refbuf.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @FastLine4X(i16**** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16****, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16**** %0, i16***** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i16****, i16***** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16***, i16**** %7, i64 %10
  %12 = load i16***, i16**** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16**, i16*** %12, i64 %15
  %17 = load i16**, i16*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16*, i16** %17, i64 %20
  %22 = load i16*, i16** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %22, i64 %25
  ret i16* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @UMVLine4X(i16**** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16****, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16**** %0, i16***** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @width_pad, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 2
  %12 = call i32 @iClip3(i32 noundef 0, i32 noundef %9, i32 noundef %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @height_pad, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 2
  %16 = call i32 @iClip3(i32 noundef 0, i32 noundef %13, i32 noundef %15)
  store i32 %16, i32* %8, align 4
  %17 = load i16****, i16***** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16***, i16**** %17, i64 %20
  %22 = load i16***, i16**** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16**, i16*** %22, i64 %25
  %27 = load i16**, i16*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16*, i16** %27, i64 %29
  %31 = load i16*, i16** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  ret i16* %34
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @imax(i32 noundef %7, i32 noundef %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @imin(i32 noundef %10, i32 noundef %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @UMVLine8X_chroma(i16**** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16****, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16**** %0, i16***** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @width_pad_cr, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @chroma_shift_x, align 4
  %12 = ashr i32 %10, %11
  %13 = call i32 @iClip3(i32 noundef 0, i32 noundef %9, i32 noundef %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @height_pad_cr, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @chroma_shift_y, align 4
  %17 = ashr i32 %15, %16
  %18 = call i32 @iClip3(i32 noundef 0, i32 noundef %14, i32 noundef %17)
  store i32 %18, i32* %8, align 4
  %19 = load i16****, i16***** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8, i8* @chroma_mask_mv_y, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16***, i16**** %19, i64 %24
  %26 = load i16***, i16**** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i8, i8* @chroma_mask_mv_x, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16**, i16*** %26, i64 %31
  %33 = load i16**, i16*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16*, i16** %33, i64 %35
  %37 = load i16*, i16** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  ret i16* %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @FastLine8X_chroma(i16**** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16****, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16**** %0, i16***** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i16****, i16***** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8, i8* @chroma_mask_mv_y, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16***, i16**** %7, i64 %12
  %14 = load i16***, i16**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i8, i8* @chroma_mask_mv_x, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16**, i16*** %14, i64 %19
  %21 = load i16**, i16*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @chroma_shift_y, align 4
  %24 = ashr i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16*, i16** %21, i64 %25
  %27 = load i16*, i16** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @chroma_shift_x, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %27, i64 %31
  ret i16* %32
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

; Function Attrs: noinline nounwind uwtable
define internal i32 @imin(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
