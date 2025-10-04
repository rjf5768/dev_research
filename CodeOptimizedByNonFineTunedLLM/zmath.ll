; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmath.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmath_init() #0 {
  store i64 1, i64* @rand_state, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsqrt(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %27

17:                                               ; preds = %12
  %18 = load float, float* %4, align 4
  %19 = fpext float %18 to double
  %20 = call double @sqrt(double noundef %19) #3
  %21 = fptrunc double %20 to float
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  store float %21, float* %24, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  store i16 44, i16* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %16, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarccos(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 @num_params(%struct.ref_s* noundef %7, i32 noundef 1, float* noundef %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = call double @acos(double noundef %15) #3
  %17 = load double, double* @radians_to_degrees, align 8
  %18 = fmul double %16, %17
  %19 = fptrunc double %18 to float
  store float %19, float* %5, align 4
  %20 = load float, float* %5, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to float*
  store float %20, float* %23, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 44, i16* %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarcsin(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 @num_params(%struct.ref_s* noundef %7, i32 noundef 1, float* noundef %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = call double @asin(double noundef %15) #3
  %17 = load double, double* @radians_to_degrees, align 8
  %18 = fmul double %16, %17
  %19 = fptrunc double %18 to float
  store float %19, float* %5, align 4
  %20 = load float, float* %5, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to float*
  store float %20, float* %23, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 44, i16* %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zatan(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %9 = call i32 @num_params(%struct.ref_s* noundef %7, i32 noundef 2, float* noundef %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %16 = load float, float* %15, align 4
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %20 = load float, float* %19, align 4
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -23, i32* %2, align 4
  br label %78

23:                                               ; preds = %18
  %24 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %25 = load float, float* %24, align 4
  %26 = fcmp olt float %25, 0.000000e+00
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 180, i32 0
  %29 = sitofp i32 %28 to float
  store float %29, float* %5, align 4
  br label %67

30:                                               ; preds = %14
  %31 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %35 = load float, float* %34, align 4
  %36 = fpext float %35 to double
  %37 = call double @atan2(double noundef %33, double noundef %36) #3
  %38 = load double, double* @radians_to_degrees, align 8
  %39 = fmul double %37, %38
  %40 = fptrunc double %39 to float
  store float %40, float* %5, align 4
  %41 = load float, float* %5, align 4
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %47, %43
  %45 = load float, float* %5, align 4
  %46 = fadd float %45, 1.800000e+02
  store float %46, float* %5, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load float, float* %5, align 4
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %44, label %50, !llvm.loop !4

50:                                               ; preds = %47
  br label %59

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %55, %51
  %53 = load float, float* %5, align 4
  %54 = fcmp oge float %53, 1.800000e+02
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load float, float* %5, align 4
  %57 = fsub float %56, 1.800000e+02
  store float %57, float* %5, align 4
  br label %52, !llvm.loop !6

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %61 = load float, float* %60, align 4
  %62 = fcmp olt float %61, 0.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load float, float* %5, align 4
  %65 = fadd float %64, 1.800000e+02
  store float %65, float* %5, align 4
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %23
  %68 = load float, float* %5, align 4
  %69 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %72 = bitcast %union.v* %71 to float*
  store float %68, float* %72, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -1
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  store i16 44, i16* %75, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  store %struct.ref_s* %77, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %67, %22, %12
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcos(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = load double, double* @degrees_to_radians, align 8
  %16 = fmul double %14, %15
  %17 = call double @cos(double noundef %16) #3
  %18 = fptrunc double %17 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %18, float* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  store i16 44, i16* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsin(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = load double, double* @degrees_to_radians, align 8
  %16 = fmul double %14, %15
  %17 = call double @sin(double noundef %16) #3
  %18 = fptrunc double %17 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %18, float* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  store i16 44, i16* %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexp(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 2, float* noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %17 = load float, float* %16, align 4
  %18 = fpext float %17 to double
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = fcmp oeq double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -23, i32* %2, align 4
  br label %57

26:                                               ; preds = %20, %15
  %27 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fcmp olt double %29, 0.000000e+00
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = call double @modf(double noundef %34, double* noundef %6) #3
  %36 = fcmp une double %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -23, i32* %2, align 4
  br label %57

38:                                               ; preds = %31, %26
  %39 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = call double @pow(double noundef %41, double noundef %44) #3
  %46 = fptrunc double %45 to float
  store float %46, float* %5, align 4
  %47 = load float, float* %5, align 4
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %51 = bitcast %union.v* %50 to float*
  store float %47, float* %51, align 8
  %52 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  store i16 44, i16* %54, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  store %struct.ref_s* %56, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %38, %37, %25, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare dso_local double @modf(double noundef, double* noundef) #2

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zln(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %27

17:                                               ; preds = %12
  %18 = load float, float* %4, align 4
  %19 = fpext float %18 to double
  %20 = call double @log(double noundef %19) #3
  %21 = fptrunc double %20 to float
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  store float %21, float* %24, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  store i16 44, i16* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %16, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlog(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %27

17:                                               ; preds = %12
  %18 = load float, float* %4, align 4
  %19 = fpext float %18 to double
  %20 = call double @log10(double noundef %19) #3
  %21 = fptrunc double %20 to float
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  store float %21, float* %24, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  store i16 44, i16* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %16, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrand(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load i64, i64* @rand_state, align 8
  %6 = mul i64 %5, 1103515245
  %7 = add i64 %6, 12345
  store i64 %7, i64* @rand_state, align 8
  %8 = shl i64 %7, 21
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @rand_state, align 8
  %10 = mul i64 %9, 1103515245
  %11 = add i64 %10, 12345
  store i64 %11, i64* @rand_state, align 8
  %12 = shl i64 %11, 10
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @rand_state, align 8
  %16 = mul i64 %15, 1103515245
  %17 = add i64 %16, 12345
  store i64 %17, i64* @rand_state, align 8
  %18 = lshr i64 %17, 3
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, 2147483647
  store i64 %22, i64* %4, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 1
  store %struct.ref_s* %24, %struct.ref_s** %3, align 8
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %26 = icmp ugt %struct.ref_s* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  store %struct.ref_s* %29, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %34 = bitcast %union.v* %33 to i64*
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  store i16 20, i16* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsrand(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 252
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* @rand_state, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrrand(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %5, %struct.ref_s** %3, align 8
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load i64, i64* @rand_state, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 20, i16* %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmath_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmath_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
