; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/leaky_bucket.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/leaky_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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

@total_frame_buffer = dso_local global i64 0, align 8
@input = external dso_local global %struct.InputParameters*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c" LeakyBucketRate File does not exist. Using rate calculated from avg. rate \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c" Leaky BucketRateFile does not have valid entries.\0A Using rate calculated from avg. rate \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"Error open file lk %s  \0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"init_buffer: buffer_frame\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = dso_local global i64* null, align 8
@img = external dso_local global %struct.ImageParameters*, align 8
@color_formats = dso_local global i32 0, align 4
@top_pic = dso_local global %struct.Picture* null, align 8
@bottom_pic = dso_local global %struct.Picture* null, align 8
@frame_pic = dso_local global %struct.Picture* null, align 8
@frame_pic_1 = dso_local global %struct.Picture* null, align 8
@frame_pic_2 = dso_local global %struct.Picture* null, align 8
@frame_pic_3 = dso_local global %struct.Picture* null, align 8
@frame_pic_si = dso_local global %struct.Picture* null, align 8
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
define dso_local i32 @get_LeakyBucketRate(i64 noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 119
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %6, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* noundef %8)
  %24 = icmp ne i32 1, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %28 = call i32 @fclose(%struct._IO_FILE* noundef %27)
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %17, !llvm.loop !4

37:                                               ; preds = %17
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* noundef %38)
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %25, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PutBigDoubleWord(i64 noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i64 %0, i64* %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = lshr i64 %5, 24
  %7 = and i64 %6, 255
  %8 = trunc i64 %7 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 @fputc(i32 noundef %8, %struct._IO_FILE* noundef %9)
  %11 = load i64, i64* %3, align 8
  %12 = lshr i64 %11, 16
  %13 = and i64 %12, 255
  %14 = trunc i64 %13 to i32
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i32 @fputc(i32 noundef %14, %struct._IO_FILE* noundef %15)
  %17 = load i64, i64* %3, align 8
  %18 = lshr i64 %17, 8
  %19 = and i64 %18, 255
  %20 = trunc i64 %19 to i32
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = call i32 @fputc(i32 noundef %20, %struct._IO_FILE* noundef %21)
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %27 = call i32 @fputc(i32 noundef %25, %struct._IO_FILE* noundef %26)
  ret void
}

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_buffer(i64 noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 120
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %9, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 120
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %19) #3
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i64, i64* %5, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  call void @PutBigDoubleWord(i64 noundef %22, %struct._IO_FILE* noundef %23)
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  call void @PutBigDoubleWord(i64 noundef %32, %struct._IO_FILE* noundef %33)
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  call void @PutBigDoubleWord(i64 noundef %37, %struct._IO_FILE* noundef %38)
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  call void @PutBigDoubleWord(i64 noundef %42, %struct._IO_FILE* noundef %43)
  br label %44

44:                                               ; preds = %28
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %24, !llvm.loop !6

47:                                               ; preds = %24
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %49 = call i32 @fclose(%struct._IO_FILE* noundef %48)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local void @error(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Sort(i64 noundef %0, i64* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = sub i64 %10, 1
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %47, %13
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %30, %20
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %16, !llvm.loop !7

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %8, !llvm.loop !8

54:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_buffer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %18 = load i64, i64* @total_frame_buffer, align 8
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %20 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 noundef %18, i32 noundef %21)
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 118
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @total_frame_buffer, align 8
  %28 = add i64 %27, 1
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 8) #3
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %4, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %0
  %35 = load i64, i64* %3, align 8
  %36 = call noalias i8* @calloc(i64 noundef %35, i64 noundef 8) #3
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** %13, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i64, i64* %3, align 8
  %43 = call noalias i8* @calloc(i64 noundef %42, i64 noundef 8) #3
  %44 = bitcast i8* %43 to i64*
  store i64* %44, i64** %14, align 8
  %45 = load i64*, i64** %14, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i64, i64* %3, align 8
  %50 = call noalias i8* @calloc(i64 noundef %49, i64 noundef 8) #3
  %51 = bitcast i8* %50 to i64*
  store i64* %51, i64** %15, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %48
  store i64 0, i64* %2, align 8
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @total_frame_buffer, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64*, i64** @Bit_Buffer, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %2, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %56, !llvm.loop !9

