; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/18-imp/L_canny.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/18-imp/L_canny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @L_canny(float noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, float** noundef %4, i8* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store float %0, float* %8, align 4
  store float* %1, float** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float** %4, float*** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load float, float* %8, align 4
  %23 = fpext float %22 to double
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @GaussianMask(double noundef %23, i32* noundef %19, float** noundef %17, i8* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %119

28:                                               ; preds = %6
  %29 = load float, float* %8, align 4
  %30 = fpext float %29 to double
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @DGaussianMask(double noundef %30, i32* noundef %20, float** noundef %18, i8* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %119

35:                                               ; preds = %28
  %36 = load float*, float** %9, align 8
  %37 = load float*, float** %17, align 8
  %38 = load float*, float** %18, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @dfilter(float* noundef %36, float* noundef %37, float* noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, float** noundef %14, i8* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %119

47:                                               ; preds = %35
  %48 = load float*, float** %9, align 8
  %49 = load float*, float** %18, align 8
  %50 = load float*, float** %17, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @dfilter(float* noundef %48, float* noundef %49, float* noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, float** noundef %15, i8* noundef %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %119

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = call noalias i8* @calloc(i64 noundef %63, i64 noundef 4) #3
  %65 = bitcast i8* %64 to float*
  store float* %65, float** %16, align 8
  %66 = load float*, float** %16, align 8
  %67 = icmp ne float* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %69, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  store i32 1, i32* %7, align 4
  br label %119

71:                                               ; preds = %59
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %108, %71
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72
  %79 = load float*, float** %15, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %15, align 8
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %14, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %14, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fmul float %93, %98
  %100 = call float @llvm.fmuladd.f32(float %83, float %88, float %99)
  %101 = fpext float %100 to double
  %102 = call double @sqrt(double noundef %101) #3
  %103 = fptrunc double %102 to float
  %104 = load float*, float** %16, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  store float %103, float* %107, align 4
  br label %108

108:                                              ; preds = %78
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %72, !llvm.loop !4

111:                                              ; preds = %72
  %112 = load float*, float** %16, align 8
  %113 = load float*, float** %14, align 8
  %114 = load float*, float** %15, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call float* @dnon_max(float* noundef %112, float* noundef %113, float* noundef %114, i32 noundef %115, i32 noundef %116)
  %118 = load float**, float*** %12, align 8
  store float* %117, float** %118, align 8
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %111, %68, %58, %46, %34, %27
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GaussianMask(double noundef %0, i32* noundef %1, float** noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = fptrunc double %0 to float
  store float %13, float* %6, align 4
  store i32* %1, i32** %7, align 8
  store float** %2, float*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load float, float* %6, align 4
  %15 = fmul float 6.000000e+00, %14
  %16 = fptosi float %15 to i16
  %17 = sext i16 %16 to i32
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = call noalias i8* @calloc(i64 noundef %30, i64 noundef 4) #3
  %32 = bitcast i8* %31 to float*
  store float* %32, float** %12, align 8
  store float* %32, float** %11, align 8
  %33 = load float*, float** %11, align 8
  %34 = icmp ne float* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %36, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  store i32 1, i32* %5, align 4
  br label %137

38:                                               ; preds = %27
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 0, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %10, align 2
  br label %44

44:                                               ; preds = %131, %38
  %45 = load i16, i16* %10, align 2
  %46 = sext i16 %45 to i32
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = icmp sle i32 %46, %49
  br i1 %50, label %51, label %134

51:                                               ; preds = %44
  %52 = load i16, i16* %10, align 2
  %53 = sext i16 %52 to i32
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 %53, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load i16, i16* %10, align 2
  %61 = sext i16 %60 to i32
  %62 = sitofp i32 %61 to double
  %63 = fadd double %62, 5.000000e-01
  %64 = call double @sqrt(double noundef 2.000000e+00) #3
  %65 = load float, float* %6, align 4
  %66 = fpext float %65 to double
  %67 = fmul double %64, %66
  %68 = fdiv double %63, %67
  %69 = call double @erf(double noundef %68) #3
  %70 = fadd double %69, 1.000000e+00
  %71 = fdiv double %70, 2.000000e+00
  %72 = fptrunc double %71 to float
  %73 = load float*, float** %11, align 8
  %74 = getelementptr inbounds float, float* %73, i32 1
  store float* %74, float** %11, align 8
  store float %72, float* %73, align 4
  br label %130

75:                                               ; preds = %51
  %76 = load i16, i16* %10, align 2
  %77 = sext i16 %76 to i32
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 2
  %81 = add nsw i32 %77, %80
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %75
  %87 = load i16, i16* %10, align 2
  %88 = sext i16 %87 to i32
  %89 = sitofp i32 %88 to double
  %90 = fsub double %89, 5.000000e-01
  %91 = call double @sqrt(double noundef 2.000000e+00) #3
  %92 = load float, float* %6, align 4
  %93 = fpext float %92 to double
  %94 = fmul double %91, %93
  %95 = fdiv double %90, %94
  %96 = call double @erf(double noundef %95) #3
  %97 = fneg double %96
  %98 = fadd double %97, 1.000000e+00
  %99 = fdiv double %98, 2.000000e+00
  %100 = fptrunc double %99 to float
  %101 = load float*, float** %11, align 8
  %102 = getelementptr inbounds float, float* %101, i32 1
  store float* %102, float** %11, align 8
  store float %100, float* %101, align 4
  br label %129

103:                                              ; preds = %75
  %104 = load i16, i16* %10, align 2
  %105 = sext i16 %104 to i32
  %106 = sitofp i32 %105 to double
  %107 = fadd double %106, 5.000000e-01
  %108 = call double @sqrt(double noundef 2.000000e+00) #3
  %109 = load float, float* %6, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %108, %110
  %112 = fdiv double %107, %111
  %113 = call double @erf(double noundef %112) #3
  %114 = load i16, i16* %10, align 2
  %115 = sext i16 %114 to i32
  %116 = sitofp i32 %115 to double
  %117 = fsub double %116, 5.000000e-01
  %118 = call double @sqrt(double noundef 2.000000e+00) #3
  %119 = load float, float* %6, align 4
  %120 = fpext float %119 to double
  %121 = fmul double %118, %120
  %122 = fdiv double %117, %121
  %123 = call double @erf(double noundef %122) #3
  %124 = fsub double %113, %123
  %125 = fmul double 5.000000e-01, %124
  %126 = fptrunc double %125 to float
  %127 = load float*, float** %11, align 8
  %128 = getelementptr inbounds float, float* %127, i32 1
  store float* %128, float** %11, align 8
  store float %126, float* %127, align 4
  br label %129

129:                                              ; preds = %103, %86
  br label %130

130:                                              ; preds = %129, %59
  br label %131

131:                                              ; preds = %130
  %132 = load i16, i16* %10, align 2
  %133 = add i16 %132, 1
  store i16 %133, i16* %10, align 2
  br label %44, !llvm.loop !6

134:                                              ; preds = %44
  %135 = load float*, float** %12, align 8
  %136 = load float**, float*** %8, align 8
  store float* %135, float** %136, align 8
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %134, %35
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare dso_local double @erf(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DGaussianMask(double noundef %0, i32* noundef %1, float** noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = fptrunc double %0 to float
  store float %13, float* %6, align 4
  store i32* %1, i32** %7, align 8
  store float** %2, float*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = call double @sqrt(double noundef 2.000000e+00) #3
  %15 = fmul double 8.000000e+00, %14
  %16 = load float, float* %6, align 4
  %17 = fpext float %16 to double
  %18 = fmul double %15, %17
  %19 = fptosi double %18 to i16
  %20 = sext i16 %19 to i32
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = call noalias i8* @calloc(i64 noundef %33, i64 noundef 4) #3
  %35 = bitcast i8* %34 to float*
  store float* %35, float** %12, align 8
  store float* %35, float** %11, align 8
  %36 = load float*, float** %11, align 8
  %37 = icmp ne float* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  store i32 1, i32* %5, align 4
  br label %189

41:                                               ; preds = %30
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 0, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %10, align 2
  br label %47

47:                                               ; preds = %182, %41
  %48 = load i16, i16* %10, align 2
  %49 = sext i16 %48 to i32
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %185

54:                                               ; preds = %47
  %55 = load i16, i16* %10, align 2
  %56 = sext i16 %55 to i32
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %54
  %63 = load float, float* %6, align 4
  %64 = fpext float %63 to double
  %65 = call double @sqrt(double noundef 0x401921FB54442D18) #3
  %66 = fmul double %64, %65
  %67 = fdiv double 1.000000e+00, %66
  %68 = fptrunc double %67 to float
  %69 = fpext float %68 to double
  %70 = load i16, i16* %10, align 2
  %71 = sext i16 %70 to i32
  %72 = sitofp i32 %71 to double
  %73 = fadd double %72, 5.000000e-01
  %74 = load i16, i16* %10, align 2
  %75 = sext i16 %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = fmul double %73, %77
  %79 = fneg double %78
  %80 = load float, float* %6, align 4
  %81 = fpext float %80 to double
  %82 = fmul double 2.000000e+00, %81
  %83 = load float, float* %6, align 4
  %84 = fpext float %83 to double
  %85 = fmul double %82, %84
  %86 = fdiv double %79, %85
  %87 = call double @exp(double noundef %86) #3
  %88 = fmul double %69, %87
  %89 = fptrunc double %88 to float
  %90 = load float*, float** %11, align 8
  %91 = getelementptr inbounds float, float* %90, i32 1
  store float* %91, float** %11, align 8
  store float %89, float* %90, align 4
  br label %181

92:                                               ; preds = %54
  %93 = load i16, i16* %10, align 2
  %94 = sext i16 %93 to i32
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 2
  %98 = add nsw i32 %94, %97
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %92
  %104 = load float, float* %6, align 4
  %105 = fpext float %104 to double
  %106 = call double @sqrt(double noundef 0x401921FB54442D18) #3
  %107 = fmul double %105, %106
  %108 = fdiv double 1.000000e+00, %107
  %109 = fneg double %108
  %110 = fptrunc double %109 to float
  %111 = fpext float %110 to double
  %112 = load i16, i16* %10, align 2
  %113 = sext i16 %112 to i32
  %114 = sitofp i32 %113 to double
  %115 = fsub double %114, 5.000000e-01
  %116 = load i16, i16* %10, align 2
  %117 = sext i16 %116 to i32
  %118 = sitofp i32 %117 to double
  %119 = fsub double %118, 5.000000e-01
  %120 = fmul double %115, %119
  %121 = fneg double %120
  %122 = load float, float* %6, align 4
  %123 = fpext float %122 to double
  %124 = fmul double 2.000000e+00, %123
  %125 = load float, float* %6, align 4
  %126 = fpext float %125 to double
  %127 = fmul double %124, %126
  %128 = fdiv double %121, %127
  %129 = call double @exp(double noundef %128) #3
  %130 = fmul double %111, %129
  %131 = fptrunc double %130 to float
  %132 = load float*, float** %11, align 8
  %133 = getelementptr inbounds float, float* %132, i32 1
  store float* %133, float** %11, align 8
  store float %131, float* %132, align 4
  br label %180

134:                                              ; preds = %92
  %135 = load i16, i16* %10, align 2
  %136 = sext i16 %135 to i32
  %137 = sitofp i32 %136 to double
  %138 = fadd double %137, 5.000000e-01
  %139 = load i16, i16* %10, align 2
  %140 = sext i16 %139 to i32
  %141 = sitofp i32 %140 to double
  %142 = fadd double %141, 5.000000e-01
  %143 = fmul double %138, %142
  %144 = fneg double %143
  %145 = load float, float* %6, align 4
  %146 = fpext float %145 to double
  %147 = fmul double 2.000000e+00, %146
  %148 = load float, float* %6, align 4
  %149 = fpext float %148 to double
  %150 = fmul double %147, %149
  %151 = fdiv double %144, %150
  %152 = call double @exp(double noundef %151) #3
  %153 = load i16, i16* %10, align 2
  %154 = sext i16 %153 to i32
  %155 = sitofp i32 %154 to double
  %156 = fsub double %155, 5.000000e-01
  %157 = load i16, i16* %10, align 2
  %158 = sext i16 %157 to i32
  %159 = sitofp i32 %158 to double
  %160 = fsub double %159, 5.000000e-01
  %161 = fmul double %156, %160
  %162 = fneg double %161
  %163 = load float, float* %6, align 4
  %164 = fpext float %163 to double
  %165 = fmul double 2.000000e+00, %164
  %166 = load float, float* %6, align 4
  %167 = fpext float %166 to double
  %168 = fmul double %165, %167
  %169 = fdiv double %162, %168
  %170 = call double @exp(double noundef %169) #3
  %171 = fsub double %152, %170
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = call double @sqrt(double noundef 0x401921FB54442D18) #3
  %175 = fmul double %173, %174
  %176 = fdiv double %171, %175
  %177 = fptrunc double %176 to float
  %178 = load float*, float** %11, align 8
  %179 = getelementptr inbounds float, float* %178, i32 1
  store float* %179, float** %11, align 8
  store float %177, float* %178, align 4
  br label %180

180:                                              ; preds = %134, %103
  br label %181

181:                                              ; preds = %180, %62
  br label %182

182:                                              ; preds = %181
  %183 = load i16, i16* %10, align 2
  %184 = add i16 %183, 1
  store i16 %184, i16* %10, align 2
  br label %47, !llvm.loop !7

185:                                              ; preds = %47
  %186 = load float*, float** %12, align 8
  store float* %186, float** %11, align 8
  %187 = load float*, float** %12, align 8
  %188 = load float**, float*** %8, align 8
  store float* %187, float** %188, align 8
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %38
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dfilter(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float** noundef %7, i8* noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca float, align 4
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store float* %2, float** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store float** %7, float*** %18, align 8
  store i8* %8, i8** %19, align 8
  %30 = load i32, i32* %17, align 4
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %23, align 2
  %32 = load i32, i32* %16, align 4
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %24, align 2
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = call noalias i8* @calloc(i64 noundef %37, i64 noundef 4) #3
  %39 = bitcast i8* %38 to float*
  store float* %39, float** %27, align 8
  store float* %39, float** %26, align 8
  %40 = load float*, float** %26, align 8
  %41 = icmp ne float* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %9
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %43, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  store i32 1, i32* %10, align 4
  br label %284

45:                                               ; preds = %9
  store i16 0, i16* %20, align 2
  br label %46

46:                                               ; preds = %150, %45
  %47 = load i16, i16* %20, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* %23, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %46
  store i16 0, i16* %21, align 2
  br label %53

53:                                               ; preds = %146, %52
  %54 = load i16, i16* %21, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %24, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %149

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = sdiv i32 %60, 2
  %62 = sub nsw i32 0, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %22, align 2
  br label %64

64:                                               ; preds = %140, %59
  %65 = load i16, i16* %22, align 2
  %66 = sext i16 %65 to i32
  %67 = load i32, i32* %14, align 4
  %68 = sdiv i32 %67, 2
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %70, label %143

70:                                               ; preds = %64
  %71 = load i16, i16* %21, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %22, align 2
  %74 = sext i16 %73 to i32
  %75 = add nsw i32 %72, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load float*, float** %11, align 8
  %79 = load i16, i16* %20, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* %24, align 2
  %82 = sext i16 %81 to i32
  %83 = mul nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %78, i64 %84
  %86 = load float, float* %85, align 4
  store float %86, float* %25, align 4
  br label %125

87:                                               ; preds = %70
  %88 = load i16, i16* %21, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* %22, align 2
  %91 = sext i16 %90 to i32
  %92 = add nsw i32 %89, %91
  %93 = load i16, i16* %24, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load float*, float** %11, align 8
  %98 = load i16, i16* %20, align 2
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %99, 1
  %101 = load i16, i16* %24, align 2
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %100, %102
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %97, i64 %105
  %107 = load float, float* %106, align 4
  store float %107, float* %25, align 4
  br label %124

108:                                              ; preds = %87
  %109 = load float*, float** %11, align 8
  %110 = load i16, i16* %20, align 2
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %24, align 2
  %113 = sext i16 %112 to i32
  %114 = mul nsw i32 %111, %113
  %115 = load i16, i16* %21, align 2
  %116 = sext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = load i16, i16* %22, align 2
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %109, i64 %121
  %123 = load float, float* %122, align 4
  store float %123, float* %25, align 4
  br label %124

124:                                              ; preds = %108, %96
  br label %125

125:                                              ; preds = %124, %77
  %126 = load float, float* %25, align 4
  %127 = load float*, float** %12, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sdiv i32 %128, 2
  %130 = load i16, i16* %22, align 2
  %131 = sext i16 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %127, i64 %133
  %135 = load float, float* %134, align 4
  %136 = load float*, float** %26, align 8
  %137 = load float, float* %136, align 4
  %138 = call float @llvm.fmuladd.f32(float %126, float %135, float %137)
  %139 = load float*, float** %26, align 8
  store float %138, float* %139, align 4
  br label %140

140:                                              ; preds = %125
  %141 = load i16, i16* %22, align 2
  %142 = add i16 %141, 1
  store i16 %142, i16* %22, align 2
  br label %64, !llvm.loop !8

143:                                              ; preds = %64
  %144 = load float*, float** %26, align 8
  %145 = getelementptr inbounds float, float* %144, i32 1
  store float* %145, float** %26, align 8
  br label %146

146:                                              ; preds = %143
  %147 = load i16, i16* %21, align 2
  %148 = add i16 %147, 1
  store i16 %148, i16* %21, align 2
  br label %53, !llvm.loop !9

149:                                              ; preds = %53
  br label %150

150:                                              ; preds = %149
  %151 = load i16, i16* %20, align 2
  %152 = add i16 %151, 1
  store i16 %152, i16* %20, align 2
  br label %46, !llvm.loop !10

153:                                              ; preds = %46
  %154 = load float*, float** %27, align 8
  store float* %154, float** %26, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = call noalias i8* @calloc(i64 noundef %158, i64 noundef 4) #3
  %160 = bitcast i8* %159 to float*
  store float* %160, float** %28, align 8
  %161 = load float*, float** %28, align 8
  %162 = icmp ne float* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %153
  %164 = load i8*, i8** %19, align 8
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %164, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  store i32 1, i32* %10, align 4
  br label %284

166:                                              ; preds = %153
  store i16 0, i16* %21, align 2
  br label %167

167:                                              ; preds = %278, %166
  %168 = load i16, i16* %21, align 2
  %169 = sext i16 %168 to i32
  %170 = load i16, i16* %24, align 2
  %171 = sext i16 %170 to i32
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %281

173:                                              ; preds = %167
  store i16 0, i16* %20, align 2
  br label %174

174:                                              ; preds = %274, %173
  %175 = load i16, i16* %20, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* %23, align 2
  %178 = sext i16 %177 to i32
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %277

180:                                              ; preds = %174
  %181 = load i32, i32* %15, align 4
  %182 = sdiv i32 %181, 2
  %183 = sub nsw i32 0, %182
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %22, align 2
  br label %185

185:                                              ; preds = %270, %180
  %186 = load i16, i16* %22, align 2
  %187 = sext i16 %186 to i32
  %188 = load i32, i32* %15, align 4
  %189 = sdiv i32 %188, 2
  %190 = icmp sle i32 %187, %189
  br i1 %190, label %191, label %273

191:                                              ; preds = %185
  %192 = load i16, i16* %20, align 2
  %193 = sext i16 %192 to i32
  %194 = load i16, i16* %22, align 2
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %193, %195
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load float*, float** %26, align 8
  %200 = load i16, i16* %21, align 2
  %201 = sext i16 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  store float %203, float* %25, align 4
  br label %243

204:                                              ; preds = %191
  %205 = load i16, i16* %20, align 2
  %206 = sext i16 %205 to i32
  %207 = load i16, i16* %22, align 2
  %208 = sext i16 %207 to i32
  %209 = add nsw i32 %206, %208
  %210 = load i16, i16* %23, align 2
  %211 = sext i16 %210 to i32
  %212 = icmp sge i32 %209, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %204
  %214 = load float*, float** %26, align 8
  %215 = load i16, i16* %23, align 2
  %216 = sext i16 %215 to i32
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* %16, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i16, i16* %21, align 2
  %221 = sext i16 %220 to i32
  %222 = add nsw i32 %219, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %214, i64 %223
  %225 = load float, float* %224, align 4
  store float %225, float* %25, align 4
  br label %242

226:                                              ; preds = %204
  %227 = load float*, float** %26, align 8
  %228 = load i16, i16* %20, align 2
  %229 = sext i16 %228 to i32
  %230 = load i16, i16* %22, align 2
  %231 = sext i16 %230 to i32
  %232 = add nsw i32 %229, %231
  %233 = load i16, i16* %24, align 2
  %234 = sext i16 %233 to i32
  %235 = mul nsw i32 %232, %234
  %236 = load i16, i16* %21, align 2
  %237 = sext i16 %236 to i32
  %238 = add nsw i32 %235, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %227, i64 %239
  %241 = load float, float* %240, align 4
  store float %241, float* %25, align 4
  br label %242

242:                                              ; preds = %226, %213
  br label %243

243:                                              ; preds = %242, %198
  %244 = load float*, float** %28, align 8
  %245 = load i16, i16* %20, align 2
  %246 = sext i16 %245 to i32
  %247 = load i16, i16* %24, align 2
  %248 = sext i16 %247 to i32
  %249 = mul nsw i32 %246, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %244, i64 %250
  %252 = load i16, i16* %21, align 2
  %253 = sext i16 %252 to i32
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %251, i64 %254
  store float* %255, float** %29, align 8
  %256 = load float, float* %25, align 4
  %257 = load float*, float** %13, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sdiv i32 %258, 2
  %260 = load i16, i16* %22, align 2
  %261 = sext i16 %260 to i32
  %262 = sub nsw i32 %259, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %257, i64 %263
  %265 = load float, float* %264, align 4
  %266 = load float*, float** %29, align 8
  %267 = load float, float* %266, align 4
  %268 = call float @llvm.fmuladd.f32(float %256, float %265, float %267)
  %269 = load float*, float** %29, align 8
  store float %268, float* %269, align 4
  br label %270

270:                                              ; preds = %243
  %271 = load i16, i16* %22, align 2
  %272 = add i16 %271, 1
  store i16 %272, i16* %22, align 2
  br label %185, !llvm.loop !11

273:                                              ; preds = %185
  br label %274

274:                                              ; preds = %273
  %275 = load i16, i16* %20, align 2
  %276 = add i16 %275, 1
  store i16 %276, i16* %20, align 2
  br label %174, !llvm.loop !12

277:                                              ; preds = %174
  br label %278

278:                                              ; preds = %277
  %279 = load i16, i16* %21, align 2
  %280 = add i16 %279, 1
  store i16 %280, i16* %21, align 2
  br label %167, !llvm.loop !13

281:                                              ; preds = %167
  %282 = load float*, float** %28, align 8
  %283 = load float**, float*** %18, align 8
  store float* %282, float** %283, align 8
  store i32 0, i32* %10, align 4
  br label %284

284:                                              ; preds = %281, %163, %42
  %285 = load i32, i32* %10, align 4
  ret i32 %285
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @dnon_max(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = call noalias i8* @calloc(i64 noundef %20, i64 noundef 4) #3
  %22 = bitcast i8* %21 to float*
  store float* %22, float** %13, align 8
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %293, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 2
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %296

28:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %289, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %292

34:                                               ; preds = %29
  %35 = load float*, float** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %35, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = fcmp ole double %44, 1.000000e-08
  br i1 %45, label %46, label %79

46:                                               ; preds = %34
  %47 = load float*, float** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %47, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fcmp oge double %56, -1.000000e-08
  br i1 %57, label %58, label %79

58:                                               ; preds = %46
  %59 = load float*, float** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %59, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %15, align 4
  %69 = load float*, float** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %69, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %16, align 4
  br label %249

79:                                               ; preds = %46, %34
  %80 = load float*, float** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %80, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %89, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fdiv float %88, %97
  store float %98, float* %14, align 4
  %99 = load float, float* %14, align 4
  %100 = fpext float %99 to double
  %101 = fcmp oge double %100, 0.000000e+00
  br i1 %101, label %102, label %167

102:                                              ; preds = %79
  %103 = load float, float* %14, align 4
  %104 = fpext float %103 to double
  %105 = fcmp olt double %104, 4.000000e-01
  br i1 %105, label %106, label %167

106:                                              ; preds = %102
  %107 = load float*, float** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %9, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %107, i64 %115
  %117 = load float, float* %116, align 4
  %118 = load float, float* %14, align 4
  %119 = fmul float %117, %118
  %120 = fpext float %119 to double
  %121 = load float, float* %14, align 4
  %122 = fpext float %121 to double
  %123 = fsub double 1.000000e+00, %122
  %124 = load float*, float** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %124, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fpext float %133 to double
  %135 = call double @llvm.fmuladd.f64(double %123, double %134, double %120)
  %136 = fptrunc double %135 to float
  store float %136, float* %15, align 4
  %137 = load float*, float** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %137, i64 %145
  %147 = load float, float* %146, align 4
  %148 = load float, float* %14, align 4
  %149 = fmul float %147, %148
  %150 = fpext float %149 to double
  %151 = load float, float* %14, align 4
  %152 = fpext float %151 to double
  %153 = fsub double 1.000000e+00, %152
  %154 = load float*, float** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* %9, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %154, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fpext float %163 to double
  %165 = call double @llvm.fmuladd.f64(double %153, double %164, double %150)
  %166 = fptrunc double %165 to float
  store float %166, float* %16, align 4
  br label %248

167:                                              ; preds = %102, %79
  %168 = load float, float* %14, align 4
  %169 = fpext float %168 to double
  %170 = fcmp ole double %169, 0.000000e+00
  br i1 %170, label %171, label %238

171:                                              ; preds = %167
  %172 = load float, float* %14, align 4
  %173 = fpext float %172 to double
  %174 = fcmp ogt double %173, -4.000000e-01
  br i1 %174, label %175, label %238

175:                                              ; preds = %171
  %176 = load float*, float** %6, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %9, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %180, %181
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %176, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fneg float %186
  %188 = load float, float* %14, align 4
  %189 = fmul float %187, %188
  %190 = fpext float %189 to double
  %191 = load float, float* %14, align 4
  %192 = fpext float %191 to double
  %193 = fadd double 1.000000e+00, %192
  %194 = load float*, float** %6, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %9, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %194, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fpext float %203 to double
  %205 = call double @llvm.fmuladd.f64(double %193, double %204, double %190)
  %206 = fptrunc double %205 to float
  store float %206, float* %15, align 4
  %207 = load float*, float** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load i32, i32* %9, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %211, %212
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %207, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fneg float %217
  %219 = load float, float* %14, align 4
  %220 = fmul float %218, %219
  %221 = fpext float %220 to double
  %222 = load float, float* %14, align 4
  %223 = fpext float %222 to double
  %224 = fadd double 1.000000e+00, %223
  %225 = load float*, float** %6, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* %9, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %225, i64 %232
  %234 = load float, float* %233, align 4
  %235 = fpext float %234 to double
  %236 = call double @llvm.fmuladd.f64(double %224, double %235, double %221)
  %237 = fptrunc double %236 to float
  store float %237, float* %16, align 4
  br label %247

238:                                              ; preds = %171, %167
  %239 = load float*, float** %13, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %9, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %239, i64 %245
  store float 0.000000e+00, float* %246, align 4
  br label %289

247:                                              ; preds = %175
  br label %248

248:                                              ; preds = %247, %106
  br label %249

249:                                              ; preds = %248, %58
  %250 = load float*, float** %6, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %250, i64 %256
  %258 = load float, float* %257, align 4
  %259 = fpext float %258 to double
  %260 = load float, float* %15, align 4
  %261 = fpext float %260 to double
  %262 = fadd double %261, 1.000000e-08
  %263 = fcmp ogt double %259, %262
  br i1 %263, label %264, label %288

264:                                              ; preds = %249
  %265 = load float*, float** %6, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* %9, align 4
  %268 = mul nsw i32 %266, %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %265, i64 %271
  %273 = load float, float* %272, align 4
  %274 = fpext float %273 to double
  %275 = load float, float* %16, align 4
  %276 = fpext float %275 to double
  %277 = fadd double %276, 1.000000e-08
  %278 = fcmp ogt double %274, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %264
  %280 = load float*, float** %13, align 8
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %9, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %280, i64 %286
  store float 2.550000e+02, float* %287, align 4
  br label %288

288:                                              ; preds = %279, %264, %249
  br label %289

289:                                              ; preds = %288, %238
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %29, !llvm.loop !14

292:                                              ; preds = %29
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %23, !llvm.loop !15

296:                                              ; preds = %23
  %297 = load float*, float** %13, align 8
  ret float* %297
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
