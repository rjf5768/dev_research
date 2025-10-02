; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/erc_do_i.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ercConcealIntraFrame(%struct.frame* noundef %0, i32 noundef %1, i32 noundef %2, %struct.ercVariables_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ercVariables_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ercVariables_s* %3, %struct.ercVariables_s** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %13 = icmp ne %struct.ercVariables_s* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %4
  %15 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %16 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %21 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.frame*, %struct.frame** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %34 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  call void @concealBlocks(i32 noundef %29, i32 noundef %30, i32 noundef 0, %struct.frame* noundef %31, i32 noundef %32, i32* noundef %35)
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.frame*, %struct.frame** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %45 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  call void @concealBlocks(i32 noundef %40, i32 noundef %41, i32 noundef 1, %struct.frame* noundef %42, i32 noundef %43, i32* noundef %46)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.frame*, %struct.frame** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ercVariables_s*, %struct.ercVariables_s** %9, align 8
  %52 = getelementptr inbounds %struct.ercVariables_s, %struct.ercVariables_s* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  call void @concealBlocks(i32 noundef %47, i32 noundef %48, i32 noundef 2, %struct.frame* noundef %49, i32 noundef %50, i32* noundef %53)
  br label %54

54:                                               ; preds = %24, %19
  store i32 1, i32* %5, align 4
  br label %56

55:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal void @concealBlocks(i32 noundef %0, i32 noundef %1, i32 noundef %2, %struct.frame* noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
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
  %23 = alloca [8 x i32], align 16
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.frame* %3, %struct.frame** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 2, i32* %24, align 4
  br label %29

28:                                               ; preds = %6
  store i32 1, i32* %24, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %433, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %437

34:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %428, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %432

39:                                               ; preds = %35
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %427

51:                                               ; preds = %39
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %24, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %77, %51
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %17, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %17, align 4
  br label %81

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %56, !llvm.loop !4

81:                                               ; preds = %72, %56
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %188

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %24, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %182, %85
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %186

94:                                               ; preds = %90
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %24, align 4
  %102 = call i32 @ercCollect8PredBlocks(i32* noundef %95, i32 noundef %96, i32 noundef %97, i32* noundef %98, i32 noundef %99, i32 noundef %100, i32 noundef %101, i8 noundef zeroext 1)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %130 [
    i32 0, label %104
    i32 1, label %112
    i32 2, label %121
  ]

104:                                              ; preds = %94
  %105 = load %struct.frame*, %struct.frame** %10, align 8
  %106 = getelementptr inbounds %struct.frame, %struct.frame* %105, i32 0, i32 0
  %107 = load i16*, i16** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %14, align 4
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %111 = load i32, i32* %11, align 4
  call void @ercPixConcealIMB(i16* noundef %107, i32 noundef %108, i32 noundef %109, i32* noundef %110, i32 noundef %111, i32 noundef 2)
  br label %130

112:                                              ; preds = %94
  %113 = load %struct.frame*, %struct.frame** %10, align 8
  %114 = getelementptr inbounds %struct.frame, %struct.frame* %113, i32 0, i32 1
  %115 = load i16*, i16** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %14, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %119 = load i32, i32* %11, align 4
  %120 = ashr i32 %119, 1
  call void @ercPixConcealIMB(i16* noundef %115, i32 noundef %116, i32 noundef %117, i32* noundef %118, i32 noundef %120, i32 noundef 1)
  br label %130

121:                                              ; preds = %94
  %122 = load %struct.frame*, %struct.frame** %10, align 8
  %123 = getelementptr inbounds %struct.frame, %struct.frame* %122, i32 0, i32 2
  %124 = load i16*, i16** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %14, align 4
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %128 = load i32, i32* %11, align 4
  %129 = ashr i32 %128, 1
  call void @ercPixConcealIMB(i16* noundef %124, i32 noundef %125, i32 noundef %126, i32* noundef %127, i32 noundef %129, i32 noundef 1)
  br label %130

130:                                              ; preds = %94, %121, %112, %104
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %130
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %7, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  store i32 2, i32* %141, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %142, i64 %149
  store i32 2, i32* %150, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %151, i64 %159
  store i32 2, i32* %160, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %7, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %166, %167
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %161, i64 %170
  store i32 2, i32* %171, align 4
  br label %181

172:                                              ; preds = %130
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  store i32 2, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %133
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %19, align 4
  br label %90, !llvm.loop !6

186:                                              ; preds = %90
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %13, align 4
  br label %426

188:                                              ; preds = %81
  %189 = load i32, i32* %18, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %292

191:                                              ; preds = %188
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %284, %191
  %194 = load i32, i32* %19, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %288

196:                                              ; preds = %193
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %24, align 4
  %204 = call i32 @ercCollect8PredBlocks(i32* noundef %197, i32 noundef %198, i32 noundef %199, i32* noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203, i8 noundef zeroext 1)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %9, align 4
  switch i32 %205, label %232 [
    i32 0, label %206
    i32 1, label %214
    i32 2, label %223
  ]

206:                                              ; preds = %196
  %207 = load %struct.frame*, %struct.frame** %10, align 8
  %208 = getelementptr inbounds %struct.frame, %struct.frame* %207, i32 0, i32 0
  %209 = load i16*, i16** %208, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %14, align 4
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %213 = load i32, i32* %11, align 4
  call void @ercPixConcealIMB(i16* noundef %209, i32 noundef %210, i32 noundef %211, i32* noundef %212, i32 noundef %213, i32 noundef 2)
  br label %232

214:                                              ; preds = %196
  %215 = load %struct.frame*, %struct.frame** %10, align 8
  %216 = getelementptr inbounds %struct.frame, %struct.frame* %215, i32 0, i32 1
  %217 = load i16*, i16** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %14, align 4
  %220 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %221 = load i32, i32* %11, align 4
  %222 = ashr i32 %221, 1
  call void @ercPixConcealIMB(i16* noundef %217, i32 noundef %218, i32 noundef %219, i32* noundef %220, i32 noundef %222, i32 noundef 1)
  br label %232

223:                                              ; preds = %196
  %224 = load %struct.frame*, %struct.frame** %10, align 8
  %225 = getelementptr inbounds %struct.frame, %struct.frame* %224, i32 0, i32 2
  %226 = load i16*, i16** %225, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %14, align 4
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %230 = load i32, i32* %11, align 4
  %231 = ashr i32 %230, 1
  call void @ercPixConcealIMB(i16* noundef %226, i32 noundef %227, i32 noundef %228, i32* noundef %229, i32 noundef %231, i32 noundef 1)
  br label %232

232:                                              ; preds = %196, %223, %214, %206
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %274

235:                                              ; preds = %232
  %236 = load i32*, i32** %12, align 8
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %7, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  store i32 2, i32* %243, align 4
  %244 = load i32*, i32** %12, align 8
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %7, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %247, %248
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %244, i64 %251
  store i32 2, i32* %252, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %7, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %253, i64 %261
  store i32 2, i32* %262, align 4
  %263 = load i32*, i32** %12, align 8
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %7, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %268, %269
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %263, i64 %272
  store i32 2, i32* %273, align 4
  br label %283

274:                                              ; preds = %232
  %275 = load i32*, i32** %12, align 8
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %7, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  store i32 2, i32* %282, align 4
  br label %283

283:                                              ; preds = %274, %235
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %24, align 4
  %286 = load i32, i32* %19, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %19, align 4
  br label %193, !llvm.loop !7

288:                                              ; preds = %193
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %24, align 4
  %291 = add nsw i32 %289, %290
  store i32 %291, i32* %13, align 4
  br label %425

292:                                              ; preds = %188
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* %24, align 4
  %295 = add nsw i32 %293, %294
  store i32 %295, i32* %13, align 4
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %18, align 4
  %298 = sub nsw i32 %296, %297
  %299 = load i32, i32* %24, align 4
  %300 = add nsw i32 %298, %299
  store i32 %300, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %301

301:                                              ; preds = %420, %292
  %302 = load i32, i32* %21, align 4
  %303 = load i32, i32* %20, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %424

305:                                              ; preds = %301
  %306 = load i32, i32* %21, align 4
  %307 = srem i32 %306, 2
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load i32, i32* %17, align 4
  store i32 %310, i32* %19, align 4
  %311 = load i32, i32* %24, align 4
  %312 = load i32, i32* %17, align 4
  %313 = sub nsw i32 %312, %311
  store i32 %313, i32* %17, align 4
  br label %319

314:                                              ; preds = %305
  %315 = load i32, i32* %18, align 4
  store i32 %315, i32* %19, align 4
  %316 = load i32, i32* %24, align 4
  %317 = load i32, i32* %18, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %18, align 4
  br label %319

319:                                              ; preds = %314, %309
  %320 = load i32, i32* %22, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %324 = load i32, i32* %19, align 4
  %325 = load i32, i32* %14, align 4
  %326 = load i32*, i32** %12, align 8
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %24, align 4
  %330 = call i32 @ercCollectColumnBlocks(i32* noundef %323, i32 noundef %324, i32 noundef %325, i32* noundef %326, i32 noundef %327, i32 noundef %328, i32 noundef %329)
  store i32 %330, i32* %15, align 4
  br label %340

331:                                              ; preds = %319
  %332 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* %14, align 4
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* %24, align 4
  %339 = call i32 @ercCollect8PredBlocks(i32* noundef %332, i32 noundef %333, i32 noundef %334, i32* noundef %335, i32 noundef %336, i32 noundef %337, i32 noundef %338, i8 noundef zeroext 1)
  store i32 %339, i32* %15, align 4
  br label %340

340:                                              ; preds = %331, %322
  %341 = load i32, i32* %9, align 4
  switch i32 %341, label %368 [
    i32 0, label %342
    i32 1, label %350
    i32 2, label %359
  ]

342:                                              ; preds = %340
  %343 = load %struct.frame*, %struct.frame** %10, align 8
  %344 = getelementptr inbounds %struct.frame, %struct.frame* %343, i32 0, i32 0
  %345 = load i16*, i16** %344, align 8
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* %14, align 4
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %349 = load i32, i32* %11, align 4
  call void @ercPixConcealIMB(i16* noundef %345, i32 noundef %346, i32 noundef %347, i32* noundef %348, i32 noundef %349, i32 noundef 2)
  br label %368

350:                                              ; preds = %340
  %351 = load %struct.frame*, %struct.frame** %10, align 8
  %352 = getelementptr inbounds %struct.frame, %struct.frame* %351, i32 0, i32 1
  %353 = load i16*, i16** %352, align 8
  %354 = load i32, i32* %19, align 4
  %355 = load i32, i32* %14, align 4
  %356 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %357 = load i32, i32* %11, align 4
  %358 = ashr i32 %357, 1
  call void @ercPixConcealIMB(i16* noundef %353, i32 noundef %354, i32 noundef %355, i32* noundef %356, i32 noundef %358, i32 noundef 1)
  br label %368

359:                                              ; preds = %340
  %360 = load %struct.frame*, %struct.frame** %10, align 8
  %361 = getelementptr inbounds %struct.frame, %struct.frame* %360, i32 0, i32 2
  %362 = load i16*, i16** %361, align 8
  %363 = load i32, i32* %19, align 4
  %364 = load i32, i32* %14, align 4
  %365 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %366 = load i32, i32* %11, align 4
  %367 = ashr i32 %366, 1
  call void @ercPixConcealIMB(i16* noundef %362, i32 noundef %363, i32 noundef %364, i32* noundef %365, i32 noundef %367, i32 noundef 1)
  br label %368

368:                                              ; preds = %340, %359, %350, %342
  %369 = load i32, i32* %9, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %410

371:                                              ; preds = %368
  %372 = load i32*, i32** %12, align 8
  %373 = load i32, i32* %19, align 4
  %374 = load i32, i32* %7, align 4
  %375 = mul nsw i32 %373, %374
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %375, %376
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %372, i64 %378
  store i32 2, i32* %379, align 4
  %380 = load i32*, i32** %12, align 8
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* %7, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32, i32* %14, align 4
  %385 = add nsw i32 %383, %384
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %380, i64 %387
  store i32 2, i32* %388, align 4
  %389 = load i32*, i32** %12, align 8
  %390 = load i32, i32* %19, align 4
  %391 = load i32, i32* %7, align 4
  %392 = mul nsw i32 %390, %391
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %392, %393
  %395 = load i32, i32* %7, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %389, i64 %397
  store i32 2, i32* %398, align 4
  %399 = load i32*, i32** %12, align 8
  %400 = load i32, i32* %19, align 4
  %401 = load i32, i32* %7, align 4
  %402 = mul nsw i32 %400, %401
  %403 = load i32, i32* %14, align 4
  %404 = add nsw i32 %402, %403
  %405 = load i32, i32* %7, align 4
  %406 = add nsw i32 %404, %405
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %399, i64 %408
  store i32 2, i32* %409, align 4
  br label %419

410:                                              ; preds = %368
  %411 = load i32*, i32** %12, align 8
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %7, align 4
  %414 = mul nsw i32 %412, %413
  %415 = load i32, i32* %14, align 4
  %416 = add nsw i32 %414, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %411, i64 %417
  store i32 2, i32* %418, align 4
  br label %419

419:                                              ; preds = %410, %371
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %24, align 4
  %422 = load i32, i32* %21, align 4
  %423 = add nsw i32 %422, %421
  store i32 %423, i32* %21, align 4
  br label %301, !llvm.loop !8

424:                                              ; preds = %301
  br label %425

425:                                              ; preds = %424, %288
  br label %426

426:                                              ; preds = %425, %186
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %427

427:                                              ; preds = %426, %39
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %13, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %13, align 4
  br label %35, !llvm.loop !9

432:                                              ; preds = %35
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %24, align 4
  %435 = load i32, i32* %14, align 4
  %436 = add nsw i32 %435, %434
  store i32 %436, i32* %14, align 4
  br label %30, !llvm.loop !10

437:                                              ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ercPixConcealIMB(i16* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i16*], align 16
  %14 = alloca i16*, align 8
  store i16* %0, i16** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = bitcast [8 x i16*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  store i16* null, i16** %14, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load i16*, i16** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %21, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = mul nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %29, i64 %34
  %36 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 0
  store i16* %35, i16** %36, align 16
  br label %37

37:                                               ; preds = %20, %6
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i16*, i16** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = mul nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %43, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %51, i64 %56
  %58 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 1
  store i16* %57, i16** %58, align 8
  br label %59

59:                                               ; preds = %42, %37
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i16*, i16** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = mul nsw i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %65, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = mul nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %73, i64 %78
  %80 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 2
  store i16* %79, i16** %80, align 16
  br label %81

81:                                               ; preds = %64, %59
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load i16*, i16** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %90, %91
  %93 = mul nsw i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %87, i64 %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = mul nsw i32 %98, 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %95, i64 %100
  %102 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 3
  store i16* %101, i16** %102, align 8
  br label %103

103:                                              ; preds = %86, %81
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load i16*, i16** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %112, %113
  %115 = mul nsw i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %109, i64 %116
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %118, 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %117, i64 %120
  %122 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 4
  store i16* %121, i16** %122, align 16
  br label %123

123:                                              ; preds = %108, %103
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load i16*, i16** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = mul nsw i32 %132, 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %129, i64 %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %136, %137
  %139 = mul nsw i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %135, i64 %140
  %142 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 5
  store i16* %141, i16** %142, align 8
  br label %143

143:                                              ; preds = %128, %123
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load i16*, i16** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %152, %153
  %155 = mul nsw i32 %154, 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, i16* %149, i64 %156
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i16, i16* %157, i64 %160
  %162 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 6
  store i16* %161, i16** %162, align 16
  br label %163

163:                                              ; preds = %148, %143
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load i16*, i16** %7, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %170, %171
  %173 = mul nsw i32 %172, 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %169, i64 %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %176, %177
  %179 = mul nsw i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i16, i16* %175, i64 %180
  %182 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 7
  store i16* %181, i16** %182, align 8
  br label %183

183:                                              ; preds = %168, %163
  %184 = load i16*, i16** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %11, align 4
  %187 = mul nsw i32 %185, %186
  %188 = mul nsw i32 %187, 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i16, i16* %184, i64 %189
  %191 = load i32, i32* %9, align 4
  %192 = mul nsw i32 %191, 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i16, i16* %190, i64 %193
  store i16* %194, i16** %14, align 8
  %195 = getelementptr inbounds [8 x i16*], [8 x i16*]* %13, i64 0, i64 0
  %196 = load i16*, i16** %14, align 8
  %197 = load i32, i32* %12, align 4
  %198 = mul nsw i32 %197, 8
  %199 = load i32, i32* %11, align 4
  call void @pixMeanInterpolateBlock(i16** noundef %195, i16* noundef %196, i32 noundef %198, i32 noundef %199)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @pixMeanInterpolateBlock(i16** noundef %0, i16* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i16**, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i16** %0, i16*** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %176, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %179

22:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %169, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %172

27:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i16**, i16*** %5, align 8
  %29 = getelementptr inbounds i16*, i16** %28, i64 4
  %30 = load i16*, i16** %29, align 8
  %31 = icmp ne i16* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i16**, i16*** %5, align 8
  %38 = getelementptr inbounds i16*, i16** %37, i64 4
  %39 = load i16*, i16** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = mul nsw i32 %36, %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %32, %27
  %57 = load i16**, i16*** %5, align 8
  %58 = getelementptr inbounds i16*, i16** %57, i64 5
  %59 = load i16*, i16** %58, align 8
  %60 = icmp ne i16* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i16**, i16*** %5, align 8
  %67 = getelementptr inbounds i16*, i16** %66, i64 5
  %68 = load i16*, i16** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %68, i64 %72
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = mul nsw i32 %65, %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %61, %56
  %86 = load i16**, i16*** %5, align 8
  %87 = getelementptr inbounds i16*, i16** %86, i64 6
  %88 = load i16*, i16** %87, align 8
  %89 = icmp ne i16* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i16**, i16*** %5, align 8
  %95 = getelementptr inbounds i16*, i16** %94, i64 6
  %96 = load i16*, i16** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %96, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = mul nsw i32 %93, %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %90, %85
  %109 = load i16**, i16*** %5, align 8
  %110 = getelementptr inbounds i16*, i16** %109, i64 7
  %111 = load i16*, i16** %110, align 8
  %112 = icmp ne i16* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i16**, i16*** %5, align 8
  %118 = getelementptr inbounds i16*, i16** %117, i64 7
  %119 = load i16*, i16** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %119, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = zext i16 %125 to i32
  %127 = mul nsw i32 %116, %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %113, %108
  %134 = load i32, i32* %13, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sdiv i32 %137, %138
  %140 = trunc i32 %139 to i8
  %141 = zext i8 %140 to i16
  %142 = load i16*, i16** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i16, i16* %142, i64 %146
  store i16 %141, i16* %147, align 2
  br label %168

148:                                              ; preds = %133
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.img_par*, %struct.img_par** @img, align 8
  %153 = getelementptr inbounds %struct.img_par, %struct.img_par* %152, i32 0, i32 106
  %154 = load i32, i32* %153, align 8
  br label %159

155:                                              ; preds = %148
  %156 = load %struct.img_par*, %struct.img_par** @img, align 8
  %157 = getelementptr inbounds %struct.img_par, %struct.img_par* %156, i32 0, i32 105
  %158 = load i32, i32* %157, align 4
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %154, %151 ], [ %158, %155 ]
  %161 = trunc i32 %160 to i16
  %162 = load i16*, i16** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16, i16* %162, i64 %166
  store i16 %161, i16* %167, align 2
  br label %168

168:                                              ; preds = %159, %136
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %23, !llvm.loop !11

172:                                              ; preds = %23
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %18, !llvm.loop !12

179:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ercCollect8PredBlocks(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8 %7, i8* %16, align 1
  store i32 0, i32* %17, align 4
  %20 = load i8, i8* %16, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 4
  store i32 %24, i32* %18, align 4
  store i32 3, i32* %19, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 32, i1 false)
  br label %27

27:                                               ; preds = %324, %8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %14, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %30
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %43, %30, %27
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %58
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %65, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %64
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %79, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %78, %64, %58
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %201

97:                                               ; preds = %94
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %98, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %97
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %111, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %110, %97
  %126 = load i8, i8* %16, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %200, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %14, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %136, %137
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %131
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %14, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %146, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %145, %131, %128
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %15, align 4
  %165 = sub nsw i32 %163, %164
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %161
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %14, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %173, %174
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %168, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %167
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %14, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %188, %189
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %183, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %182, %167, %161
  br label %200

200:                                              ; preds = %199, %125
  br label %201

201:                                              ; preds = %200, %94
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 %203, %204
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %317

207:                                              ; preds = %201
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %14, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %208, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %19, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %207
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %14, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %222, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 7
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %221, %207
  %238 = load i8, i8* %16, align 1
  %239 = icmp ne i8 %238, 0
  br i1 %239, label %316, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %240
  %244 = load i32*, i32** %12, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load i32, i32* %14, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %244, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %19, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %243
  %259 = load i32*, i32** %12, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sub nsw i32 %260, 1
  %262 = load i32, i32* %14, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %259, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %9, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %258, %243, %240
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %15, align 4
  %279 = sub nsw i32 %277, %278
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %315

281:                                              ; preds = %275
  %282 = load i32*, i32** %12, align 8
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %283, %284
  %286 = load i32, i32* %14, align 4
  %287 = mul nsw i32 %285, %286
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %282, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %19, align 4
  %296 = icmp sge i32 %294, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %281
  %298 = load i32*, i32** %12, align 8
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %15, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* %14, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %303, %304
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %298, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %9, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %17, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %297, %281, %275
  br label %316

316:                                              ; preds = %315, %237
  br label %317

317:                                              ; preds = %316, %201
  %318 = load i32, i32* %19, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %19, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp slt i32 %320, 2
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %328

323:                                              ; preds = %317
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %18, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %27, label %328, !llvm.loop !13

328:                                              ; preds = %324, %322
  %329 = load i32, i32* %17, align 4
  ret i32 %329
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ercCollectColumnBlocks(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = bitcast i32* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 32, i1 false)
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %13, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %19, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %31, %7
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %37, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %50, %36
  %56 = load i32, i32* %15, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
