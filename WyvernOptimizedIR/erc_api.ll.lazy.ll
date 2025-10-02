; ModuleID = './erc_api.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/erc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objectBuffer_t = type { i8, i32, i32, [3 x i32] }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }
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

@erc_object_list = dso_local global %struct.objectBuffer_t* null, align 8
@erc_errorVar = dso_local global %struct.ercVariables_s* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"ercInit: erc_object_list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ercOpen: errorVar\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ercReset: errorVar->segments\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->yCondition\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ercReset: errorVar->prevFrameYCondition\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->uCondition\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->vCondition\00", align 1
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
@erc_recfr = dso_local global %struct.frame zeroinitializer, align 8
@erc_mvperMB = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercInit(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercClose(%struct.ercVariables_s* noundef %4)
  %5 = mul nsw i32 %0, %1
  %6 = ashr i32 %5, 6
  %7 = sext i32 %6 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 24) #7
  store i8* %8, i8** bitcast (%struct.objectBuffer_t** @erc_object_list to i8**), align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #7
  br label %11

11:                                               ; preds = %10, %3
  %12 = call %struct.ercVariables_s* @ercOpen()
  store %struct.ercVariables_s* %12, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercSetErrorConcealment(%struct.ercVariables_s* noundef %12, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercClose(%struct.ercVariables_s* noundef %0) #0 {
  %.not = icmp eq %struct.ercVariables_s* %0, null
  br i1 %.not, label %23, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %4 = load i32*, i32** %3, align 8
  %.not2 = icmp eq i32* %4, null
  br i1 %.not2, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %7 = bitcast %struct.ercSegment_s** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #7
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %10 = bitcast i32** %9 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %11) #7
  %12 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 3
  %13 = bitcast i32** %12 to i8**
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %14) #7
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 4
  %16 = bitcast i32** %15 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #7
  %18 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* noundef %20) #7
  br label %21

21:                                               ; preds = %5, %2
  %22 = bitcast %struct.ercVariables_s* %0 to i8*
  call void @free(i8* noundef %22) #7
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %.not1 = icmp eq %struct.objectBuffer_t* %24, null
  br i1 %.not1, label %27, label %25

25:                                               ; preds = %23
  %26 = load i8*, i8** bitcast (%struct.objectBuffer_t** @erc_object_list to i8**), align 8
  call void @free(i8* noundef %26) #7
  store %struct.objectBuffer_t* null, %struct.objectBuffer_t** @erc_object_list, align 8
  br label %27

27:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.ercVariables_s* @ercOpen() #0 {
  %1 = call noalias dereferenceable_or_null(72) i8* @malloc(i64 noundef 72) #7
  %2 = bitcast i8* %1 to %struct.ercVariables_s*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %5

5:                                                ; preds = %4, %0
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %7, align 8
  %8 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 6
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 7
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %2, i64 0, i32 10
  store i32 1, i32* %13, align 8
  ret %struct.ercVariables_s* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @ercSetErrorConcealment(%struct.ercVariables_s* noundef writeonly %0, i32 noundef %1) #3 {
  %.not = icmp eq %struct.ercVariables_s* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 10
  store i32 %1, i32* %4, align 8
  br label %5

5:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercReset(%struct.ercVariables_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %.not = icmp eq %struct.ercVariables_s* %0, null
  br i1 %.not, label %160, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 10
  %7 = load i32, i32* %6, align 8
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %160, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %.not2 = icmp eq i32 %10, %1
  br i1 %.not2, label %35, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %.not4 = icmp eq i32* %13, null
  br i1 %.not4, label %35, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %16 = bitcast i32** %15 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #7
  %18 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  %20 = bitcast i32** %19 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @free(i8* noundef %21) #7
  %22 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 3
  %24 = bitcast i32** %23 to i8**
  %25 = load i8*, i8** %24, align 8
  call void @free(i8* noundef %25) #7
  %26 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 4
  %28 = bitcast i32** %27 to i8**
  %29 = load i8*, i8** %28, align 8
  call void @free(i8* noundef %29) #7
  %30 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %32 = bitcast %struct.ercSegment_s** %31 to i8**
  %33 = load i8*, i8** %32, align 8
  call void @free(i8* noundef %33) #7
  %34 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %34, align 8
  br label %35

35:                                               ; preds = %14, %11, %8
  %36 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = sext i32 %2 to i64
  %41 = mul nsw i64 %40, 12
  %42 = call noalias i8* @malloc(i64 noundef %41) #7
  %43 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %44 = bitcast %struct.ercSegment_s** %43 to i8**
  store i8* %42, i8** %44, align 8
  %45 = icmp eq i8* %42, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %47

47:                                               ; preds = %46, %39
  %48 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %49 = bitcast %struct.ercSegment_s** %48 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = sext i32 %2 to i64
  %52 = mul nsw i64 %51, 12
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 %52, i1 false)
  %53 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 1
  store i32 %2, i32* %53, align 4
  %54 = shl nsw i32 %1, 2
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = call noalias i8* @malloc(i64 noundef %56) #7
  %58 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %59 = bitcast i32** %58 to i8**
  store i8* %57, i8** %59, align 8
  %60 = icmp eq i8* %57, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %62

