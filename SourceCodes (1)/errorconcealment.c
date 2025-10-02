; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/errorconcealment.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/JM/ldecod/errorconcealment.c"
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

@ec_flag = internal global [20 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_ec_flag(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %10 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
  ]

4:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 0), align 16
  br label %5

5:                                                ; preds = %1, %4
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 1), align 4
  br label %6

6:                                                ; preds = %1, %5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 2), align 8
  br label %7

7:                                                ; preds = %1, %6
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 3), align 4
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 5), align 4
  store i32 11, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 4), align 16
  store i32 6, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 5), align 4
  store i32 11, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %9, %8, %7
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %25 [
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 10, label %17
    i32 11, label %18
    i32 12, label %19
    i32 13, label %20
    i32 14, label %21
    i32 15, label %22
    i32 16, label %23
    i32 17, label %24
  ]

13:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 6), align 8
  br label %14

14:                                               ; preds = %11, %13
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 7), align 4
  br label %15

15:                                               ; preds = %11, %14
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 8), align 16
  br label %16

16:                                               ; preds = %11, %15
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 9), align 4
  br label %17

17:                                               ; preds = %11, %16
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 10), align 8
  br label %26

18:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 11), align 4
  br label %19

19:                                               ; preds = %11, %18
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 12), align 16
  br label %20

20:                                               ; preds = %11, %19
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 13), align 4
  br label %21

21:                                               ; preds = %11, %20
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 14), align 8
  br label %22

22:                                               ; preds = %11, %21
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 15), align 4
  br label %26

23:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 16), align 16
  br label %26

24:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 17), align 4
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %17
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_ec_flags() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_concealed_element(%struct.syntaxelement* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.syntaxelement*, align 8
  store %struct.syntaxelement* %0, %struct.syntaxelement** %3, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %14 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %61 [
    i32 0, label %16
    i32 1, label %21
    i32 2, label %21
    i32 3, label %21
    i32 4, label %26
    i32 5, label %26
    i32 6, label %31
    i32 7, label %36
    i32 8, label %36
    i32 9, label %36
    i32 10, label %36
    i32 11, label %41
    i32 12, label %46
    i32 13, label %46
    i32 14, label %46
    i32 15, label %46
    i32 16, label %51
    i32 17, label %56
  ]

16:                                               ; preds = %12
  %17 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %18 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %17, i32 0, i32 3
  store i32 31, i32* %18, align 4
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %20 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  br label %62

21:                                               ; preds = %12, %12, %12
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %23 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 3
  store i32 1, i32* %23, align 4
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %25 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 4
  store i32 0, i32* %25, align 8
  br label %62

26:                                               ; preds = %12, %12
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %28 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %30 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  br label %62

31:                                               ; preds = %12
  %32 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %33 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %32, i32 0, i32 3
  store i32 5, i32* %33, align 4
  %34 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %35 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %34, i32 0, i32 4
  store i32 0, i32* %35, align 8
  br label %62

36:                                               ; preds = %12, %12, %12, %12
  %37 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %38 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %37, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %40 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %39, i32 0, i32 4
  store i32 0, i32* %40, align 8
  br label %62

41:                                               ; preds = %12
  %42 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %43 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %45 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %44, i32 0, i32 4
  store i32 0, i32* %45, align 8
  br label %62

46:                                               ; preds = %12, %12, %12, %12
  %47 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %48 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %50 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %49, i32 0, i32 4
  store i32 0, i32* %50, align 8
  br label %62

51:                                               ; preds = %12
  %52 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %53 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %55 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  br label %62

56:                                               ; preds = %12
  %57 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %58 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %57, i32 0, i32 3
  store i32 1, i32* %58, align 4
  %59 = load %struct.syntaxelement*, %struct.syntaxelement** %3, align 8
  %60 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %59, i32 0, i32 4
  store i32 0, i32* %60, align 8
  br label %62

61:                                               ; preds = %12
  br label %62

62:                                               ; preds = %61, %56, %51, %46, %41, %36, %31, %26, %21, %16
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
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
