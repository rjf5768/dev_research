; ModuleID = './erc_do_i.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/erc_do_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.frame = type { i16*, i16*, i16* }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }
%_wyvern_thunk_type.2 = type { i32 (%_wyvern_thunk_type.2*)*, i32, i1, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }
%_wyvern_thunk_type.10 = type { i16* (%_wyvern_thunk_type.10*)*, i16*, i1, i16*, i32, i32, i32 }

@active_pps = dso_local global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = dso_local global %struct.seq_parameter_set_rbsp_t* null, align 8
@imgY_ref = dso_local global i16** null, align 8
@imgUV_ref = dso_local global i16*** null, align 8
@PicPos = dso_local global i32** null, align 8
@ReMapRef = dso_local global [20 x i32] zeroinitializer, align 16
@Bframe_ctr = dso_local global i32 0, align 4
@frame_no = dso_local global i32 0, align 4
@g_nFrame = dso_local global i32 0, align 4
@TopFieldForSkip_Y = dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = dso_local global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = dso_local global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = dso_local global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = dso_local global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = dso_local global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = dso_local global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = dso_local global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = dso_local global [8 x i32*] zeroinitializer, align 16
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@tot_time = dso_local global i64 0, align 8
@p_out = dso_local global i32 0, align 4
@p_ref = dso_local global i32 0, align 4
@p_log = dso_local global %struct._IO_FILE* null, align 8
@previous_frame_num = dso_local global i32 0, align 4
@ref_flag = dso_local global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = dso_local global i32 0, align 4
@Is_redundant_correct = dso_local global i32 0, align 4
@redundant_slice_ref_idx = dso_local global i32 0, align 4
@nal_startcode_follows = dso_local global i32 (%struct.img_par*, i32)* null, align 8
@last_out_fs = dso_local global %struct.frame_store* null, align 8
@pocs_in_dpb = dso_local global [100 x i32] zeroinitializer, align 16
@img = external dso_local global %struct.img_par*, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @ercConcealIntraFrame(%struct.frame* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef readonly %3) #0 {
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.2, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %.not = icmp eq %struct.ercVariables_s* %3, null
  br i1 %.not, label %21, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 10
  %7 = load i32, i32* %6, align 8
  %.not5 = icmp eq i32 %7, 0
  br i1 %.not5, label %21, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 9
  %10 = load i32, i32* %9, align 4
  %.not6 = icmp eq i32 %10, 0
  br i1 %.not6, label %20, label %11

11:                                               ; preds = %8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_ercConcealIntraFrame_685599549, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %2, i32* %_wyvern_thunk_arg_gep_, align 8
  %12 = ashr i32 %1, 3
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 2
  %14 = load i32*, i32** %13, align 8
  call void @_wyvern_calleeclone_concealBlocks_1787139046(i32 noundef %12, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 0, %struct.frame* noundef %0, i32 noundef %1, i32* noundef %14)
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_ercConcealIntraFrame_535144517, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 4
  %_wyvern_thunk_arg_gep_4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 3
  store i32 %2, i32* %_wyvern_thunk_arg_gep_4, align 8
  %15 = ashr i32 %1, 4
  %16 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 3
  %17 = load i32*, i32** %16, align 8
  call void @_wyvern_calleeclone_concealBlocks_1400415244(i32 noundef %15, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca1, i32 noundef 1, %struct.frame* noundef %0, i32 noundef %1, i32* noundef %17)
  %18 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_ercConcealIntraFrame_535144517(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca1)
  call void @concealBlocks(i32 noundef %15, i32 noundef %_wyvern_thunkcall, i32 noundef 2, %struct.frame* noundef %0, i32 noundef %1, i32* noundef %19)
  br label %20

20:                                               ; preds = %11, %8
  br label %22

21:                                               ; preds = %5, %4
  br label %22

22:                                               ; preds = %21, %20
  %.0 = phi i32 [ 1, %20 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @concealBlocks(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.frame* nocapture noundef readonly %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca [8 x i32], align 16
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32 [ 2, %9 ], [ 1, %10 ]
  br label %12

12:                                               ; preds = %213, %11
  %.012 = phi i32 [ 0, %11 ], [ %214, %213 ]
  %13 = icmp slt i32 %.012, %0
  br i1 %13, label %14, label %215

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %210, %14
  %.08 = phi i32 [ 0, %14 ], [ %211, %210 ]
  %16 = icmp slt i32 %.08, %1
  br i1 %16, label %17, label %212

17:                                               ; preds = %15
  %18 = mul nsw i32 %.08, %0
  %19 = add nsw i32 %18, %.012
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %5, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %209

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %36, %24
  %.08.pn = phi i32 [ %.08, %24 ], [ %.05, %36 ]
  %.05 = add nsw i32 %.08.pn, %.0
  %26 = icmp slt i32 %.05, %1
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %25
  %28 = mul nsw i32 %.05, %0
  %29 = add nsw i32 %28, %.012
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %5, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %37

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  br label %25, !llvm.loop !4

.loopexit:                                        ; preds = %25
  br label %37

37:                                               ; preds = %.loopexit, %34
  %.16 = phi i32 [ %.08.pn, %34 ], [ %.05, %.loopexit ]
  %.not = icmp slt i32 %.16, %1
  br i1 %.not, label %90, label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %87, %38
  %.02 = phi i32 [ %.08, %38 ], [ %88, %87 ]
  %40 = icmp slt i32 %.02, %1
  br i1 %40, label %41, label %89

41:                                               ; preds = %39
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %43 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %42, i32 noundef %.02, i32 noundef %.012, i32* noundef %5, i32 noundef %1, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %2, label %58 [
    i32 0, label %44
    i32 1, label %48
    i32 2, label %53
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 0
  %46 = load i16*, i16** %45, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %46, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %47, i32 noundef %4, i32 noundef 2)
  br label %58

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 1
  %50 = load i16*, i16** %49, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %52 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %50, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %51, i32 noundef %52, i32 noundef 1)
  br label %58

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 2
  %55 = load i16*, i16** %54, align 8
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %57 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %55, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %56, i32 noundef %57, i32 noundef 1)
  br label %58

58:                                               ; preds = %53, %48, %44, %41
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %58
  %61 = mul nsw i32 %.02, %0
  %62 = add nsw i32 %61, %.012
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %5, i64 %63
  store i32 2, i32* %64, align 4
  %65 = mul nsw i32 %.02, %0
  %66 = add nsw i32 %65, %.012
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %5, i64 %68
  store i32 2, i32* %69, align 4
  %70 = mul nsw i32 %.02, %0
  %71 = add nsw i32 %70, %.012
  %72 = add nsw i32 %71, %0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %5, i64 %73
  store i32 2, i32* %74, align 4
  %75 = mul nsw i32 %.02, %0
  %76 = add nsw i32 %75, %.012
  %77 = add nsw i32 %76, %0
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %5, i64 %79
  store i32 2, i32* %80, align 4
  br label %86

81:                                               ; preds = %58
  %82 = mul nsw i32 %.02, %0
  %83 = add nsw i32 %82, %.012
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %5, i64 %84
  store i32 2, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %60
  br label %87

87:                                               ; preds = %86
  %88 = add nsw i32 %.02, %.0
  br label %39, !llvm.loop !6

89:                                               ; preds = %39
  br label %208

90:                                               ; preds = %37
  %91 = icmp eq i32 %.08, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %141, %92
  %.1 = phi i32 [ %.16, %92 ], [ %142, %141 ]
  %94 = icmp sgt i32 %.1, -1
  br i1 %94, label %95, label %143