62:                                               ; preds = %61, %47
  %63 = shl nsw i32 %1, 2
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 2
  %66 = call noalias i8* @malloc(i64 noundef %65) #7
  %67 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  %68 = bitcast i32** %67 to i8**
  store i8* %66, i8** %68, align 8
  %69 = icmp eq i8* %66, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %71

71:                                               ; preds = %70, %62
  %72 = sext i32 %1 to i64
  %73 = shl nsw i64 %72, 2
  %74 = call noalias i8* @malloc(i64 noundef %73) #7
  %75 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 3
  %76 = bitcast i32** %75 to i8**
  store i8* %74, i8** %76, align 8
  %77 = icmp eq i8* %74, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #7
  br label %79

79:                                               ; preds = %78, %71
  %80 = sext i32 %1 to i64
  %81 = shl nsw i64 %80, 2
  %82 = call noalias i8* @malloc(i64 noundef %81) #7
  %83 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 4
  %84 = bitcast i32** %83 to i8**
  store i8* %82, i8** %84, align 8
  %85 = icmp eq i8* %82, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #7
  br label %87

87:                                               ; preds = %86, %79
  %88 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 0
  store i32 %1, i32* %88, align 8
  br label %96

89:                                               ; preds = %35
  %90 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 7
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  store i32* %91, i32** %95, align 8
  br label %96

96:                                               ; preds = %89, %87
  %97 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 2
  %98 = bitcast i32** %97 to i8**
  %99 = load i8*, i8** %98, align 8
  %100 = shl nsw i32 %1, 2
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %99, i8 0, i64 %102, i1 false)
  %103 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 3
  %104 = bitcast i32** %103 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = sext i32 %1 to i64
  %107 = shl nsw i64 %106, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %105, i8 0, i64 %107, i1 false)
  %108 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 4
  %109 = bitcast i32** %108 to i8**
  %110 = load i8*, i8** %109, align 8
  %111 = sext i32 %1 to i64
  %112 = shl nsw i64 %111, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %110, i8 0, i64 %112, i1 false)
  %113 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 1
  %114 = load i32, i32* %113, align 4
  %.not3 = icmp eq i32 %114, %2
  br i1 %.not3, label %129, label %115

115:                                              ; preds = %96
  %116 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %117 = bitcast %struct.ercSegment_s** %116 to i8**
  %118 = load i8*, i8** %117, align 8
  call void @free(i8* noundef %118) #7
  %119 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %119, align 8
  %120 = sext i32 %2 to i64
  %121 = mul nsw i64 %120, 12
  %122 = call noalias i8* @malloc(i64 noundef %121) #7
  %123 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %124 = bitcast %struct.ercSegment_s** %123 to i8**
  store i8* %122, i8** %124, align 8
  %125 = icmp eq i8* %122, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %127

127:                                              ; preds = %126, %115
  %128 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 1
  store i32 %2, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %96
  %130 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %131 = bitcast %struct.ercSegment_s** %130 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 12
  call void @llvm.memset.p0i8.i64(i8* align 4 %132, i8 0, i64 %136, i1 false)
  br label %137

137:                                              ; preds = %155, %129
  %.0 = phi i32 [ 0, %129 ], [ %156, %155 ]
  %138 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %.0, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %143 = load %struct.ercSegment_s*, %struct.ercSegment_s** %142, align 8
  %144 = zext i32 %.0 to i64
  %145 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %143, i64 %144, i32 2
  store i32 1, i32* %145, align 4
  %146 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %147 = load %struct.ercSegment_s*, %struct.ercSegment_s** %146, align 8
  %148 = zext i32 %.0 to i64
  %149 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %147, i64 %148, i32 0
  store i32 0, i32* %149, align 4
  %150 = add nsw i32 %1, -1
  %151 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 5
  %152 = load %struct.ercSegment_s*, %struct.ercSegment_s** %151, align 8
  %153 = zext i32 %.0 to i64
  %154 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %152, i64 %153, i32 1
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %141
  %156 = add nuw nsw i32 %.0, 1
  br label %137, !llvm.loop !4

