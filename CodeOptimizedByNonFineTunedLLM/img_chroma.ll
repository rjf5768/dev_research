; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/img_chroma.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/lencod/img_chroma.c"
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@img = external dso_local global %struct.ImageParameters*, align 8
@img_pad_size_uv_x = dso_local global i32 0, align 4
@img_pad_size_uv_y = dso_local global i32 0, align 4
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
define dso_local void @getSubImagesChroma(%struct.storable_picture* noundef %0) #0 {
  %2 = alloca %struct.storable_picture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i16*, align 8
  %32 = alloca i16*, align 8
  %33 = alloca i16*, align 8
  %34 = alloca i32, align 4
  store %struct.storable_picture* %0, %struct.storable_picture** %2, align 8
  %35 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 20
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %25, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 21
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %26, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 160
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 8, i32* %20, align 4
  store i32 8, i32* %19, align 4
  store i32 1, i32* %28, align 4
  store i32 1, i32* %27, align 4
  br label %56

48:                                               ; preds = %1
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 160
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 8, i32* %20, align 4
  store i32 4, i32* %19, align 4
  store i32 2, i32* %28, align 4
  store i32 1, i32* %27, align 4
  br label %55

54:                                               ; preds = %48
  store i32 4, i32* %20, align 4
  store i32 4, i32* %19, align 4
  store i32 2, i32* %28, align 4
  store i32 2, i32* %27, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 20
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @img_pad_size_uv_x, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %18, align 4
  %63 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 21
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @img_pad_size_uv_y, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %24, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %307, %56
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %310

76:                                               ; preds = %73
  store i32 0, i32* %22, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %300, %76
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %306

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 8, %82
  store i32 %83, i32* %34, align 4
  %84 = load i32, i32* %34, align 4
  %85 = mul nsw i32 %84, 8
  store i32 %85, i32* %29, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 8
  store i32 %87, i32* %30, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %293, %81
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %299

92:                                               ; preds = %88
  %93 = load i32, i32* %34, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 8, %94
  %96 = mul nsw i32 %93, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %34, align 4
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 8, %101
  %103 = mul nsw i32 %100, %102
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* @img_pad_size_uv_y, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %287, %92
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @img_pad_size_uv_y, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %292

