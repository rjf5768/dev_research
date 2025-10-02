; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/kernel.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }
%struct.Stopwatch_struct = type { i32, double, double }

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureFFT(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 2, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %17 = call double* @RandomVector(i32 noundef %15, %struct.Random_struct* noundef %16)
  store double* %17, double** %8, align 8
  store i64 1, i64* %9, align 8
  %18 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %18, %struct.Stopwatch_struct** %10, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  br label %19

19:                                               ; preds = %3, %40
  %20 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %20)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %32, %19
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %24, 8
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load double*, double** %8, align 8
  call void @FFT_transform(i32 noundef %28, double* noundef %29)
  %30 = load i32, i32* %7, align 4
  %31 = load double*, double** %8, align 8
  call void @FFT_inverse(i32 noundef %30, double* noundef %31)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %21, !llvm.loop !4

35:                                               ; preds = %21
  %36 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %36)
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %37, 4096
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = mul nsw i64 %41, 2
  store i64 %42, i64* %9, align 8
  br label %19

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call double @FFT_num_flops(i32 noundef %44)
  %46 = load i64, i64* %9, align 8
  %47 = sitofp i64 %46 to double
  %48 = fmul double %45, %47
  %49 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %50 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %49)
  %51 = fdiv double %48, %50
  %52 = fmul double %51, 0x3EB0C6F7A0B5ED8D
  store double %52, double* %12, align 8
  %53 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %53)
  %54 = load double*, double** %8, align 8
  %55 = bitcast double* %54 to i8*
  call void @free(i8* noundef %55) #4
  %56 = load double, double* %12, align 8
  ret double %56
}

declare dso_local double* @RandomVector(i32 noundef, %struct.Random_struct* noundef) #1

declare dso_local %struct.Stopwatch_struct* @new_Stopwatch() #1

declare dso_local void @Stopwatch_start(%struct.Stopwatch_struct* noundef) #1

declare dso_local void @FFT_transform(i32 noundef, double* noundef) #1

declare dso_local void @FFT_inverse(i32 noundef, double* noundef) #1

declare dso_local void @Stopwatch_stop(%struct.Stopwatch_struct* noundef) #1

declare dso_local double @FFT_num_flops(i32 noundef) #1

declare dso_local double @Stopwatch_read(%struct.Stopwatch_struct* noundef) #1

declare dso_local void @Stopwatch_delete(%struct.Stopwatch_struct* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSOR(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.Stopwatch_struct*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %14 = call double** @RandomMatrix(i32 noundef %11, i32 noundef %12, %struct.Random_struct* noundef %13)
  store double** %14, double*** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %15 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %15, %struct.Stopwatch_struct** %9, align 8
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %3, %27
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %17)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load double**, double*** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, 16
  call void @SOR_execute(i32 noundef %18, i32 noundef %19, double noundef 1.250000e+00, double** noundef %20, i32 noundef %22)
  %23 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %23)
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %30

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %10, align 4
  br label %16

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call double @SOR_num_flops(i32 noundef %31, i32 noundef %32, i32 noundef %33)
  %35 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  %36 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %35)
  %37 = fdiv double %34, %36
  %38 = fmul double %37, 0x3EB0C6F7A0B5ED8D
  store double %38, double* %8, align 8
  %39 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %39)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 noundef %40, i32 noundef %41, double** noundef %42)
  %43 = load double, double* %8, align 8
  ret double %43
}

declare dso_local double** @RandomMatrix(i32 noundef, i32 noundef, %struct.Random_struct* noundef) #1

declare dso_local void @SOR_execute(i32 noundef, i32 noundef, double noundef, double** noundef, i32 noundef) #1

declare dso_local double @SOR_num_flops(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @Array2D_double_delete(i32 noundef, i32 noundef, double** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureMonteCarlo(double noundef %0, %struct.Random_struct* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.Random_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.Stopwatch_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store %struct.Random_struct* %1, %struct.Random_struct** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %8 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %8, %struct.Stopwatch_struct** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %2, %18
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %10)
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 65536
  %13 = call double @MonteCarlo_integrate(i32 noundef %12)
  %14 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %14)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 4096
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %7, align 4
  br label %9

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call double @MonteCarlo_num_flops(i32 noundef %22)
  %24 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  %25 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %24)
  %26 = fdiv double %23, %25
  %27 = fmul double %26, 0x3EB0C6F7A0B5ED8D
  store double %27, double* %5, align 8
  %28 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %28)
  %29 = load double, double* %5, align 8
  ret double %29
}

declare dso_local double @MonteCarlo_integrate(i32 noundef) #1

