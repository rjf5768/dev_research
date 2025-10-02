; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/erc_api.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercClose(%struct.ercVariables_s* noundef %7)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %8, %9
  %11 = ashr i32 %10, 6
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @calloc(i64 noundef %12, i64 noundef 24) #4
  %14 = bitcast i8* %13 to %struct.objectBuffer_t*
  store %struct.objectBuffer_t* %14, %struct.objectBuffer_t** @erc_object_list, align 8
  %15 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %16 = icmp eq %struct.objectBuffer_t* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %3
  %19 = call %struct.ercVariables_s* @ercOpen()
  store %struct.ercVariables_s* %19, %struct.ercVariables_s** @erc_errorVar, align 8
  %20 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  %21 = load i32, i32* %6, align 4
  call void @ercSetErrorConcealment(%struct.ercVariables_s* noundef %20, i32 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercClose(%struct.ercVariables_s* noundef %0) #0 {
  %2 = alloca %struct.ercVariables_s*, align 8
  store %struct.ercVariables_s* %0, %struct.ercVariables_s** %2, align 8
  %3 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %4 = icmp ne %struct.ercVariables_s* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %7 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %12 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %11, i32 0, i32 5
  %13 = load %struct.ercSegment_s*, %struct.ercSegment_s** %12, align 8
  %14 = bitcast %struct.ercSegment_s* %13 to i8*
  call void @free(i8* noundef %14) #4
  %15 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %16 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  call void @free(i8* noundef %18) #4
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %20 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* noundef %22) #4
  %23 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %24 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* noundef %26) #4
  %27 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %28 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* noundef %30) #4
  br label %31

31:                                               ; preds = %10, %5
  %32 = load %struct.ercVariables_s*, %struct.ercVariables_s** %2, align 8
  %33 = bitcast %struct.ercVariables_s* %32 to i8*
  call void @free(i8* noundef %33) #4
  store %struct.ercVariables_s* null, %struct.ercVariables_s** %2, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %36 = icmp ne %struct.objectBuffer_t* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.objectBuffer_t*, %struct.objectBuffer_t** @erc_object_list, align 8
  %39 = bitcast %struct.objectBuffer_t* %38 to i8*
  call void @free(i8* noundef %39) #4
  store %struct.objectBuffer_t* null, %struct.objectBuffer_t** @erc_object_list, align 8
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ercVariables_s* @ercOpen() #0 {
  %1 = alloca %struct.ercVariables_s*, align 8
  store %struct.ercVariables_s* null, %struct.ercVariables_s** %1, align 8
  %2 = call noalias i8* @malloc(i64 noundef 72) #4
  %3 = bitcast i8* %2 to %struct.ercVariables_s*
  store %struct.ercVariables_s* %3, %struct.ercVariables_s** %1, align 8
  %4 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %5 = icmp eq %struct.ercVariables_s* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %0
  %8 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %9 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %11 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %10, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %11, align 8
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %12, i32 0, i32 6
  store i32 0, i32* %13, align 8
  %14 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %17 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %19 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %21 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %20, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  %23 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %22, i32 0, i32 10
  store i32 1, i32* %23, align 8
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %1, align 8
  ret %struct.ercVariables_s* %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercSetErrorConcealment(%struct.ercVariables_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ercVariables_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ercVariables_s* %0, %struct.ercVariables_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ercVariables_s*, %struct.ercVariables_s** %3, align 8
  %6 = icmp ne %struct.ercVariables_s* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %3, align 8
  %10 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 8
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercReset(%struct.ercVariables_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ercVariables_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ercVariables_s* %0, %struct.ercVariables_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %12 = icmp ne %struct.ercVariables_s* %11, null
  br i1 %12, label %13, label %257

13:                                               ; preds = %4
  %14 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %257

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %21 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %26 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %31 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* noundef %33) #4
  %34 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %35 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %37 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  call void @free(i8* noundef %39) #4
  %40 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %41 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %40, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %43 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* noundef %45) #4
  %46 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %47 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %49 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* noundef %51) #4
  %52 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %53 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %55 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %54, i32 0, i32 5
  %56 = load %struct.ercSegment_s*, %struct.ercSegment_s** %55, align 8
  %57 = bitcast %struct.ercSegment_s* %56 to i8*
  call void @free(i8* noundef %57) #4
  %58 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %59 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %58, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %59, align 8
  br label %60

