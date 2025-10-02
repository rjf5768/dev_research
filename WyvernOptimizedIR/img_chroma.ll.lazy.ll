; ModuleID = './img_chroma.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @getSubImagesChroma(%struct.storable_picture* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 20
  %3 = load i32, i32* %2, align 8
  %4 = add nsw i32 %3, -1
  %5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 21
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i64 0, i32 160
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i64 0, i32 160
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %18
  %.015 = phi i32 [ 8, %18 ], [ 4, %19 ]
  %.08 = phi i32 [ 1, %18 ], [ 2, %19 ]
  br label %21

21:                                               ; preds = %20, %12
  %.118 = phi i32 [ 8, %12 ], [ 4, %20 ]
  %.116 = phi i32 [ 8, %12 ], [ %.015, %20 ]
  %.19 = phi i32 [ 1, %12 ], [ %.08, %20 ]
  %.1 = phi i32 [ 1, %12 ], [ 2, %20 ]
  %22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 20
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @img_pad_size_uv_x, align 4
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %23, %25
  %27 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 21
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @img_pad_size_uv_y, align 4
  %30 = shl nsw i32 %29, 1
  %31 = add nsw i32 %28, %30
  br label %32

32:                                               ; preds = %181, %21
  %.012 = phi i32 [ 0, %21 ], [ %182, %181 ]
  %33 = icmp ult i32 %.012, 2
  br i1 %33, label %34, label %183

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %177, %34
  %.013 = phi i32 [ 0, %34 ], [ %179, %177 ]
  %.010 = phi i32 [ 0, %34 ], [ %178, %177 ]
  %36 = icmp ult i32 %.010, %.118
  br i1 %36, label %37, label %180

37:                                               ; preds = %35
  %38 = sub nsw i32 8, %.013
  %39 = shl nsw i32 %38, 3
  %40 = shl nsw i32 %.013, 3
  br label %41

41:                                               ; preds = %173, %37
  %.014 = phi i32 [ 0, %37 ], [ %175, %173 ]
  %.011 = phi i32 [ 0, %37 ], [ %174, %173 ]
  %42 = icmp slt i32 %.011, %.116
  br i1 %42, label %43, label %176

43:                                               ; preds = %41
  %44 = sub nsw i32 8, %.014
  %45 = mul nsw i32 %38, %44
  %46 = mul nsw i32 %38, %.014
  %47 = sub nsw i32 8, %.014
  %48 = mul nsw i32 %.013, %47
  %49 = mul nsw i32 %.013, %.014
  %50 = load i32, i32* @img_pad_size_uv_y, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %169, %43
  %.07 = phi i32 [ %51, %43 ], [ %170, %169 ]
  %.01 = phi i32 [ 0, %43 ], [ %171, %169 ]
  %53 = load i32, i32* @img_pad_size_uv_y, align 4
  %54 = sub nsw i32 %31, %53
  %55 = icmp slt i32 %.07, %54
  br i1 %55, label %56, label %172

56:                                               ; preds = %52
  %57 = call i32 @iClip3(i32 noundef 0, i32 noundef %7, i32 noundef %.07)
  %58 = add nsw i32 %.07, 1
  %59 = call i32 @iClip3(i32 noundef 0, i32 noundef %7, i32 noundef %58)
  %60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 32
  %61 = load i16*****, i16****** %60, align 8
  %62 = zext i32 %.012 to i64
  %63 = getelementptr inbounds i16****, i16***** %61, i64 %62
  %64 = load i16****, i16***** %63, align 8
  %65 = zext i32 %.010 to i64
  %66 = getelementptr inbounds i16***, i16**** %64, i64 %65
  %67 = load i16***, i16**** %66, align 8
  %68 = zext i32 %.011 to i64
  %69 = getelementptr inbounds i16**, i16*** %67, i64 %68
  %70 = load i16**, i16*** %69, align 8
  %71 = zext i32 %.01 to i64
  %72 = getelementptr inbounds i16*, i16** %70, i64 %71
  %73 = load i16*, i16** %72, align 8
  %74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 33
  %75 = load i16***, i16**** %74, align 8
  %76 = zext i32 %.012 to i64
  %77 = getelementptr inbounds i16**, i16*** %75, i64 %76
  %78 = load i16**, i16*** %77, align 8
  %79 = sext i32 %57 to i64
  %80 = getelementptr inbounds i16*, i16** %78, i64 %79
  %81 = load i16*, i16** %80, align 8
  %82 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i64 0, i32 33
  %83 = load i16***, i16**** %82, align 8
  %84 = zext i32 %.012 to i64
  %85 = getelementptr inbounds i16**, i16*** %83, i64 %84
  %86 = load i16**, i16*** %85, align 8
  %87 = sext i32 %59 to i64
  %88 = getelementptr inbounds i16*, i16** %86, i64 %87
  %89 = load i16*, i16** %88, align 8
  %90 = load i32, i32* @img_pad_size_uv_x, align 4
  %91 = sub nsw i32 0, %90
  br label %92

