; ModuleID = './biaridecod.ll'
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
define dso_local noalias %struct.DecodingEnvironment* @arideco_create_decoding_environment() #0 {
  %1 = call noalias dereferenceable_or_null(40) i8* @calloc(i64 noundef 1, i64 noundef 40) #8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @no_mem_exit(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = bitcast i8* %1 to %struct.DecodingEnvironment*
  ret %struct.DecodingEnvironment* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @no_mem_exit(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @arideco_delete_decoding_environment(%struct.DecodingEnvironment* noundef %0) #0 {
  %2 = icmp eq %struct.DecodingEnvironment* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(33) getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(33) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 33, i1 false)
  call void @error(i8* noundef getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 noundef 200) #8
  br label %6

4:                                                ; preds = %1
  %5 = bitcast %struct.DecodingEnvironment* %0 to i8*
  call void @free(i8* noundef %5) #8
  br label %6

6:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local void @error(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @arideco_start_decoding(%struct.DecodingEnvironment* nocapture noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 5
  store i8* %1, i8** %6, align 8
  %7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  store i32* %3, i32** %7, align 8
  store i32 %2, i32* %3, align 4
  %8 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  store i32 0, i32* %8, align 8
  br label %9

9:                                                ; preds = %30, %5
  %.01 = phi i32 [ 0, %5 ], [ %38, %30 ]
  %.0 = phi i32 [ 0, %5 ], [ %39, %30 ]
  %10 = icmp ult i32 %.0, 9
  br i1 %10, label %11, label %40

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp slt i32 %13, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  store i32 7, i32* %28, align 8
  br label %29

29:                                               ; preds = %16, %11
  br label %30

30:                                               ; preds = %29
  %31 = shl i32 %.01, 1
  %32 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = lshr i32 %33, %35
  %37 = and i32 %36, 1
  %38 = or i32 %31, %37
  %39 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

40:                                               ; preds = %9
  %41 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  store i32 510, i32* %41, align 4
  %42 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  store i32 %.01, i32* %42, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @arideco_bits_read(%struct.DecodingEnvironment* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = shl i32 %4, 3
  %6 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = sub i32 %5, %7
  %9 = add nsw i32 %8, -16
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @arideco_done_decoding(%struct.DecodingEnvironment* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @biari_decode_symbol(%struct.DecodingEnvironment* nocapture noundef %0, %struct.BiContextType* nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 2
  %5 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  %12 = lshr i32 %8, 6
  %13 = and i32 %12, 3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [64 x [4 x i8]], [64 x [4 x i8]]* @rLPS_table_64x4, i64 0, i64 %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = sub i32 %8, %17
  %19 = icmp ult i32 %6, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = zext i8 %4 to i32
  %22 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_MPS_64, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  store i16 %26, i16* %27, align 2
  br label %44

28:                                               ; preds = %2
  %29 = sub i32 %6, %18
  %.not = icmp eq i8 %4, 0
  %30 = zext i1 %.not to i32
  %31 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  %32 = load i16, i16* %31, align 2
  %.not4 = icmp eq i16 %32, 0
  br i1 %.not4, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 1
  %35 = load i8, i8* %34, align 2
  %36 = xor i8 %35, 1
  store i8 %36, i8* %34, align 2
  br label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_LPS_64, i64 0, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  store i16 %42, i16* %43, align 2
  br label %44

44:                                               ; preds = %37, %20
  %.03 = phi i32 [ %21, %20 ], [ %30, %37 ]
  %.01 = phi i32 [ %6, %20 ], [ %29, %37 ]
  %.0 = phi i32 [ %18, %20 ], [ %17, %37 ]
  br label %45

45:                                               ; preds = %66, %44
  %.12 = phi i32 [ %.01, %44 ], [ %74, %66 ]
  %.1 = phi i32 [ %.0, %44 ], [ %48, %66 ]
  %46 = icmp ult i32 %.1, 256
  br i1 %46, label %47, label %75

47:                                               ; preds = %45
  %48 = shl i32 %.1, 1
  %49 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = icmp slt i32 %50, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  store i32 7, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %47
  %67 = shl i32 %.12, 1
  %68 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = lshr i32 %69, %71
  %73 = and i32 %72, 1
  %74 = or i32 %67, %73
  br label %45, !llvm.loop !6

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  store i32 %.1, i32* %76, align 4
  %77 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  store i32 %.12, i32* %77, align 8
  ret i32 %.03
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @biari_decode_symbol_eq_prob(%struct.DecodingEnvironment* nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 8
  %8 = icmp slt i32 %6, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  store i32 7, i32* %21, align 8
  br label %22

22:                                               ; preds = %9, %1
  %23 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 1
  %29 = or i32 %4, %28
  %30 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  %31 = load i32, i32* %30, align 4
  %.not = icmp ult i32 %29, %31
  br i1 %.not, label %36, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %29, %34
  br label %36

36:                                               ; preds = %32, %22
  %.01 = phi i32 [ 1, %32 ], [ 0, %22 ]
  %.0 = phi i32 [ %35, %32 ], [ %29, %22 ]
  %37 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  store i32 %.0, i32* %37, align 8
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @biari_decode_final(%struct.DecodingEnvironment* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = add i32 %5, -2
  %.not = icmp ult i32 %3, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %30, %8
  %.02 = phi i32 [ %3, %8 ], [ %38, %30 ]
  %.01 = phi i32 [ %6, %8 ], [ %12, %30 ]
  %10 = icmp ult i32 %.01, 256
  br i1 %10, label %11, label %39

11:                                               ; preds = %9
  %12 = shl i32 %.01, 1
  %13 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp slt i32 %14, 1
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  store i32 7, i32* %29, align 8
  br label %30

30:                                               ; preds = %17, %11
  %31 = shl i32 %.02, 1
  %32 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = lshr i32 %33, %35
  %37 = and i32 %36, 1
  %38 = or i32 %31, %37
  br label %9, !llvm.loop !7

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 2
  store i32 %.02, i32* %40, align 8
  %41 = getelementptr inbounds %struct.DecodingEnvironment, %struct.DecodingEnvironment* %0, i64 0, i32 1
  store i32 %.01, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %7
  %.0 = phi i32 [ 1, %7 ], [ 0, %39 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @biari_init_context(%struct.img_par* nocapture noundef readonly %0, %struct.BiContextType* nocapture noundef writeonly %1, i32* nocapture noundef readonly %2) #5 {
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i64 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @imax(i32 noundef 0, i32 noundef %6)
  %8 = mul nsw i32 %4, %7
  %9 = ashr i32 %8, 4
  %10 = getelementptr inbounds i32, i32* %2, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %9, %11
  %13 = call i32 @iClip3(i32 noundef 1, i32 noundef 126, i32 noundef %12)
  %14 = icmp sgt i32 %13, 63
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = trunc i32 %13 to i16
  %17 = add i16 %16, -64
  %18 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  store i16 %17, i16* %18, align 2
  %19 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 1
  store i8 1, i8* %19, align 2
  br label %25

20:                                               ; preds = %3
  %21 = trunc i32 %13 to i16
  %22 = sub i16 63, %21
  %23 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 0
  store i16 %22, i16* %23, align 2
  %24 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %1, i64 0, i32 1
  store i8 0, i8* %24, align 2
  br label %25

25:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imax(i32 noundef %0, i32 noundef %1) #6 {
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
define internal i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = call i32 @imax(i32 noundef %2, i32 noundef %0)
  %5 = call i32 @imin(i32 noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @imin(i32 noundef %0, i32 noundef %1) #6 {
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }

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
