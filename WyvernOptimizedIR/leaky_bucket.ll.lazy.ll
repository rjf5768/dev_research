; ModuleID = './leaky_bucket.ll'
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
@str = private unnamed_addr constant [90 x i8] c" Leaky BucketRateFile does not have valid entries.\0A Using rate calculated from avg. rate \00", align 1
@str.1 = private unnamed_addr constant [76 x i8] c" LeakyBucketRate File does not exist. Using rate calculated from avg. rate \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_LeakyBucketRate(i64 noundef %0, i64* nocapture noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i64 0, i32 119, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.1, i64 0, i64 0))
  br label %23

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %19, %9
  %.01 = phi i64 [ 0, %9 ], [ %20, %19 ]
  %11 = icmp ult i64 %.01, %0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* noundef nonnull %3) #5
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %16, label %14

14:                                               ; preds = %12
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([90 x i8], [90 x i8]* @str, i64 0, i64 0))
  %15 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #5
  br label %23

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i64, i64* %1, i64 %.01
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16
  %20 = add i64 %.01, 1
  br label %10, !llvm.loop !4

21:                                               ; preds = %10
  %22 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #5
  br label %23

23:                                               ; preds = %21, %14, %8
  %.0 = phi i32 [ 0, %8 ], [ 0, %14 ], [ 1, %21 ]
  ret i32 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PutBigDoubleWord(i64 noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = trunc i64 %0 to i32
  %4 = lshr i32 %3, 24
  %5 = call i32 @fputc(i32 noundef %4, %struct._IO_FILE* noundef %1) #5
  %6 = trunc i64 %0 to i32
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = call i32 @fputc(i32 noundef %8, %struct._IO_FILE* noundef %1) #5
  %10 = trunc i64 %0 to i32
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = call i32 @fputc(i32 noundef %12, %struct._IO_FILE* noundef %1) #5
  %14 = trunc i64 %0 to i32
  %15 = and i32 %14, 255
  %16 = call i32 @fputc(i32 noundef %15, %struct._IO_FILE* noundef %1) #5
  ret void
}

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_buffer(i64 noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i64* nocapture noundef readonly %3) #0 {
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i64 0, i32 120, i64 0
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #5
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i64 0, i32 120, i64 0
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %11) #5
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 1) #5
  br label %13

13:                                               ; preds = %9, %4
  call void @PutBigDoubleWord(i64 noundef %0, %struct._IO_FILE* noundef %7)
  br label %14

14:                                               ; preds = %23, %13
  %.0 = phi i64 [ 0, %13 ], [ %24, %23 ]
  %15 = icmp ult i64 %.0, %0
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = getelementptr inbounds i64, i64* %1, i64 %.0
  %18 = load i64, i64* %17, align 8
  call void @PutBigDoubleWord(i64 noundef %18, %struct._IO_FILE* noundef %7)
  %19 = getelementptr inbounds i64, i64* %2, i64 %.0
  %20 = load i64, i64* %19, align 8
  call void @PutBigDoubleWord(i64 noundef %20, %struct._IO_FILE* noundef %7)
  %21 = getelementptr inbounds i64, i64* %3, i64 %.0
  %22 = load i64, i64* %21, align 8
  call void @PutBigDoubleWord(i64 noundef %22, %struct._IO_FILE* noundef %7)
  br label %23

23:                                               ; preds = %16
  %24 = add i64 %.0, 1
  br label %14, !llvm.loop !6

25:                                               ; preds = %14
  %26 = call i32 @fclose(%struct._IO_FILE* noundef %7) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local void @error(i8* noundef, i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Sort(i64 noundef %0, i64* nocapture noundef %1) #3 {
  br label %3

3:                                                ; preds = %25, %2
  %.01 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %4 = add i64 %0, -1
  %5 = icmp ult i64 %.01, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %23, %6
  %.0.in = phi i64 [ %.01, %6 ], [ %.0, %23 ]
  %.0 = add i64 %.0.in, 1
  %8 = icmp ult i64 %.0, %0
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds i64, i64* %1, i64 %.01
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %1, i64 %.0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds i64, i64* %1, i64 %.01
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %1, i64 %.0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %1, i64 %.01
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds i64, i64* %1, i64 %.0
  store i64 %17, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %9
  br label %23

23:                                               ; preds = %22
  br label %7, !llvm.loop !7

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24
  %26 = add i64 %.01, 1
  br label %3, !llvm.loop !8

27:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_buffer() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %1)
  %3 = load i64, i64* @total_frame_buffer, align 8
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i64 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 noundef %3, i32 noundef %6) #5
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i64 0, i32 118
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @total_frame_buffer, align 8
  %13 = add i64 %12, 1
  %14 = call noalias i8* @calloc(i64 noundef %13, i64 noundef 8) #5
  %15 = bitcast i8* %14 to i64*
  %.not = icmp eq i8* %14, null
  br i1 %.not, label %16, label %17

