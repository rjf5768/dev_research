; ModuleID = './intrarefresh.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/intrarefresh.c"
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

@NumberOfMBs = internal global i32 0, align 4
@NumberIntraPerPicture = internal global i32 0, align 4
@RefreshPattern = internal global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"RandomIntraInit: RefreshPattern\00", align 1
@IntraMBs = internal global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"RandomIntraInit: IntraMBs\00", align 1
@WalkAround = internal global i32 0, align 4
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
define dso_local void @RandomIntraInit(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  call void @srand(i32 noundef 1) #5
  %4 = mul nsw i32 %0, %1
  store i32 %4, i32* @NumberOfMBs, align 4
  store i32 %2, i32* @NumberIntraPerPicture, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %49, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @NumberOfMBs, align 4
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = call noalias i8* @malloc(i64 noundef %8) #5
  store i8* %9, i8** bitcast (i32** @RefreshPattern to i8**), align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %11, %5
  %13 = sext i32 %2 to i64
  %14 = shl nsw i64 %13, 2
  %15 = call noalias i8* @malloc(i64 noundef %14) #5
  store i8* %15, i8** bitcast (i32** @IntraMBs to i8**), align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %26, %18
  %.0 = phi i32 [ 0, %18 ], [ %27, %26 ]
  %20 = load i32, i32* @NumberOfMBs, align 4
  %21 = icmp slt i32 %.0, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** @RefreshPattern, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !4

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %46, %28
  %.1 = phi i32 [ 0, %28 ], [ %47, %46 ]
  %30 = load i32, i32* @NumberOfMBs, align 4
  %31 = icmp slt i32 %.1, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %37, %32
  %34 = call i32 @rand() #5
  %35 = load i32, i32* @NumberOfMBs, align 4
  %36 = srem i32 %34, %35
  br label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** @RefreshPattern, align 8
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %.not1 = icmp eq i32 %41, -1
  br i1 %.not1, label %42, label %33, !llvm.loop !6

42:                                               ; preds = %37
  %43 = load i32*, i32** @RefreshPattern, align 8
  %44 = sext i32 %36 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %.1, i32* %45, align 4
  br label %46

46:                                               ; preds = %42
  %47 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !7

48:                                               ; preds = %29
  br label %50

49:                                               ; preds = %3
  store i32* null, i32** @RefreshPattern, align 8
  store i32* null, i32** @IntraMBs, align 8
  br label %50

50:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @RandomIntra(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %13, %1
  %.01 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %3 = load i32, i32* @NumberIntraPerPicture, align 4
  %4 = icmp slt i32 %.01, %3
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load i32*, i32** @IntraMBs, align 8
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %16

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !8

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @RandomIntraNewPicture() #4 {
  %1 = load i32, i32* @NumberIntraPerPicture, align 4
  %2 = load i32, i32* @WalkAround, align 4
  %3 = add nsw i32 %2, %1
  store i32 %3, i32* @WalkAround, align 4
  br label %4

4:                                                ; preds = %17, %0
  %.01 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %.0 = phi i32 [ %3, %0 ], [ %19, %17 ]
  %5 = load i32, i32* @NumberIntraPerPicture, align 4
  %6 = icmp slt i32 %.01, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i32*, i32** @RefreshPattern, align 8
  %9 = load i32, i32* @NumberOfMBs, align 4
  %10 = srem i32 %.0, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @IntraMBs, align 8
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %7
  %18 = add nuw nsw i32 %.01, 1
  %19 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !9

20:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RandomIntraUninit() #0 {
  %1 = load i32, i32* @NumberIntraPerPicture, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i8*, i8** bitcast (i32** @RefreshPattern to i8**), align 8
  call void @free(i8* noundef %4) #5
  %5 = load i8*, i8** bitcast (i32** @IntraMBs to i8**), align 8
  call void @free(i8* noundef %5) #5
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
