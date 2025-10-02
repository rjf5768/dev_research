; ModuleID = './fmo.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/fmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@MBAmap = dso_local global i8* null, align 8
@MapUnitToSliceGroupMap = dso_local global i8* null, align 8
@FirstMBInSlice = internal global [8 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"MBAmap != NULL\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/fmo.c\00", align 1
@__PRETTY_FUNCTION__.FmoStartPicture = private unnamed_addr constant [22 x i8] c"int FmoStartPicture()\00", align 1
@img = external dso_local global %struct.ImageParameters*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"mb < (int)img->PicSizeInMbs\00", align 1
@__PRETTY_FUNCTION__.FmoMB2SliceGroup = private unnamed_addr constant [26 x i8] c"int FmoMB2SliceGroup(int)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mb >= 0\00", align 1
@__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice = private unnamed_addr constant [38 x i8] c"void FmoSetLastMacroblockInSlice(int)\00", align 1
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
@PicSizeInMapUnits = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoInit(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1, %struct.seq_parameter_set_rbsp_t* nocapture noundef readonly %2) #0 {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %5 = icmp ult i32 %.0, 8
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %7
  store i32 -1, i32* %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  %12 = call i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  %13 = call i32 @FmoGenerateMBAmap(%struct.ImageParameters* noundef %0, %struct.seq_parameter_set_rbsp_t* noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 117
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %6 = load i32, i32* %5, align 8
  %7 = mul i32 %4, %6
  store i32 %7, i32* @PicSizeInMapUnits, align 4
  %8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 15
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, 1
  %15 = load i32, i32* @PicSizeInMapUnits, align 4
  %.not1 = icmp eq i32 %14, %15
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %11
  call void @error(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 noundef 500) #8
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %.not = icmp eq i8* %19, null
  br i1 %.not, label %22, label %20

20:                                               ; preds = %18
  %21 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* noundef %21) #8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* @PicSizeInMapUnits, align 4
  %24 = zext i32 %23 to i64
  %25 = call noalias i8* @malloc(i64 noundef %24) #8
  store i8* %25, i8** @MapUnitToSliceGroupMap, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @PicSizeInMapUnits, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 noundef %28) #8
  call void @exit(i32 noundef -1) #9
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %36 = load i32, i32* @PicSizeInMapUnits, align 4
  %37 = zext i32 %36 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %35, i8 0, i64 %37, i1 false)
  br label %53

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 9
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %48 [
    i32 0, label %41
    i32 1, label %42
    i32 2, label %43
    i32 3, label %44
    i32 4, label %45
    i32 5, label %46
    i32 6, label %47
  ]

41:                                               ; preds = %38
  call void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

42:                                               ; preds = %38
  call void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

43:                                               ; preds = %38
  call void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

44:                                               ; preds = %38
  call void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

45:                                               ; preds = %38
  call void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

46:                                               ; preds = %38
  call void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

47:                                               ; preds = %38
  call void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1)
  br label %52

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 noundef %50) #8
  call void @exit(i32 noundef -1) #9
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %47, %46, %45, %44, %43, %42, %41
  br label %53

53:                                               ; preds = %52, %34
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %48, %27
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FmoGenerateMBAmap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.seq_parameter_set_rbsp_t* nocapture noundef readonly %1) #0 {
  %3 = load i8*, i8** @MBAmap, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* noundef %5) #8
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 119
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 noundef %9) #8
  store i8* %10, i8** @MBAmap, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 119
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 noundef %14) #8
  call void @exit(i32 noundef -1) #9
  unreachable

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 25
  %18 = load i32, i32* %17, align 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 110
  %21 = load i32, i32* %20, align 8
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %38, label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %35, %22
  %.0 = phi i32 [ 0, %22 ], [ %36, %35 ]
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 119
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %.0, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** @MBAmap, align 8
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 %31, i8* %34, align 1
  br label %35

35:                                               ; preds = %27
  %36 = add i32 %.0, 1
  br label %23, !llvm.loop !6

