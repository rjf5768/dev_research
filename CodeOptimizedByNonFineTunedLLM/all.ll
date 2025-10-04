; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/all.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.A = internal global [4 x double] [double 4.100000e+00, double -3.900000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@.str = private unnamed_addr constant [14 x i8] c"DEBUG: %g %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"==============================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Find all roots of\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x**%d - \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x**%d + \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"using NEWTON method.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"No roots\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   ROOT = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  ROOT = %g (from quadratic formula)\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"     DEFLATED to\0A(x - %g)*(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%g)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A  ROOT = %g (from quadratic formula)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double noundef 0x40337AAE58825399, double noundef 0x401CF55906D75FA4)
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %31, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = call double @d_abs(double noundef %15)
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %16)
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %25)
  br label %30

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  br label %8, !llvm.loop !4

34:                                               ; preds = %8
  %35 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), align 16
  %36 = call double @d_abs(double noundef %35)
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %36)
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  call void @allroots(i32 noundef %40, double* noundef getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), i32 noundef %41, double* noundef getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local double @d_abs(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @allroots(i32 noundef %0, double* noundef %1, i32 noundef %2, double* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %26, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load double*, double** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = call double @d_abs(double noundef %22)
  %24 = load double, double* %12, align 8
  %25 = fadd double %24, %23
  store double %25, double* %12, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %13, !llvm.loop !6

29:                                               ; preds = %13
  %30 = load double*, double** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = call double @d_abs(double noundef %34)
  %36 = load double, double* %12, align 8
  %37 = fdiv double %36, %35
  store double %37, double* %12, align 8
  %38 = load double, double* %12, align 8
  %39 = fneg double %38
  %40 = fsub double %39, 1.000000e+00
  store double %40, double* %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %134

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load double*, double** %8, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fneg double %51
  %53 = load double*, double** %8, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = fdiv double %52, %55
  store double %56, double* %10, align 8
  %57 = load double, double* %10, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), double noundef %57)
  br label %133

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %121

62:                                               ; preds = %59
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = fneg double %65
  %67 = load double*, double** %8, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = load double*, double** %8, align 8
  %71 = getelementptr inbounds double, double* %70, i64 1
  %72 = load double, double* %71, align 8
  %73 = load double*, double** %8, align 8
  %74 = getelementptr inbounds double, double* %73, i64 2
  %75 = load double, double* %74, align 8
  %76 = fmul double 4.000000e+00, %75
  %77 = load double*, double** %8, align 8
  %78 = getelementptr inbounds double, double* %77, i64 0
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = fneg double %80
  %82 = call double @llvm.fmuladd.f64(double %69, double %72, double %81)
  %83 = call double @sqrt(double noundef %82) #4
  %84 = fadd double %66, %83
  %85 = load double*, double** %8, align 8
  %86 = getelementptr inbounds double, double* %85, i64 2
  %87 = load double, double* %86, align 8
  %88 = fmul double 2.000000e+00, %87
  %89 = fdiv double %84, %88
  store double %89, double* %10, align 8
  %90 = load double, double* %10, align 8
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %90)
  %92 = load double*, double** %8, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = fneg double %94
  %96 = load double*, double** %8, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %8, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  %101 = load double, double* %100, align 8
  %102 = load double*, double** %8, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  %104 = load double, double* %103, align 8
  %105 = fmul double 4.000000e+00, %104
  %106 = load double*, double** %8, align 8
  %107 = getelementptr inbounds double, double* %106, i64 0
  %108 = load double, double* %107, align 8
  %109 = fmul double %105, %108
  %110 = fneg double %109
  %111 = call double @llvm.fmuladd.f64(double %98, double %101, double %110)
  %112 = call double @sqrt(double noundef %111) #4
  %113 = fsub double %95, %112
  %114 = load double*, double** %8, align 8
  %115 = getelementptr inbounds double, double* %114, i64 2
  %116 = load double, double* %115, align 8
  %117 = fmul double 2.000000e+00, %116
  %118 = fdiv double %113, %117
  store double %118, double* %10, align 8
  %119 = load double, double* %10, align 8
  %120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %119)
  br label %132

121:                                              ; preds = %59
  %122 = load i32, i32* %7, align 4
  %123 = load double*, double** %8, align 8
  %124 = load double, double* %11, align 8
  %125 = load double, double* %12, align 8
  %126 = call double @newton(i32 noundef %122, double* noundef %123, double noundef %124, double noundef %125)
  store double %126, double* %10, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load double*, double** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load double*, double** %8, align 8
  %131 = load double, double* %10, align 8
  call void @deflat(i32 noundef %127, double* noundef %128, i32 noundef %129, double* noundef %130, double noundef %131)
  br label %132

132:                                              ; preds = %121, %62
  br label %133

133:                                              ; preds = %132, %48
  br label %134

134:                                              ; preds = %133, %43
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local double @newton(i32 noundef, double* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deflat(i32 noundef %0, double* noundef %1, i32 noundef %2, double* noundef %3, double noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = load double*, double** %7, align 8
  %21 = load double, double* %10, align 8
  %22 = fsub double %21, 5.000000e-01
  %23 = load double, double* %10, align 8
  %24 = fadd double %23, 5.000000e-01
  %25 = call double @newton(i32 noundef %19, double* noundef %20, double noundef %22, double noundef %24)
  br label %26

26:                                               ; preds = %17, %5
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 8) #4
  %30 = bitcast i8* %29 to double*
  store double* %30, double** %11, align 8
  %31 = load double*, double** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  store double %35, double* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %65, %26
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load double*, double** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %47, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double, double* %10, align 8
  %54 = load double*, double** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %52, double %53, double %59)
  %61 = load double*, double** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %43, !llvm.loop !7