95:                                               ; preds = %93
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %97 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %96, i32 noundef %.1, i32 noundef %.012, i32* noundef %5, i32 noundef %1, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %2, label %112 [
    i32 0, label %98
    i32 1, label %102
    i32 2, label %107
  ]

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 0
  %100 = load i16*, i16** %99, align 8
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %100, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %101, i32 noundef %4, i32 noundef 2)
  br label %112

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 1
  %104 = load i16*, i16** %103, align 8
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %106 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %104, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %105, i32 noundef %106, i32 noundef 1)
  br label %112

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 2
  %109 = load i16*, i16** %108, align 8
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %111 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %109, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %110, i32 noundef %111, i32 noundef 1)
  br label %112

112:                                              ; preds = %107, %102, %98, %95
  %113 = icmp eq i32 %2, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %112
  %115 = mul nsw i32 %.1, %0
  %116 = add nsw i32 %115, %.012
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %5, i64 %117
  store i32 2, i32* %118, align 4
  %119 = mul nsw i32 %.1, %0
  %120 = add nsw i32 %119, %.012
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %5, i64 %122
  store i32 2, i32* %123, align 4
  %124 = mul nsw i32 %.1, %0
  %125 = add nsw i32 %124, %.012
  %126 = add nsw i32 %125, %0
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %5, i64 %127
  store i32 2, i32* %128, align 4
  %129 = mul nsw i32 %.1, %0
  %130 = add nsw i32 %129, %.012
  %131 = add nsw i32 %130, %0
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %5, i64 %133
  store i32 2, i32* %134, align 4
  br label %140

135:                                              ; preds = %112
  %136 = mul nsw i32 %.1, %0
  %137 = add nsw i32 %136, %.012
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %5, i64 %138
  store i32 2, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %114
  br label %141

141:                                              ; preds = %140
  %142 = sub nsw i32 %.1, %.0
  br label %93, !llvm.loop !7

143:                                              ; preds = %93
  br label %207

144:                                              ; preds = %90
  %145 = sub nsw i32 %.16, %.08
  %146 = add nsw i32 %145, %.0
  br label %147

147:                                              ; preds = %204, %144
  %.27 = phi i32 [ %.16, %144 ], [ %.3, %204 ]
  %.03 = phi i32 [ %.08, %144 ], [ %.14, %204 ]
  %.01 = phi i32 [ 0, %144 ], [ %205, %204 ]
  %148 = icmp slt i32 %.01, %146
  br i1 %148, label %149, label %206

149:                                              ; preds = %147
  %150 = and i32 %.01, 1
  %.not14 = icmp eq i32 %150, 0
  br i1 %.not14, label %153, label %151

151:                                              ; preds = %149
  %152 = sub nsw i32 %.27, %.0
  br label %155

153:                                              ; preds = %149
  %154 = add nsw i32 %.03, %.0
  br label %155

155:                                              ; preds = %153, %151
  %.3 = phi i32 [ %152, %151 ], [ %.27, %153 ]
  %.14 = phi i32 [ %.03, %151 ], [ %154, %153 ]
  %.2 = phi i32 [ %.27, %151 ], [ %.03, %153 ]
  br i1 false, label %156, label %157

156:                                              ; preds = %155
  br label %160

157:                                              ; preds = %155
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %159 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %158, i32 noundef %.2, i32 noundef %.012, i32* noundef %5, i32 noundef %1, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  br label %160

160:                                              ; preds = %157, %156
  switch i32 %2, label %175 [
    i32 0, label %161
    i32 1, label %165
    i32 2, label %170
  ]

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 0
  %163 = load i16*, i16** %162, align 8
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %163, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %164, i32 noundef %4, i32 noundef 2)
  br label %175

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 1
  %167 = load i16*, i16** %166, align 8
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %169 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %167, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %168, i32 noundef %169, i32 noundef 1)
  br label %175

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.frame, %struct.frame* %3, i64 0, i32 2
  %172 = load i16*, i16** %171, align 8
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %174 = ashr i32 %4, 1
  call void @ercPixConcealIMB(i16* noundef %172, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %173, i32 noundef %174, i32 noundef 1)
  br label %175

175:                                              ; preds = %170, %165, %161, %160
  %176 = icmp eq i32 %2, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %175
  %178 = mul nsw i32 %.2, %0
  %179 = add nsw i32 %178, %.012
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %5, i64 %180
  store i32 2, i32* %181, align 4
  %182 = mul nsw i32 %.2, %0
  %183 = add nsw i32 %182, %.012
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %5, i64 %185
  store i32 2, i32* %186, align 4
  %187 = mul nsw i32 %.2, %0
  %188 = add nsw i32 %187, %.012
  %189 = add nsw i32 %188, %0
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %5, i64 %190
  store i32 2, i32* %191, align 4
  %192 = mul nsw i32 %.2, %0
  %193 = add nsw i32 %192, %.012
  %194 = add nsw i32 %193, %0
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %5, i64 %196
  store i32 2, i32* %197, align 4
  br label %203

198:                                              ; preds = %175
  %199 = mul nsw i32 %.2, %0
  %200 = add nsw i32 %199, %.012
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %5, i64 %201
  store i32 2, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %177
  br label %204

204:                                              ; preds = %203
  %205 = add nuw nsw i32 %.01, %.0
  br label %147, !llvm.loop !8

206:                                              ; preds = %147
  br label %207

207:                                              ; preds = %206, %143
  %.19 = add nsw i32 %.16, %.0
  br label %208

208:                                              ; preds = %207, %89
  %.210 = phi i32 [ %1, %89 ], [ %.19, %207 ]
  br label %209

209:                                              ; preds = %208, %17
  %.311 = phi i32 [ %.210, %208 ], [ %.08, %17 ]
  br label %210

210:                                              ; preds = %209
  %211 = add nsw i32 %.311, %.0
  br label %15, !llvm.loop !9

212:                                              ; preds = %15
  br label %213

213:                                              ; preds = %212
  %214 = add nuw nsw i32 %.012, %.0
  br label %12, !llvm.loop !10