37:                                               ; preds = %23
  br label %85

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 26
  %40 = load i32, i32* %39, align 4
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %61, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 110
  %43 = load i32, i32* %42, align 8
  %.not4 = icmp eq i32 %43, 0
  br i1 %.not4, label %44, label %61

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %58, %44
  %.1 = phi i32 [ 0, %44 ], [ %59, %58 ]
  %46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 119
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %.1, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %51 = lshr i32 %.1, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** @MBAmap, align 8
  %56 = zext i32 %.1 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 %54, i8* %57, align 1
  br label %58

58:                                               ; preds = %49
  %59 = add i32 %.1, 1
  br label %45, !llvm.loop !7

60:                                               ; preds = %45
  br label %84

61:                                               ; preds = %41, %38
  br label %62

62:                                               ; preds = %81, %61
  %.2 = phi i32 [ 0, %61 ], [ %82, %81 ]
  %63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 119
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %.2, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %69, 1
  %71 = udiv i32 %.2, %70
  %72 = mul i32 %71, %69
  %73 = urem i32 %.2, %69
  %74 = add i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %67, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** @MBAmap, align 8
  %79 = zext i32 %.2 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 %77, i8* %80, align 1
  br label %81

81:                                               ; preds = %66
  %82 = add i32 %.2, 1
  br label %62, !llvm.loop !8

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %37
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FmoUninit() #0 {
  %1 = load i8*, i8** @MBAmap, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* noundef %3) #8
  store i8* null, i8** @MBAmap, align 8
  br label %4

4:                                                ; preds = %2, %0
  %5 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %.not1 = icmp eq i8* %5, null
  br i1 %.not1, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* noundef %7) #8
  store i8* null, i8** @MapUnitToSliceGroupMap, align 8
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoStartPicture() #0 {
  %1 = load i8*, i8** @MBAmap, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.FmoStartPicture, i64 0, i64 0)) #9
  unreachable

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %11, %4
  %.0 = phi i32 [ 0, %4 ], [ %12, %11 ]
  %6 = icmp ult i32 %.0, 8
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = call i32 @FmoGetFirstMBOfSliceGroup(i32 noundef %.0)
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %9
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !9

13:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetFirstMBOfSliceGroup(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i64 0, i32 119
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %.01, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = call i32 @FmoMB2SliceGroup(i32 noundef %.01)
  %9 = icmp ne i32 %8, %0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !10

14:                                               ; preds = %10
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i64 0, i32 119
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %.01, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %19
  %.0 = phi i32 [ %.01, %19 ], [ -1, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @FmoEndPicture() #3 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoMB2SliceGroup(i32 noundef %0) #0 {
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i64 0, i32 119
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.FmoMB2SliceGroup, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = load i8*, i8** @MBAmap, align 8
  %.not = icmp eq i8* %9, null
  br i1 %.not, label %11, label %10

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.FmoMB2SliceGroup, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = load i8*, i8** @MBAmap, align 8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  ret i32 %17

UnifiedUnreachableBlock:                          ; preds = %11, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetNextMBNr(i32 noundef %0) #0 {
  %2 = call i32 @FmoMB2SliceGroup(i32 noundef %0)
  br label %3

3:                                                ; preds = %18, %1
  %.01 = phi i32 [ %0, %1 ], [ %4, %18 ]
  %4 = add nsw i32 %.01, 1
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i64 0, i32 119
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i8*, i8** @MBAmap, align 8
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %2, %14
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i1 [ false, %3 ], [ %15, %9 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %3, !llvm.loop !11

19:                                               ; preds = %16
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i64 0, i32 119
  %22 = load i32, i32* %21, align 4
  %.not = icmp slt i32 %4, %22
  br i1 %.not, label %24, label %23

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %23
  %.0 = phi i32 [ -1, %23 ], [ %4, %24 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetPreviousMBNr(i32 noundef %0) #0 {
  %2 = call i32 @FmoMB2SliceGroup(i32 noundef %0)
  br label %3

3:                                                ; preds = %14, %1
  %.01.in = phi i32 [ %0, %1 ], [ %.01, %14 ]
  %.01 = add nsw i32 %.01.in, -1
  %4 = icmp sgt i32 %.01.in, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load i8*, i8** @MBAmap, align 8
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %2, %10
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i1 [ false, %3 ], [ %11, %5 ]
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %3, !llvm.loop !12

15:                                               ; preds = %12
  %16 = icmp slt i32 %.01.in, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %17
  %.0 = phi i32 [ -1, %17 ], [ %.01, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %.0 = phi i32 [ -1, %1 ], [ %.1, %12 ]
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i64 0, i32 119
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %.01, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = call i32 @FmoMB2SliceGroup(i32 noundef %.01)
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %.1 = phi i32 [ %.01, %10 ], [ %.0, %7 ]
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !13

14:                                               ; preds = %2
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FmoSetLastMacroblockInSlice(i32 noundef %0) #0 {
  %2 = call i32 @FmoMB2SliceGroup(i32 noundef %0)
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice, i64 0, i64 0)) #9
  unreachable

6:                                                ; preds = %4
  %7 = call i32 @FmoGetNextMBNr(i32 noundef %0)
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @FmoGetFirstMacroblockInSlice(i32 noundef %0) #4 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @FmoSliceGroupCompletelyCoded(i32 noundef %0) #4 {
  %2 = call i32 @FmoGetFirstMacroblockInSlice(i32 noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %5 ]
  ret i32 %.0
}

declare dso_local void @error(i8* noundef, i32 noundef) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* nocapture noundef readnone %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  br label %3

3:                                                ; preds = %40, %2
  %.0 = phi i32 [ 0, %2 ], [ %.1, %40 ]
  br label %4

4:                                                ; preds = %32, %3
  %.02 = phi i32 [ 0, %3 ], [ %33, %32 ]
  %.1 = phi i32 [ %.0, %3 ], [ %38, %32 ]
  %5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 8
  %6 = load i32, i32* %5, align 4
  %.not = icmp ugt i32 %.02, %6
  br i1 %.not, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @PicSizeInMapUnits, align 4
  %9 = icmp ult i32 %.1, %8
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i1 [ false, %4 ], [ %9, %7 ]
  br i1 %11, label %12, label %39

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %29, %12
  %.01 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %14 = zext i32 %.02 to i64
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 10, i64 %14
  %16 = load i32, i32* %15, align 4
  %.not3 = icmp ugt i32 %.01, %16
  br i1 %.not3, label %21, label %17

17:                                               ; preds = %13
  %18 = add i32 %.1, %.01
  %19 = load i32, i32* @PicSizeInMapUnits, align 4
  %20 = icmp ult i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = trunc i32 %.02 to i8
  %25 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %26 = add i32 %.1, %.01
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %24, i8* %28, align 1
  br label %29

29:                                               ; preds = %23
  %30 = add i32 %.01, 1
  br label %13, !llvm.loop !14

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = add i32 %.02, 1
  %34 = zext i32 %.02 to i64
  %35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 10, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  %38 = add i32 %.1, %37
  br label %4, !llvm.loop !15

39:                                               ; preds = %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @PicSizeInMapUnits, align 4
  %42 = icmp ult i32 %.1, %41
  br i1 %42, label %3, label %43, !llvm.loop !16

43:                                               ; preds = %40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  br label %3

3:                                                ; preds = %23, %2
  %.0 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %5 = icmp ult i32 %.0, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %8 = load i32, i32* %7, align 8
  %9 = urem i32 %.0, %8
  %10 = udiv i32 %.0, %8
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, 1
  %14 = mul i32 %10, %13
  %15 = lshr i32 %14, 1
  %16 = add i32 %9, %15
  %17 = add i32 %12, 1
  %18 = urem i32 %16, %17
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  br label %23

23:                                               ; preds = %6
  %24 = add i32 %.0, 1
  br label %3, !llvm.loop !17

25:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  br label %3

3:                                                ; preds = %13, %2
  %.03 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %5 = icmp ult i32 %.03, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 %9, i8* %12, align 1
  br label %13

13:                                               ; preds = %6
  %14 = add i32 %.03, 1
  br label %3, !llvm.loop !18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 8
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %59, %15
  %.02.in = phi i32 [ %17, %15 ], [ %.02, %59 ]
  %.02 = add i32 %.02.in, -1
  %19 = icmp sgt i32 %.02, -1
  br i1 %19, label %20, label %60

20:                                               ; preds = %18
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 11, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %25 = load i32, i32* %24, align 8
  %26 = udiv i32 %23, %25
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 11, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = urem i32 %29, %25
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 12, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %35 = load i32, i32* %34, align 8
  %36 = udiv i32 %33, %35
  %37 = sext i32 %.02 to i64
  %38 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 12, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = urem i32 %39, %35
  br label %41

41:                                               ; preds = %56, %20
  %.0 = phi i32 [ %26, %20 ], [ %57, %56 ]
  %.not = icmp ugt i32 %.0, %36
  br i1 %.not, label %58, label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %53, %42
  %.01 = phi i32 [ %30, %42 ], [ %54, %53 ]
  %.not4 = icmp ugt i32 %.01, %40
  br i1 %.not4, label %55, label %44

44:                                               ; preds = %43
  %45 = trunc i32 %.02 to i8
  %46 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %48 = load i32, i32* %47, align 8
  %49 = mul i32 %.0, %48
  %50 = add i32 %49, %.01
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  store i8 %45, i8* %52, align 1
  br label %53

53:                                               ; preds = %44
  %54 = add i32 %.01, 1
  br label %43, !llvm.loop !19

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = add i32 %.0, 1
  br label %41, !llvm.loop !20

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  br label %18, !llvm.loop !21

60:                                               ; preds = %18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 14
  %4 = load i32, i32* %3, align 8
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 140
  %7 = load i32, i32* %6, align 4
  %8 = mul i32 %5, %7
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  %10 = call i32 @imin(i32 noundef %8, i32 noundef %9)
  br label %11

11:                                               ; preds = %18, %2
  %.06 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %12 = load i32, i32* @PicSizeInMapUnits, align 4
  %13 = icmp ult i32 %.06, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %16 = zext i32 %.06 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8 2, i8* %17, align 1
  br label %18

18:                                               ; preds = %14
  %19 = add i32 %.06, 1
  br label %11, !llvm.loop !22

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %22, %24
  %26 = lshr i32 %25, 1
  %27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 117
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %28, %24
  %30 = lshr i32 %29, 1
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, -1
  br label %34

34:                                               ; preds = %113, %20
  %.027 = phi i32 [ %30, %20 ], [ %.431, %113 ]
  %.022 = phi i32 [ %26, %20 ], [ %.426, %113 ]
  %.017 = phi i32 [ %30, %20 ], [ %.421, %113 ]
  %.014 = phi i32 [ %26, %20 ], [ %.216, %113 ]
  %.010 = phi i32 [ %30, %20 ], [ %.313, %113 ]
  %.08 = phi i32 [ %26, %20 ], [ %.19, %113 ]
  %.07 = phi i32 [ 0, %20 ], [ %114, %113 ]
  %.01 = phi i32 [ %33, %20 ], [ %.45, %113 ]
  %.0 = phi i32 [ %32, %20 ], [ %.4, %113 ]
  %35 = load i32, i32* @PicSizeInMapUnits, align 4
  %36 = icmp ult i32 %.07, %35
  br i1 %36, label %37, label %115

37:                                               ; preds = %34
  %38 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %40 = load i32, i32* %39, align 8
  %41 = mul i32 %.027, %40
  %42 = add i32 %41, %.022
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 2
  %47 = zext i1 %46 to i32
  br i1 %46, label %48, label %58

48:                                               ; preds = %37
  %49 = icmp uge i32 %.07, %10
  %50 = zext i1 %49 to i8
  %51 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %53 = load i32, i32* %52, align 8
  %54 = mul i32 %.027, %53
  %55 = add i32 %54, %.022
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8 %50, i8* %57, align 1
  br label %58

58:                                               ; preds = %48, %37
  %59 = icmp eq i32 %.01, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = icmp eq i32 %.022, %.08
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = add nsw i32 %.08, -1
  %64 = call i32 @imax(i32 noundef %63, i32 noundef 0)
  %65 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 1
  %68 = add i32 %67, -1
  br label %112

69:                                               ; preds = %60, %58
  %70 = icmp eq i32 %.01, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %69
  %72 = icmp eq i32 %.022, %.014
  br i1 %72, label %73, label %82

73:                                               ; preds = %71
  %74 = add nsw i32 %.014, 1
  %75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  %78 = call i32 @imin(i32 noundef %74, i32 noundef %77)
  %79 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %80 = load i32, i32* %79, align 4
  %.neg32 = mul i32 %80, -2
  %81 = or i32 %.neg32, 1
  br label %111

82:                                               ; preds = %71, %69
  %83 = icmp eq i32 %.0, -1
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = icmp eq i32 %.027, %.010
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  %87 = add nsw i32 %.010, -1
  %88 = call i32 @imax(i32 noundef %87, i32 noundef 0)
  %89 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %90 = load i32, i32* %89, align 4
  %.neg = mul i32 %90, -2
  %91 = or i32 %.neg, 1
  br label %110

92:                                               ; preds = %84, %82
  %93 = icmp eq i32 %.0, 1
  br i1 %93, label %94, label %106

94:                                               ; preds = %92
  %95 = icmp eq i32 %.027, %.017
  br i1 %95, label %96, label %106

96:                                               ; preds = %94
  %97 = add nsw i32 %.017, 1
  %98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 117
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  %101 = call i32 @imin(i32 noundef %97, i32 noundef %100)
  %102 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 1
  %105 = add i32 %104, -1
  br label %109

106:                                              ; preds = %94, %92
  %107 = add nsw i32 %.022, %.01
  %108 = add nsw i32 %.027, %.0
  br label %109

109:                                              ; preds = %106, %96
  %.128 = phi i32 [ %101, %96 ], [ %108, %106 ]
  %.123 = phi i32 [ %.022, %96 ], [ %107, %106 ]
  %.118 = phi i32 [ %101, %96 ], [ %.017, %106 ]
  %.12 = phi i32 [ %105, %96 ], [ %.01, %106 ]
  %.1 = phi i32 [ 0, %96 ], [ %.0, %106 ]
  br label %110

110:                                              ; preds = %109, %86
  %.229 = phi i32 [ %88, %86 ], [ %.128, %109 ]
  %.224 = phi i32 [ %.022, %86 ], [ %.123, %109 ]
  %.219 = phi i32 [ %.017, %86 ], [ %.118, %109 ]
  %.111 = phi i32 [ %88, %86 ], [ %.010, %109 ]
  %.23 = phi i32 [ %91, %86 ], [ %.12, %109 ]
  %.2 = phi i32 [ 0, %86 ], [ %.1, %109 ]
  br label %111

111:                                              ; preds = %110, %73
  %.330 = phi i32 [ %.027, %73 ], [ %.229, %110 ]
  %.325 = phi i32 [ %78, %73 ], [ %.224, %110 ]
  %.320 = phi i32 [ %.017, %73 ], [ %.219, %110 ]
  %.115 = phi i32 [ %78, %73 ], [ %.014, %110 ]
  %.212 = phi i32 [ %.010, %73 ], [ %.111, %110 ]
  %.34 = phi i32 [ 0, %73 ], [ %.23, %110 ]
  %.3 = phi i32 [ %81, %73 ], [ %.2, %110 ]
  br label %112

112:                                              ; preds = %111, %62
  %.431 = phi i32 [ %.027, %62 ], [ %.330, %111 ]
  %.426 = phi i32 [ %64, %62 ], [ %.325, %111 ]
  %.421 = phi i32 [ %.017, %62 ], [ %.320, %111 ]
  %.216 = phi i32 [ %.014, %62 ], [ %.115, %111 ]
  %.313 = phi i32 [ %.010, %62 ], [ %.212, %111 ]
  %.19 = phi i32 [ %64, %62 ], [ %.08, %111 ]
  %.45 = phi i32 [ 0, %62 ], [ %.34, %111 ]
  %.4 = phi i32 [ %68, %62 ], [ %.3, %111 ]
  br label %113

113:                                              ; preds = %112
  %114 = add i32 %.07, %47
  br label %34, !llvm.loop !23

115:                                              ; preds = %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 14
  %4 = load i32, i32* %3, align 8
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 140
  %7 = load i32, i32* %6, align 4
  %8 = mul i32 %5, %7
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  %10 = call i32 @imin(i32 noundef %8, i32 noundef %9)
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %12 = load i32, i32* %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PicSizeInMapUnits, align 4
  %15 = sub i32 %14, %10
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ %10, %16 ]
  br label %19

19:                                               ; preds = %40, %17
  %.0 = phi i32 [ 0, %17 ], [ %41, %40 ]
  %20 = load i32, i32* @PicSizeInMapUnits, align 4
  %21 = icmp ult i32 %.0, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = icmp ult i32 %.0, %18
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %27, i8* %30, align 1
  br label %39

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = sub i8 1, %34
  %36 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39
  %41 = add i32 %.0, 1
  br label %19, !llvm.loop !24

42:                                               ; preds = %19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* nocapture noundef readonly %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 14
  %4 = load i32, i32* %3, align 8
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 140
  %7 = load i32, i32* %6, align 4
  %8 = mul i32 %5, %7
  %9 = load i32, i32* @PicSizeInMapUnits, align 4
  %10 = call i32 @imin(i32 noundef %8, i32 noundef %9)
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %12 = load i32, i32* %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PicSizeInMapUnits, align 4
  %15 = sub i32 %14, %10
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ %10, %16 ]
  br label %19