68:                                               ; preds = %43
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %95, %68
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load double*, double** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = call double @d_abs(double noundef %78)
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %79)
  %81 = load double*, double** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %13, align 4
  %90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %89)
  br label %94

91:                                               ; preds = %73
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %13, align 4
  br label %70, !llvm.loop !8

98:                                               ; preds = %70
  %99 = load double*, double** %9, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = call double @d_abs(double noundef %101)
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %102)
  %104 = load double, double* %10, align 8
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), double noundef %104)
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %133, %98
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load double*, double** %11, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  %116 = load double, double* %115, align 8
  %117 = call double @d_abs(double noundef %116)
  %118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %117)
  %119 = load double*, double** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %119, i64 %122
  %124 = load double, double* %123, align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %127)
  br label %132

129:                                              ; preds = %111
  %130 = load i32, i32* %13, align 4
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %130)
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %13, align 4
  br label %108, !llvm.loop !9

136:                                              ; preds = %108
  %137 = load double*, double** %11, align 8
  %138 = getelementptr inbounds double, double* %137, i64 0
  %139 = load double, double* %138, align 8
  %140 = call double @d_abs(double noundef %139)
  %141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double noundef %140)
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %219

144:                                              ; preds = %136
  %145 = load double*, double** %11, align 8
  %146 = getelementptr inbounds double, double* %145, i64 1
  %147 = load double, double* %146, align 8
  %148 = fneg double %147
  %149 = load double*, double** %11, align 8
  %150 = getelementptr inbounds double, double* %149, i64 1
  %151 = load double, double* %150, align 8
  %152 = load double*, double** %11, align 8
  %153 = getelementptr inbounds double, double* %152, i64 1
  %154 = load double, double* %153, align 8
  %155 = load double*, double** %11, align 8
  %156 = getelementptr inbounds double, double* %155, i64 2
  %157 = load double, double* %156, align 8
  %158 = fmul double 4.000000e+00, %157
  %159 = load double*, double** %11, align 8
  %160 = getelementptr inbounds double, double* %159, i64 0
  %161 = load double, double* %160, align 8
  %162 = fmul double %158, %161
  %163 = fneg double %162
  %164 = call double @llvm.fmuladd.f64(double %151, double %154, double %163)
  %165 = call double @sqrt(double noundef %164) #4
  %166 = fadd double %148, %165
  %167 = load double*, double** %11, align 8
  %168 = getelementptr inbounds double, double* %167, i64 2
  %169 = load double, double* %168, align 8
  %170 = fmul double 2.000000e+00, %169
  %171 = fdiv double %166, %170
  store double %171, double* %10, align 8
  %172 = load double, double* %10, align 8
  %173 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), double noundef %172)
  %174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %175 = load i32, i32* %6, align 4
  %176 = load double*, double** %7, align 8
  %177 = load double, double* %10, align 8
  %178 = fsub double %177, 5.000000e-01
  %179 = load double, double* %10, align 8
  %180 = fadd double %179, 5.000000e-01
  %181 = call double @newton(i32 noundef %175, double* noundef %176, double noundef %178, double noundef %180)
  %182 = load double*, double** %11, align 8
  %183 = getelementptr inbounds double, double* %182, i64 1
  %184 = load double, double* %183, align 8
  %185 = fneg double %184
  %186 = load double*, double** %11, align 8
  %187 = getelementptr inbounds double, double* %186, i64 1
  %188 = load double, double* %187, align 8
  %189 = load double*, double** %11, align 8
  %190 = getelementptr inbounds double, double* %189, i64 1
  %191 = load double, double* %190, align 8
  %192 = load double*, double** %11, align 8
  %193 = getelementptr inbounds double, double* %192, i64 2
  %194 = load double, double* %193, align 8
  %195 = fmul double 4.000000e+00, %194
  %196 = load double*, double** %11, align 8
  %197 = getelementptr inbounds double, double* %196, i64 0
  %198 = load double, double* %197, align 8
  %199 = fmul double %195, %198
  %200 = fneg double %199
  %201 = call double @llvm.fmuladd.f64(double %188, double %191, double %200)
  %202 = call double @sqrt(double noundef %201) #4
  %203 = fsub double %185, %202
  %204 = load double*, double** %11, align 8
  %205 = getelementptr inbounds double, double* %204, i64 2
  %206 = load double, double* %205, align 8
  %207 = fmul double 2.000000e+00, %206
  %208 = fdiv double %203, %207
  store double %208, double* %10, align 8
  %209 = load double, double* %10, align 8
  %210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %209)
  %211 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i32, i32* %6, align 4
  %213 = load double*, double** %7, align 8
  %214 = load double, double* %10, align 8
  %215 = fsub double %214, 5.000000e-01
  %216 = load double, double* %10, align 8
  %217 = fadd double %216, 5.000000e-01
  %218 = call double @newton(i32 noundef %212, double* noundef %213, double noundef %215, double noundef %217)
  br label %225

219:                                              ; preds = %136
  %220 = load i32, i32* %6, align 4
  %221 = load double*, double** %7, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load double*, double** %11, align 8
  call void @allroots(i32 noundef %220, double* noundef %221, i32 noundef %223, double* noundef %224)
  br label %225

225:                                              ; preds = %219, %144
  %226 = load double*, double** %11, align 8
  %227 = bitcast double* %226 to i8*
  call void @free(i8* noundef %227) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