215:                                              ; preds = %12
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @ercPixConcealIMB(i16* noundef %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.10, align 8
  %7 = alloca [8 x i16*], align 16
  %8 = bitcast [8 x i16*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %9 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %6
  %11 = sub nsw i32 %1, %5
  %12 = mul nsw i32 %11, %4
  %13 = shl nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %0, i64 %14
  %16 = add nsw i32 %2, %5
  %17 = shl nsw i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %15, i64 %18
  %20 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 0
  store i16* %19, i16** %20, align 16
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds i32, i32* %3, i64 1
  %23 = load i32, i32* %22, align 4
  %.not4 = icmp eq i32 %23, 0
  br i1 %.not4, label %35, label %24

24:                                               ; preds = %21
  %25 = sub nsw i32 %1, %5
  %26 = mul nsw i32 %25, %4
  %27 = shl nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %0, i64 %28
  %30 = sub nsw i32 %2, %5
  %31 = shl nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %29, i64 %32
  %34 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 1
  store i16* %33, i16** %34, align 8
  br label %35

35:                                               ; preds = %24, %21
  %36 = getelementptr inbounds i32, i32* %3, i64 2
  %37 = load i32, i32* %36, align 4
  %.not5 = icmp eq i32 %37, 0
  br i1 %.not5, label %49, label %38

38:                                               ; preds = %35
  %39 = add nsw i32 %1, %5
  %40 = mul nsw i32 %39, %4
  %41 = shl nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %0, i64 %42
  %44 = sub nsw i32 %2, %5
  %45 = shl nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %43, i64 %46
  %48 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 2
  store i16* %47, i16** %48, align 16
  br label %49

49:                                               ; preds = %38, %35
  %50 = getelementptr inbounds i32, i32* %3, i64 3
  %51 = load i32, i32* %50, align 4
  %.not6 = icmp eq i32 %51, 0
  br i1 %.not6, label %63, label %52

52:                                               ; preds = %49
  %53 = add nsw i32 %1, %5
  %54 = mul nsw i32 %53, %4
  %55 = shl nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %0, i64 %56
  %58 = add nsw i32 %2, %5
  %59 = shl nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %57, i64 %60
  %62 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 3
  store i16* %61, i16** %62, align 8
  br label %63

63:                                               ; preds = %52, %49
  %64 = getelementptr inbounds i32, i32* %3, i64 4
  %65 = load i32, i32* %64, align 4
  %.not7 = icmp eq i32 %65, 0
  br i1 %.not7, label %76, label %66

66:                                               ; preds = %63
  %67 = sub nsw i32 %1, %5
  %68 = mul nsw i32 %67, %4
  %69 = shl nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %0, i64 %70
  %72 = shl nsw i32 %2, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16, i16* %71, i64 %73
  %75 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 4
  store i16* %74, i16** %75, align 16
  br label %76

76:                                               ; preds = %66, %63
  %77 = getelementptr inbounds i32, i32* %3, i64 5
  %78 = load i32, i32* %77, align 4
  %.not8 = icmp eq i32 %78, 0
  br i1 %.not8, label %89, label %79

79:                                               ; preds = %76
  %80 = mul nsw i32 %1, %4
  %81 = shl nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %0, i64 %82
  %84 = sub nsw i32 %2, %5
  %85 = shl nsw i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %83, i64 %86
  %88 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 5
  store i16* %87, i16** %88, align 8
  br label %89

89:                                               ; preds = %79, %76
  %90 = getelementptr inbounds i32, i32* %3, i64 6
  %91 = load i32, i32* %90, align 4
  %.not9 = icmp eq i32 %91, 0
  br i1 %.not9, label %102, label %92

92:                                               ; preds = %89
  %93 = add nsw i32 %1, %5
  %94 = mul nsw i32 %93, %4
  %95 = shl nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %0, i64 %96
  %98 = shl nsw i32 %2, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, i16* %97, i64 %99
  %101 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 6
  store i16* %100, i16** %101, align 16
  br label %102

102:                                              ; preds = %92, %89
  %103 = getelementptr inbounds i32, i32* %3, i64 7
  %104 = load i32, i32* %103, align 4
  %.not10 = icmp eq i32 %104, 0
  br i1 %.not10, label %115, label %105

105:                                              ; preds = %102
  %106 = mul nsw i32 %1, %4
  %107 = shl nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %0, i64 %108
  %110 = add nsw i32 %2, %5
  %111 = shl nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %109, i64 %112
  %114 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 7
  store i16* %113, i16** %114, align 8
  br label %115

115:                                              ; preds = %105, %102
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.10*)* @_wyvern_slice_memo_ercPixConcealIMB_662710456, i16* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 3
  store i16* %0, i16** %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_1 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 4
  store i32 %1, i32* %_wyvern_thunk_arg_gep_1, align 8
  %_wyvern_thunk_arg_gep_2 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 5
  store i32 %2, i32* %_wyvern_thunk_arg_gep_2, align 4
  %_wyvern_thunk_arg_gep_3 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 6
  store i32 %4, i32* %_wyvern_thunk_arg_gep_3, align 8
  %116 = getelementptr inbounds [8 x i16*], [8 x i16*]* %7, i64 0, i64 0
  %117 = shl nsw i32 %5, 3
  call void @_wyvern_calleeclone_pixMeanInterpolateBlock_1285698810(i16** noundef nonnull %116, %_wyvern_thunk_type.10* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %117, i32 noundef %4)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @pixMeanInterpolateBlock(i16** nocapture noundef readonly %0, i16* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = add nsw i32 %2, -1
  br label %6

6:                                                ; preds = %99, %4
  %.06 = phi i32 [ 0, %4 ], [ %101, %99 ]
  %.05 = phi i32 [ 0, %4 ], [ %100, %99 ]
  %7 = icmp slt i32 %.06, %2
  br i1 %7, label %8, label %102

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %96, %8
  %.07 = phi i32 [ 0, %8 ], [ %97, %96 ]
  %10 = icmp slt i32 %.07, %2
  br i1 %10, label %11, label %98

11:                                               ; preds = %9
  %12 = getelementptr inbounds i16*, i16** %0, i64 4
  %13 = load i16*, i16** %12, align 8
  %.not = icmp eq i16* %13, null
  br i1 %.not, label %26, label %14

14:                                               ; preds = %11
  %15 = sub nsw i32 %2, %.06
  %16 = getelementptr inbounds i16*, i16** %0, i64 4
  %17 = load i16*, i16** %16, align 8
  %18 = mul nsw i32 %5, %3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %17, i64 %19
  %21 = zext i32 %.07 to i64
  %22 = getelementptr inbounds i16, i16* %20, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = mul nsw i32 %15, %24
  br label %26

26:                                               ; preds = %14, %11
  %.01 = phi i32 [ %25, %14 ], [ 0, %11 ]
  %.0 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %27 = getelementptr inbounds i16*, i16** %0, i64 5
  %28 = load i16*, i16** %27, align 8
  %.not8 = icmp eq i16* %28, null
  br i1 %.not8, label %43, label %29

29:                                               ; preds = %26
  %30 = sub nsw i32 %2, %.07
  %31 = getelementptr inbounds i16*, i16** %0, i64 5
  %32 = load i16*, i16** %31, align 8
  %33 = mul nsw i32 %.06, %3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds i16, i16* %35, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = mul nsw i32 %30, %39
  %41 = add nsw i32 %.01, %40
  %42 = add nsw i32 %.0, %30
  br label %43

43:                                               ; preds = %29, %26
  %.12 = phi i32 [ %41, %29 ], [ %.01, %26 ]
  %.1 = phi i32 [ %42, %29 ], [ %.0, %26 ]
  %44 = getelementptr inbounds i16*, i16** %0, i64 6
  %45 = load i16*, i16** %44, align 8
  %.not9 = icmp eq i16* %45, null
  br i1 %.not9, label %57, label %46

46:                                               ; preds = %43
  %47 = add nuw nsw i32 %.06, 1
  %48 = getelementptr inbounds i16*, i16** %0, i64 6
  %49 = load i16*, i16** %48, align 8
  %50 = zext i32 %.07 to i64
  %51 = getelementptr inbounds i16, i16* %49, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = mul nsw i32 %47, %53
  %55 = add nsw i32 %.12, %54
  %56 = add nsw i32 %.1, %47
  br label %57

57:                                               ; preds = %46, %43
  %.23 = phi i32 [ %55, %46 ], [ %.12, %43 ]
  %.2 = phi i32 [ %56, %46 ], [ %.1, %43 ]
  %58 = getelementptr inbounds i16*, i16** %0, i64 7
  %59 = load i16*, i16** %58, align 8
  %.not10 = icmp eq i16* %59, null
  br i1 %.not10, label %72, label %60

60:                                               ; preds = %57
  %61 = add nuw nsw i32 %.07, 1
  %62 = getelementptr inbounds i16*, i16** %0, i64 7
  %63 = load i16*, i16** %62, align 8
  %64 = mul nsw i32 %.06, %3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = mul nsw i32 %61, %68
  %70 = add nsw i32 %.23, %69
  %71 = add nsw i32 %.2, %61
  br label %72

72:                                               ; preds = %60, %57
  %.34 = phi i32 [ %70, %60 ], [ %.23, %57 ]
  %.3 = phi i32 [ %71, %60 ], [ %.2, %57 ]
  %73 = icmp sgt i32 %.3, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = sdiv i32 %.34, %.3
  %76 = trunc i32 %75 to i16
  %77 = and i16 %76, 255
  %78 = add nsw i32 %.05, %.07
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %1, i64 %79
  store i16 %77, i16* %80, align 2
  br label %95

81:                                               ; preds = %72
  %82 = icmp eq i32 %2, 8
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load %struct.img_par*, %struct.img_par** @img, align 8
  %85 = getelementptr inbounds %struct.img_par, %struct.img_par* %84, i64 0, i32 106
  br label %89

86:                                               ; preds = %81
  %87 = load %struct.img_par*, %struct.img_par** @img, align 8
  %88 = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i64 0, i32 105
  br label %89

89:                                               ; preds = %86, %83
  %.in = phi i32* [ %85, %83 ], [ %88, %86 ]
  %90 = load i32, i32* %.in, align 4
  %91 = trunc i32 %90 to i16
  %92 = add nsw i32 %.05, %.07
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %1, i64 %93
  store i16 %91, i16* %94, align 2
  br label %95

95:                                               ; preds = %89, %74
  br label %96

96:                                               ; preds = %95
  %97 = add nuw nsw i32 %.07, 1
  br label %9, !llvm.loop !11

98:                                               ; preds = %9
  br label %99

99:                                               ; preds = %98
  %100 = add nsw i32 %.05, %3
  %101 = add nuw nsw i32 %.06, 1
  br label %6, !llvm.loop !12

102:                                              ; preds = %6
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @ercCollect8PredBlocks(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) #0 {
  %.not = icmp eq i8 %7, 0
  %9 = select i1 %.not, i32 4, i32 2
  %10 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  br label %11

11:                                               ; preds = %176, %8
  %.0 = phi i32 [ 3, %8 ], [ %172, %176 ]
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = add nsw i32 %1, -1
  %15 = mul nsw i32 %14, %5
  %16 = add nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %3, i64 %17
  %19 = load i32, i32* %18, align 4
  %.not13 = icmp slt i32 %19, %.0
  br i1 %.not13, label %28, label %20

20:                                               ; preds = %13
  %21 = add nsw i32 %1, -1
  %22 = mul nsw i32 %21, %5
  %23 = add nsw i32 %22, %2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %3, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %0, i64 4
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %20, %13, %11
  %.01 = phi i32 [ 1, %20 ], [ 0, %13 ], [ 0, %11 ]
  %29 = sub nsw i32 %4, %6
  %30 = icmp sgt i32 %29, %1
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = add nsw i32 %1, %6
  %33 = mul nsw i32 %32, %5
  %34 = add nsw i32 %33, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %3, i64 %35
  %37 = load i32, i32* %36, align 4
  %.not12 = icmp slt i32 %37, %.0
  br i1 %.not12, label %47, label %38

38:                                               ; preds = %31
  %39 = add nsw i32 %1, %6
  %40 = mul nsw i32 %39, %5
  %41 = add nsw i32 %40, %2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %3, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %0, i64 6
  store i32 %44, i32* %45, align 4
  %46 = add nuw nsw i32 %.01, 1
  br label %47

47:                                               ; preds = %38, %31, %28
  %.1 = phi i32 [ %46, %38 ], [ %.01, %31 ], [ %.01, %28 ]
  %48 = icmp sgt i32 %2, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %47
  %50 = mul nsw i32 %1, %5
  %51 = add nsw i32 %50, %2
  %52 = add nsw i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %3, i64 %53
  %55 = load i32, i32* %54, align 4
  %.not8 = icmp slt i32 %55, %.0
  br i1 %.not8, label %65, label %56

56:                                               ; preds = %49
  %57 = mul nsw i32 %1, %5
  %58 = add nsw i32 %57, %2
  %59 = add nsw i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %3, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds i32, i32* %0, i64 5
  store i32 %62, i32* %63, align 4
  %64 = add nsw i32 %.1, 1
  br label %65

65:                                               ; preds = %56, %49
  %.2 = phi i32 [ %64, %56 ], [ %.1, %49 ]
  %.not9 = icmp eq i8 %7, 0
  br i1 %.not9, label %66, label %108

66:                                               ; preds = %65
  %67 = icmp sgt i32 %1, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %66
  %69 = add nsw i32 %1, -1
  %70 = mul nsw i32 %69, %5
  %71 = add nsw i32 %70, %2
  %72 = add nsw i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %3, i64 %73
  %75 = load i32, i32* %74, align 4
  %.not11 = icmp slt i32 %75, %.0
  br i1 %.not11, label %86, label %76

76:                                               ; preds = %68
  %77 = add nsw i32 %1, -1
  %78 = mul nsw i32 %77, %5
  %79 = add nsw i32 %78, %2
  %80 = add nsw i32 %79, -1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %3, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = add nsw i32 %.2, 1
  br label %86

86:                                               ; preds = %76, %68, %66
  %.3 = phi i32 [ %85, %76 ], [ %.2, %68 ], [ %.2, %66 ]
  %87 = sub nsw i32 %4, %6
  %88 = icmp sgt i32 %87, %1
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = add nsw i32 %1, %6
  %91 = mul nsw i32 %90, %5
  %92 = add nsw i32 %91, %2
  %93 = add nsw i32 %92, -1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %3, i64 %94
  %96 = load i32, i32* %95, align 4
  %.not10 = icmp slt i32 %96, %.0
  br i1 %.not10, label %107, label %97

97:                                               ; preds = %89
  %98 = add nsw i32 %1, %6
  %99 = mul nsw i32 %98, %5
  %100 = add nsw i32 %99, %2
  %101 = add nsw i32 %100, -1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %3, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %104, i32* %105, align 4
  %106 = add nsw i32 %.3, 1
  br label %107

107:                                              ; preds = %97, %89, %86
  %.4 = phi i32 [ %106, %97 ], [ %.3, %89 ], [ %.3, %86 ]
  br label %108

108:                                              ; preds = %107, %65
  %.5 = phi i32 [ %.2, %65 ], [ %.4, %107 ]
  br label %109

109:                                              ; preds = %108, %47
  %.6 = phi i32 [ %.5, %108 ], [ %.1, %47 ]
  %110 = sub nsw i32 %5, %6
  %111 = icmp sgt i32 %110, %2
  br i1 %111, label %112, label %171

112:                                              ; preds = %109
  %113 = mul nsw i32 %1, %5
  %114 = add nsw i32 %113, %2
  %115 = add nsw i32 %114, %6
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %3, i64 %116
  %118 = load i32, i32* %117, align 4
  %.not4 = icmp slt i32 %118, %.0
  br i1 %.not4, label %128, label %119

119:                                              ; preds = %112
  %120 = mul nsw i32 %1, %5
  %121 = add nsw i32 %120, %2
  %122 = add nsw i32 %121, %6
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %3, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds i32, i32* %0, i64 7
  store i32 %125, i32* %126, align 4
  %127 = add nsw i32 %.6, 1
  br label %128

128:                                              ; preds = %119, %112
  %.7 = phi i32 [ %127, %119 ], [ %.6, %112 ]
  %.not5 = icmp eq i8 %7, 0
  br i1 %.not5, label %129, label %170

129:                                              ; preds = %128
  %130 = icmp sgt i32 %1, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %129
  %132 = add nsw i32 %1, -1
  %133 = mul nsw i32 %132, %5
  %134 = add nsw i32 %133, %2
  %135 = add nsw i32 %134, %6
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %3, i64 %136
  %138 = load i32, i32* %137, align 4
  %.not7 = icmp slt i32 %138, %.0
  br i1 %.not7, label %148, label %139

139:                                              ; preds = %131
  %140 = add nsw i32 %1, -1
  %141 = mul nsw i32 %140, %5
  %142 = add nsw i32 %141, %2
  %143 = add nsw i32 %142, %6
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %3, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %0, align 4
  %147 = add nsw i32 %.7, 1
  br label %148

148:                                              ; preds = %139, %131, %129
  %.8 = phi i32 [ %147, %139 ], [ %.7, %131 ], [ %.7, %129 ]
  %149 = sub nsw i32 %4, %6
  %150 = icmp sgt i32 %149, %1
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = add nsw i32 %1, %6
  %153 = mul nsw i32 %152, %5
  %154 = add nsw i32 %153, %2
  %155 = add nsw i32 %154, %6
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %3, i64 %156
  %158 = load i32, i32* %157, align 4
  %.not6 = icmp slt i32 %158, %.0
  br i1 %.not6, label %169, label %159

159:                                              ; preds = %151
  %160 = add nsw i32 %1, %6
  %161 = mul nsw i32 %160, %5
  %162 = add nsw i32 %161, %2
  %163 = add nsw i32 %162, %6
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %3, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %166, i32* %167, align 4
  %168 = add nsw i32 %.8, 1
  br label %169

169:                                              ; preds = %159, %151, %148
  %.9 = phi i32 [ %168, %159 ], [ %.8, %151 ], [ %.8, %148 ]
  br label %170

170:                                              ; preds = %169, %128
  %.10 = phi i32 [ %.7, %128 ], [ %.9, %169 ]
  br label %171

171:                                              ; preds = %170, %109
  %.11 = phi i32 [ %.10, %170 ], [ %.6, %109 ]
  %172 = add nsw i32 %.0, -1
  %173 = icmp slt i32 %.0, 3
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %178

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175
  %177 = icmp slt i32 %.11, %9
  br i1 %177, label %11, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %176
  br label %178

178:                                              ; preds = %.loopexit, %174
  ret i32 %.11
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @ercCollectColumnBlocks(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %9 = add nsw i32 %1, -1
  %10 = mul nsw i32 %9, %5
  %11 = add nsw i32 %10, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds i32, i32* %0, i64 4
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %7
  %.0 = phi i32 [ 1, %16 ], [ 0, %7 ]
  %19 = add nsw i32 %1, %6
  %20 = mul nsw i32 %19, %5
  %21 = add nsw i32 %20, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %3, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = getelementptr inbounds i32, i32* %0, i64 6
  store i32 1, i32* %27, align 4
  %28 = add nuw nsw i32 %.0, 1
  br label %29

29:                                               ; preds = %26, %18
  %.1 = phi i32 [ %28, %26 ], [ %.0, %18 ]
  ret i32 %.1
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_ercConcealIntraFrame_685599549(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = ashr i32 %_wyvern_arg_, 3
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_concealBlocks_1787139046(i32 noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %1, %struct.frame* nocapture noundef readonly %2, i32 noundef %3, i32* noundef %4) #0 {
  %6 = alloca [8 x i32], align 16
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 2, %8 ], [ 1, %9 ]
  br label %11

11:                                               ; preds = %212, %10
  %.012 = phi i32 [ 0, %10 ], [ %213, %212 ]
  %12 = icmp slt i32 %.012, %0
  br i1 %12, label %13, label %214

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %209, %13
  %.08 = phi i32 [ 0, %13 ], [ %210, %209 ]
  %_wyvern_thunk_fptr_addr25 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr26 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr25, align 8
  %_wyvern_thunkcall27 = call i32 %_wyvern_thunkfptr26(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %15 = icmp slt i32 %.08, %_wyvern_thunkcall27
  br i1 %15, label %16, label %211

16:                                               ; preds = %14
  %17 = mul nsw i32 %.08, %0
  %18 = add nsw i32 %17, %.012
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %208

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %35, %23
  %.08.pn = phi i32 [ %.08, %23 ], [ %.05, %35 ]
  %.05 = add nsw i32 %.08.pn, %.0
  %_wyvern_thunk_fptr_addr22 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr23 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr22, align 8
  %_wyvern_thunkcall24 = call i32 %_wyvern_thunkfptr23(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %25 = icmp slt i32 %.05, %_wyvern_thunkcall24
  br i1 %25, label %26, label %.loopexit

26:                                               ; preds = %24
  %27 = mul nsw i32 %.05, %0
  %28 = add nsw i32 %27, %.012
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  br label %24, !llvm.loop !4

.loopexit:                                        ; preds = %24
  br label %36

36:                                               ; preds = %.loopexit, %33
  %.16 = phi i32 [ %.08.pn, %33 ], [ %.05, %.loopexit ]
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call i32 %_wyvern_thunkfptr20(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %.not = icmp slt i32 %.16, %_wyvern_thunkcall21
  br i1 %.not, label %89, label %37

37:                                               ; preds = %36
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call i32 %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  br label %38

38:                                               ; preds = %86, %37
  %.02 = phi i32 [ %.08, %37 ], [ %87, %86 ]
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i32 %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %39 = icmp slt i32 %.02, %_wyvern_thunkcall15
  br i1 %39, label %40, label %88

40:                                               ; preds = %38
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i32 %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %42 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %41, i32 noundef %.02, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall12, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %1, label %57 [
    i32 0, label %43
    i32 1, label %47
    i32 2, label %52
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %45, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %46, i32 noundef %3, i32 noundef 2)
  br label %57

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %49 = load i16*, i16** %48, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %51 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %49, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %50, i32 noundef %51, i32 noundef 1)
  br label %57

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %54 = load i16*, i16** %53, align 8
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %56 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %54, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %55, i32 noundef %56, i32 noundef 1)
  br label %57

57:                                               ; preds = %52, %47, %43, %40
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %57
  %60 = mul nsw i32 %.02, %0
  %61 = add nsw i32 %60, %.012
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %4, i64 %62
  store i32 2, i32* %63, align 4
  %64 = mul nsw i32 %.02, %0
  %65 = add nsw i32 %64, %.012
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %4, i64 %67
  store i32 2, i32* %68, align 4
  %69 = mul nsw i32 %.02, %0
  %70 = add nsw i32 %69, %.012
  %71 = add nsw i32 %70, %0
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %4, i64 %72
  store i32 2, i32* %73, align 4
  %74 = mul nsw i32 %.02, %0
  %75 = add nsw i32 %74, %.012
  %76 = add nsw i32 %75, %0
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %4, i64 %78
  store i32 2, i32* %79, align 4
  br label %85

80:                                               ; preds = %57
  %81 = mul nsw i32 %.02, %0
  %82 = add nsw i32 %81, %.012
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %4, i64 %83
  store i32 2, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %59
  br label %86

86:                                               ; preds = %85
  %87 = add nsw i32 %.02, %.0
  br label %38, !llvm.loop !6

88:                                               ; preds = %38
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  br label %207

89:                                               ; preds = %36
  %90 = icmp eq i32 %.08, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %140, %91
  %.1 = phi i32 [ %.16, %91 ], [ %141, %140 ]
  %93 = icmp sgt i32 %.1, -1
  br i1 %93, label %94, label %142

94:                                               ; preds = %92
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %96 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %95, i32 noundef %.1, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall9, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %1, label %111 [
    i32 0, label %97
    i32 1, label %101
    i32 2, label %106
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %99 = load i16*, i16** %98, align 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %99, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %100, i32 noundef %3, i32 noundef 2)
  br label %111

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %103 = load i16*, i16** %102, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %105 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %103, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %104, i32 noundef %105, i32 noundef 1)
  br label %111

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %108 = load i16*, i16** %107, align 8
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %110 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %108, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %109, i32 noundef %110, i32 noundef 1)
  br label %111

111:                                              ; preds = %106, %101, %97, %94
  %112 = icmp eq i32 %1, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %111
  %114 = mul nsw i32 %.1, %0
  %115 = add nsw i32 %114, %.012
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %4, i64 %116
  store i32 2, i32* %117, align 4
  %118 = mul nsw i32 %.1, %0
  %119 = add nsw i32 %118, %.012
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %4, i64 %121
  store i32 2, i32* %122, align 4
  %123 = mul nsw i32 %.1, %0
  %124 = add nsw i32 %123, %.012
  %125 = add nsw i32 %124, %0
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %4, i64 %126
  store i32 2, i32* %127, align 4
  %128 = mul nsw i32 %.1, %0
  %129 = add nsw i32 %128, %.012
  %130 = add nsw i32 %129, %0
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %4, i64 %132
  store i32 2, i32* %133, align 4
  br label %139

134:                                              ; preds = %111
  %135 = mul nsw i32 %.1, %0
  %136 = add nsw i32 %135, %.012
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %4, i64 %137
  store i32 2, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %113
  br label %140

140:                                              ; preds = %139
  %141 = sub nsw i32 %.1, %.0
  br label %92, !llvm.loop !7

142:                                              ; preds = %92
  br label %206

143:                                              ; preds = %89
  %144 = sub nsw i32 %.16, %.08
  %145 = add nsw i32 %144, %.0
  br label %146

146:                                              ; preds = %203, %143
  %.27 = phi i32 [ %.16, %143 ], [ %.3, %203 ]
  %.03 = phi i32 [ %.08, %143 ], [ %.14, %203 ]
  %.01 = phi i32 [ 0, %143 ], [ %204, %203 ]
  %147 = icmp slt i32 %.01, %145
  br i1 %147, label %148, label %205

148:                                              ; preds = %146
  %149 = and i32 %.01, 1
  %.not28 = icmp eq i32 %149, 0
  br i1 %.not28, label %152, label %150

150:                                              ; preds = %148
  %151 = sub nsw i32 %.27, %.0
  br label %154

152:                                              ; preds = %148
  %153 = add nsw i32 %.03, %.0
  br label %154

154:                                              ; preds = %152, %150
  %.3 = phi i32 [ %151, %150 ], [ %.27, %152 ]
  %.14 = phi i32 [ %.03, %150 ], [ %153, %152 ]
  %.2 = phi i32 [ %.27, %150 ], [ %.03, %152 ]
  br i1 false, label %155, label %156

155:                                              ; preds = %154
  br label %159

156:                                              ; preds = %154
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %158 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %157, i32 noundef %.2, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall3, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  br label %159

159:                                              ; preds = %156, %155
  switch i32 %1, label %174 [
    i32 0, label %160
    i32 1, label %164
    i32 2, label %169
  ]

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %162 = load i16*, i16** %161, align 8
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %162, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %163, i32 noundef %3, i32 noundef 2)
  br label %174

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %166 = load i16*, i16** %165, align 8
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %168 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %166, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %167, i32 noundef %168, i32 noundef 1)
  br label %174