16:                                               ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %17

17:                                               ; preds = %16, %0
  %18 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %19 = bitcast i8* %18 to i64*
  %.not13 = icmp eq i8* %18, null
  br i1 %.not13, label %20, label %21

20:                                               ; preds = %17
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %21

21:                                               ; preds = %20, %17
  %22 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %23 = bitcast i8* %22 to i64*
  %.not14 = icmp eq i8* %22, null
  br i1 %.not14, label %24, label %25

24:                                               ; preds = %21
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %25

25:                                               ; preds = %24, %21
  %26 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %27 = bitcast i8* %26 to i64*
  %.not15 = icmp eq i8* %26, null
  br i1 %.not15, label %28, label %29

28:                                               ; preds = %25
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %34, %29
  %.05 = phi i64 [ 0, %29 ], [ %39, %34 ]
  %.01 = phi i64 [ 0, %29 ], [ %38, %34 ]
  %31 = load i64, i64* @total_frame_buffer, align 8
  %32 = icmp ult i64 %.05, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33
  %35 = load i64*, i64** @Bit_Buffer, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 %.05
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %.01, %37
  %39 = add i64 %.05, 1
  br label %30, !llvm.loop !9

40:                                               ; preds = %30
  %41 = uitofp i64 %.01 to float
  %42 = load i64, i64* @total_frame_buffer, align 8
  %43 = uitofp i64 %42 to float
  %44 = fdiv float %41, %43
  %45 = fptoui float %44 to i64
  %46 = call i32 @get_LeakyBucketRate(i64 noundef %11, i64* noundef %19)
  %.not16 = icmp eq i32 %46, 1
  br i1 %.not16, label %90, label %47

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %87, %47
  %.010 = phi i64 [ 0, %47 ], [ %88, %87 ]
  %49 = icmp ult i64 %.010, %11
  br i1 %49, label %50, label %89

50:                                               ; preds = %48
  %51 = icmp eq i64 %.010, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = uitofp i64 %45 to float
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i64 0, i32 12
  %56 = load float, float* %55, align 8
  %57 = fmul float %56, %53
  %58 = fptoui float %57 to i64
  %59 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %59, i64 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %58, %63
  %65 = getelementptr inbounds i64, i64* %19, i64 %.010
  store i64 %64, i64* %65, align 8
  br label %86

66:                                               ; preds = %50
  %67 = add i64 %.010, -1
  %68 = getelementptr inbounds i64, i64* %19, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = uitofp i64 %69 to float
  %71 = lshr i64 %45, 2
  %72 = uitofp i64 %71 to float
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i64 0, i32 12
  %75 = load float, float* %74, align 8
  %76 = fmul float %75, %72
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %78 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i64 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %76, %81
  %83 = fadd float %82, %70
  %84 = fptoui float %83 to i64
  %85 = getelementptr inbounds i64, i64* %19, i64 %.010
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %66, %52
  br label %87

87:                                               ; preds = %86
  %88 = add i64 %.010, 1
  br label %48, !llvm.loop !10

89:                                               ; preds = %48
  br label %90

90:                                               ; preds = %89, %40
  call void @Sort(i64 noundef %11, i64* noundef %19)
  %91 = mul i64 %45, 20
  br label %92

92:                                               ; preds = %178, %90
  %.111 = phi i64 [ 0, %90 ], [ %179, %178 ]
  %.02 = phi i64 [ 0, %90 ], [ %.13, %178 ]
  %93 = icmp ult i64 %.111, %11
  br i1 %93, label %94, label %180

94:                                               ; preds = %92
  %95 = getelementptr inbounds i64, i64* %19, i64 %.111
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %98 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i64 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul i64 %96, %101
  %103 = uitofp i64 %102 to float
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i64 0, i32 12
  %106 = load float, float* %105, align 8
  %107 = fdiv float %103, %106
  %108 = fptosi float %107 to i64
  store i64 %91, i64* %15, align 8
  br label %109