70:                                               ; preds = %56
  %71 = load i64, i64* %2, align 8
  %72 = uitofp i64 %71 to float
  %73 = load i64, i64* @total_frame_buffer, align 8
  %74 = uitofp i64 %73 to float
  %75 = fdiv float %72, %74
  %76 = fptoui float %75 to i64
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = call i32 @get_LeakyBucketRate(i64 noundef %77, i64* noundef %78)
  %80 = icmp ne i32 1, %79
  br i1 %80, label %81, label %136

81:                                               ; preds = %70
  store i64 0, i64* %6, align 8
  br label %82

82:                                               ; preds = %132, %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %3, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %135

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i64, i64* %1, align 8
  %91 = uitofp i64 %90 to float
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 12
  %94 = load float, float* %93, align 8
  %95 = fmul float %91, %94
  %96 = fptoui float %95 to i64
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %98 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %96, %101
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  br label %131

106:                                              ; preds = %86
  %107 = load i64*, i64** %13, align 8
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = uitofp i64 %111 to float
  %113 = load i64, i64* %1, align 8
  %114 = udiv i64 %113, 4
  %115 = uitofp i64 %114 to float
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 12
  %118 = load float, float* %117, align 8
  %119 = fmul float %115, %118
  %120 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %121 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %119, %124
  %126 = fadd float %112, %125
  %127 = fptoui float %126 to i64
  %128 = load i64*, i64** %13, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %106, %89
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %6, align 8
  br label %82, !llvm.loop !10

135:                                              ; preds = %82
  br label %136

136:                                              ; preds = %135, %70
  %137 = load i64, i64* %3, align 8
  %138 = load i64*, i64** %13, align 8
  call void @Sort(i64 noundef %137, i64* noundef %138)
  %139 = load i64, i64* %1, align 8
  %140 = mul i64 %139, 20
  store i64 %140, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %141

141:                                              ; preds = %299, %136
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %3, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %302

145:                                              ; preds = %141
  %146 = load i64*, i64** %13, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %151 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = mul i64 %149, %154
  %156 = uitofp i64 %155 to float
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 12
  %159 = load float, float* %158, align 8
  %160 = fdiv float %156, %159
  %161 = fptosi float %160 to i64
  store i64 %161, i64* %12, align 8
  %162 = load i64, i64* %9, align 8
  store i64 %162, i64* %11, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64*, i64** %4, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %167

167:                                              ; preds = %221, %145
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @total_frame_buffer, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %224

171:                                              ; preds = %167
  %172 = load i64*, i64** %4, align 8
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** @Bit_Buffer, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %175, %179
  %181 = load i64*, i64** %4, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  store i64 %180, i64* %183, align 8
  %184 = load i64*, i64** %4, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %171
  %191 = load i64*, i64** %4, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %5, align 8
  %195 = load i64, i64* %7, align 8
  store i64 %195, i64* %8, align 8
  br label %196

196:                                              ; preds = %190, %171
  %197 = load i64*, i64** %4, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = add nsw i64 %200, %201
  %203 = load i64*, i64** %4, align 8
  %204 = load i64, i64* %7, align 8
  %205 = add i64 %204, 1
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64 %202, i64* %206, align 8
  %207 = load i64*, i64** %4, align 8
  %208 = load i64, i64* %7, align 8
  %209 = add i64 %208, 1
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %9, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %196
  %215 = load i64, i64* %9, align 8
  %216 = load i64*, i64** %4, align 8
  %217 = load i64, i64* %7, align 8
  %218 = add i64 %217, 1
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64 %215, i64* %219, align 8
  br label %220

