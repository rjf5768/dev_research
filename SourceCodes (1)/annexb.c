; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/annexb.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"n != NULL\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/annexb.c\00", align 1
@__PRETTY_FUNCTION__.WriteAnnexbNALU = private unnamed_addr constant [30 x i8] c"int WriteAnnexbNALU(NALU_t *)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"n->forbidden_bit == 0\00", align 1
@f = internal global %struct._IO_FILE* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"f != NULL\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"n->startcodeprefix_len == 3 || n->startcodeprefix_len == 4\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Fatal: cannot write %d bytes to bitstream file, exit (-1)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Fatal: cannot open Annex B bytestream file '%s', exit (-1)\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Fatal: cannot close Annex B bytestream file, exit (-1)\0A\00", align 1
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
define dso_local i32 @WriteAnnexbNALU(%struct.NALU_t* noundef %0) #0 {
  %2 = alloca %struct.NALU_t*, align 8
  %3 = alloca i32, align 4
  store %struct.NALU_t* %0, %struct.NALU_t** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %5 = icmp ne %struct.NALU_t* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.WriteAnnexbNALU, i64 0, i64 0)) #3
  unreachable

8:                                                ; preds = %6
  %9 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %10 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %15

14:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.WriteAnnexbNALU, i64 0, i64 0)) #3
  unreachable

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %20

19:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.WriteAnnexbNALU, i64 0, i64 0)) #3
  unreachable

20:                                               ; preds = %18
  %21 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %22 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %27 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  br label %32

31:                                               ; preds = %25
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.WriteAnnexbNALU, i64 0, i64 0)) #3
  unreachable

32:                                               ; preds = %30
  %33 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %34 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %39 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %38)
  store i32 8, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %42 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %44 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %43)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %46 = call i32 @putc(i32 noundef 1, %struct._IO_FILE* noundef %45)
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 24
  store i32 %48, i32* %3, align 4
  %49 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %50 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 7
  %53 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %54 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 5
  %57 = or i32 %52, %56
  %58 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %59 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = trunc i32 %61 to i8
  %63 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %64 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %62, i8* %66, align 1
  %67 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %68 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %72 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %75 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %79 = call i64 @fwrite(i8* noundef %73, i64 noundef 1, i64 noundef %77, %struct._IO_FILE* noundef %78)
  %80 = icmp ne i64 %70, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %40
  %82 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %83 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 noundef %84)
  call void @exit(i32 noundef -1) #3
  unreachable

86:                                               ; preds = %40
  %87 = load %struct.NALU_t*, %struct.NALU_t** %2, align 8
  %88 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 %89, 8
  %91 = load i32, i32* %3, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %94 = call i32 @fflush(%struct._IO_FILE* noundef %93)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @OpenAnnexbFile(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** @f, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* noundef %7)
  call void @exit(i32 noundef -1) #3
  unreachable

9:                                                ; preds = %1
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @CloseAnnexbFile() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %2 = call i32 @fclose(%struct._IO_FILE* noundef %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef -1) #3
  unreachable

6:                                                ; preds = %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