157:                                              ; preds = %137
  %158 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 6
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %0, i64 0, i32 9
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %5, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ercStartSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #5 {
  %.not = icmp eq %struct.ercVariables_s* %3, null
  br i1 %.not, label %18, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 10
  %7 = load i32, i32* %6, align 8
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 8
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 5
  %11 = load %struct.ercSegment_s*, %struct.ercSegment_s** %10, align 8
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %11, i64 %12, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 5
  %15 = load %struct.ercSegment_s*, %struct.ercSegment_s** %14, align 8
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %15, i64 %16, i32 0
  store i32 %0, i32* %17, align 4
  br label %18

18:                                               ; preds = %8, %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ercStopSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #5 {
  %.not = icmp eq %struct.ercVariables_s* %3, null
  br i1 %.not, label %16, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 10
  %7 = load i32, i32* %6, align 8
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 5
  %10 = load %struct.ercSegment_s*, %struct.ercSegment_s** %9, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %10, i64 %11, i32 1
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %8, %5, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %0, %struct.ercVariables_s* noundef %1) #6 {
  %3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = add nsw i32 %4, -1
  %.not = icmp eq %struct.ercVariables_s* %1, null
  br i1 %.not, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 10
  %8 = load i32, i32* %7, align 8
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %102, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 8
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %20 = load %struct.ercSegment_s*, %struct.ercSegment_s** %19, align 8
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %20, i64 %21, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %95, %18
  %.0 = phi i32 [ %23, %18 ], [ %96, %95 ]
  %25 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %26 = load %struct.ercSegment_s*, %struct.ercSegment_s** %25, align 8
  %27 = sext i32 %5 to i64
  %28 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %26, i64 %27, i32 1
  %29 = load i32, i32* %28, align 4
  %.not2 = icmp sgt i32 %.0, %29
  br i1 %.not2, label %97, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = ashr i32 %0, 4
  %34 = sdiv i32 %.0, %33
  %35 = shl i32 %34, 1
  %36 = ashr i32 %0, 3
  %37 = mul nsw i32 %35, %36
  %38 = ashr i32 %0, 4
  %39 = srem i32 %.0, %38
  %40 = shl i32 %39, 1
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %32, i64 %42
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = ashr i32 %0, 4
  %47 = sdiv i32 %.0, %46
  %48 = shl i32 %47, 1
  %49 = ashr i32 %0, 3
  %50 = mul nsw i32 %48, %49
  %51 = ashr i32 %0, 4
  %52 = srem i32 %.0, %51
  %53 = shl i32 %52, 1
  %54 = add nsw i32 %50, %53
  %55 = or i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %45, i64 %56
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = ashr i32 %0, 4
  %61 = sdiv i32 %.0, %60
  %62 = shl i32 %61, 1
  %63 = or i32 %62, 1
  %64 = ashr i32 %0, 3
  %65 = mul nsw i32 %63, %64
  %66 = ashr i32 %0, 4
  %67 = srem i32 %.0, %66
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %59, i64 %70
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = ashr i32 %0, 4
  %75 = sdiv i32 %.0, %74
  %76 = shl i32 %75, 1
  %77 = or i32 %76, 1
  %78 = ashr i32 %0, 3
  %79 = mul nsw i32 %77, %78
  %80 = ashr i32 %0, 4
  %81 = srem i32 %.0, %80
  %82 = shl i32 %81, 1
  %83 = add nsw i32 %79, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %73, i64 %85
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = sext i32 %.0 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = sext i32 %.0 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %30
  %96 = add nsw i32 %.0, 1
  br label %24, !llvm.loop !6

97:                                               ; preds = %24
  %98 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %99 = load %struct.ercSegment_s*, %struct.ercSegment_s** %98, align 8
  %100 = sext i32 %5 to i64
  %101 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %99, i64 %100, i32 2
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %0, %struct.ercVariables_s* noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = add nsw i32 %4, -1
  %.not = icmp eq %struct.ercVariables_s* %1, null
  br i1 %.not, label %93, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 10
  %8 = load i32, i32* %7, align 8
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %93, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %11 = load %struct.ercSegment_s*, %struct.ercSegment_s** %10, align 8
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %11, i64 %12, i32 0
  %14 = load i32, i32* %13, align 4
  br label %15