109:                                              ; preds = %138, %94
  %.08 = phi i64 [ %91, %94 ], [ %.19, %138 ]
  %.16 = phi i64 [ 0, %94 ], [ %139, %138 ]
  %.13 = phi i64 [ %.02, %94 ], [ %.24, %138 ]
  %110 = load i64, i64* @total_frame_buffer, align 8
  %111 = icmp ult i64 %.16, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = getelementptr inbounds i64, i64* %15, i64 %.16
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** @Bit_Buffer, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 %.16
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = getelementptr inbounds i64, i64* %15, i64 %.16
  store i64 %118, i64* %119, align 8
  %120 = icmp slt i64 %118, %.08
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = getelementptr inbounds i64, i64* %15, i64 %.16
  %123 = load i64, i64* %122, align 8
  br label %124

124:                                              ; preds = %121, %112
  %.19 = phi i64 [ %123, %121 ], [ %.08, %112 ]
  %.24 = phi i64 [ %.16, %121 ], [ %.13, %112 ]
  %125 = getelementptr inbounds i64, i64* %15, i64 %.16
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %108
  %128 = add i64 %.16, 1
  %129 = getelementptr inbounds i64, i64* %15, i64 %128
  store i64 %127, i64* %129, align 8
  %130 = add i64 %.16, 1
  %131 = getelementptr inbounds i64, i64* %15, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, %91
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = add i64 %.16, 1
  %136 = getelementptr inbounds i64, i64* %15, i64 %135
  store i64 %91, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %124
  br label %138

138:                                              ; preds = %137
  %139 = add i64 %.16, 1
  br label %109, !llvm.loop !11

140:                                              ; preds = %109
  %141 = sub nsw i64 %91, %.08
  %142 = load i64*, i64** @Bit_Buffer, align 8
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %15, align 8
  br label %144

144:                                              ; preds = %173, %140
  %.27 = phi i64 [ 0, %140 ], [ %174, %173 ]
  %.0 = phi i64 [ %143, %140 ], [ %.1, %173 ]
  %145 = add i64 %.13, 1
  %146 = icmp ult i64 %.27, %145
  br i1 %146, label %147, label %.loopexit

147:                                              ; preds = %144
  %148 = getelementptr inbounds i64, i64* %15, i64 %.27
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** @Bit_Buffer, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %.27
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = getelementptr inbounds i64, i64* %15, i64 %.27
  store i64 %153, i64* %154, align 8
  %155 = icmp slt i64 %153, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = getelementptr inbounds i64, i64* %15, i64 %.27
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %.0, %158
  %160 = getelementptr inbounds i64, i64* %15, i64 %.27
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %147
  %.1 = phi i64 [ %159, %156 ], [ %.0, %147 ]
  %162 = getelementptr inbounds i64, i64* %15, i64 %.27
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %108
  %165 = add i64 %.27, 1
  %166 = getelementptr inbounds i64, i64* %15, i64 %165
  store i64 %164, i64* %166, align 8
  %167 = add i64 %.27, 1
  %168 = getelementptr inbounds i64, i64* %15, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %169, %141
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %175

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172
  %174 = add i64 %.27, 1
  br label %144, !llvm.loop !12

.loopexit:                                        ; preds = %144
  br label %175

175:                                              ; preds = %.loopexit, %171
  %.2 = phi i64 [ %.1, %171 ], [ %.0, %.loopexit ]
  %176 = getelementptr inbounds i64, i64* %23, i64 %.111
  store i64 %141, i64* %176, align 8
  %177 = getelementptr inbounds i64, i64* %27, i64 %.111
  store i64 %.2, i64* %177, align 8
  br label %178

178:                                              ; preds = %175
  %179 = add i64 %.111, 1
  br label %92, !llvm.loop !13

180:                                              ; preds = %92
  call void @write_buffer(i64 noundef %11, i64* noundef %19, i64* noundef %23, i64* noundef %27)
  call void @free(i8* noundef %14) #5
  call void @free(i8* noundef %18) #5
  call void @free(i8* noundef %22) #5
  call void @free(i8* noundef %26) #5
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local void @no_mem_exit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
