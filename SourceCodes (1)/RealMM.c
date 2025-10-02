; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { double, double }

@seed = dso_local global i64 0, align 8
@rma = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@value = dso_local global double 0.000000e+00, align 8
@fixed = dso_local global double 0.000000e+00, align 8
@floated = dso_local global double 0.000000e+00, align 8
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global double 0.000000e+00, align 8
@zi = dso_local global double 0.000000e+00, align 8

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
define dso_local void @rInitmatrix([41 x double]* noundef %0) #0 {
  %2 = alloca [41 x double]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store [41 x double]* %0, [41 x double]** %2, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 40
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = call i32 @Rand()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 120
  %18 = mul nsw i32 %17, 120
  %19 = sub nsw i32 %15, %18
  %20 = sub nsw i32 %19, 60
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 3.000000e+00
  %23 = load [41 x double]*, [41 x double]** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [41 x double], [41 x double]* %23, i64 %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [41 x double], [41 x double]* %26, i64 0, i64 %28
  store double %22, double* %29, align 8
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10, !llvm.loop !4

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6, !llvm.loop !6

37:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(double* noundef %0, [41 x double]* noundef %1, [41 x double]* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca [41 x double]*, align 8
  %8 = alloca [41 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double* %0, double** %6, align 8
  store [41 x double]* %1, [41 x double]** %7, align 8
  store [41 x double]* %2, [41 x double]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %37, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp sle i32 %14, 40
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load double*, double** %6, align 8
  %18 = load double, double* %17, align 8
  %19 = load [41 x double]*, [41 x double]** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [41 x double], [41 x double]* %19, i64 %21
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x double], [41 x double]* %22, i64 0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load [41 x double]*, [41 x double]** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [41 x double], [41 x double]* %27, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [41 x double], [41 x double]* %30, i64 0, i64 %32
  %34 = load double, double* %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %26, double %34, double %18)
  %36 = load double*, double** %6, align 8
  store double %35, double* %36, align 8
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %13, !llvm.loop !7

40:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @Initrand()
  call void @rInitmatrix([41 x double]* noundef getelementptr inbounds ([41 x [41 x double]], [41 x [41 x double]]* @rma, i64 0, i64 0))
  call void @rInitmatrix([41 x double]* noundef getelementptr inbounds ([41 x [41 x double]], [41 x [41 x double]]* @rmb, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 40
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [41 x [41 x double]], [41 x [41 x double]]* @rmr, i64 0, i64 %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [41 x double], [41 x double]* %15, i64 0, i64 %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  call void @rInnerproduct(double* noundef %18, [41 x double]* noundef getelementptr inbounds ([41 x [41 x double]], [41 x [41 x double]]* @rma, i64 0, i64 0), [41 x double]* noundef getelementptr inbounds ([41 x [41 x double]], [41 x [41 x double]]* @rmb, i64 0, i64 0), i32 noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9, !llvm.loop !8

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5, !llvm.loop !9

28:                                               ; preds = %5
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [41 x [41 x double]], [41 x [41 x double]]* @rmr, i64 0, i64 %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [41 x double], [41 x double]* %32, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %37)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %8, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  call void @Mm(i32 noundef %7)
  br label %8

8:                                                ; preds = %6
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %3, !llvm.loop !10

11:                                               ; preds = %3
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