92:                                               ; preds = %106, %56
  %.04 = phi i32 [ %91, %56 ], [ %107, %106 ]
  %.02 = phi i32 [ 0, %56 ], [ %108, %106 ]
  %93 = icmp slt i32 %.04, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %92
  %95 = load i16, i16* %81, align 2
  %96 = zext i16 %95 to i32
  %97 = mul nsw i32 %39, %96
  %98 = load i16, i16* %89, align 2
  %99 = zext i16 %98 to i32
  %100 = mul nsw i32 %40, %99
  %101 = add nsw i32 %97, %100
  %102 = call i32 @rshift_rnd_sf(i32 noundef %101, i32 noundef 6)
  %103 = trunc i32 %102 to i16
  %104 = zext i32 %.02 to i64
  %105 = getelementptr inbounds i16, i16* %73, i64 %104
  store i16 %103, i16* %105, align 2
  br label %106

106:                                              ; preds = %94
  %107 = add nsw i32 %.04, 1
  %108 = add nuw nsw i32 %.02, 1
  br label %92, !llvm.loop !4

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %141, %109
  %.15 = phi i32 [ 0, %109 ], [ %142, %141 ]
  %.13 = phi i32 [ %.02, %109 ], [ %143, %141 ]
  %111 = icmp slt i32 %.15, %4
  br i1 %111, label %112, label %144

112:                                              ; preds = %110
  %113 = add nuw nsw i32 %.15, 1
  %114 = zext i32 %.15 to i64
  %115 = getelementptr inbounds i16, i16* %81, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = mul nsw i32 %45, %117
  %119 = zext i32 %113 to i64
  %120 = getelementptr inbounds i16, i16* %81, i64 %119
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = mul nsw i32 %46, %122
  %124 = add nsw i32 %118, %123
  %125 = zext i32 %.15 to i64
  %126 = getelementptr inbounds i16, i16* %89, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = mul nsw i32 %48, %128
  %130 = add nsw i32 %124, %129
  %131 = zext i32 %113 to i64
  %132 = getelementptr inbounds i16, i16* %89, i64 %131
  %133 = load i16, i16* %132, align 2
  %134 = zext i16 %133 to i32
  %135 = mul nsw i32 %49, %134
  %136 = add nsw i32 %130, %135
  %137 = call i32 @rshift_rnd_sf(i32 noundef %136, i32 noundef 6)
  %138 = trunc i32 %137 to i16
  %139 = zext i32 %.13 to i64
  %140 = getelementptr inbounds i16, i16* %73, i64 %139
  store i16 %138, i16* %140, align 2
  br label %141

141:                                              ; preds = %112
  %142 = add nuw nsw i32 %.15, 1
  %143 = add nuw nsw i32 %.13, 1
  br label %110, !llvm.loop !6

144:                                              ; preds = %110
  br label %145

145:                                              ; preds = %165, %144
  %.26 = phi i32 [ %4, %144 ], [ %166, %165 ]
  %.2 = phi i32 [ %.13, %144 ], [ %167, %165 ]
  %146 = load i32, i32* @img_pad_size_uv_x, align 4
  %147 = sub nsw i32 %26, %146
  %148 = icmp slt i32 %.26, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = sext i32 %4 to i64
  %151 = getelementptr inbounds i16, i16* %81, i64 %150
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = mul nsw i32 %39, %153
  %155 = sext i32 %4 to i64
  %156 = getelementptr inbounds i16, i16* %89, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  %159 = mul nsw i32 %40, %158
  %160 = add nsw i32 %154, %159
  %161 = call i32 @rshift_rnd_sf(i32 noundef %160, i32 noundef 6)
  %162 = trunc i32 %161 to i16
  %163 = zext i32 %.2 to i64
  %164 = getelementptr inbounds i16, i16* %73, i64 %163
  store i16 %162, i16* %164, align 2
  br label %165

165:                                              ; preds = %149
  %166 = add nsw i32 %.26, 1
  %167 = add nuw nsw i32 %.2, 1
  br label %145, !llvm.loop !7

168:                                              ; preds = %145
  br label %169

169:                                              ; preds = %168
  %170 = add nsw i32 %.07, 1
  %171 = add nuw nsw i32 %.01, 1
  br label %52, !llvm.loop !8

172:                                              ; preds = %52
  br label %173

173:                                              ; preds = %172
  %174 = add nuw nsw i32 %.011, 1
  %175 = add nsw i32 %.014, %.19
  br label %41, !llvm.loop !9

176:                                              ; preds = %41
  br label %177

177:                                              ; preds = %176
  %178 = add nuw nsw i32 %.010, 1
  %179 = add nuw nsw i32 %.013, %.1
  br label %35, !llvm.loop !10

180:                                              ; preds = %35
  br label %181

181:                                              ; preds = %180
  %182 = add nuw nsw i32 %.012, 1
  br label %32, !llvm.loop !11

183:                                              ; preds = %32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = call i32 @imax(i32 noundef %2, i32 noundef %0)
  %5 = call i32 @imin(i32 noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %1, -1
  %4 = shl i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
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

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