169:                                              ; preds = %159
  %170 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %171 = load i16*, i16** %170, align 8
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %173 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %171, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %172, i32 noundef %173, i32 noundef 1)
  br label %174

174:                                              ; preds = %169, %164, %160, %159
  %175 = icmp eq i32 %1, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %174
  %177 = mul nsw i32 %.2, %0
  %178 = add nsw i32 %177, %.012
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %4, i64 %179
  store i32 2, i32* %180, align 4
  %181 = mul nsw i32 %.2, %0
  %182 = add nsw i32 %181, %.012
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %4, i64 %184
  store i32 2, i32* %185, align 4
  %186 = mul nsw i32 %.2, %0
  %187 = add nsw i32 %186, %.012
  %188 = add nsw i32 %187, %0
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %4, i64 %189
  store i32 2, i32* %190, align 4
  %191 = mul nsw i32 %.2, %0
  %192 = add nsw i32 %191, %.012
  %193 = add nsw i32 %192, %0
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %4, i64 %195
  store i32 2, i32* %196, align 4
  br label %202

197:                                              ; preds = %174
  %198 = mul nsw i32 %.2, %0
  %199 = add nsw i32 %198, %.012
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %4, i64 %200
  store i32 2, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %176
  br label %203

203:                                              ; preds = %202
  %204 = add nuw nsw i32 %.01, %.0
  br label %146, !llvm.loop !8