15:                                               ; preds = %86, %9
  %.0 = phi i32 [ %14, %9 ], [ %87, %86 ]
  %16 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %17 = load %struct.ercSegment_s*, %struct.ercSegment_s** %16, align 8
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %17, i64 %18, i32 1
  %20 = load i32, i32* %19, align 4
  %.not2 = icmp sgt i32 %.0, %20
  br i1 %.not2, label %88, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = ashr i32 %0, 4
  %25 = sdiv i32 %.0, %24
  %26 = shl i32 %25, 1
  %27 = ashr i32 %0, 3
  %28 = mul nsw i32 %26, %27
  %29 = ashr i32 %0, 4
  %30 = srem i32 %.0, %29
  %31 = shl i32 %30, 1
  %32 = add nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %23, i64 %33
  store i32 3, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = ashr i32 %0, 4
  %38 = sdiv i32 %.0, %37
  %39 = shl i32 %38, 1
  %40 = ashr i32 %0, 3
  %41 = mul nsw i32 %39, %40
  %42 = ashr i32 %0, 4
  %43 = srem i32 %.0, %42
  %44 = shl i32 %43, 1
  %45 = add nsw i32 %41, %44
  %46 = or i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %36, i64 %47
  store i32 3, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = ashr i32 %0, 4
  %52 = sdiv i32 %.0, %51
  %53 = shl i32 %52, 1
  %54 = or i32 %53, 1
  %55 = ashr i32 %0, 3
  %56 = mul nsw i32 %54, %55
  %57 = ashr i32 %0, 4
  %58 = srem i32 %.0, %57
  %59 = shl i32 %58, 1
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %50, i64 %61
  store i32 3, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = ashr i32 %0, 4
  %66 = sdiv i32 %.0, %65
  %67 = shl i32 %66, 1
  %68 = or i32 %67, 1
  %69 = ashr i32 %0, 3
  %70 = mul nsw i32 %68, %69
  %71 = ashr i32 %0, 4
  %72 = srem i32 %.0, %71
  %73 = shl i32 %72, 1
  %74 = add nsw i32 %70, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %64, i64 %76
  store i32 3, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = sext i32 %.0 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 3, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = sext i32 %.0 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 3, i32* %85, align 4
  br label %86

86:                                               ; preds = %21
  %87 = add nsw i32 %.0, 1
  br label %15, !llvm.loop !7

88:                                               ; preds = %15
  %89 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %1, i64 0, i32 5
  %90 = load %struct.ercSegment_s*, %struct.ercSegment_s** %89, align 8
  %91 = sext i32 %5 to i64
  %92 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %90, i64 %91, i32 2
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef readonly %3) #5 {
  %.not = icmp eq %struct.ercVariables_s* %3, null
  br i1 %.not, label %84, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 10
  %7 = load i32, i32* %6, align 8
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %84, label %8

8:                                                ; preds = %5
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %8
  %.01 = phi i32 [ 0, %10 ], [ %1, %8 ]
  switch i32 %.01, label %83 [
    i32 0, label %12
    i32 1, label %71
    i32 2, label %78
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = ashr i32 %2, 4
  %16 = sdiv i32 %0, %15
  %17 = shl i32 %16, 1
  %18 = ashr i32 %2, 3
  %19 = mul nsw i32 %17, %18
  %20 = ashr i32 %2, 4
  %21 = srem i32 %0, %20
  %22 = shl i32 %21, 1
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %14, i64 %24
  store i32 2, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = ashr i32 %2, 4
  %29 = sdiv i32 %0, %28
  %30 = shl i32 %29, 1
  %31 = ashr i32 %2, 3
  %32 = mul nsw i32 %30, %31
  %33 = ashr i32 %2, 4
  %34 = srem i32 %0, %33
  %35 = shl i32 %34, 1
  %36 = add nsw i32 %32, %35
  %37 = or i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %27, i64 %38
  store i32 2, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = ashr i32 %2, 4
  %43 = sdiv i32 %0, %42
  %44 = shl i32 %43, 1
  %45 = or i32 %44, 1
  %46 = ashr i32 %2, 3
  %47 = mul nsw i32 %45, %46
  %48 = ashr i32 %2, 4
  %49 = srem i32 %0, %48
  %50 = shl i32 %49, 1
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %41, i64 %52
  store i32 2, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = ashr i32 %2, 4
  %57 = sdiv i32 %0, %56
  %58 = shl i32 %57, 1
  %59 = or i32 %58, 1
  %60 = ashr i32 %2, 3
  %61 = mul nsw i32 %59, %60
  %62 = ashr i32 %2, 4
  %63 = srem i32 %0, %62
  %64 = shl i32 %63, 1
  %65 = add nsw i32 %61, %64
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %55, i64 %67
  store i32 2, i32* %68, align 4
  br i1 %9, label %70, label %69

69:                                               ; preds = %12
  br label %83

70:                                               ; preds = %12
  br label %71

71:                                               ; preds = %70, %11
  %72 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = sext i32 %0 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 2, i32* %75, align 4
  br i1 %9, label %77, label %76

76:                                               ; preds = %71
  br label %83

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %11
  %79 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %3, i64 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = sext i32 %0 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 2, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %76, %69, %11
  br label %84

84:                                               ; preds = %83, %5, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