115:                                              ; preds = %109
  %116 = load i32, i32* %26, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @iClip3(i32 noundef 0, i32 noundef %116, i32 noundef %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @iClip3(i32 noundef 0, i32 noundef %119, i32 noundef %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %124 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 32
  %125 = load i16*****, i16****** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16****, i16***** %125, i64 %127
  %129 = load i16****, i16***** %128, align 8
  %130 = load i32, i32* %22, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i16***, i16**** %129, i64 %131
  %133 = load i16***, i16**** %132, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i16**, i16*** %133, i64 %135
  %137 = load i16**, i16*** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16*, i16** %137, i64 %139
  %141 = load i16*, i16** %140, align 8
  %142 = getelementptr inbounds i16, i16* %141, i64 0
  store i16* %142, i16** %33, align 8
  %143 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %143, i32 0, i32 33
  %145 = load i16***, i16**** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16**, i16*** %145, i64 %147
  %149 = load i16**, i16*** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i16*, i16** %149, i64 %151
  %153 = load i16*, i16** %152, align 8
  store i16* %153, i16** %31, align 8
  %154 = load %struct.storable_picture*, %struct.storable_picture** %2, align 8
  %155 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %154, i32 0, i32 33
  %156 = load i16***, i16**** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16**, i16*** %156, i64 %158
  %160 = load i16**, i16*** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16*, i16** %160, i64 %162
  %164 = load i16*, i16** %163, align 8
  store i16* %164, i16** %32, align 8
  %165 = load i32, i32* @img_pad_size_uv_x, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %190, %115
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %167
  %171 = load i32, i32* %29, align 4
  %172 = load i16*, i16** %31, align 8
  %173 = getelementptr inbounds i16, i16* %172, i64 0
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = mul nsw i32 %171, %175
  %177 = load i32, i32* %30, align 4
  %178 = load i16*, i16** %32, align 8
  %179 = getelementptr inbounds i16, i16* %178, i64 0
  %180 = load i16, i16* %179, align 2
  %181 = zext i16 %180 to i32
  %182 = mul nsw i32 %177, %181
  %183 = add nsw i32 %176, %182
  %184 = call i32 @rshift_rnd_sf(i32 noundef %183, i32 noundef 6)
  %185 = trunc i32 %184 to i16
  %186 = load i16*, i16** %33, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %186, i64 %188
  store i16 %185, i16* %189, align 2
  br label %190

190:                                              ; preds = %170
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %167, !llvm.loop !4

195:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %244, %195
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %249

200:                                              ; preds = %196
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i16*, i16** %31, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, i16* %204, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = mul nsw i32 %203, %209
  %211 = load i32, i32* %14, align 4
  %212 = load i16*, i16** %31, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, i16* %212, i64 %214
  %216 = load i16, i16* %215, align 2
  %217 = zext i16 %216 to i32
  %218 = mul nsw i32 %211, %217
  %219 = add nsw i32 %210, %218
  %220 = load i32, i32* %15, align 4
  %221 = load i16*, i16** %32, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, i16* %221, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = zext i16 %225 to i32
  %227 = mul nsw i32 %220, %226
  %228 = add nsw i32 %219, %227
  %229 = load i32, i32* %16, align 4
  %230 = load i16*, i16** %32, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i16, i16* %230, i64 %232
  %234 = load i16, i16* %233, align 2
  %235 = zext i16 %234 to i32
  %236 = mul nsw i32 %229, %235
  %237 = add nsw i32 %228, %236
  %238 = call i32 @rshift_rnd_sf(i32 noundef %237, i32 noundef 6)
  %239 = trunc i32 %238 to i16
  %240 = load i16*, i16** %33, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i16, i16* %240, i64 %242
  store i16 %239, i16* %243, align 2
  br label %244

244:                                              ; preds = %200
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %196, !llvm.loop !6

249:                                              ; preds = %196
  %250 = load i32, i32* %25, align 4
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %281, %249
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* @img_pad_size_uv_x, align 4
  %255 = sub nsw i32 %253, %254
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %286

257:                                              ; preds = %251
  %258 = load i32, i32* %29, align 4
  %259 = load i16*, i16** %31, align 8
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i16, i16* %259, i64 %261
  %263 = load i16, i16* %262, align 2
  %264 = zext i16 %263 to i32
  %265 = mul nsw i32 %258, %264
  %266 = load i32, i32* %30, align 4
  %267 = load i16*, i16** %32, align 8
  %268 = load i32, i32* %25, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i16, i16* %267, i64 %269
  %271 = load i16, i16* %270, align 2
  %272 = zext i16 %271 to i32
  %273 = mul nsw i32 %266, %272
  %274 = add nsw i32 %265, %273
  %275 = call i32 @rshift_rnd_sf(i32 noundef %274, i32 noundef 6)
  %276 = trunc i32 %275 to i16
  %277 = load i16*, i16** %33, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i16, i16* %277, i64 %279
  store i16 %276, i16* %280, align 2
  br label %281

281:                                              ; preds = %257
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  %284 = load i32, i32* %4, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %4, align 4
  br label %251, !llvm.loop !7

286:                                              ; preds = %251
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %3, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %3, align 4
  br label %109, !llvm.loop !8

292:                                              ; preds = %109
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %21, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %27, align 4
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %12, align 4
  br label %88, !llvm.loop !9

299:                                              ; preds = %88
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %22, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %22, align 4
  %303 = load i32, i32* %28, align 4
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %11, align 4
  br label %77, !llvm.loop !10

306:                                              ; preds = %77
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %10, align 4
  br label %73, !llvm.loop !11

310:                                              ; preds = %73
  ret void
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
define internal i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %6, 1
  %8 = shl i32 1, %7
  %9 = add nsw i32 %5, %8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %9, %10
  ret i32 %11
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
