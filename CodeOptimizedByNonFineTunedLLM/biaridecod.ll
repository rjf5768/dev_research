; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/biaridecod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/biaridecod.c"
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

@binCount = dso_local global i32 0, align 4
@rLPS_table_64x4 = dso_local constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = dso_local constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = dso_local constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@.str = private unnamed_addr constant [41 x i8] c"arideco_create_decoding_environment: dep\00", align 1
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing dep (NULL pointer)\00", align 1
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

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DecodingEnvironment* @arideco_create_decoding_environment() #0 {
  %1 = alloca %struct.DecodingEnvironment*, align 8
  %2 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #3
  %3 = bitcast i8* %2 to %struct.DecodingEnvironment*
  store %struct.DecodingEnvironment* %3, %struct.DecodingEnvironment** %1, align 8
  %4 = icmp eq %struct.DecodingEnvironment* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %0
  %7 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %1, align 8
  ret %struct.DecodingEnvironment* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @arideco_delete_decoding_environment(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %2, align 8
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %4 = icmp eq %struct.DecodingEnvironment* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 noundef 300, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #3
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 200)
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %9 = bitcast %struct.DecodingEnvironment* %8 to i8*
  call void @free(i8* noundef %9) #3
  br label %10

10:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local void @error(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @arideco_start_decoding(%struct.DecodingEnvironment* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.DecodingEnvironment*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %15 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %18 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %17, i32 0, i32 6
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %21 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  store i32 %19, i32* %22, align 4
  %23 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %24 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %23, i32 0, i32 4
  store i32 0, i32* %24, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %63, %5
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 9
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %30 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %36 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %39 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %37, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %48 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %50 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %49, i32 0, i32 4
  store i32 7, i32* %50, align 8
  br label %51

51:                                               ; preds = %34, %28
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  %54 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %55 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %58 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = lshr i32 %56, %59
  %61 = and i32 %60, 1
  %62 = or i32 %53, %61
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %25, !llvm.loop !4

66:                                               ; preds = %25
  %67 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %68 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %67, i32 0, i32 1
  store i32 510, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %6, align 8
  %71 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @arideco_bits_read(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %2, align 8
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %4 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  %8 = mul nsw i32 8, %7
  %9 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %10 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 8, %11
  %13 = add nsw i32 %8, %12
  %14 = sub nsw i32 %13, 16
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @arideco_done_decoding(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = alloca %struct.DecodingEnvironment*, align 8
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %2, align 8
  %3 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %4 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @biari_decode_symbol(%struct.DecodingEnvironment* noundef %0, %struct.BiContextType* noundef %1) #0 {
  %3 = alloca %struct.DecodingEnvironment*, align 8
  %4 = alloca %struct.BiContextType*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %3, align 8
  store %struct.BiContextType* %1, %struct.BiContextType** %4, align 8
  %9 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %10 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %14 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %17 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %20 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds [64 x [4 x i8]], [64 x [4 x i8]]* @rLPS_table_64x4, i64 0, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 6
  %26 = and i32 %25, 3
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %39 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_MPS_64, i64 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %45 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %44, i32 0, i32 0
  store i16 %43, i16* %45, align 2
  br label %75

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %56 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 2
  %58 = icmp ne i16 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %46
  %60 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %61 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 2
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, 1
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 2
  br label %66

66:                                               ; preds = %59, %46
  %67 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %68 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %67, i32 0, i32 0
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i64
  %71 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_LPS_64, i64 0, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = load %struct.BiContextType*, %struct.BiContextType** %4, align 8
  %74 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %73, i32 0, i32 0
  store i16 %72, i16* %74, align 2
  br label %75

75:                                               ; preds = %66, %37
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %77, 256
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %83 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %79
  %88 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %89 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %92 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %90, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %101 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %103 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %102, i32 0, i32 4
  store i32 7, i32* %103, align 8
  br label %104

104:                                              ; preds = %87, %79
  %105 = load i32, i32* %6, align 4
  %106 = shl i32 %105, 1
  %107 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %108 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %111 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = lshr i32 %109, %112
  %114 = and i32 %113, 1
  %115 = or i32 %106, %114
  store i32 %115, i32* %6, align 4
  br label %76, !llvm.loop !6

116:                                              ; preds = %76
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %119 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %122 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = alloca %struct.DecodingEnvironment*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %6 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %10 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %16 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %19 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %28 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %30 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %29, i32 0, i32 4
  store i32 7, i32* %30, align 8
  br label %31

31:                                               ; preds = %14, %1
  %32 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %33 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %36 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = lshr i32 %34, %37
  %39 = and i32 %38, 1
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %44 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  %48 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %49 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %2, align 8
  %56 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @biari_decode_final(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DecodingEnvironment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.DecodingEnvironment* %0, %struct.DecodingEnvironment** %3, align 8
  %6 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %10 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %11, 2
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %19, 256
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %25 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %31 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %34 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %43 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %45 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %44, i32 0, i32 4
  store i32 7, i32* %45, align 8
  br label %46

46:                                               ; preds = %29, %21
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 1
  %49 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %50 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %53 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = lshr i32 %51, %54
  %56 = and i32 %55, 1
  %57 = or i32 %48, %56
  store i32 %57, i32* %4, align 4
  br label %18, !llvm.loop !7

58:                                               ; preds = %18
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %61 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.DecodingEnvironment*, %struct.DecodingEnvironment** %3, align 8
  %64 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @biari_init_context(%struct.img_par* noundef %0, %struct.BiContextType* noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.img_par*, align 8
  %5 = alloca %struct.BiContextType*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.img_par* %0, %struct.img_par** %4, align 8
  store %struct.BiContextType* %1, %struct.BiContextType** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.img_par*, %struct.img_par** %4, align 8
  %12 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @imax(i32 noundef 0, i32 noundef %13)
  %15 = mul nsw i32 %10, %14
  %16 = ashr i32 %15, 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @iClip3(i32 noundef 1, i32 noundef 126, i32 noundef %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 64
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 64
  %28 = trunc i32 %27 to i16
  %29 = load %struct.BiContextType*, %struct.BiContextType** %5, align 8
  %30 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %29, i32 0, i32 0
  store i16 %28, i16* %30, align 2
  %31 = load %struct.BiContextType*, %struct.BiContextType** %5, align 8
  %32 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %31, i32 0, i32 1
  store i8 1, i8* %32, align 2
  br label %41

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 63, %34
  %36 = trunc i32 %35 to i16
  %37 = load %struct.BiContextType*, %struct.BiContextType** %5, align 8
  %38 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %37, i32 0, i32 0
  store i16 %36, i16* %38, align 2
  %39 = load %struct.BiContextType*, %struct.BiContextType** %5, align 8
  %40 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %39, i32 0, i32 1
  store i8 0, i8* %40, align 2
  br label %41

41:                                               ; preds = %33, %25
  ret void
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
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