19:                                               ; preds = %58, %17
  %.01 = phi i32 [ 0, %17 ], [ %59, %58 ]
  %.0 = phi i32 [ 0, %17 ], [ %.1, %58 ]
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %.01, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %55, %23
  %.02 = phi i32 [ 0, %23 ], [ %56, %55 ]
  %.1 = phi i32 [ %.0, %23 ], [ %29, %55 ]
  %25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 117
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %.02, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = add i32 %.1, 1
  %30 = icmp ult i32 %.1, %18
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %37 = load i32, i32* %36, align 8
  %38 = mul i32 %.02, %37
  %39 = add i32 %38, %.01
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8 %34, i8* %41, align 1
  br label %54

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = sub i8 1, %45
  %47 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i64 0, i32 116
  %49 = load i32, i32* %48, align 8
  %50 = mul i32 %.02, %49
  %51 = add i32 %50, %.01
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  store i8 %46, i8* %53, align 1
  br label %54

54:                                               ; preds = %42, %31
  br label %55

55:                                               ; preds = %54
  %56 = add i32 %.02, 1
  br label %24, !llvm.loop !25

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %57
  %59 = add i32 %.01, 1
  br label %19, !llvm.loop !26

60:                                               ; preds = %19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* nocapture noundef readnone %0, %struct.pic_parameter_set_rbsp_t* nocapture noundef readonly %1) #7 {
  br label %3

3:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %4 = load i32, i32* @PicSizeInMapUnits, align 4
  %5 = icmp ult i32 %.0, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i64 0, i32 16
  %8 = load i8*, i8** %7, align 8
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 %11, i8* %14, align 1
  br label %15

15:                                               ; preds = %6
  %16 = add i32 %.0, 1
  br label %3, !llvm.loop !27

17:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imin(i32 noundef %0, i32 noundef %1) #3 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imax(i32 noundef %0, i32 noundef %1) #3 {
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