60:                                               ; preds = %29, %24, %18
  %61 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %62 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %146

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 12
  %69 = call noalias i8* @malloc(i64 noundef %68) #4
  %70 = bitcast i8* %69 to %struct.ercSegment_s*
  %71 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %72 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %71, i32 0, i32 5
  store %struct.ercSegment_s* %70, %struct.ercSegment_s** %72, align 8
  %73 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %74 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %73, i32 0, i32 5
  %75 = load %struct.ercSegment_s*, %struct.ercSegment_s** %74, align 8
  %76 = icmp eq %struct.ercSegment_s* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %80 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %79, i32 0, i32 5
  %81 = load %struct.ercSegment_s*, %struct.ercSegment_s** %80, align 8
  %82 = bitcast %struct.ercSegment_s* %81 to i8*
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 12
  call void @llvm.memset.p0i8.i64(i8* align 4 %82, i8 0, i64 %85, i1 false)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %88 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 4, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = call noalias i8* @malloc(i64 noundef %92) #4
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %96 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %98 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %78
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 4, %103
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = call noalias i8* @malloc(i64 noundef %106) #4
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %110 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %109, i32 0, i32 7
  store i32* %108, i32** %110, align 8
  %111 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %112 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = call noalias i8* @malloc(i64 noundef %119) #4
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %123 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %125 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = call noalias i8* @malloc(i64 noundef %132) #4
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %136 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %135, i32 0, i32 4
  store i32* %134, i32** %136, align 8
  %137 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %138 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %145 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %158

146:                                              ; preds = %60
  %147 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %148 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %9, align 8
  %150 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %151 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %154 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %153, i32 0, i32 7
  store i32* %152, i32** %154, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %157 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %156, i32 0, i32 2
  store i32* %155, i32** %157, align 8
  br label %158

158:                                              ; preds = %146, %142
  %159 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %160 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* %6, align 4
  %164 = mul nsw i32 4, %163
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %162, i8 0, i64 %166, i1 false)
  %167 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %168 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = bitcast i32* %169 to i8*
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %170, i8 0, i64 %173, i1 false)
  %174 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %175 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = bitcast i32* %176 to i8*
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %177, i8 0, i64 %180, i1 false)
  %181 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %182 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %209

186:                                              ; preds = %158
  %187 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %188 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %187, i32 0, i32 5
  %189 = load %struct.ercSegment_s*, %struct.ercSegment_s** %188, align 8
  %190 = bitcast %struct.ercSegment_s* %189 to i8*
  call void @free(i8* noundef %190) #4
  %191 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %192 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %191, i32 0, i32 5
  store %struct.ercSegment_s* null, %struct.ercSegment_s** %192, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %194, 12
  %196 = call noalias i8* @malloc(i64 noundef %195) #4
  %197 = bitcast i8* %196 to %struct.ercSegment_s*
  %198 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %199 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %198, i32 0, i32 5
  store %struct.ercSegment_s* %197, %struct.ercSegment_s** %199, align 8
  %200 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %201 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %200, i32 0, i32 5
  %202 = load %struct.ercSegment_s*, %struct.ercSegment_s** %201, align 8
  %203 = icmp eq %struct.ercSegment_s* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %186
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %205

205:                                              ; preds = %204, %186
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %208 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %205, %158
  %210 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %211 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %210, i32 0, i32 5
  %212 = load %struct.ercSegment_s*, %struct.ercSegment_s** %211, align 8
  %213 = bitcast %struct.ercSegment_s* %212 to i8*
  %214 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %215 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 12
  call void @llvm.memset.p0i8.i64(i8* align 4 %213, i8 0, i64 %218, i1 false)
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %249, %209
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %222 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %252

225:                                              ; preds = %219
  %226 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %227 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %226, i32 0, i32 5
  %228 = load %struct.ercSegment_s*, %struct.ercSegment_s** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %228, i64 %230
  %232 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %231, i32 0, i32 2
  store i32 1, i32* %232, align 4
  %233 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %234 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %233, i32 0, i32 5
  %235 = load %struct.ercSegment_s*, %struct.ercSegment_s** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %235, i64 %237
  %239 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %238, i32 0, i32 0
  store i32 0, i32* %239, align 4
  %240 = load i32, i32* %6, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %243 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %242, i32 0, i32 5
  %244 = load %struct.ercSegment_s*, %struct.ercSegment_s** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %244, i64 %246
  %248 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %247, i32 0, i32 1
  store i32 %241, i32* %248, align 4
  br label %249

249:                                              ; preds = %225
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %219, !llvm.loop !4