205:                                              ; preds = %146
  br label %206

206:                                              ; preds = %205, %142
  %.19 = add nsw i32 %.16, %.0
  br label %207

207:                                              ; preds = %206, %88
  %.210 = phi i32 [ %_wyvern_thunkcall, %88 ], [ %.19, %206 ]
  br label %208

208:                                              ; preds = %207, %16
  %.311 = phi i32 [ %.210, %207 ], [ %.08, %16 ]
  br label %209

209:                                              ; preds = %208
  %210 = add nsw i32 %.311, %.0
  br label %14, !llvm.loop !9

211:                                              ; preds = %14
  br label %212

212:                                              ; preds = %211
  %213 = add nuw nsw i32 %.012, %.0
  br label %11, !llvm.loop !10

214:                                              ; preds = %11
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_ercConcealIntraFrame_535144517(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = ashr i32 %_wyvern_arg_, 4
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_concealBlocks_1400415244(i32 noundef %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i32 noundef %1, %struct.frame* nocapture noundef readonly %2, i32 noundef %3, i32* noundef %4) #0 {
  %6 = alloca [8 x i32], align 16
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 2, %8 ], [ 1, %9 ]
  br label %11

11:                                               ; preds = %212, %10
  %.012 = phi i32 [ 0, %10 ], [ %213, %212 ]
  %12 = icmp slt i32 %.012, %0
  br i1 %12, label %13, label %214

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %209, %13
  %.08 = phi i32 [ 0, %13 ], [ %210, %209 ]
  %_wyvern_thunk_fptr_addr25 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr26 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr25, align 8
  %_wyvern_thunkcall27 = call i32 %_wyvern_thunkfptr26(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %15 = icmp slt i32 %.08, %_wyvern_thunkcall27
  br i1 %15, label %16, label %211

16:                                               ; preds = %14
  %17 = mul nsw i32 %.08, %0
  %18 = add nsw i32 %17, %.012
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %208

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %35, %23
  %.08.pn = phi i32 [ %.08, %23 ], [ %.05, %35 ]
  %.05 = add nsw i32 %.08.pn, %.0
  %_wyvern_thunk_fptr_addr22 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr23 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr22, align 8
  %_wyvern_thunkcall24 = call i32 %_wyvern_thunkfptr23(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %25 = icmp slt i32 %.05, %_wyvern_thunkcall24
  br i1 %25, label %26, label %.loopexit

26:                                               ; preds = %24
  %27 = mul nsw i32 %.05, %0
  %28 = add nsw i32 %27, %.012
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  br label %24, !llvm.loop !4

.loopexit:                                        ; preds = %24
  br label %36

36:                                               ; preds = %.loopexit, %33
  %.16 = phi i32 [ %.08.pn, %33 ], [ %.05, %.loopexit ]
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call i32 %_wyvern_thunkfptr20(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %.not = icmp slt i32 %.16, %_wyvern_thunkcall21
  br i1 %.not, label %89, label %37

37:                                               ; preds = %36
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call i32 %_wyvern_thunkfptr17(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  br label %38

38:                                               ; preds = %86, %37
  %.02 = phi i32 [ %.08, %37 ], [ %87, %86 ]
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i32 %_wyvern_thunkfptr14(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %39 = icmp slt i32 %.02, %_wyvern_thunkcall15
  br i1 %39, label %40, label %88

40:                                               ; preds = %38
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i32 %_wyvern_thunkfptr11(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %42 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %41, i32 noundef %.02, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall12, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %1, label %57 [
    i32 0, label %43
    i32 1, label %47
    i32 2, label %52
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %45, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %46, i32 noundef %3, i32 noundef 2)
  br label %57

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %49 = load i16*, i16** %48, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %51 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %49, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %50, i32 noundef %51, i32 noundef 1)
  br label %57

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %54 = load i16*, i16** %53, align 8
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %56 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %54, i32 noundef %.02, i32 noundef %.012, i32* noundef nonnull %55, i32 noundef %56, i32 noundef 1)
  br label %57

57:                                               ; preds = %52, %47, %43, %40
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %57
  %60 = mul nsw i32 %.02, %0
  %61 = add nsw i32 %60, %.012
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %4, i64 %62
  store i32 2, i32* %63, align 4
  %64 = mul nsw i32 %.02, %0
  %65 = add nsw i32 %64, %.012
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %4, i64 %67
  store i32 2, i32* %68, align 4
  %69 = mul nsw i32 %.02, %0
  %70 = add nsw i32 %69, %.012
  %71 = add nsw i32 %70, %0
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %4, i64 %72
  store i32 2, i32* %73, align 4
  %74 = mul nsw i32 %.02, %0
  %75 = add nsw i32 %74, %.012
  %76 = add nsw i32 %75, %0
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %4, i64 %78
  store i32 2, i32* %79, align 4
  br label %85

80:                                               ; preds = %57
  %81 = mul nsw i32 %.02, %0
  %82 = add nsw i32 %81, %.012
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %4, i64 %83
  store i32 2, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %59
  br label %86

86:                                               ; preds = %85
  %87 = add nsw i32 %.02, %.0
  br label %38, !llvm.loop !6

88:                                               ; preds = %38
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  br label %207

89:                                               ; preds = %36
  %90 = icmp eq i32 %.08, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %140, %91
  %.1 = phi i32 [ %.16, %91 ], [ %141, %140 ]
  %93 = icmp sgt i32 %.1, -1
  br i1 %93, label %94, label %142

94:                                               ; preds = %92
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %96 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %95, i32 noundef %.1, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall9, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  switch i32 %1, label %111 [
    i32 0, label %97
    i32 1, label %101
    i32 2, label %106
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %99 = load i16*, i16** %98, align 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %99, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %100, i32 noundef %3, i32 noundef 2)
  br label %111

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %103 = load i16*, i16** %102, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %105 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %103, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %104, i32 noundef %105, i32 noundef 1)
  br label %111

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %108 = load i16*, i16** %107, align 8
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %110 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %108, i32 noundef %.1, i32 noundef %.012, i32* noundef nonnull %109, i32 noundef %110, i32 noundef 1)
  br label %111

111:                                              ; preds = %106, %101, %97, %94
  %112 = icmp eq i32 %1, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %111
  %114 = mul nsw i32 %.1, %0
  %115 = add nsw i32 %114, %.012
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %4, i64 %116
  store i32 2, i32* %117, align 4
  %118 = mul nsw i32 %.1, %0
  %119 = add nsw i32 %118, %.012
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %4, i64 %121
  store i32 2, i32* %122, align 4
  %123 = mul nsw i32 %.1, %0
  %124 = add nsw i32 %123, %.012
  %125 = add nsw i32 %124, %0
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %4, i64 %126
  store i32 2, i32* %127, align 4
  %128 = mul nsw i32 %.1, %0
  %129 = add nsw i32 %128, %.012
  %130 = add nsw i32 %129, %0
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %4, i64 %132
  store i32 2, i32* %133, align 4
  br label %139

134:                                              ; preds = %111
  %135 = mul nsw i32 %.1, %0
  %136 = add nsw i32 %135, %.012
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %4, i64 %137
  store i32 2, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %113
  br label %140

140:                                              ; preds = %139
  %141 = sub nsw i32 %.1, %.0
  br label %92, !llvm.loop !7

142:                                              ; preds = %92
  br label %206

143:                                              ; preds = %89
  %144 = sub nsw i32 %.16, %.08
  %145 = add nsw i32 %144, %.0
  br label %146

146:                                              ; preds = %203, %143
  %.27 = phi i32 [ %.16, %143 ], [ %.3, %203 ]
  %.03 = phi i32 [ %.08, %143 ], [ %.14, %203 ]
  %.01 = phi i32 [ 0, %143 ], [ %204, %203 ]
  %147 = icmp slt i32 %.01, %145
  br i1 %147, label %148, label %205

148:                                              ; preds = %146
  %149 = and i32 %.01, 1
  %.not28 = icmp eq i32 %149, 0
  br i1 %.not28, label %152, label %150

150:                                              ; preds = %148
  %151 = sub nsw i32 %.27, %.0
  br label %154

152:                                              ; preds = %148
  %153 = add nsw i32 %.03, %.0
  br label %154

154:                                              ; preds = %152, %150
  %.3 = phi i32 [ %151, %150 ], [ %.27, %152 ]
  %.14 = phi i32 [ %.03, %150 ], [ %153, %152 ]
  %.2 = phi i32 [ %.27, %150 ], [ %.03, %152 ]
  br i1 false, label %155, label %156

155:                                              ; preds = %154
  br label %159

156:                                              ; preds = %154
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %158 = call i32 @ercCollect8PredBlocks(i32* noundef nonnull %157, i32 noundef %.2, i32 noundef %.012, i32* noundef %4, i32 noundef %_wyvern_thunkcall3, i32 noundef %0, i32 noundef %.0, i8 noundef zeroext 1)
  br label %159

159:                                              ; preds = %156, %155
  switch i32 %1, label %174 [
    i32 0, label %160
    i32 1, label %164
    i32 2, label %169
  ]

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 0
  %162 = load i16*, i16** %161, align 8
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  call void @ercPixConcealIMB(i16* noundef %162, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %163, i32 noundef %3, i32 noundef 2)
  br label %174

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 1
  %166 = load i16*, i16** %165, align 8
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %168 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %166, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %167, i32 noundef %168, i32 noundef 1)
  br label %174

169:                                              ; preds = %159
  %170 = getelementptr inbounds %struct.frame, %struct.frame* %2, i64 0, i32 2
  %171 = load i16*, i16** %170, align 8
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %173 = ashr i32 %3, 1
  call void @ercPixConcealIMB(i16* noundef %171, i32 noundef %.2, i32 noundef %.012, i32* noundef nonnull %172, i32 noundef %173, i32 noundef 1)
  br label %174

174:                                              ; preds = %169, %164, %160, %159
  %175 = icmp eq i32 %1, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %174
  %177 = mul nsw i32 %.2, %0
  %178 = add nsw i32 %177, %.012
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %4, i64 %179
  store i32 2, i32* %180, align 4
  %181 = mul nsw i32 %.2, %0
  %182 = add nsw i32 %181, %.012
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %4, i64 %184
  store i32 2, i32* %185, align 4
  %186 = mul nsw i32 %.2, %0
  %187 = add nsw i32 %186, %.012
  %188 = add nsw i32 %187, %0
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %4, i64 %189
  store i32 2, i32* %190, align 4
  %191 = mul nsw i32 %.2, %0
  %192 = add nsw i32 %191, %.012
  %193 = add nsw i32 %192, %0
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %4, i64 %195
  store i32 2, i32* %196, align 4
  br label %202

197:                                              ; preds = %174
  %198 = mul nsw i32 %.2, %0
  %199 = add nsw i32 %198, %.012
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %4, i64 %200
  store i32 2, i32* %201, align 4
  br label %202

202:                                              ; preds = %197, %176
  br label %203

203:                                              ; preds = %202
  %204 = add nuw nsw i32 %.01, %.0
  br label %146, !llvm.loop !8

205:                                              ; preds = %146
  br label %206

206:                                              ; preds = %205, %142
  %.19 = add nsw i32 %.16, %.0
  br label %207

207:                                              ; preds = %206, %88
  %.210 = phi i32 [ %_wyvern_thunkcall, %88 ], [ %.19, %206 ]
  br label %208

208:                                              ; preds = %207, %16
  %.311 = phi i32 [ %.210, %207 ], [ %.08, %16 ]
  br label %209

209:                                              ; preds = %208
  %210 = add nsw i32 %.311, %.0
  br label %14, !llvm.loop !9

211:                                              ; preds = %14
  br label %212

212:                                              ; preds = %211
  %213 = add nuw nsw i32 %.012, %.0
  br label %11, !llvm.loop !10

214:                                              ; preds = %11
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_ercPixConcealIMB_662710456(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i16*, i16** %_wyvern_arg_addr_, align 8
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i32, i32* %_wyvern_arg_addr_1, align 4
  %_wyvern_arg_addr_3 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 5
  %_wyvern_arg_4 = load i32, i32* %_wyvern_arg_addr_3, align 4
  %_wyvern_arg_addr_5 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 6
  %_wyvern_arg_6 = load i32, i32* %_wyvern_arg_addr_5, align 4
  %0 = mul nsw i32 %_wyvern_arg_2, %_wyvern_arg_6
  %1 = shl nsw i32 %0, 3
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds i16, i16* %_wyvern_arg_, i64 %2
  %4 = shl nsw i32 %_wyvern_arg_4, 3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i16, i16* %3, i64 %5
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %6, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_pixMeanInterpolateBlock_1285698810(i16** nocapture noundef readonly %0, %_wyvern_thunk_type.10* noundef %_wyvern_thunkptr, i32 noundef %1, i32 noundef %2) #2 {
  %4 = add nsw i32 %1, -1
  br label %5

5:                                                ; preds = %98, %3
  %.06 = phi i32 [ 0, %3 ], [ %100, %98 ]
  %.05 = phi i32 [ 0, %3 ], [ %99, %98 ]
  %6 = icmp slt i32 %.06, %1
  br i1 %6, label %7, label %101

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %95, %7
  %.07 = phi i32 [ 0, %7 ], [ %96, %95 ]
  %9 = icmp slt i32 %.07, %1
  br i1 %9, label %10, label %97

10:                                               ; preds = %8
  %11 = getelementptr inbounds i16*, i16** %0, i64 4
  %12 = load i16*, i16** %11, align 8
  %.not = icmp eq i16* %12, null
  br i1 %.not, label %25, label %13

13:                                               ; preds = %10
  %14 = sub nsw i32 %1, %.06
  %15 = getelementptr inbounds i16*, i16** %0, i64 4
  %16 = load i16*, i16** %15, align 8
  %17 = mul nsw i32 %4, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = zext i32 %.07 to i64
  %21 = getelementptr inbounds i16, i16* %19, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = mul nsw i32 %14, %23
  br label %25

25:                                               ; preds = %13, %10
  %.01 = phi i32 [ %24, %13 ], [ 0, %10 ]
  %.0 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %26 = getelementptr inbounds i16*, i16** %0, i64 5
  %27 = load i16*, i16** %26, align 8
  %.not4 = icmp eq i16* %27, null
  br i1 %.not4, label %42, label %28

28:                                               ; preds = %25
  %29 = sub nsw i32 %1, %.07
  %30 = getelementptr inbounds i16*, i16** %0, i64 5
  %31 = load i16*, i16** %30, align 8
  %32 = mul nsw i32 %.06, %2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = sext i32 %4 to i64
  %36 = getelementptr inbounds i16, i16* %34, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = mul nsw i32 %29, %38
  %40 = add nsw i32 %.01, %39
  %41 = add nsw i32 %.0, %29
  br label %42

42:                                               ; preds = %28, %25
  %.12 = phi i32 [ %40, %28 ], [ %.01, %25 ]
  %.1 = phi i32 [ %41, %28 ], [ %.0, %25 ]
  %43 = getelementptr inbounds i16*, i16** %0, i64 6
  %44 = load i16*, i16** %43, align 8
  %.not5 = icmp eq i16* %44, null
  br i1 %.not5, label %56, label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i32 %.06, 1
  %47 = getelementptr inbounds i16*, i16** %0, i64 6
  %48 = load i16*, i16** %47, align 8
  %49 = zext i32 %.07 to i64
  %50 = getelementptr inbounds i16, i16* %48, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = mul nsw i32 %46, %52
  %54 = add nsw i32 %.12, %53
  %55 = add nsw i32 %.1, %46
  br label %56

56:                                               ; preds = %45, %42
  %.23 = phi i32 [ %54, %45 ], [ %.12, %42 ]
  %.2 = phi i32 [ %55, %45 ], [ %.1, %42 ]
  %57 = getelementptr inbounds i16*, i16** %0, i64 7
  %58 = load i16*, i16** %57, align 8
  %.not6 = icmp eq i16* %58, null
  br i1 %.not6, label %71, label %59

59:                                               ; preds = %56
  %60 = add nuw nsw i32 %.07, 1
  %61 = getelementptr inbounds i16*, i16** %0, i64 7
  %62 = load i16*, i16** %61, align 8
  %63 = mul nsw i32 %.06, %2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = mul nsw i32 %60, %67
  %69 = add nsw i32 %.23, %68
  %70 = add nsw i32 %.2, %60
  br label %71

71:                                               ; preds = %59, %56
  %.34 = phi i32 [ %69, %59 ], [ %.23, %56 ]
  %.3 = phi i32 [ %70, %59 ], [ %.2, %56 ]
  %72 = icmp sgt i32 %.3, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %71
  %74 = sdiv i32 %.34, %.3
  %75 = trunc i32 %74 to i16
  %76 = and i16 %75, 255
  %77 = add nsw i32 %.05, %.07
  %78 = sext i32 %77 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i16* (%_wyvern_thunk_type.10*)*, i16* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i16* %_wyvern_thunkfptr2(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #5
  %79 = getelementptr inbounds i16, i16* %_wyvern_thunkcall3, i64 %78
  store i16 %76, i16* %79, align 2
  br label %94

80:                                               ; preds = %71
  %81 = icmp eq i32 %1, 8
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load %struct.img_par*, %struct.img_par** @img, align 8
  %84 = getelementptr inbounds %struct.img_par, %struct.img_par* %83, i64 0, i32 106
  br label %88

85:                                               ; preds = %80
  %86 = load %struct.img_par*, %struct.img_par** @img, align 8
  %87 = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i64 0, i32 105
  br label %88

88:                                               ; preds = %85, %82
  %.in = phi i32* [ %84, %82 ], [ %87, %85 ]
  %89 = load i32, i32* %.in, align 4
  %90 = trunc i32 %89 to i16
  %91 = add nsw i32 %.05, %.07
  %92 = sext i32 %91 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.10*)*, i16* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #5
  %93 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %92
  store i16 %90, i16* %93, align 2
  br label %94

94:                                               ; preds = %88, %73
  br label %95

95:                                               ; preds = %94
  %96 = add nuw nsw i32 %.07, 1
  br label %8, !llvm.loop !11

97:                                               ; preds = %8
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %.05, %2
  %100 = add nuw nsw i32 %.06, 1
  br label %5, !llvm.loop !12

101:                                              ; preds = %5
  ret void
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
