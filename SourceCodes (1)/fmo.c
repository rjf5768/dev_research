; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/fmo.c'
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
define dso_local i32 @FmoInit(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1, %struct.seq_parameter_set_rbsp_t* noundef %2) #0 {
  %4 = alloca %struct.ImageParameters*, align 8
  %5 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %6 = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %7 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %4, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %5, align 8
  store %struct.seq_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %15, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %13
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %8, !llvm.loop !4

18:                                               ; preds = %8
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %21 = call i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* noundef %19, %struct.pic_parameter_set_rbsp_t* noundef %20)
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %6, align 8
  %24 = call i32 @FmoGenerateMBAmap(%struct.ImageParameters* noundef %22, %struct.seq_parameter_set_rbsp_t* noundef %23)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FmoGenerateMapUnitToSliceGroupMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ImageParameters*, align 8
  %5 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.ImageParameters* %0, %struct.ImageParameters** %4, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 117
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 116
  %11 = load i32, i32* %10, align 8
  %12 = mul i32 %8, %11
  store i32 %12, i32* @PicSizeInMapUnits, align 4
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, 1
  %22 = load i32, i32* @PicSizeInMapUnits, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  call void @error(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 noundef 500)
  br label %25

25:                                               ; preds = %24, %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* noundef %30) #5
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @PicSizeInMapUnits, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = call noalias i8* @malloc(i64 noundef %34) #5
  store i8* %35, i8** @MapUnitToSliceGroupMap, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @PicSizeInMapUnits, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 noundef %41)
  call void @exit(i32 noundef -1) #6
  unreachable

43:                                               ; preds = %31
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %50 = load i32, i32* @PicSizeInMapUnits, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 0, i64 %52, i1 false)
  store i32 0, i32* %3, align 4
  br label %84

53:                                               ; preds = %43
  %54 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %55 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %78 [
    i32 0, label %57
    i32 1, label %60
    i32 2, label %63
    i32 3, label %66
    i32 4, label %69
    i32 5, label %72
    i32 6, label %75
  ]

57:                                               ; preds = %53
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* noundef %58, %struct.pic_parameter_set_rbsp_t* noundef %59)
  br label %83

60:                                               ; preds = %53
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %62 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* noundef %61, %struct.pic_parameter_set_rbsp_t* noundef %62)
  br label %83

63:                                               ; preds = %53
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %65 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* noundef %64, %struct.pic_parameter_set_rbsp_t* noundef %65)
  br label %83

66:                                               ; preds = %53
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %68 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* noundef %67, %struct.pic_parameter_set_rbsp_t* noundef %68)
  br label %83

69:                                               ; preds = %53
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %71 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* noundef %70, %struct.pic_parameter_set_rbsp_t* noundef %71)
  br label %83

72:                                               ; preds = %53
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %74 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* noundef %73, %struct.pic_parameter_set_rbsp_t* noundef %74)
  br label %83

75:                                               ; preds = %53
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** %4, align 8
  %77 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  call void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* noundef %76, %struct.pic_parameter_set_rbsp_t* noundef %77)
  br label %83

78:                                               ; preds = %53
  %79 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %5, align 8
  %80 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 noundef %81)
  call void @exit(i32 noundef -1) #6
  unreachable

83:                                               ; preds = %75, %72, %69, %66, %63, %60, %57
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FmoGenerateMBAmap(%struct.ImageParameters* noundef %0, %struct.seq_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.seq_parameter_set_rbsp_t* %1, %struct.seq_parameter_set_rbsp_t** %4, align 8
  %6 = load i8*, i8** @MBAmap, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* noundef %9) #5
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 119
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = call noalias i8* @malloc(i64 noundef %15) #5
  store i8* %16, i8** @MBAmap, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 119
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 noundef %24)
  call void @exit(i32 noundef -1) #6
  unreachable

26:                                               ; preds = %10
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %4, align 8
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 25
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 110
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31, %26
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 119
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** @MBAmap, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %37, !llvm.loop !6

56:                                               ; preds = %37
  br label %126

57:                                               ; preds = %31
  %58 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %4, align 8
  %59 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %58, i32 0, i32 26
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 110
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 119
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %76 = load i32, i32* %5, align 4
  %77 = udiv i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** @MBAmap, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %68, !llvm.loop !7

88:                                               ; preds = %68
  br label %125

89:                                               ; preds = %62, %57
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %121, %89
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 119
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %90
  %97 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 116
  %101 = load i32, i32* %100, align 8
  %102 = mul i32 2, %101
  %103 = udiv i32 %98, %102
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 116
  %106 = load i32, i32* %105, align 8
  %107 = mul i32 %103, %106
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 116
  %111 = load i32, i32* %110, align 8
  %112 = urem i32 %108, %111
  %113 = add i32 %107, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %97, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** @MBAmap, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 %116, i8* %120, align 1
  br label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %90, !llvm.loop !8