220:                                              ; preds = %214, %196
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %7, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %7, align 8
  br label %167, !llvm.loop !11

224:                                              ; preds = %167
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* %5, align 8
  %227 = sub nsw i64 %225, %226
  store i64 %227, i64* %10, align 8
  %228 = load i64*, i64** @Bit_Buffer, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %11, align 8
  %231 = load i64, i64* %11, align 8
  %232 = load i64*, i64** %4, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  store i64 %231, i64* %233, align 8
  store i64 0, i64* %7, align 8
  br label %234

234:                                              ; preds = %287, %224
  %235 = load i64, i64* %7, align 8
  %236 = load i64, i64* %8, align 8
  %237 = add i64 %236, 1
  %238 = icmp ult i64 %235, %237
  br i1 %238, label %239, label %290

239:                                              ; preds = %234
  %240 = load i64*, i64** %4, align 8
  %241 = load i64, i64* %7, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i64*, i64** @Bit_Buffer, align 8
  %245 = load i64, i64* %7, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %243, %247
  %249 = load i64*, i64** %4, align 8
  %250 = load i64, i64* %7, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  store i64 %248, i64* %251, align 8
  %252 = load i64*, i64** %4, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %239
  %258 = load i64*, i64** %4, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %11, align 8
  %263 = sub nsw i64 %262, %261
  store i64 %263, i64* %11, align 8
  %264 = load i64*, i64** %4, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  store i64 0, i64* %266, align 8
  br label %267

267:                                              ; preds = %257, %239
  %268 = load i64*, i64** %4, align 8
  %269 = load i64, i64* %7, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %12, align 8
  %273 = add nsw i64 %271, %272
  %274 = load i64*, i64** %4, align 8
  %275 = load i64, i64* %7, align 8
  %276 = add i64 %275, 1
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  store i64 %273, i64* %277, align 8
  %278 = load i64*, i64** %4, align 8
  %279 = load i64, i64* %7, align 8
  %280 = add i64 %279, 1
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %10, align 8
  %284 = icmp sgt i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %267
  br label %290

286:                                              ; preds = %267
  br label %287

287:                                              ; preds = %286
  %288 = load i64, i64* %7, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %7, align 8
  br label %234, !llvm.loop !12

290:                                              ; preds = %285, %234
  %291 = load i64, i64* %10, align 8
  %292 = load i64*, i64** %14, align 8
  %293 = load i64, i64* %6, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  store i64 %291, i64* %294, align 8
  %295 = load i64, i64* %11, align 8
  %296 = load i64*, i64** %15, align 8
  %297 = load i64, i64* %6, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  store i64 %295, i64* %298, align 8
  br label %299

299:                                              ; preds = %290
  %300 = load i64, i64* %6, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %6, align 8
  br label %141, !llvm.loop !13

302:                                              ; preds = %141
  %303 = load i64, i64* %3, align 8
  %304 = load i64*, i64** %13, align 8
  %305 = load i64*, i64** %14, align 8
  %306 = load i64*, i64** %15, align 8
  call void @write_buffer(i64 noundef %303, i64* noundef %304, i64* noundef %305, i64* noundef %306)
  %307 = load i64*, i64** %4, align 8
  %308 = bitcast i64* %307 to i8*
  call void @free(i8* noundef %308) #3
  %309 = load i64*, i64** %13, align 8
  %310 = bitcast i64* %309 to i8*
  call void @free(i8* noundef %310) #3
  %311 = load i64*, i64** %14, align 8
  %312 = bitcast i64* %311 to i8*
  call void @free(i8* noundef %312) #3
  %313 = load i64*, i64** %15, align 8
  %314 = bitcast i64* %313 to i8*
  call void @free(i8* noundef %314) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @no_mem_exit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
