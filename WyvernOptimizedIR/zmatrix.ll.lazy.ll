; ModuleID = './zmatrix.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_point_s = type { float, float }

@gs_identity_matrix = external dso_local global %struct.gs_matrix_s, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@zmatrix_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zconcat }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zdtransform }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zconcatmatrix }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentmatrix }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zidtransform }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zinvertmatrix }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zitransform }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zrotate }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zscale }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmatrix }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztransform }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @ztranslate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"1concat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"2dtransform\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3concatmatrix\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1currentmatrix\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2idtransform\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"2invertmatrix\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"2itransform\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1rotate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"2scale\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"1setmatrix\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2transform\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"2translate\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @zmatrix_init() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %.01 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %.0 = phi %struct.ref_s* [ bitcast (%struct.gs_matrix_s* @gs_identity_matrix to %struct.ref_s*), %0 ], [ %7, %5 ]
  %2 = icmp ult i32 %.01, 6
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 0, i32 1
  store i16 44, i16* %4, align 8
  br label %5

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %.01, 1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentmatrix(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %9 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %6, %struct.gs_matrix_s* noundef %8) #4
  br label %10

10:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

declare dso_local i32 @write_matrix(...) #2

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmatrix(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %7, %struct.gs_matrix_s* noundef nonnull %2) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %14

14:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ %3, %5 ], [ %8, %10 ], [ 0, %11 ]
  ret i32 %.0
}

declare dso_local i32 @read_matrix(...) #2

declare dso_local i32 @gs_setmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztranslate(%struct.ref_s* noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %7 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %6) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %44

10:                                               ; preds = %5
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %12 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = call i32 @gs_translate(%struct.gs_state_s* noundef %11, double noundef %14, double noundef %17) #4
  br label %38

19:                                               ; preds = %1
  %20 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %20, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %23 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %24 = call i32 @num_params(%struct.ref_s* noundef nonnull %22, i32 noundef 2, float* noundef nonnull %23) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %44

27:                                               ; preds = %19
  %28 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = call i32 @gs_make_translation(double noundef %30, double noundef %33, %struct.gs_matrix_s* noundef %21) #4
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %36 = bitcast %struct.ref_s* %35 to i8*
  %37 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false)
  br label %38

38:                                               ; preds = %27, %10
  %.01 = phi i32 [ %18, %10 ], [ %34, %27 ]
  %39 = icmp sgt i32 %.01, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -2
  store %struct.ref_s* %42, %struct.ref_s** @osp, align 8
  br label %43

43:                                               ; preds = %40, %38
  br label %44

44:                                               ; preds = %43, %26, %9
  %.0 = phi i32 [ %7, %9 ], [ %.01, %43 ], [ %24, %26 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #2

declare dso_local i32 @gs_translate(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_make_translation(double noundef, double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zscale(%struct.ref_s* noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %7 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %6) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %44

10:                                               ; preds = %5
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %12 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = call i32 @gs_scale(%struct.gs_state_s* noundef %11, double noundef %14, double noundef %17) #4
  br label %38

19:                                               ; preds = %1
  %20 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %20, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %23 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %24 = call i32 @num_params(%struct.ref_s* noundef nonnull %22, i32 noundef 2, float* noundef nonnull %23) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %44

27:                                               ; preds = %19
  %28 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = call i32 @gs_make_scaling(double noundef %30, double noundef %33, %struct.gs_matrix_s* noundef %21) #4
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %36 = bitcast %struct.ref_s* %35 to i8*
  %37 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false)
  br label %38

38:                                               ; preds = %27, %10
  %.01 = phi i32 [ %18, %10 ], [ %34, %27 ]
  %39 = icmp sgt i32 %.01, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -2
  store %struct.ref_s* %42, %struct.ref_s** @osp, align 8
  br label %43

43:                                               ; preds = %40, %38
  br label %44

44:                                               ; preds = %43, %26, %9
  %.0 = phi i32 [ %7, %9 ], [ %.01, %43 ], [ %24, %26 ]
  ret i32 %.0
}

declare dso_local i32 @gs_scale(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrotate(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %34

9:                                                ; preds = %5
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = load float, float* %2, align 4
  %12 = fpext float %11 to double
  %13 = call i32 @gs_rotate(%struct.gs_state_s* noundef %10, double noundef %12) #4
  br label %28

14:                                               ; preds = %1
  %15 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %15, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %18 = call i32 @num_params(%struct.ref_s* noundef nonnull %17, i32 noundef 1, float* noundef nonnull %2) #4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %34

21:                                               ; preds = %14
  %22 = load float, float* %2, align 4
  %23 = fpext float %22 to double
  %24 = call i32 @gs_make_rotation(double noundef %23, %struct.gs_matrix_s* noundef %16) #4
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %26 = bitcast %struct.ref_s* %25 to i8*
  %27 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8* noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false)
  br label %28

28:                                               ; preds = %21, %9
  %.01 = phi i32 [ %13, %9 ], [ %24, %21 ]
  %29 = icmp sgt i32 %.01, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %28
  br label %34

34:                                               ; preds = %33, %20, %8
  %.0 = phi i32 [ %6, %8 ], [ %.01, %33 ], [ %18, %20 ]
  ret i32 %.0
}

declare dso_local i32 @gs_rotate(%struct.gs_state_s* noundef, double noundef) #2

declare dso_local i32 @gs_make_rotation(double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zconcat(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = call i32 @gs_concat(%struct.gs_state_s* noundef %7, %struct.gs_matrix_s* noundef nonnull %2) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %14

14:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ %3, %5 ], [ %8, %10 ], [ 0, %11 ]
  ret i32 %.0
}

declare dso_local i32 @gs_concat(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zconcatmatrix(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = alloca %struct.gs_matrix_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %5 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %4, %struct.gs_matrix_s* noundef nonnull %2) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %9 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %8, %struct.gs_matrix_s* noundef nonnull %3) #4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %15, align 8
  %17 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef nonnull %2, %struct.gs_matrix_s* noundef nonnull %3, %struct.gs_matrix_s* noundef %16) #4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %11, %7, %1
  %.01 = phi i32 [ %5, %1 ], [ %9, %7 ], [ %12, %11 ], [ %17, %14 ]
  br label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %22 = bitcast %struct.ref_s* %21 to i8*
  %23 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8* noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  store %struct.ref_s* %25, %struct.ref_s** @osp, align 8
  br label %26