124:                                              ; preds = %90
  br label %125

125:                                              ; preds = %124, %88
  br label %126

126:                                              ; preds = %125, %56
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FmoUninit() #0 {
  %1 = load i8*, i8** @MBAmap, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** @MBAmap, align 8
  call void @free(i8* noundef %4) #5
  store i8* null, i8** @MBAmap, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  call void @free(i8* noundef %9) #5
  store i8* null, i8** @MapUnitToSliceGroupMap, align 8
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoStartPicture() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @MBAmap, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.FmoStartPicture, i64 0, i64 0)) #6
  unreachable

6:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %16, %6
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @FmoGetFirstMBOfSliceGroup(i32 noundef %11)
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %14
  store i32 %12, i32* %15, align 4
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetFirstMBOfSliceGroup(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 119
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FmoMB2SliceGroup(i32 noundef %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi i1 [ false, %5 ], [ %15, %11 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5, !llvm.loop !10

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 119
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoEndPicture() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoMB2SliceGroup(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 119
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.FmoMB2SliceGroup, i64 0, i64 0)) #6
  unreachable

10:                                               ; preds = %8
  %11 = load i8*, i8** @MBAmap, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.FmoMB2SliceGroup, i64 0, i64 0)) #6
  unreachable

15:                                               ; preds = %13
  %16 = load i8*, i8** @MBAmap, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetNextMBNr(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @FmoMB2SliceGroup(i32 noundef %5)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 119
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i8*, i8** @MBAmap, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br label %23

23:                                               ; preds = %14, %7
  %24 = phi i1 [ false, %7 ], [ %22, %14 ]
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %7, !llvm.loop !11

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 119
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetPreviousMBNr(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @FmoMB2SliceGroup(i32 noundef %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i8*, i8** @MBAmap, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %3, align 4
  br label %9, !llvm.loop !12

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 119
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @FmoMB2SliceGroup(i32 noundef %12)
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %11
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5, !llvm.loop !13

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FmoSetLastMacroblockInSlice(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @FmoMB2SliceGroup(i32 noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice, i64 0, i64 0)) #6
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @FmoGetNextMBNr(i32 noundef %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoGetFirstMacroblockInSlice(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @FirstMBInSlice, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FmoSliceGroupCompletelyCoded(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @FmoGetFirstMacroblockInSlice(i32 noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

declare dso_local void @error(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType0MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %64, %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %52, %8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ule i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PicSizeInMapUnits, align 4
  %18 = icmp ult i32 %16, %17
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i1 [ false, %9 ], [ %18, %15 ]
  br i1 %20, label %21, label %63

21:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 10
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ule i32 %23, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* @PicSizeInMapUnits, align 4
  %36 = icmp ult i32 %34, %35
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi i1 [ false, %22 ], [ %36, %31 ]
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 %41, i8* %47, align 1
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22, !llvm.loop !14

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %53, i32 0, i32 10
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %9, !llvm.loop !15

63:                                               ; preds = %19
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PicSizeInMapUnits, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %8, label %68, !llvm.loop !16

68:                                               ; preds = %64
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType1MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PicSizeInMapUnits, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 116
  %14 = load i32, i32* %13, align 8
  %15 = urem i32 %11, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 116
  %19 = load i32, i32* %18, align 8
  %20 = udiv i32 %16, %19
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, 1
  %25 = mul i32 %20, %24
  %26 = udiv i32 %25, 2
  %27 = add i32 %15, %26
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  %32 = urem i32 %27, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

38:                                               ; preds = %10
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6, !llvm.loop !17

41:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType2MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PicSizeInMapUnits, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %13, !llvm.loop !18

29:                                               ; preds = %13
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %110, %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %34
  %38 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %39 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %38, i32 0, i32 11
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 116
  %46 = load i32, i32* %45, align 8
  %47 = udiv i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %48, i32 0, i32 11
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 116
  %56 = load i32, i32* %55, align 8
  %57 = urem i32 %53, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %59 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %58, i32 0, i32 12
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 116
  %66 = load i32, i32* %65, align 8
  %67 = udiv i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %69 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %68, i32 0, i32 12
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 116
  %76 = load i32, i32* %75, align 8
  %77 = urem i32 %73, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %106, %37
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ule i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %102, %83
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 116
  %96 = load i32, i32* %95, align 8
  %97 = mul i32 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %92, i64 %100
  store i8 %91, i8* %101, align 1
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %85, !llvm.loop !19

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %79, !llvm.loop !20

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %5, align 4
  br label %34, !llvm.loop !21

113:                                              ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType3MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, 1
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 140
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %20, %23
  %25 = load i32, i32* @PicSizeInMapUnits, align 4
  %26 = call i32 @imin(i32 noundef %24, i32 noundef %25)
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %36, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PicSizeInMapUnits, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 2, i8* %35, align 1
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %27, !llvm.loop !22

39:                                               ; preds = %27
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 116
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %44 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %42, %45
  %47 = udiv i32 %46, 2
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 117
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %52 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %50, %53
  %55 = udiv i32 %54, 2
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %10, align 4
  %60 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %61 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %65 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %191, %39
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PicSizeInMapUnits, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %195

71:                                               ; preds = %67
  %72 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 116
  %76 = load i32, i32* %75, align 8
  %77 = mul i32 %73, %76
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %72, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp uge i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %97 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 116
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %95, %98
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %94, i64 %102
  store i8 %93, i8* %103, align 1
  br label %104

104:                                              ; preds = %88, %71
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @imax(i32 noundef %113, i32 noundef 0)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %116 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = mul i32 2, %118
  %120 = sub i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %190

121:                                              ; preds = %107, %104
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 116
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @imin(i32 noundef %130, i32 noundef %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %137 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %137, i32 0, i32 13
  %139 = load i32, i32* %138, align 4
  %140 = mul i32 2, %139
  %141 = sub i32 1, %140
  store i32 %141, i32* %14, align 4
  br label %189

142:                                              ; preds = %124, %121
  %143 = load i32, i32* %14, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @imax(i32 noundef %151, i32 noundef 0)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %12, align 4
  %154 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %155 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 4
  %157 = mul i32 2, %156
  %158 = sub i32 1, %157
  store i32 %158, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %188

159:                                              ; preds = %145, %142
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %180

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 117
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @imin(i32 noundef %168, i32 noundef %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %12, align 4
  %175 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %176 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %175, i32 0, i32 13
  %177 = load i32, i32* %176, align 4
  %178 = mul i32 2, %177
  %179 = sub i32 %178, 1
  store i32 %179, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %187

180:                                              ; preds = %162, %159
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %180, %166
  br label %188

188:                                              ; preds = %187, %149
  br label %189

189:                                              ; preds = %188, %128
  br label %190

190:                                              ; preds = %189, %111
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %6, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %6, align 4
  br label %67, !llvm.loop !23

195:                                              ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType4MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, 1
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 140
  %14 = load i32, i32* %13, align 4
  %15 = mul i32 %11, %14
  %16 = load i32, i32* @PicSizeInMapUnits, align 4
  %17 = call i32 @imin(i32 noundef %15, i32 noundef %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @PicSizeInMapUnits, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %23, %24
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PicSizeInMapUnits, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %57

47:                                               ; preds = %34
  %48 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 1, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 %52, i8* %56, align 1
  br label %57

57:                                               ; preds = %47, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30, !llvm.loop !24

61:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType5MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 8
  %13 = add i32 %12, 1
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 140
  %16 = load i32, i32* %15, align 4
  %17 = mul i32 %13, %16
  %18 = load i32, i32* @PicSizeInMapUnits, align 4
  %19 = call i32 @imin(i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %21 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PicSizeInMapUnits, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %86, %30
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 116
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %82, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %52 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 116
  %59 = load i32, i32* %58, align 8
  %60 = mul i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %55, i64 %63
  store i8 %54, i8* %64, align 1
  br label %81

65:                                               ; preds = %45
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %67 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 1, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** %3, align 8
  %74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 116
  %75 = load i32, i32* %74, align 8
  %76 = mul i32 %72, %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %71, i64 %79
  store i8 %70, i8* %80, align 1
  br label %81

81:                                               ; preds = %65, %50
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %39, !llvm.loop !25

85:                                               ; preds = %39
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %32, !llvm.loop !26

89:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FmoGenerateType6MapUnitMap(%struct.ImageParameters* noundef %0, %struct.pic_parameter_set_rbsp_t* noundef %1) #0 {
  %3 = alloca %struct.ImageParameters*, align 8
  %4 = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ImageParameters* %0, %struct.ImageParameters** %3, align 8
  store %struct.pic_parameter_set_rbsp_t* %1, %struct.pic_parameter_set_rbsp_t** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PicSizeInMapUnits, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %4, align 8
  %12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 16
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** @MapUnitToSliceGroupMap, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 %17, i8* %21, align 1
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6, !llvm.loop !27

25:                                               ; preds = %6
  ret void
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
