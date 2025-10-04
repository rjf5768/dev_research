; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/gofast.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/gofast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@fail_count = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Test failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fp_add 1+1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fp_sub 3-2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fp_mul 2*3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fp_div 3/2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fp_neg 1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dp_add 1+1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dp_sub 3-2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"dp_mul 2*3\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"dp_div 3/2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dp_neg 1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fp_to_dp 1.5\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"dp_to_fp 1.5\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"floatsisf 1\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"floatsidf 1\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"fixsfsi 1.42\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"fixunssfsi 1.42\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"fixdfsi 1.42\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"fixunsdfsi 1.42\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"eqsf2 1==1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"eqsf2 1==2\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"nesf2 1!=1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gtsf2 2>1\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"gtsf2 1>1\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"gtsf2 0>1\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gesf2 2>=1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gesf2 1>=1\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gesf2 0>=1\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ltsf2 1<2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"ltsf2 1<1\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"ltsf2 1<0\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"lesf2 1<=2\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"lesf2 1<=1\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"lesf2 1<=0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @fp_add(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fadd float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @fp_sub(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fsub float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @fp_mul(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fmul float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @fp_div(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fdiv float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @fp_neg(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fneg float %3
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dp_add(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fadd double %5, %6
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dp_sub(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fsub double %5, %6
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dp_mul(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fmul double %5, %6
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dp_div(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fdiv double %5, %6
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dp_neg(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fneg double %3
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @fp_to_dp(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @dp_to_fp(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptrunc double %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @eqsf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp oeq float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nesf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp une float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gtsf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp ogt float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gesf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp oge float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ltsf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp olt float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lesf2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp ole float %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @eqdf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oeq double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nedf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp une double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gtdf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ogt double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gedf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oge double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ltdf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp olt double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ledf2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ole double %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @floatsisf(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @floatsidf(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fixsfsi(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fixdfsi(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptosi double %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fixunssfsi(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptoui float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fixunsdfsi(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptoui double %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fail(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @fail_count, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @fail_count, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* noundef %7)
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call float @fp_add(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %3 = fcmp une float %2, 2.000000e+00
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call float @fp_sub(float noundef 3.000000e+00, float noundef 2.000000e+00)
  %8 = fcmp une float %7, 1.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = call float @fp_mul(float noundef 2.000000e+00, float noundef 3.000000e+00)
  %13 = fcmp une float %12, 6.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = call float @fp_div(float noundef 3.000000e+00, float noundef 2.000000e+00)
  %18 = fpext float %17 to double
  %19 = fcmp une double %18, 1.500000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = call float @fp_neg(float noundef 1.000000e+00)
  %24 = fcmp une float %23, -1.000000e+00
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call double @dp_add(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %29 = fcmp une double %28, 2.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = call double @dp_sub(double noundef 3.000000e+00, double noundef 2.000000e+00)
  %34 = fcmp une double %33, 1.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = call double @dp_mul(double noundef 2.000000e+00, double noundef 3.000000e+00)
  %39 = fcmp une double %38, 6.000000e+00
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = call double @dp_div(double noundef 3.000000e+00, double noundef 2.000000e+00)
  %44 = fcmp une double %43, 1.500000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = call double @dp_neg(double noundef 1.000000e+00)
  %49 = fcmp une double %48, -1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = call double @fp_to_dp(float noundef 1.500000e+00)
  %54 = fcmp une double %53, 1.500000e+00
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = call float @dp_to_fp(double noundef 1.500000e+00)
  %59 = fpext float %58 to double
  %60 = fcmp une double %59, 1.500000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  %64 = call float @floatsisf(i32 noundef 1)
  %65 = fcmp une float %64, 1.000000e+00
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = call double @floatsidf(i32 noundef 1)
  %70 = fcmp une double %69, 1.000000e+00
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = call i32 @fixsfsi(float noundef 0x3FF6B851E0000000)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = call i32 @fixunssfsi(float noundef 0x3FF6B851E0000000)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = call i32 @fixdfsi(double noundef 1.420000e+00)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 @fixunsdfsi(double noundef 1.420000e+00)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  %94 = call i32 @eqsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = call i32 @eqsf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i32 @nesf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = call i32 @nesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = call i32 @gtsf2(float noundef 2.000000e+00, float noundef 1.000000e+00)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  %119 = call i32 @gtsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %118
  %124 = call i32 @gtsf2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  %129 = call i32 @gesf2(float noundef 2.000000e+00, float noundef 1.000000e+00)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = call i32 @gesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  %139 = call i32 @gesf2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  %144 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %143
  %149 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %148
  %154 = call i32 @ltsf2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 @fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %153
  %159 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 1.000000e+00)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %163
  %169 = call i32 @lesf2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i32, i32* @fail_count, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @abort() #3
  unreachable

177:                                              ; preds = %173
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
