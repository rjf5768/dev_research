; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/XSutils.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/XSutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }
%struct.GridPoint = type { double, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@rn_v.seed = internal global i64 1337, align 8
@.str = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NuclideGridPoint** @gpmatrix(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.NuclideGridPoint*, align 8
  %8 = alloca %struct.NuclideGridPoint**, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = mul i64 %9, %10
  %12 = mul i64 %11, 48
  %13 = call noalias i8* @malloc(i64 noundef %12) #4
  %14 = bitcast i8* %13 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %14, %struct.NuclideGridPoint** %7, align 8
  %15 = load i64, i64* %3, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 noundef %16) #4
  %18 = bitcast i8* %17 to %struct.NuclideGridPoint**
  store %struct.NuclideGridPoint** %18, %struct.NuclideGridPoint*** %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %22, %23
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = urem i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %33, i64 %35
  %37 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %37, i64 %40
  store %struct.NuclideGridPoint* %36, %struct.NuclideGridPoint** %41, align 8
  br label %42

42:                                               ; preds = %32, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %19, !llvm.loop !4

46:                                               ; preds = %19
  %47 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %8, align 8
  ret %struct.NuclideGridPoint** %47
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gpmatrix_free(%struct.NuclideGridPoint** noundef %0) #0 {
  %2 = alloca %struct.NuclideGridPoint**, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %2, align 8
  %3 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %2, align 8
  %4 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %3, align 8
  %5 = bitcast %struct.NuclideGridPoint* %4 to i8*
  call void @free(i8* noundef %5) #4
  %6 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %2, align 8
  %7 = bitcast %struct.NuclideGridPoint** %6 to i8*
  call void @free(i8* noundef %7) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NGP_compare(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NuclideGridPoint*, align 8
  %7 = alloca %struct.NuclideGridPoint*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %9, %struct.NuclideGridPoint** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %11, %struct.NuclideGridPoint** %7, align 8
  %12 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %6, align 8
  %13 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %16 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fcmp ogt double %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %6, align 8
  %22 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fcmp olt double %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @binary_search(%struct.NuclideGridPoint* noundef %0, double noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.NuclideGridPoint*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.NuclideGridPoint* %0, %struct.NuclideGridPoint** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %14 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %13, i64 0
  %15 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load double, double* %6, align 8
  %18 = fcmp ogt double %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %21, i64 %24
  %26 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load double, double* %6, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 2.000000e+00
  %47 = call double @llvm.floor.f64(double %46)
  %48 = fadd double %41, %47
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %50, i64 %52
  %54 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %53, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = load double, double* %6, align 8
  %57 = fcmp olt double %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %76

61:                                               ; preds = %39
  %62 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %62, i64 %64
  %66 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = load double, double* %6, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %58
  br label %35, !llvm.loop !6

77:                                               ; preds = %35
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %73, %30, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @rn(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 16807, i64* %5, align 8
  store i64 2147483647, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = load i64, i64* %8, align 8
  %10 = mul i64 %7, %9
  %11 = load i64, i64* %6, align 8
  %12 = urem i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = uitofp i64 %15 to double
  %17 = load i64, i64* %6, align 8
  %18 = uitofp i64 %17 to double
  %19 = fdiv double %16, %18
  store double %19, double* %3, align 8
  %20 = load double, double* %3, align 8
  ret double %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @rn_v() #0 {
  %1 = alloca double, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 16807, i64* %3, align 8
  store i64 2147483647, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @rn_v.seed, align 8
  %7 = mul i64 %5, %6
  %8 = load i64, i64* %4, align 8
  %9 = urem i64 %7, %8
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* @rn_v.seed, align 8
  %11 = load i64, i64* %2, align 8
  %12 = uitofp i64 %11 to double
  %13 = load i64, i64* %4, align 8
  %14 = uitofp i64 %13 to double
  %15 = fdiv double %12, %14
  store double %15, double* %1, align 8
  %16 = load double, double* %1, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hash(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 5381, i32* %5, align 4
  br label %7

7:                                                ; preds = %13, %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = load i8, i8* %8, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 5
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %7, !llvm.loop !7

20:                                               ; preds = %7
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = urem i32 %21, %22
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @estimate_mem_usage(%struct.Inputs* noundef byval(%struct.Inputs) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %8, 48
  store i64 %9, i64* %2, align 8
  %10 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %15, 4
  %17 = add i64 16, %16
  store i64 %17, i64* %4, align 8
  %18 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = mul nsw i64 %19, %21
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = udiv i64 %28, 1048576
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = udiv i64 %30, 1048576
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = udiv i64 %32, 1048576
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_dump(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** noundef %2, %struct.GridPoint* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.NuclideGridPoint**, align 8
  %8 = alloca %struct.GridPoint*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %7, align 8
  store %struct.GridPoint* %3, %struct.GridPoint** %8, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %26, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, i64 %19
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %20, align 8
  %22 = bitcast %struct.NuclideGridPoint* %21 to i8*
  %23 = load i64, i64* %6, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %25 = call i64 @fwrite(i8* noundef %22, i64 noundef 48, i64 noundef %23, %struct._IO_FILE* noundef %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  br label %13, !llvm.loop !8

29:                                               ; preds = %13
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = mul nsw i64 %32, %33
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %37, i64 %38
  %40 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %39, i32 0, i32 0
  %41 = bitcast double* %40 to i8*
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %43 = call i64 @fwrite(i8* noundef %41, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %42)
  %44 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %44, i64 %45
  %47 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i64, i64* %5, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %52 = call i64 @fwrite(i8* noundef %49, i64 noundef 4, i64 noundef %50, %struct._IO_FILE* noundef %51)
  br label %53

53:                                               ; preds = %36
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %30, !llvm.loop !9

56:                                               ; preds = %30
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %58 = call i32 @fclose(%struct._IO_FILE* noundef %57)
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_read(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** noundef %2, %struct.GridPoint* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.NuclideGridPoint**, align 8
  %8 = alloca %struct.GridPoint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %7, align 8
  store %struct.GridPoint* %3, %struct.GridPoint** %8, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %28, %4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %7, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, i64 %20
  %22 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %21, align 8
  %23 = bitcast %struct.NuclideGridPoint* %22 to i8*
  %24 = load i64, i64* %6, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i64 @fread(i8* noundef %23, i64 noundef 48, i64 noundef %24, %struct._IO_FILE* noundef %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %11, align 8
  br label %14, !llvm.loop !10

31:                                               ; preds = %14
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul nsw i64 %34, %35
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %39, i64 %40
  %42 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %41, i32 0, i32 0
  %43 = bitcast double* %42 to i8*
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %45 = call i64 @fread(i8* noundef %43, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %47, i64 %48
  %50 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i64, i64* %5, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %55 = call i64 @fread(i8* noundef %52, i64 noundef 4, i64 noundef %53, %struct._IO_FILE* noundef %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %38
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %32, !llvm.loop !11

60:                                               ; preds = %32
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %62 = call i32 @fclose(%struct._IO_FILE* noundef %61)
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
