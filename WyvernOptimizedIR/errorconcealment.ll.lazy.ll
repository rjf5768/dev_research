; ModuleID = './errorconcealment.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @set_ec_flag(i32 noundef %0) #0 {
  switch i32 %0, label %8 [
    i32 0, label %2
    i32 1, label %3
    i32 2, label %4
    i32 3, label %5
    i32 4, label %6
    i32 5, label %7
  ]

2:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 0), align 16
  br label %3

3:                                                ; preds = %2, %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 1), align 4
  br label %4

4:                                                ; preds = %3, %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 2), align 8
  br label %5

5:                                                ; preds = %4, %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 3), align 4
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 5), align 4
  br label %9

6:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 4), align 16
  br label %9

7:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 5), align 4
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %7, %6, %5
  %.0 = phi i32 [ %0, %8 ], [ 11, %7 ], [ 6, %6 ], [ 11, %5 ]
  switch i32 %.0, label %22 [
    i32 6, label %10
    i32 7, label %11
    i32 8, label %12
    i32 9, label %13
    i32 10, label %14
    i32 11, label %15
    i32 12, label %16
    i32 13, label %17
    i32 14, label %18
    i32 15, label %19
    i32 16, label %20
    i32 17, label %21
  ]

10:                                               ; preds = %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 6), align 8
  br label %11

11:                                               ; preds = %10, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 7), align 4
  br label %12

12:                                               ; preds = %11, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 8), align 16
  br label %13

13:                                               ; preds = %12, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 9), align 4
  br label %14

14:                                               ; preds = %13, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 10), align 8
  br label %23

15:                                               ; preds = %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 11), align 4
  br label %16

16:                                               ; preds = %15, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 12), align 16
  br label %17

17:                                               ; preds = %16, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 13), align 4
  br label %18

18:                                               ; preds = %17, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 14), align 8
  br label %19

19:                                               ; preds = %18, %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 15), align 4
  br label %23

20:                                               ; preds = %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 16), align 16
  br label %23

21:                                               ; preds = %9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i64 0, i64 17), align 4
  br label %23

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %14
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @reset_ec_flags() #1 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 20
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i64 0, i64 %4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @get_concealed_element(%struct.syntaxelement* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %39 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %15
    i32 3, label %15
    i32 4, label %18
    i32 5, label %18
    i32 6, label %21
    i32 7, label %24
    i32 8, label %24
    i32 9, label %24
    i32 10, label %24
    i32 11, label %27
    i32 12, label %30
    i32 13, label %30
    i32 14, label %30
    i32 15, label %30
    i32 16, label %33
    i32 17, label %36
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 31, i32* %13, align 4
  %14 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %14, align 8
  br label %40

15:                                               ; preds = %9, %9, %9
  %16 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %17, align 8
  br label %40

18:                                               ; preds = %9, %9
  %19 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %20, align 8
  br label %40

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 5, i32* %22, align 4
  %23 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %23, align 8
  br label %40

24:                                               ; preds = %9, %9, %9, %9
  %25 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %26, align 8
  br label %40

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %29, align 8
  br label %40

30:                                               ; preds = %9, %9, %9, %9
  %31 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %32, align 8
  br label %40

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %35, align 8
  br label %40

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i64 0, i32 4
  store i32 0, i32* %38, align 8
  br label %40

39:                                               ; preds = %9
  br label %40

40:                                               ; preds = %39, %36, %33, %30, %27, %24, %21, %18, %15, %12
  br label %41

41:                                               ; preds = %40, %8
  %.0 = phi i32 [ 0, %8 ], [ 1, %40 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