26:                                               ; preds = %20, %19
  %.0 = phi i32 [ %.01, %19 ], [ %17, %20 ]
  ret i32 %.0
}

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztransform(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef nonnull @gs_transform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef nonnull @gs_point_transform)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* nocapture noundef readonly %1, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* nocapture noundef readonly %2) #1 {
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.gs_point_s, align 4
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 63
  %11 = zext i16 %10 to i32
  switch i32 %11, label %43 [
    i32 11, label %12
    i32 5, label %16
    i32 0, label %21
    i32 10, label %21
  ]

12:                                               ; preds = %3
  %13 = bitcast %struct.ref_s* %0 to float*
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  store float %14, float* %15, align 4
  br label %44

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to float
  %20 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  store float %19, float* %20, align 4
  br label %44

21:                                               ; preds = %3, %3
  %22 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %6) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %26 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %27 = call i32 @num_params(%struct.ref_s* noundef nonnull %25, i32 noundef 2, float* noundef nonnull %26) #4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = call i32 %2(double noundef %32, double noundef %35, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_point_s* noundef nonnull %5) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %24, %21
  %.02 = phi i32 [ %22, %21 ], [ %27, %24 ], [ %36, %29 ]
  br label %83

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  store %struct.ref_s* %42, %struct.ref_s** @osp, align 8
  br label %73

43:                                               ; preds = %3
  br label %83

44:                                               ; preds = %16, %12
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = lshr i16 %46, 2
  %48 = and i16 %47, 63
  %49 = zext i16 %48 to i32
  switch i32 %49, label %60 [
    i32 11, label %50
    i32 5, label %55
  ]

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %52 = bitcast %union.v* %51 to float*
  %53 = load float, float* %52, align 8
  %54 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  store float %53, float* %54, align 4
  br label %61

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  %59 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  store float %58, float* %59, align 4
  br label %61

60:                                               ; preds = %44
  br label %83

61:                                               ; preds = %55, %50
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %63 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %67 = load float, float* %66, align 4
  %68 = fpext float %67 to double
  %69 = call i32 %1(%struct.gs_state_s* noundef %62, double noundef %65, double noundef %68, %struct.gs_point_s* noundef nonnull %5) #4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %83

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %39
  %.01 = phi %struct.ref_s* [ %40, %39 ], [ %0, %72 ]
  %74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %75 = load float, float* %74, align 4
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1, i32 0
  %77 = bitcast %union.v* %76 to float*
  store float %75, float* %77, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1, i32 1
  store i16 44, i16* %78, align 8
  %79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = bitcast %struct.ref_s* %.01 to float*
  store float %80, float* %81, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  store i16 44, i16* %82, align 8
  br label %83

83:                                               ; preds = %73, %71, %60, %43, %38
  %.0 = phi i32 [ -20, %43 ], [ %.02, %38 ], [ 0, %73 ], [ -20, %60 ], [ %69, %71 ]
  ret i32 %.0
}

declare dso_local i32 @gs_transform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #2

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdtransform(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef nonnull @gs_dtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef nonnull @gs_distance_transform)
  ret i32 %2
}

declare dso_local i32 @gs_dtransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #2

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zitransform(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef nonnull @gs_itransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef nonnull @gs_point_transform_inverse)
  ret i32 %2
}

declare dso_local i32 @gs_itransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #2

declare dso_local i32 @gs_point_transform_inverse(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zidtransform(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef nonnull @gs_idtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef nonnull @gs_distance_transform_inverse)
  ret i32 %2
}

declare dso_local i32 @gs_idtransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #2

declare dso_local i32 @gs_distance_transform_inverse(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinvertmatrix(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %3, %struct.gs_matrix_s* noundef nonnull %2) #4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = bitcast %struct.ref_s* %0 to %struct.gs_matrix_s**
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %10, align 8
  %12 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef nonnull %2, %struct.gs_matrix_s* noundef %11) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %6, %1
  %.01 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %12, %9 ]
  br label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %17 = bitcast %struct.ref_s* %16 to i8*
  %18 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8* noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %21

21:                                               ; preds = %15, %14
  %.0 = phi i32 [ %.01, %14 ], [ %12, %15 ]
  ret i32 %.0
}

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmatrix_op_init() #1 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmatrix_op_init.my_defs, i64 0, i64 0)) #4
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
