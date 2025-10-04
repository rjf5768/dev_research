; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmatrix.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmatrix_init() #0 {
  %1 = alloca %struct.ref_s*, align 8
  %2 = alloca i32, align 4
  store %struct.ref_s* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to %struct.ref_s*), %struct.ref_s** %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 6
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load %struct.ref_s*, %struct.ref_s** %1, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %9 = bitcast %union.v* %8 to float*
  %10 = load float, float* %9, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %1, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %13 = bitcast %union.v* %12 to float*
  store float %10, float* %13, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %1, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 44, i16* %15, align 8
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  %19 = load %struct.ref_s*, %struct.ref_s** %1, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %20, %struct.ref_s** %1, align 8
  br label %3, !llvm.loop !4

21:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentmatrix(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %17 = bitcast %struct.ref_s* %16 to %struct.gs_matrix_s*
  %18 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %12, %struct.gs_matrix_s* noundef %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @write_matrix(...) #1

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmatrix(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %6, %struct.gs_matrix_s* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %14 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %13, %struct.gs_matrix_s* noundef %4)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %16, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @read_matrix(...) #1

declare dso_local i32 @gs_setmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztranslate(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %14 = call i32 @num_params(%struct.ref_s* noundef %12, i32 noundef 2, float* noundef %13)
  store i32 %14, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %11
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %20 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 @gs_translate(%struct.gs_state_s* noundef %19, double noundef %22, double noundef %25)
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to %struct.ref_s**
  %31 = load %struct.ref_s*, %struct.ref_s** %30, align 8
  %32 = bitcast %struct.ref_s* %31 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %32, %struct.gs_matrix_s** %6, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %36 = call i32 @num_params(%struct.ref_s* noundef %34, i32 noundef 2, float* noundef %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %27
  %41 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %48 = call i32 @gs_make_translation(double noundef %43, double noundef %46, %struct.gs_matrix_s* noundef %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = bitcast %struct.ref_s* %50 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  br label %54

54:                                               ; preds = %40, %18
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -2
  store %struct.ref_s* %59, %struct.ref_s** @osp, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %38, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i32 @gs_translate(%struct.gs_state_s* noundef, double noundef, double noundef) #1

declare dso_local i32 @gs_make_translation(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zscale(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %14 = call i32 @num_params(%struct.ref_s* noundef %12, i32 noundef 2, float* noundef %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %11
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %20 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 @gs_scale(%struct.gs_state_s* noundef %19, double noundef %22, double noundef %25)
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to %struct.ref_s**
  %31 = load %struct.ref_s*, %struct.ref_s** %30, align 8
  %32 = bitcast %struct.ref_s* %31 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %32, %struct.gs_matrix_s** %6, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %36 = call i32 @num_params(%struct.ref_s* noundef %34, i32 noundef 2, float* noundef %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %27
  %41 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %48 = call i32 @gs_make_scaling(double noundef %43, double noundef %46, %struct.gs_matrix_s* noundef %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = bitcast %struct.ref_s* %50 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  br label %54

54:                                               ; preds = %40, %18
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -2
  store %struct.ref_s* %59, %struct.ref_s** @osp, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %38, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @gs_scale(%struct.gs_state_s* noundef, double noundef, double noundef) #1

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrotate(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call i32 @num_params(%struct.ref_s* noundef %12, i32 noundef 1, float* noundef %5)
  store i32 %13, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %11
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %19 = load float, float* %5, align 4
  %20 = fpext float %19 to double
  %21 = call i32 @gs_rotate(%struct.gs_state_s* noundef %18, double noundef %20)
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %25, align 8
  %27 = bitcast %struct.ref_s* %26 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %27, %struct.gs_matrix_s** %6, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %30 = call i32 @num_params(%struct.ref_s* noundef %29, i32 noundef 1, float* noundef %5)
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %22
  %35 = load float, float* %5, align 4
  %36 = fpext float %35 to double
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %38 = call i32 @gs_make_rotation(double noundef %36, %struct.gs_matrix_s* noundef %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = bitcast %struct.ref_s* %40 to i8*
  %43 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  br label %44

44:                                               ; preds = %34, %17
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  store %struct.ref_s* %49, %struct.ref_s** @osp, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %32, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @gs_rotate(%struct.gs_state_s* noundef, double noundef) #1

declare dso_local i32 @gs_make_rotation(double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zconcat(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %6, %struct.gs_matrix_s* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %14 = call i32 @gs_concat(%struct.gs_state_s* noundef %13, %struct.gs_matrix_s* noundef %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gs_concat(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zconcatmatrix(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca %struct.gs_matrix_s, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  %9 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %8, %struct.gs_matrix_s* noundef %4)
  store i32 %9, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %14 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %13, %struct.gs_matrix_s* noundef %5)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to %struct.ref_s**
  %24 = load %struct.ref_s*, %struct.ref_s** %23, align 8
  %25 = bitcast %struct.ref_s* %24 to %struct.gs_matrix_s*
  %26 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %4, %struct.gs_matrix_s* noundef %5, %struct.gs_matrix_s* noundef %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %16, %11, %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = bitcast %struct.ref_s* %32 to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  store %struct.ref_s* %37, %struct.ref_s** @osp, align 8
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztransform(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_transform(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef @gs_transform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef @gs_point_transform)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_transform(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef %1, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, align 8
  %7 = alloca i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.gs_point_s, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gs_matrix_s, align 8
  %12 = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* %1, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %6, align 8
  store i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %2, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %7, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = ashr i32 %17, 2
  switch i32 %18, label %61 [
    i32 11, label %19
    i32 5, label %25
    i32 0, label %32
    i32 10, label %32
  ]

19:                                               ; preds = %3
  %20 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to float*
  %23 = load float, float* %22, align 8
  %24 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  store float %23, float* %24, align 4
  br label %62

25:                                               ; preds = %3
  %26 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  store float %30, float* %31, align 4
  br label %62

32:                                               ; preds = %3, %3
  store %struct.gs_matrix_s* %11, %struct.gs_matrix_s** %12, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %12, align 8
  %35 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %33, %struct.gs_matrix_s* noundef %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %40 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  %41 = call i32 @num_params(%struct.ref_s* noundef %39, i32 noundef 2, float* noundef %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %7, align 8
  %45 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %12, align 8
  %52 = call i32 %44(double noundef %47, double noundef %50, %struct.gs_matrix_s* noundef %51, %struct.gs_point_s* noundef %9)
  store i32 %52, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43, %37, %32
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %117

56:                                               ; preds = %43
  %57 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 -1
  store %struct.ref_s* %58, %struct.ref_s** %5, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -1
  store %struct.ref_s* %60, %struct.ref_s** @osp, align 8
  br label %100

61:                                               ; preds = %3
  store i32 -20, i32* %4, align 4
  br label %117

62:                                               ; preds = %25, %19
  %63 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -1
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 255
  %69 = ashr i32 %68, 2
  switch i32 %69, label %85 [
    i32 11, label %70
    i32 5, label %77
  ]

70:                                               ; preds = %62
  %71 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -1
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %74 = bitcast %union.v* %73 to float*
  %75 = load float, float* %74, align 8
  %76 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  store float %75, float* %76, align 4
  br label %86

77:                                               ; preds = %62
  %78 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -1
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %81 = bitcast %union.v* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to float
  %84 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  store float %83, float* %84, align 4
  br label %86

85:                                               ; preds = %62
  store i32 -20, i32* %4, align 4
  br label %117

86:                                               ; preds = %77, %70
  %87 = load i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %6, align 8
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %89 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  %90 = load float, float* %89, align 4
  %91 = fpext float %90 to double
  %92 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = call i32 %87(%struct.gs_state_s* noundef %88, double noundef %91, double noundef %94, %struct.gs_point_s* noundef %9)
  store i32 %95, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %117

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %56
  %101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i64 -1
  %105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 0
  %106 = bitcast %union.v* %105 to float*
  store float %102, float* %106, align 8
  %107 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 -1
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 1
  store i16 44, i16* %109, align 8
  %110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %114 = bitcast %union.v* %113 to float*
  store float %111, float* %114, align 8
  %115 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i32 0, i32 1
  store i16 44, i16* %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %100, %97, %85, %61, %54
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @gs_transform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #1

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdtransform(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_transform(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef @gs_dtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef @gs_distance_transform)
  ret i32 %4
}

declare dso_local i32 @gs_dtransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #1

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zitransform(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_transform(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef @gs_itransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef @gs_point_transform_inverse)
  ret i32 %4
}

declare dso_local i32 @gs_itransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #1

declare dso_local i32 @gs_point_transform_inverse(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zidtransform(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @common_transform(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* noundef @gs_idtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* noundef @gs_distance_transform_inverse)
  ret i32 %4
}

declare dso_local i32 @gs_idtransform(%struct.gs_state_s* noundef, double noundef, double noundef, %struct.gs_point_s* noundef) #1

declare dso_local i32 @gs_distance_transform_inverse(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinvertmatrix(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %8 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %7, %struct.gs_matrix_s* noundef %4)
  store i32 %8, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %17, align 8
  %19 = bitcast %struct.ref_s* %18 to %struct.gs_matrix_s*
  %20 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %4, %struct.gs_matrix_s* noundef %19)
  store i32 %20, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %10, %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  store %struct.ref_s* %31, %struct.ref_s** @osp, align 8
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmatrix_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmatrix_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