252:                                              ; preds = %219
  %253 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %254 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %253, i32 0, i32 6
  store i32 0, i32* %254, align 8
  %255 = load %struct.ercVariables_s*, %struct.ercVariables_s** %5, align 8
  %256 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %255, i32 0, i32 9
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %13, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercStartSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ercVariables_s*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ercVariables_s* %3, %struct.ercVariables_s** %8, align 8
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %10 = icmp ne %struct.ercVariables_s* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %18 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %17, i32 0, i32 8
  store i32 0, i32* %18, align 8
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %20 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 5
  %21 = load %struct.ercSegment_s*, %struct.ercSegment_s** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %21, i64 %23
  %25 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %28 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %27, i32 0, i32 5
  %29 = load %struct.ercSegment_s*, %struct.ercSegment_s** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %29, i64 %31
  %33 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %16, %11, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercStopSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ercVariables_s*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ercVariables_s* %3, %struct.ercVariables_s** %8, align 8
  %9 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %10 = icmp ne %struct.ercVariables_s* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %13 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %19 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %18, i32 0, i32 5
  %20 = load %struct.ercSegment_s*, %struct.ercSegment_s** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %20, i64 %22
  %24 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %23, i32 0, i32 1
  store i32 %17, i32* %24, align 4
  %25 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %26 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %16, %11, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %0, %struct.ercVariables_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ercVariables_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ercVariables_s* %1, %struct.ercVariables_s** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %8 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %12 = icmp ne %struct.ercVariables_s* %11, null
  br i1 %12, label %13, label %158

13:                                               ; preds = %2
  %14 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %158

18:                                               ; preds = %13
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %20 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %25 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %29 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %28, i32 0, i32 8
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %32 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %31, i32 0, i32 5
  %33 = load %struct.ercSegment_s*, %struct.ercSegment_s** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %33, i64 %35
  %37 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %147, %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %42 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %41, i32 0, i32 5
  %43 = load %struct.ercSegment_s*, %struct.ercSegment_s** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %43, i64 %45
  %47 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %40, %48
  br i1 %49, label %50, label %150

50:                                               ; preds = %39
  %51 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %52 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 4
  %57 = sdiv i32 %54, %56
  %58 = shl i32 %57, 1
  %59 = add nsw i32 %58, 0
  %60 = load i32, i32* %3, align 4
  %61 = ashr i32 %60, 3
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 4
  %66 = srem i32 %63, %65
  %67 = shl i32 %66, 1
  %68 = add nsw i32 %62, %67
  %69 = add nsw i32 %68, 0
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %53, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %73 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %3, align 4
  %77 = ashr i32 %76, 4
  %78 = sdiv i32 %75, %77
  %79 = shl i32 %78, 1
  %80 = add nsw i32 %79, 0
  %81 = load i32, i32* %3, align 4
  %82 = ashr i32 %81, 3
  %83 = mul nsw i32 %80, %82
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %3, align 4
  %86 = ashr i32 %85, 4
  %87 = srem i32 %84, %86
  %88 = shl i32 %87, 1
  %89 = add nsw i32 %83, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %74, i64 %91
  store i32 1, i32* %92, align 4
  %93 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %94 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %3, align 4
  %98 = ashr i32 %97, 4
  %99 = sdiv i32 %96, %98
  %100 = shl i32 %99, 1
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %3, align 4
  %103 = ashr i32 %102, 3
  %104 = mul nsw i32 %101, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = ashr i32 %106, 4
  %108 = srem i32 %105, %107
  %109 = shl i32 %108, 1
  %110 = add nsw i32 %104, %109
  %111 = add nsw i32 %110, 0
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %95, i64 %112
  store i32 1, i32* %113, align 4
  %114 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %115 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %3, align 4
  %119 = ashr i32 %118, 4
  %120 = sdiv i32 %117, %119
  %121 = shl i32 %120, 1
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %3, align 4
  %124 = ashr i32 %123, 3
  %125 = mul nsw i32 %122, %124
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %3, align 4
  %128 = ashr i32 %127, 4
  %129 = srem i32 %126, %128
  %130 = shl i32 %129, 1
  %131 = add nsw i32 %125, %130
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %116, i64 %133
  store i32 1, i32* %134, align 4
  %135 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %136 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 1, i32* %140, align 4
  %141 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %142 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %50
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %39, !llvm.loop !6

150:                                              ; preds = %39
  %151 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %152 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %151, i32 0, i32 5
  %153 = load %struct.ercSegment_s*, %struct.ercSegment_s** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %153, i64 %155
  %157 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %156, i32 0, i32 2
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %13, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %0, %struct.ercVariables_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ercVariables_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ercVariables_s* %1, %struct.ercVariables_s** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %8 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %12 = icmp ne %struct.ercVariables_s* %11, null
  br i1 %12, label %13, label %146

13:                                               ; preds = %2
  %14 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %15 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %146

18:                                               ; preds = %13
  %19 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %20 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %19, i32 0, i32 5
  %21 = load %struct.ercSegment_s*, %struct.ercSegment_s** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %21, i64 %23
  %25 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %135, %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %30 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %29, i32 0, i32 5
  %31 = load %struct.ercSegment_s*, %struct.ercSegment_s** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %28, %36
  br i1 %37, label %38, label %138

