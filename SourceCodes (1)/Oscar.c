; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }
%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }

@seed = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global %struct.node* null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @Cos(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 1.000000e+00, float* %5, align 4
  store i32 1, i32* %4, align 4
  %7 = load float, float* %2, align 4
  store float %7, float* %6, align 4
  store i32 2, i32* %3, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 10
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load float, float* %6, align 4
  %16 = load float, float* %2, align 4
  %17 = fmul float %15, %16
  store float %17, float* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %27, %29
  %31 = fadd float %26, %30
  store float %31, float* %5, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load float, float* %5, align 4
  %34 = load float, float* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = fsub float %33, %37
  store float %38, float* %5, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %11
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %8, !llvm.loop !4

44:                                               ; preds = %8
  %45 = load float, float* %5, align 4
  ret float %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(%struct.complex* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.complex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.complex* %0, %struct.complex** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %50, %4
  %13 = load %struct.complex*, %struct.complex** %5, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.complex, %struct.complex* %13, i64 %15
  %17 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = load %struct.complex*, %struct.complex** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, %struct.complex* %20, i64 %22
  %24 = getelementptr inbounds %struct.complex, %struct.complex* %23, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %19, double noundef %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.complex*, %struct.complex** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, %struct.complex* %31, i64 %33
  %35 = getelementptr inbounds %struct.complex, %struct.complex* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  %38 = load %struct.complex*, %struct.complex** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, %struct.complex* %38, i64 %40
  %42 = getelementptr inbounds %struct.complex, %struct.complex* %41, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %37, double noundef %44)
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %12
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %12, label %54, !llvm.loop !6

54:                                               ; preds = %50
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(i32* noundef %0, float* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float*, align 8
  store i32* %0, i32** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 4855, %6
  %8 = add nsw i32 %7, 1731
  %9 = and i32 %8, 8191
  %10 = load i32*, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 8.192000e+03
  %15 = load float*, float** %4, align 8
  store float %14, float* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, %struct.complex* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.complex*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [26 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.complex* %1, %struct.complex** %4, align 8
  store float 0x400921FB60000000, float* %5, align 4
  store float 4.000000e+00, float* %6, align 4
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 25
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load float, float* %5, align 4
  %18 = load float, float* %6, align 4
  %19 = fdiv float %17, %18
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [26 x float], [26 x float]* %7, i64 0, i64 %24
  store float %22, float* %25, align 4
  %26 = load float, float* %6, align 4
  %27 = load float, float* %6, align 4
  %28 = fadd float %26, %27
  store float %28, float* %6, align 4
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  %33 = load i32, i32* %3, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %37 = load %struct.complex*, %struct.complex** %4, align 8
  %38 = getelementptr inbounds %struct.complex, %struct.complex* %37, i64 1
  %39 = getelementptr inbounds %struct.complex, %struct.complex* %38, i32 0, i32 0
  store float 1.000000e+00, float* %39, align 4
  %40 = load %struct.complex*, %struct.complex** %4, align 8
  %41 = getelementptr inbounds %struct.complex, %struct.complex* %40, i64 1
  %42 = getelementptr inbounds %struct.complex, %struct.complex* %41, i32 0, i32 1
  store float 0.000000e+00, float* %42, align 4
  %43 = load %struct.complex*, %struct.complex** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.complex, %struct.complex* %43, i64 %46
  %48 = getelementptr inbounds %struct.complex, %struct.complex* %47, i32 0, i32 0
  store float 0.000000e+00, float* %48, align 4
  %49 = load %struct.complex*, %struct.complex** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, %struct.complex* %49, i64 %52
  %54 = getelementptr inbounds %struct.complex, %struct.complex* %53, i32 0, i32 1
  store float 1.000000e+00, float* %54, align 4
  %55 = load %struct.complex*, %struct.complex** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.complex, %struct.complex* %55, i64 %58
  %60 = getelementptr inbounds %struct.complex, %struct.complex* %59, i32 0, i32 0
  store float -1.000000e+00, float* %60, align 4
  %61 = load %struct.complex*, %struct.complex** %4, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, %struct.complex* %61, i64 %64
  %66 = getelementptr inbounds %struct.complex, %struct.complex* %65, i32 0, i32 1
  store float 0.000000e+00, float* %66, align 4
  br label %67

67:                                               ; preds = %144, %32
  %68 = load i32, i32* %11, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %135, %67
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [26 x float], [26 x float]* %7, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load %struct.complex*, %struct.complex** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.complex, %struct.complex* %76, i64 %81
  %83 = getelementptr inbounds %struct.complex, %struct.complex* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = load %struct.complex*, %struct.complex** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.complex, %struct.complex* %85, i64 %90
  %92 = getelementptr inbounds %struct.complex, %struct.complex* %91, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = fadd float %84, %93
  %95 = fmul float %75, %94
  %96 = load %struct.complex*, %struct.complex** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.complex, %struct.complex* %96, i64 %99
  %101 = getelementptr inbounds %struct.complex, %struct.complex* %100, i32 0, i32 0
  store float %95, float* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [26 x float], [26 x float]* %7, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load %struct.complex*, %struct.complex** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.complex, %struct.complex* %106, i64 %111
  %113 = getelementptr inbounds %struct.complex, %struct.complex* %112, i32 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = load %struct.complex*, %struct.complex** %4, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.complex, %struct.complex* %115, i64 %120
  %122 = getelementptr inbounds %struct.complex, %struct.complex* %121, i32 0, i32 1
  %123 = load float, float* %122, align 4
  %124 = fadd float %114, %123
  %125 = fmul float %105, %124
  %126 = load %struct.complex*, %struct.complex** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.complex, %struct.complex* %126, i64 %129
  %131 = getelementptr inbounds %struct.complex, %struct.complex* %130, i32 0, i32 1
  store float %125, float* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %71
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %71, label %139, !llvm.loop !8

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  %142 = call i32 @Min0(i32 noundef %141, i32 noundef 25)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %67, label %147, !llvm.loop !9

147:                                              ; preds = %144
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, %struct.complex* noundef %1, %struct.complex* noundef %2, %struct.complex* noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.complex*, align 8
  %8 = alloca %struct.complex*, align 8
  %9 = alloca %struct.complex*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.complex* %1, %struct.complex** %7, align 8
  store %struct.complex* %2, %struct.complex** %8, align 8
  store %struct.complex* %3, %struct.complex** %9, align 8
  store float %4, float* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %211, %5
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %21

21:                                               ; preds = %185, %19
  br label %22

22:                                               ; preds = %176, %21
  %23 = load %struct.complex*, %struct.complex** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, %struct.complex* %23, i64 %25
  %27 = getelementptr inbounds %struct.complex, %struct.complex* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = load %struct.complex*, %struct.complex** %7, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, %struct.complex* %29, i64 %33
  %35 = getelementptr inbounds %struct.complex, %struct.complex* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fadd float %28, %36
  %38 = load %struct.complex*, %struct.complex** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, %struct.complex* %38, i64 %42
  %44 = getelementptr inbounds %struct.complex, %struct.complex* %43, i32 0, i32 0
  store float %37, float* %44, align 4
  %45 = load %struct.complex*, %struct.complex** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, %struct.complex* %45, i64 %47
  %49 = getelementptr inbounds %struct.complex, %struct.complex* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.complex*, %struct.complex** %7, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, %struct.complex* %51, i64 %55
  %57 = getelementptr inbounds %struct.complex, %struct.complex* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fadd float %50, %58
  %60 = load %struct.complex*, %struct.complex** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, %struct.complex* %60, i64 %64
  %66 = getelementptr inbounds %struct.complex, %struct.complex* %65, i32 0, i32 1
  store float %59, float* %66, align 4
  %67 = load %struct.complex*, %struct.complex** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.complex, %struct.complex* %67, i64 %70
  %72 = getelementptr inbounds %struct.complex, %struct.complex* %71, i32 0, i32 0
  %73 = load float, float* %72, align 4
  %74 = load %struct.complex*, %struct.complex** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, %struct.complex* %74, i64 %76
  %78 = getelementptr inbounds %struct.complex, %struct.complex* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = load %struct.complex*, %struct.complex** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, %struct.complex* %80, i64 %84
  %86 = getelementptr inbounds %struct.complex, %struct.complex* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fsub float %79, %87
  %89 = load %struct.complex*, %struct.complex** %9, align 8
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, %struct.complex* %89, i64 %92
  %94 = getelementptr inbounds %struct.complex, %struct.complex* %93, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = load %struct.complex*, %struct.complex** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, %struct.complex* %96, i64 %98
  %100 = getelementptr inbounds %struct.complex, %struct.complex* %99, i32 0, i32 1
  %101 = load float, float* %100, align 4
  %102 = load %struct.complex*, %struct.complex** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.complex, %struct.complex* %102, i64 %106
  %108 = getelementptr inbounds %struct.complex, %struct.complex* %107, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = fsub float %101, %109
  %111 = fmul float %95, %110
  %112 = fneg float %111
  %113 = call float @llvm.fmuladd.f32(float %73, float %88, float %112)
  %114 = load %struct.complex*, %struct.complex** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.complex, %struct.complex* %114, i64 %118
  %120 = getelementptr inbounds %struct.complex, %struct.complex* %119, i32 0, i32 0
  store float %113, float* %120, align 4
  %121 = load %struct.complex*, %struct.complex** %9, align 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.complex, %struct.complex* %121, i64 %124
  %126 = getelementptr inbounds %struct.complex, %struct.complex* %125, i32 0, i32 0
  %127 = load float, float* %126, align 4
  %128 = load %struct.complex*, %struct.complex** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.complex, %struct.complex* %128, i64 %130
  %132 = getelementptr inbounds %struct.complex, %struct.complex* %131, i32 0, i32 1
  %133 = load float, float* %132, align 4
  %134 = load %struct.complex*, %struct.complex** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.complex, %struct.complex* %134, i64 %138
  %140 = getelementptr inbounds %struct.complex, %struct.complex* %139, i32 0, i32 1
  %141 = load float, float* %140, align 4
  %142 = fsub float %133, %141
  %143 = load %struct.complex*, %struct.complex** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.complex, %struct.complex* %143, i64 %146
  %148 = getelementptr inbounds %struct.complex, %struct.complex* %147, i32 0, i32 1
  %149 = load float, float* %148, align 4
  %150 = load %struct.complex*, %struct.complex** %7, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.complex, %struct.complex* %150, i64 %152
  %154 = getelementptr inbounds %struct.complex, %struct.complex* %153, i32 0, i32 0
  %155 = load float, float* %154, align 4
  %156 = load %struct.complex*, %struct.complex** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.complex, %struct.complex* %156, i64 %160
  %162 = getelementptr inbounds %struct.complex, %struct.complex* %161, i32 0, i32 0
  %163 = load float, float* %162, align 4
  %164 = fsub float %155, %163
  %165 = fmul float %149, %164
  %166 = call float @llvm.fmuladd.f32(float %127, float %142, float %165)
  %167 = load %struct.complex*, %struct.complex** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.complex, %struct.complex* %167, i64 %171
  %173 = getelementptr inbounds %struct.complex, %struct.complex* %172, i32 0, i32 1
  store float %166, float* %173, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %22
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %22, label %180, !llvm.loop !10

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %21, label %189, !llvm.loop !11

189:                                              ; preds = %185
  store i32 1, i32* %16, align 4
  br label %190

190:                                              ; preds = %203, %189
  %191 = load %struct.complex*, %struct.complex** %7, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.complex, %struct.complex* %191, i64 %193
  %195 = load %struct.complex*, %struct.complex** %8, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.complex, %struct.complex* %195, i64 %197
  %199 = bitcast %struct.complex* %194 to i8*
  %200 = bitcast %struct.complex* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 %200, i64 8, i1 false)
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %190
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %190, label %207, !llvm.loop !12

207:                                              ; preds = %203
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %19, label %215, !llvm.loop !13

215:                                              ; preds = %211
  store i32 1, i32* %11, align 4
  br label %216

216:                                              ; preds = %248, %215
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %251

220:                                              ; preds = %216
  %221 = load float, float* %10, align 4
  %222 = load %struct.complex*, %struct.complex** %7, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.complex, %struct.complex* %222, i64 %224
  %226 = getelementptr inbounds %struct.complex, %struct.complex* %225, i32 0, i32 0
  %227 = load float, float* %226, align 4
  %228 = fmul float %221, %227
  %229 = load %struct.complex*, %struct.complex** %7, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.complex, %struct.complex* %229, i64 %231
  %233 = getelementptr inbounds %struct.complex, %struct.complex* %232, i32 0, i32 0
  store float %228, float* %233, align 4
  %234 = load float, float* %10, align 4
  %235 = fneg float %234
  %236 = load %struct.complex*, %struct.complex** %7, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.complex, %struct.complex* %236, i64 %238
  %240 = getelementptr inbounds %struct.complex, %struct.complex* %239, i32 0, i32 1
  %241 = load float, float* %240, align 4
  %242 = fmul float %235, %241
  %243 = load %struct.complex*, %struct.complex** %7, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.complex, %struct.complex* %243, i64 %245
  %247 = getelementptr inbounds %struct.complex, %struct.complex* %246, i32 0, i32 1
  store float %242, float* %247, align 4
  br label %248

248:                                              ; preds = %220
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %216, !llvm.loop !14

251:                                              ; preds = %216
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, %struct.complex* noundef getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i64 0, i64 0))
  store i64 5767, i64* @seed, align 8
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = load i64, i64* @seed, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4
  call void @Uniform11(i32* noundef %2, float* noundef @zr)
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* @seed, align 8
  call void @Uniform11(i32* noundef %2, float* noundef @zi)
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* @seed, align 8
  %13 = load float, float* @zr, align 4
  %14 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %13, float -1.000000e+01)
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  store float %14, float* %18, align 8
  %19 = load float, float* @zi, align 4
  %20 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %19, float -1.000000e+01)
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.complex, %struct.complex* %23, i32 0, i32 1
  store float %20, float* %24, align 4
  br label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3, !llvm.loop !15

28:                                               ; preds = %3
  store i32 1, i32* %1, align 4
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp sle i32 %30, 20
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  call void @Fft(i32 noundef 256, %struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 0), %struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @w, i64 0, i64 0), %struct.complex* noundef getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i64 0, i64 0), float noundef 6.250000e-02)
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %29, !llvm.loop !16

36:                                               ; preds = %29
  call void @Printcomplex(%struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 0), i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  call void @Oscar()
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %3, !llvm.loop !17

10:                                               ; preds = %3
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
