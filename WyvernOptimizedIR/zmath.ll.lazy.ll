; ModuleID = './zmath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@degrees_to_radians = dso_local global double 0x3F91DF46A2529D39, align 8
@radians_to_degrees = dso_local global double 0x404CA5DC1A63C1F8, align 8
@rand_state = internal global i64 0, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zmath_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zarccos }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcsin }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zatan }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcos }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zexp }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zln }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zlog }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zrand }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zrrand }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsin }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zsqrt }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zsrand }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"1arccos\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1arcsin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"2atan\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1cos\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2exp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1ln\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1log\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0rand\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0rrand\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1sin\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1sqrt\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"1srand\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @zmath_init() #0 {
  store i64 1, i64* @rand_state, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsqrt(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %14

10:                                               ; preds = %6
  %11 = load float, float* %2, align 4
  %sqrtf = call float @sqrtf(float noundef %11) #3
  %12 = bitcast %struct.ref_s* %0 to float*
  store float %sqrtf, float* %12, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %13, align 8
  br label %14

14:                                               ; preds = %10, %9, %5
  %.0 = phi i32 [ %3, %5 ], [ -15, %9 ], [ 0, %10 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarccos(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = call double @acos(double noundef %8) #5
  %10 = load double, double* @radians_to_degrees, align 8
  %11 = fmul double %9, %10
  %12 = fptrunc double %11 to float
  %13 = bitcast %struct.ref_s* %0 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %14, align 8
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcsin(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = call double @asin(double noundef %8) #5
  %10 = load double, double* @radians_to_degrees, align 8
  %11 = fmul double %9, %10
  %12 = fptrunc double %11 to float
  %13 = bitcast %struct.ref_s* %0 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %14, align 8
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zatan(%struct.ref_s* noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %4 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %3) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %58

7:                                                ; preds = %1
  %8 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %9 = load float, float* %8, align 4
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %58

16:                                               ; preds = %11
  %17 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %18 = load float, float* %17, align 4
  %19 = fcmp olt float %18, 0.000000e+00
  %20 = select i1 %19, float 1.800000e+02, float 0.000000e+00
  br label %52

21:                                               ; preds = %7
  %22 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = call double @atan2(double noundef %24, double noundef %27) #5
  %29 = load double, double* @radians_to_degrees, align 8
  %30 = fmul double %28, %29
  %31 = fptrunc double %30 to float
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %36, %33
  %.01 = phi float [ %31, %33 ], [ %35, %36 ]
  %35 = fadd float %.01, 1.800000e+02
  br label %36

36:                                               ; preds = %34
  %37 = fcmp olt float %35, 0.000000e+00
  br i1 %37, label %34, label %38, !llvm.loop !4

38:                                               ; preds = %36
  br label %45

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %42, %39
  %.1 = phi float [ %31, %39 ], [ %43, %42 ]
  %41 = fcmp ult float %.1, 1.800000e+02
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = fadd float %.1, -1.800000e+02
  br label %40, !llvm.loop !6

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %38
  %.2 = phi float [ %35, %38 ], [ %.1, %44 ]
  %46 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %47 = load float, float* %46, align 4
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = fadd float %.2, 1.800000e+02
  br label %51

51:                                               ; preds = %49, %45
  %.3 = phi float [ %50, %49 ], [ %.2, %45 ]
  br label %52

52:                                               ; preds = %51, %16
  %.4 = phi float [ %20, %16 ], [ %.3, %51 ]
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %54 = bitcast %union.v* %53 to float*
  store float %.4, float* %54, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %55, align 8
  %56 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  store %struct.ref_s* %57, %struct.ref_s** @osp, align 8
  br label %58

58:                                               ; preds = %52, %15, %6
  %.0 = phi i32 [ %4, %6 ], [ -23, %15 ], [ 0, %52 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcos(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = load double, double* @degrees_to_radians, align 8
  %10 = fmul double %9, %8
  %11 = call double @cos(double noundef %10) #5
  %12 = fptrunc double %11 to float
  %13 = bitcast %struct.ref_s* %0 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %14, align 8
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsin(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = load double, double* @degrees_to_radians, align 8
  %10 = fmul double %9, %8
  %11 = call double @sin(double noundef %10) #5
  %12 = fptrunc double %11 to float
  %13 = bitcast %struct.ref_s* %0 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %14, align 8
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexp(%struct.ref_s* noundef %0) #1 {
  %2 = alloca [2 x float], align 4
  %3 = alloca double, align 8
  %4 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %10 = load float, float* %9, align 4
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %14 = load float, float* %13, align 4
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %42

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %19 = load float, float* %18, align 4
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = call double @modf(double noundef %24, double* noundef nonnull %3) #5
  %26 = fcmp une double %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %42

28:                                               ; preds = %21, %17
  %29 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = call double @pow(double noundef %31, double noundef %34) #5
  %36 = fptrunc double %35 to float
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %38 = bitcast %union.v* %37 to float*
  store float %36, float* %38, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %39, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  store %struct.ref_s* %41, %struct.ref_s** @osp, align 8
  br label %42

42:                                               ; preds = %28, %27, %16, %7
  %.0 = phi i32 [ %5, %7 ], [ -23, %16 ], [ -23, %27 ], [ 0, %28 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @modf(double noundef, double* noundef) #3

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zln(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fcmp ugt float %7, 0.000000e+00
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %17

10:                                               ; preds = %6
  %11 = load float, float* %2, align 4
  %12 = fpext float %11 to double
  %13 = call double @log(double noundef %12) #5
  %14 = fptrunc double %13 to float
  %15 = bitcast %struct.ref_s* %0 to float*
  store float %14, float* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %16, align 8
  br label %17

17:                                               ; preds = %10, %9, %5
  %.0 = phi i32 [ %3, %5 ], [ -15, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlog(%struct.ref_s* noundef %0) #1 {
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fcmp ugt float %7, 0.000000e+00
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %17

10:                                               ; preds = %6
  %11 = load float, float* %2, align 4
  %12 = fpext float %11 to double
  %13 = call double @log10(double noundef %12) #5
  %14 = fptrunc double %13 to float
  %15 = bitcast %struct.ref_s* %0 to float*
  store float %14, float* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %16, align 8
  br label %17

17:                                               ; preds = %10, %9, %5
  %.0 = phi i32 [ %3, %5 ], [ -15, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zrand(%struct.ref_s* noundef %0) #4 {
  %2 = load i64, i64* @rand_state, align 8
  %3 = mul i64 %2, 1103515245
  %4 = add i64 %3, 12345
  %5 = mul i64 %4, 1103515245
  %6 = add i64 %5, 12345
  %7 = mul i64 %6, 1103515245
  %8 = add i64 %7, 12345
  store i64 %8, i64* @rand_state, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %11 = icmp ugt %struct.ref_s* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  br label %24

15:                                               ; preds = %1
  %16 = shl i64 %4, 21
  %17 = shl i64 %6, 10
  %18 = add i64 %16, %17
  %19 = lshr i64 %8, 3
  %20 = add i64 %18, %19
  %21 = and i64 %20, 2147483647
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 0, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %23, align 8
  br label %24

24:                                               ; preds = %15, %12
  %.0 = phi i32 [ -16, %12 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zsrand(%struct.ref_s* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* @rand_state, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %12

12:                                               ; preds = %7, %6
  %.0 = phi i32 [ 0, %7 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zrrand(%struct.ref_s* noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @rand_state, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %11, align 8
  br label %12

12:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmath_op_init() #1 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmath_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare float @sqrtf(float)

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