declare dso_local double @MonteCarlo_num_flops(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSparseMatMult(i32 noundef %0, i32 noundef %1, double noundef %2, %struct.Random_struct* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.Random_struct*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.Stopwatch_struct*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store %struct.Random_struct* %3, %struct.Random_struct** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %25 = call double* @RandomVector(i32 noundef %23, %struct.Random_struct* noundef %24)
  store double* %25, double** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call noalias i8* @malloc(i64 noundef %28) #4
  %30 = bitcast i8* %29 to double*
  store double* %30, double** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %39 = call double* @RandomVector(i32 noundef %37, %struct.Random_struct* noundef %38)
  store double* %39, double** %14, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call noalias i8* @malloc(i64 noundef %42) #4
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %15, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = call noalias i8* @malloc(i64 noundef %48) #4
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %51 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %51, %struct.Stopwatch_struct** %19, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %53, align 4
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %97, %4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  store i32 1, i32* %21, align 4
  br label %78

78:                                               ; preds = %77, %58
  store i32 0, i32* %22, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %21, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %79, !llvm.loop !6

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %54, !llvm.loop !7

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %100, %115
  %102 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %102)
  %103 = load i32, i32* %5, align 4
  %104 = load double*, double** %10, align 8
  %105 = load double*, double** %14, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = load double*, double** %9, align 8
  %109 = load i32, i32* %18, align 4
  %110 = mul nsw i32 %109, 64
  call void @SparseCompRow_matmult(i32 noundef %103, double* noundef %104, double* noundef %105, i32* noundef %106, i32* noundef %107, double* noundef %108, i32 noundef %110)
  %111 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %111)
  %112 = load i32, i32* %18, align 4
  %113 = icmp sgt i32 %112, 4096
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %118

115:                                              ; preds = %101
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %116, 2
  store i32 %117, i32* %18, align 4
  br label %101

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call double @SparseCompRow_num_flops(i32 noundef %119, i32 noundef %120, i32 noundef %121)
  %123 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  %124 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %123)
  %125 = fdiv double %122, %124
  %126 = fmul double %125, 0x3EB0C6F7A0B5ED8D
  store double %126, double* %11, align 8
  %127 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %127)
  %128 = load i32*, i32** %16, align 8
  %129 = bitcast i32* %128 to i8*
  call void @free(i8* noundef %129) #4
  %130 = load i32*, i32** %15, align 8
  %131 = bitcast i32* %130 to i8*
  call void @free(i8* noundef %131) #4
  %132 = load double*, double** %14, align 8
  %133 = bitcast double* %132 to i8*
  call void @free(i8* noundef %133) #4
  %134 = load double*, double** %10, align 8
  %135 = bitcast double* %134 to i8*
  call void @free(i8* noundef %135) #4
  %136 = load double*, double** %9, align 8
  %137 = bitcast double* %136 to i8*
  call void @free(i8* noundef %137) #4
  %138 = load double, double* %11, align 8
  ret double %138
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local void @SparseCompRow_matmult(i32 noundef, double* noundef, double* noundef, i32* noundef, i32* noundef, double* noundef, i32 noundef) #1

declare dso_local double @SparseCompRow_num_flops(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureLU(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  store double** null, double*** %7, align 8
  store double** null, double*** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %14, %struct.Stopwatch_struct** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %18 = call double** @RandomMatrix(i32 noundef %15, i32 noundef %16, %struct.Random_struct* noundef %17)
  store double** %18, double*** %7, align 8
  %19 = icmp eq double** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @exit(i32 noundef 1) #5
  unreachable

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call double** @new_Array2D_double(i32 noundef %22, i32 noundef %23)
  store double** %24, double*** %8, align 8
  %25 = icmp eq double** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @exit(i32 noundef 1) #5
  unreachable

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 noundef %30) #4
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call void @exit(i32 noundef 1) #5
  unreachable

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %60
  %37 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %37)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %52, %36
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load double**, double*** %8, align 8
  %46 = load double**, double*** %7, align 8
  call void @Array2D_double_copy(i32 noundef %43, i32 noundef %44, double** noundef %45, double** noundef %46)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load double**, double*** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @LU_factor(i32 noundef %47, i32 noundef %48, double** noundef %49, i32* noundef %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %38, !llvm.loop !8

55:                                               ; preds = %38
  %56 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %56)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 4096
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %13, align 4
  br label %36

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = call double @LU_num_flops(i32 noundef %64)
  %66 = load i32, i32* %13, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double %65, %67
  %69 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %70 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %69)
  %71 = fdiv double %68, %70
  %72 = fmul double %71, 0x3EB0C6F7A0B5ED8D
  store double %72, double* %11, align 8
  %73 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %73)
  %74 = load i32*, i32** %9, align 8
  %75 = bitcast i32* %74 to i8*
  call void @free(i8* noundef %75) #4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load double**, double*** %8, align 8
  call void @Array2D_double_delete(i32 noundef %76, i32 noundef %77, double** noundef %78)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 noundef %79, i32 noundef %80, double** noundef %81)
  %82 = load double, double* %11, align 8
  ret double %82
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local double** @new_Array2D_double(i32 noundef, i32 noundef) #1

declare dso_local void @Array2D_double_copy(i32 noundef, i32 noundef, double** noundef, double** noundef) #1

declare dso_local i32 @LU_factor(i32 noundef, i32 noundef, double** noundef, i32* noundef) #1

declare dso_local double @LU_num_flops(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
