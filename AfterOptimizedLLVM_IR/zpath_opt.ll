; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_point_s = type { float, float }

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
define dso_local i32 @znewpath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_newpath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_newpath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentpoint(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_point_s, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = call i32 @gs_currentpoint(%struct.gs_state_s* noundef %6, %struct.gs_point_s* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 2
  store %struct.ref_s* %14, %struct.ref_s** %3, align 8
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %26 = bitcast %union.v* %25 to float*
  store float %22, float* %26, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  store i16 44, i16* %29, align 8
  %30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %34 = bitcast %union.v* %33 to float*
  store float %31, float* %34, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  store i16 44, i16* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %20, %17, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @gs_currentpoint(%struct.gs_state_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmoveto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_to(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double)* noundef @gs_moveto)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_to(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32 (%struct.gs_state_s*, double, double)*, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 (%struct.gs_state_s*, double, double)* %1, i32 (%struct.gs_state_s*, double, double)** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 2, float* noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load i32 (%struct.gs_state_s*, double, double)*, i32 (%struct.gs_state_s*, double, double)** %5, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %15 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 0
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 1
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = call i32 %13(%struct.gs_state_s* noundef %14, double noundef %17, double noundef %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12, %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -2
  store %struct.ref_s* %27, %struct.ref_s** @osp, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @gs_moveto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrmoveto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_to(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double)* noundef @gs_rmoveto)
  ret i32 %4
}

declare dso_local i32 @gs_rmoveto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlineto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_to(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double)* noundef @gs_lineto)
  ret i32 %4
}

declare dso_local i32 @gs_lineto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrlineto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_to(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double)* noundef @gs_rlineto)
  ret i32 %4
}

declare dso_local i32 @gs_rlineto(%struct.gs_state_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarc(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_arc(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, double, double, double)* noundef @gs_arc)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_arc(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32 (%struct.gs_state_s*, double, double, double, double, double)*, align 8
  %6 = alloca [5 x float], align 16
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 (%struct.gs_state_s*, double, double, double, double, double)* %1, i32 (%struct.gs_state_s*, double, double, double, double, double)** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 5, float* noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32 (%struct.gs_state_s*, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double)** %5, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %17 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %18 = load float, float* %17, align 16
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 1
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 2
  %24 = load float, float* %23, align 8
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 3
  %27 = load float, float* %26, align 4
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 4
  %30 = load float, float* %29, align 16
  %31 = fpext float %30 to double
  %32 = call i32 %15(%struct.gs_state_s* noundef %16, double noundef %19, double noundef %22, double noundef %25, double noundef %28, double noundef %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %14
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -5
  store %struct.ref_s* %37, %struct.ref_s** @osp, align 8
  br label %38

38:                                               ; preds = %35, %14
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @gs_arc(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcn(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_arc(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, double, double, double)* noundef @gs_arcn)
  ret i32 %4
}

declare dso_local i32 @gs_arcn(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarct(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @common_arct(%struct.ref_s* noundef %5, float* noundef null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -5
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_arct(%struct.ref_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca float*, align 8
  %6 = alloca [5 x float], align 16
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store float* %1, float** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 5, float* noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %16 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 0
  %17 = load float, float* %16, align 16
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 1
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 2
  %23 = load float, float* %22, align 8
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 3
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [5 x float], [5 x float]* %6, i64 0, i64 4
  %29 = load float, float* %28, align 16
  %30 = fpext float %29 to double
  %31 = load float*, float** %5, align 8
  %32 = call i32 @gs_arcto(%struct.gs_state_s* noundef %15, double noundef %18, double noundef %21, double noundef %24, double noundef %27, double noundef %30, float* noundef %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %8 = call i32 @common_arct(%struct.ref_s* noundef %6, float* noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %15 = load float, float* %14, align 16
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -4
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to float*
  store float %15, float* %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 44, i16* %22, align 8
  %23 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 1
  %24 = load float, float* %23, align 4
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -3
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to float*
  store float %24, float* %28, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -3
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 44, i16* %31, align 8
  %32 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 2
  %33 = load float, float* %32, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to float*
  store float %33, float* %37, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -2
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  store i16 44, i16* %40, align 8
  %41 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %42 = load float, float* %41, align 4
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %46 = bitcast %union.v* %45 to float*
  store float %42, float* %46, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  store i16 44, i16* %49, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  store %struct.ref_s* %51, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %13, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurveto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_curve(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* noundef @gs_curveto)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_curve(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, align 8
  %6 = alloca [6 x float], align 16
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 (%struct.gs_state_s*, double, double, double, double, double, double)* %1, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 6, float* noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %5, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %17 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 0
  %18 = load float, float* %17, align 16
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 1
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 2
  %24 = load float, float* %23, align 8
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 3
  %27 = load float, float* %26, align 4
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 4
  %30 = load float, float* %29, align 16
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 5
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = call i32 %15(%struct.gs_state_s* noundef %16, double noundef %19, double noundef %22, double noundef %25, double noundef %28, double noundef %31, double noundef %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %14
  %39 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -6
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  br label %41

41:                                               ; preds = %38, %14
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @gs_curveto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrcurveto(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_curve(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* noundef @gs_rcurveto)
  ret i32 %4
}

declare dso_local i32 @gs_rcurveto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclosepath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_closepath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_closepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpath_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zpath_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i32 @gs_arcto(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, float* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
