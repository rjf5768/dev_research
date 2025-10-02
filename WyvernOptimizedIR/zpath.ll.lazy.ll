; ModuleID = './zpath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_point_s = type { float, float }
%_wyvern_thunk_type.0 = type { float* (%_wyvern_thunk_type.0*)*, float*, i1 }

@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zpath_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zarc }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcn }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zarct }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcto }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zclosepath }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentpoint }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurveto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zlineto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmoveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @znewpath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zrcurveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zrlineto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zrmoveto }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"5arc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"5arcn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5arct\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5arcto\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0closepath\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"0currentpoint\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"6curveto\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"2lineto\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"2moveto\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0newpath\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"6rcurveto\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"2rlineto\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"2rmoveto\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znewpath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_newpath(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_newpath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentpoint(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 4
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_currentpoint(%struct.gs_state_s* noundef %3, %struct.gs_point_s* noundef nonnull %2) #3
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %18 = bitcast %union.v* %17 to float*
  store float %16, float* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %19, align 8
  %20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = bitcast %struct.ref_s* %8 to float*
  store float %21, float* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %23, align 8
  br label %24

24:                                               ; preds = %14, %11, %6
  %.0 = phi i32 [ %4, %6 ], [ -16, %11 ], [ 0, %14 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentpoint(%struct.gs_state_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmoveto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* noundef nonnull @gs_moveto)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 0
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = call i32 %1(%struct.gs_state_s* noundef %8, double noundef %11, double noundef %14) #3
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %7, %2
  %.01 = phi i32 [ %5, %2 ], [ %15, %7 ]
  br label %21

18:                                               ; preds = %7
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %21

21:                                               ; preds = %18, %17
  %.0 = phi i32 [ %.01, %17 ], [ 0, %18 ]
  ret i32 %.0
}

declare dso_local i32 @gs_moveto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrmoveto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* noundef nonnull @gs_rmoveto)
  ret i32 %2
}

declare dso_local i32 @gs_rmoveto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlineto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* noundef nonnull @gs_lineto)
  ret i32 %2
}

declare dso_local i32 @gs_lineto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrlineto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* noundef nonnull @gs_rlineto)
  ret i32 %2
}

declare dso_local i32 @gs_rlineto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarc(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_arc(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* noundef nonnull @gs_arc)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_arc(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* nocapture noundef readonly %1) #0 {
  %3 = alloca [5 x float], align 16
  %4 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 5, float* noundef nonnull %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %31

8:                                                ; preds = %2
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 0
  %11 = load float, float* %10, align 16
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 1
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 2
  %17 = load float, float* %16, align 8
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 3
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 4
  %23 = load float, float* %22, align 16
  %24 = fpext float %23 to double
  %25 = call i32 %1(%struct.gs_state_s* noundef %9, double noundef %12, double noundef %15, double noundef %18, double noundef %21, double noundef %24) #3
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -5
  store %struct.ref_s* %29, %struct.ref_s** @osp, align 8
  br label %30

30:                                               ; preds = %27, %8
  br label %31

31:                                               ; preds = %30, %7
  %.0 = phi i32 [ %5, %7 ], [ %25, %30 ]
  ret i32 %.0
}

declare dso_local i32 @gs_arc(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcn(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_arc(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* noundef nonnull @gs_arcn)
  ret i32 %2
}

declare dso_local i32 @gs_arcn(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarct(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_arct(%struct.ref_s* noundef %0, float* noundef null)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -5
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_arct(%struct.ref_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca [5 x float], align 16
  %4 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 5, float* noundef nonnull %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %26

8:                                                ; preds = %2
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 0
  %11 = load float, float* %10, align 16
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 1
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 2
  %17 = load float, float* %16, align 8
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 3
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [5 x float], [5 x float]* %3, i64 0, i64 4
  %23 = load float, float* %22, align 16
  %24 = fpext float %23 to double
  %25 = call i32 @gs_arcto(%struct.gs_state_s* noundef %9, double noundef %12, double noundef %15, double noundef %18, double noundef %21, double noundef %24, float* noundef %1) #3
  br label %26

26:                                               ; preds = %8, %7
  %.0 = phi i32 [ %5, %7 ], [ %25, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcto(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = alloca [4 x float], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store float* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zarcto_190428211, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %3 = call i32 @_wyvern_calleeclone_common_arct_1577199423(%struct.ref_s* noundef %0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %8 = load float, float* %7, align 16
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 0
  %10 = bitcast %union.v* %9 to float*
  store float %8, float* %10, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 1
  store i16 44, i16* %11, align 8
  %12 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0
  %15 = bitcast %union.v* %14 to float*
  store float %13, float* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  store i16 44, i16* %16, align 8
  %17 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 2
  %18 = load float, float* %17, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0
  %20 = bitcast %union.v* %19 to float*
  store float %18, float* %20, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  store i16 44, i16* %21, align 8
  %22 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 3
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %25 = bitcast %union.v* %24 to float*
  store float %23, float* %25, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %26, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  br label %29

29:                                               ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurveto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_curve(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* noundef nonnull @gs_curveto)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_curve(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* nocapture noundef readonly %1) #0 {
  %3 = alloca [6 x float], align 16
  %4 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 6, float* noundef nonnull %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %34

8:                                                ; preds = %2
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 0
  %11 = load float, float* %10, align 16
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 1
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 2
  %17 = load float, float* %16, align 8
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 3
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 4
  %23 = load float, float* %22, align 16
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [6 x float], [6 x float]* %3, i64 0, i64 5
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = call i32 %1(%struct.gs_state_s* noundef %9, double noundef %12, double noundef %15, double noundef %18, double noundef %21, double noundef %24, double noundef %27) #3
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %8
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -6
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %8
  br label %34

34:                                               ; preds = %33, %7
  %.0 = phi i32 [ %5, %7 ], [ %28, %33 ]
  ret i32 %.0
}

declare dso_local i32 @gs_curveto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrcurveto(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @common_curve(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* noundef nonnull @gs_rcurveto)
  ret i32 %2
}

declare dso_local i32 @gs_rcurveto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclosepath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_closepath(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_closepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpath_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zpath_op_init.my_defs, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i32 @gs_arcto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, float* noundef) #1

; Function Attrs: nounwind readonly willreturn
define float* @_wyvern_slice_memo_zarcto_190428211(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load float*, float** %_wyvern_memo_val_addr, align 8
  ret float* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [4 x float], align 16
  %1 = getelementptr inbounds [4 x float], [4 x float]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store float* %1, float** %_wyvern_memo_val_addr, align 8
  ret float* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_common_arct_1577199423(%struct.ref_s* noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %2 = alloca [5 x float], align 16
  %3 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 0
  %4 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 5, float* noundef nonnull %3) #3
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 0
  %10 = load float, float* %9, align 16
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 2
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 3
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds [5 x float], [5 x float]* %2, i64 0, i64 4
  %22 = load float, float* %21, align 16
  %23 = fpext float %22 to double
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call float* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %24 = call i32 @gs_arcto(%struct.gs_state_s* noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20, double noundef %23, float* noundef %_wyvern_thunkcall) #3
  br label %25

25:                                               ; preds = %7, %6
  %.0 = phi i32 [ %4, %6 ], [ %24, %7 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