38:                                               ; preds = %27
  %39 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %40 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 4
  %45 = sdiv i32 %42, %44
  %46 = shl i32 %45, 1
  %47 = add nsw i32 %46, 0
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 3
  %50 = mul nsw i32 %47, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 4
  %54 = srem i32 %51, %53
  %55 = shl i32 %54, 1
  %56 = add nsw i32 %50, %55
  %57 = add nsw i32 %56, 0
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %41, i64 %58
  store i32 3, i32* %59, align 4
  %60 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %61 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 4
  %66 = sdiv i32 %63, %65
  %67 = shl i32 %66, 1
  %68 = add nsw i32 %67, 0
  %69 = load i32, i32* %3, align 4
  %70 = ashr i32 %69, 3
  %71 = mul nsw i32 %68, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %73, 4
  %75 = srem i32 %72, %74
  %76 = shl i32 %75, 1
  %77 = add nsw i32 %71, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %62, i64 %79
  store i32 3, i32* %80, align 4
  %81 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %82 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %3, align 4
  %86 = ashr i32 %85, 4
  %87 = sdiv i32 %84, %86
  %88 = shl i32 %87, 1
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 3
  %92 = mul nsw i32 %89, %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %3, align 4
  %95 = ashr i32 %94, 4
  %96 = srem i32 %93, %95
  %97 = shl i32 %96, 1
  %98 = add nsw i32 %92, %97
  %99 = add nsw i32 %98, 0
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %83, i64 %100
  store i32 3, i32* %101, align 4
  %102 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %103 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = ashr i32 %106, 4
  %108 = sdiv i32 %105, %107
  %109 = shl i32 %108, 1
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %3, align 4
  %112 = ashr i32 %111, 3
  %113 = mul nsw i32 %110, %112
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %3, align 4
  %116 = ashr i32 %115, 4
  %117 = srem i32 %114, %116
  %118 = shl i32 %117, 1
  %119 = add nsw i32 %113, %118
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %104, i64 %121
  store i32 3, i32* %122, align 4
  %123 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %124 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 3, i32* %128, align 4
  %129 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %130 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 3, i32* %134, align 4
  br label %135

135:                                              ; preds = %38
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %27, !llvm.loop !7

138:                                              ; preds = %27
  %139 = load %struct.ercVariables_s*, %struct.ercVariables_s** %4, align 8
  %140 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %139, i32 0, i32 5
  %141 = load %struct.ercSegment_s*, %struct.ercSegment_s** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %141, i64 %143
  %145 = getelementptr inbounds %struct.ercSegment_s, %struct.ercSegment_s* %144, i32 0, i32 2
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %138, %13, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ercVariables_s*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ercVariables_s* %3, %struct.ercVariables_s** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %11 = icmp ne %struct.ercVariables_s* %10, null
  br i1 %11, label %12, label %131

12:                                               ; preds = %4
  %13 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %14 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %130 [
    i32 0, label %23
    i32 1, label %112
    i32 2, label %123
  ]

23:                                               ; preds = %21
  %24 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %25 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 4
  %30 = sdiv i32 %27, %29
  %31 = shl i32 %30, 1
  %32 = add nsw i32 %31, 0
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 3
  %35 = mul nsw i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 4
  %39 = srem i32 %36, %38
  %40 = shl i32 %39, 1
  %41 = add nsw i32 %35, %40
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %26, i64 %43
  store i32 2, i32* %44, align 4
  %45 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %46 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 4
  %51 = sdiv i32 %48, %50
  %52 = shl i32 %51, 1
  %53 = add nsw i32 %52, 0
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 3
  %56 = mul nsw i32 %53, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 4
  %60 = srem i32 %57, %59
  %61 = shl i32 %60, 1
  %62 = add nsw i32 %56, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %47, i64 %64
  store i32 2, i32* %65, align 4
  %66 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %67 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 4
  %72 = sdiv i32 %69, %71
  %73 = shl i32 %72, 1
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 3
  %77 = mul nsw i32 %74, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 4
  %81 = srem i32 %78, %80
  %82 = shl i32 %81, 1
  %83 = add nsw i32 %77, %82
  %84 = add nsw i32 %83, 0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %68, i64 %85
  store i32 2, i32* %86, align 4
  %87 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %88 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 4
  %93 = sdiv i32 %90, %92
  %94 = shl i32 %93, 1
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 3
  %98 = mul nsw i32 %95, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 4
  %102 = srem i32 %99, %101
  %103 = shl i32 %102, 1
  %104 = add nsw i32 %98, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %89, i64 %106
  store i32 2, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %23
  br label %130

111:                                              ; preds = %23
  br label %112

112:                                              ; preds = %21, %111
  %113 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %114 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 2, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %112
  br label %130

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %21, %122
  %124 = load %struct.ercVariables_s*, %struct.ercVariables_s** %8, align 8
  %125 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 2, i32* %129, align 4
  br label %130

130:                                              ; preds = %123, %21, %121, %110
  br label %131

131:                                              ; preds = %130, %12, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
