; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/initAtoms.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/initAtoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.SimFlatSt = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt*, %struct.HaloExchangeSt* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.HaloExchangeSt = type { [6 x i32], i32, i32 (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)*, void (i8*)*, i8* }

@__const.createFccLattice.basis = private unnamed_addr constant [4 x [3 x double]] [[3 x double] [double 2.500000e-01, double 2.500000e-01, double 2.500000e-01], [3 x double] [double 2.500000e-01, double 7.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 2.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 7.500000e-01, double 2.500000e-01]], align 16
@.str = private unnamed_addr constant [33 x i8] c"s->atoms->nGlobal == nb*nx*ny*nz\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/initAtoms.c\00", align 1
@__PRETTY_FUNCTION__.createFccLattice = private unnamed_addr constant [56 x i8] c"void createFccLattice(int, int, int, real_t, SimFlat *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* noundef %0) #0 {
  %2 = alloca %struct.LinkCellSt*, align 8
  %3 = alloca %struct.AtomsSt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %2, align 8
  %6 = call i8* @comdMalloc(i64 noundef 56)
  %7 = bitcast i8* %6 to %struct.AtomsSt*
  store %struct.AtomsSt* %7, %struct.AtomsSt** %3, align 8
  %8 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %9 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 64, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call i8* @comdMalloc(i64 noundef %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %18 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = call i8* @comdMalloc(i64 noundef %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 24
  %29 = call i8* @comdMalloc(i64 noundef %28)
  %30 = bitcast i8* %29 to [3 x double]*
  %31 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %32 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %31, i32 0, i32 4
  store [3 x double]* %30, [3 x double]** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 24
  %36 = call i8* @comdMalloc(i64 noundef %35)
  %37 = bitcast i8* %36 to [3 x double]*
  %38 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %39 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %38, i32 0, i32 5
  store [3 x double]* %37, [3 x double]** %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  %43 = call i8* @comdMalloc(i64 noundef %42)
  %44 = bitcast i8* %43 to [3 x double]*
  %45 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %46 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %45, i32 0, i32 6
  store [3 x double]* %44, [3 x double]** %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = call i8* @comdMalloc(i64 noundef %49)
  %51 = bitcast i8* %50 to double*
  %52 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %53 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %52, i32 0, i32 7
  store double* %51, double** %53, align 8
  %54 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %55 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %102, %1
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %64 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %70 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  %75 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %76 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %75, i32 0, i32 4
  %77 = load [3 x double]*, [3 x double]** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x double], [3 x double]* %77, i64 %79
  %81 = getelementptr inbounds [3 x double], [3 x double]* %80, i64 0, i64 0
  call void @zeroReal3(double* noundef %81)
  %82 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %83 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %82, i32 0, i32 5
  %84 = load [3 x double]*, [3 x double]** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x double], [3 x double]* %84, i64 %86
  %88 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 0, i64 0
  call void @zeroReal3(double* noundef %88)
  %89 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %90 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %89, i32 0, i32 6
  %91 = load [3 x double]*, [3 x double]** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 %93
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 0
  call void @zeroReal3(double* noundef %95)
  %96 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  %97 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %96, i32 0, i32 7
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  store double 0.000000e+00, double* %101, align 8
  br label %102

102:                                              ; preds = %62
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %58, !llvm.loop !4

105:                                              ; preds = %58
  %106 = load %struct.AtomsSt*, %struct.AtomsSt** %3, align 8
  ret %struct.AtomsSt* %106
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #7
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @zeroReal3(double* noundef %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  %4 = getelementptr inbounds double, double* %3, i64 0
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %2, align 8
  %6 = getelementptr inbounds double, double* %5, i64 1
  store double 0.000000e+00, double* %6, align 8
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 2
  store double 0.000000e+00, double* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroyAtoms(%struct.AtomsSt* noundef %0) #0 {
  %2 = alloca %struct.AtomsSt*, align 8
  store %struct.AtomsSt* %0, %struct.AtomsSt** %2, align 8
  %3 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %4 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %9 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to i8*
  call void @comdFree(i8* noundef %11)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %14 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %16 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %21 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8*
  call void @comdFree(i8* noundef %23)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %26 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %28 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %27, i32 0, i32 4
  %29 = load [3 x double]*, [3 x double]** %28, align 8
  %30 = icmp ne [3 x double]* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %33 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %32, i32 0, i32 4
  %34 = load [3 x double]*, [3 x double]** %33, align 8
  %35 = bitcast [3 x double]* %34 to i8*
  call void @comdFree(i8* noundef %35)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %38 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %37, i32 0, i32 4
  store [3 x double]* null, [3 x double]** %38, align 8
  %39 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %40 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %39, i32 0, i32 5
  %41 = load [3 x double]*, [3 x double]** %40, align 8
  %42 = icmp ne [3 x double]* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %45 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %44, i32 0, i32 5
  %46 = load [3 x double]*, [3 x double]** %45, align 8
  %47 = bitcast [3 x double]* %46 to i8*
  call void @comdFree(i8* noundef %47)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %50 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %49, i32 0, i32 5
  store [3 x double]* null, [3 x double]** %50, align 8
  %51 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %52 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %51, i32 0, i32 6
  %53 = load [3 x double]*, [3 x double]** %52, align 8
  %54 = icmp ne [3 x double]* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i32 0, i32 6
  %58 = load [3 x double]*, [3 x double]** %57, align 8
  %59 = bitcast [3 x double]* %58 to i8*
  call void @comdFree(i8* noundef %59)
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %62 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %61, i32 0, i32 6
  store [3 x double]* null, [3 x double]** %62, align 8
  %63 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %64 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %63, i32 0, i32 7
  %65 = load double*, double** %64, align 8
  %66 = icmp ne double* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %69 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %68, i32 0, i32 7
  %70 = load double*, double** %69, align 8
  %71 = bitcast double* %70 to i8*
  call void @comdFree(i8* noundef %71)
  br label %72

72:                                               ; preds = %67, %60
  %73 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %74 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %73, i32 0, i32 7
  store double* null, double** %74, align 8
  %75 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %76 = bitcast %struct.AtomsSt* %75 to i8*
  call void @comdFree(i8* noundef %76)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @createFccLattice(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, %struct.SimFlatSt* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.SimFlatSt*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x [3 x double]], align 16
  %15 = alloca [3 x i32], align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store %struct.SimFlatSt* %4, %struct.SimFlatSt** %10, align 8
  %29 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %29, i32 0, i32 3
  %31 = load %struct.DomainSt*, %struct.DomainSt** %30, align 8
  %32 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %31, i32 0, i32 5
  %33 = getelementptr inbounds [3 x double], [3 x double]* %32, i64 0, i64 0
  store double* %33, double** %11, align 8
  %34 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %35 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %34, i32 0, i32 3
  %36 = load %struct.DomainSt*, %struct.DomainSt** %35, align 8
  %37 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %36, i32 0, i32 6
  %38 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 0, i64 0
  store double* %38, double** %12, align 8
  store i32 4, i32* %13, align 4
  %39 = bitcast [4 x [3 x double]]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([4 x [3 x double]]* @__const.createFccLattice.basis to i8*), i64 96, i1 false)
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %68, %5
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load double*, double** %11, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double, double* %9, align 8
  %50 = fdiv double %48, %49
  %51 = call double @llvm.floor.f64(double %50)
  %52 = fptosi double %51 to i32
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load double*, double** %12, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load double, double* %9, align 8
  %62 = fdiv double %60, %61
  %63 = call double @llvm.ceil.f64(double %62)
  %64 = fptosi double %63 to i32
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %40, !llvm.loop !6

71:                                               ; preds = %40
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %18, align 8
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %21, align 4
  br label %74

74:                                               ; preds = %208, %71
  %75 = load i32, i32* %21, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %211

79:                                               ; preds = %74
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %22, align 4
  br label %82

82:                                               ; preds = %204, %79
  %83 = load i32, i32* %22, align 4
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %207

87:                                               ; preds = %82
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %23, align 4
  br label %90

90:                                               ; preds = %200, %87
  %91 = load i32, i32* %23, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %203

95:                                               ; preds = %90
  store i32 0, i32* %24, align 4
  br label %96

96:                                               ; preds = %196, %95
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %199

100:                                              ; preds = %96
  %101 = load i32, i32* %21, align 4
  %102 = sitofp i32 %101 to double
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %14, i64 0, i64 %104
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 0
  %107 = load double, double* %106, align 8
  %108 = fadd double %102, %107
  %109 = load double, double* %9, align 8
  %110 = fmul double %108, %109
  store double %110, double* %25, align 8
  %111 = load i32, i32* %22, align 4
  %112 = sitofp i32 %111 to double
  %113 = load i32, i32* %24, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %14, i64 0, i64 %114
  %116 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 0, i64 1
  %117 = load double, double* %116, align 8
  %118 = fadd double %112, %117
  %119 = load double, double* %9, align 8
  %120 = fmul double %118, %119
  store double %120, double* %26, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sitofp i32 %121 to double
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %14, i64 0, i64 %124
  %126 = getelementptr inbounds [3 x double], [3 x double]* %125, i64 0, i64 2
  %127 = load double, double* %126, align 8
  %128 = fadd double %122, %127
  %129 = load double, double* %9, align 8
  %130 = fmul double %128, %129
  store double %130, double* %27, align 8
  %131 = load double, double* %25, align 8
  %132 = load double*, double** %11, align 8
  %133 = getelementptr inbounds double, double* %132, i64 0
  %134 = load double, double* %133, align 8
  %135 = fcmp olt double %131, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %100
  %137 = load double, double* %25, align 8
  %138 = load double*, double** %12, align 8
  %139 = getelementptr inbounds double, double* %138, i64 0
  %140 = load double, double* %139, align 8
  %141 = fcmp oge double %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136, %100
  br label %196

143:                                              ; preds = %136
  %144 = load double, double* %26, align 8
  %145 = load double*, double** %11, align 8
  %146 = getelementptr inbounds double, double* %145, i64 1
  %147 = load double, double* %146, align 8
  %148 = fcmp olt double %144, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load double, double* %26, align 8
  %151 = load double*, double** %12, align 8
  %152 = getelementptr inbounds double, double* %151, i64 1
  %153 = load double, double* %152, align 8
  %154 = fcmp oge double %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %143
  br label %196

156:                                              ; preds = %149
  %157 = load double, double* %27, align 8
  %158 = load double*, double** %11, align 8
  %159 = getelementptr inbounds double, double* %158, i64 2
  %160 = load double, double* %159, align 8
  %161 = fcmp olt double %157, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load double, double* %27, align 8
  %164 = load double*, double** %12, align 8
  %165 = getelementptr inbounds double, double* %164, i64 2
  %166 = load double, double* %165, align 8
  %167 = fcmp oge double %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %156
  br label %196

169:                                              ; preds = %162
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %21, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = mul nsw i32 %173, %178
  %180 = add nsw i32 %172, %179
  %181 = mul nsw i32 %171, %180
  %182 = add nsw i32 %170, %181
  store i32 %182, i32* %28, align 4
  %183 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %184 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %183, i32 0, i32 4
  %185 = load %struct.LinkCellSt*, %struct.LinkCellSt** %184, align 8
  %186 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %187 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %186, i32 0, i32 5
  %188 = load %struct.AtomsSt*, %struct.AtomsSt** %187, align 8
  %189 = load i32, i32* %28, align 4
  %190 = load double, double* %25, align 8
  %191 = load double, double* %26, align 8
  %192 = load double, double* %27, align 8
  %193 = load double, double* %18, align 8
  %194 = load double, double* %19, align 8
  %195 = load double, double* %20, align 8
  call void @putAtomInBox(%struct.LinkCellSt* noundef %185, %struct.AtomsSt* noundef %188, i32 noundef %189, i32 noundef 0, double noundef %190, double noundef %191, double noundef %192, double noundef %193, double noundef %194, double noundef %195)
  br label %196

196:                                              ; preds = %169, %168, %155, %142
  %197 = load i32, i32* %24, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %24, align 4
  br label %96, !llvm.loop !7

199:                                              ; preds = %96
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %23, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %23, align 4
  br label %90, !llvm.loop !8

203:                                              ; preds = %90
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %22, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %22, align 4
  br label %82, !llvm.loop !9

207:                                              ; preds = %82
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  br label %74, !llvm.loop !10

211:                                              ; preds = %74
  br label %212

212:                                              ; preds = %211
  call void @profileStart(i32 noundef 10)
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %215 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %214, i32 0, i32 5
  %216 = load %struct.AtomsSt*, %struct.AtomsSt** %215, align 8
  %217 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %216, i32 0, i32 0
  %218 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %219 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %218, i32 0, i32 5
  %220 = load %struct.AtomsSt*, %struct.AtomsSt** %219, align 8
  %221 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %220, i32 0, i32 1
  call void @addIntParallel(i32* noundef %217, i32* noundef %221, i32 noundef 1)
  br label %222

222:                                              ; preds = %213
  call void @profileStop(i32 noundef 10)
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.SimFlatSt*, %struct.SimFlatSt** %10, align 8
  %225 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %224, i32 0, i32 5
  %226 = load %struct.AtomsSt*, %struct.AtomsSt** %225, align 8
  %227 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %6, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %7, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %8, align 4
  %235 = mul nsw i32 %233, %234
  %236 = icmp eq i32 %228, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %223
  br label %239

238:                                              ; preds = %223
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.createFccLattice, i64 0, i64 0)) #8
  unreachable

239:                                              ; preds = %237
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local void @putAtomInBox(%struct.LinkCellSt* noundef, %struct.AtomsSt* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #3

declare dso_local void @profileStart(i32 noundef) #3

declare dso_local void @addIntParallel(i32* noundef, i32* noundef, i32 noundef) #3

declare dso_local void @profileStop(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @setVcm(%struct.SimFlatSt* noundef %0, double* noundef %1) #0 {
  %3 = alloca %struct.SimFlatSt*, align 8
  %4 = alloca double*, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %3, align 8
  store double* %1, double** %4, align 8
  %12 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  call void @computeVcm(%struct.SimFlatSt* noundef %12, double* noundef %13)
  %14 = load double*, double** %4, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %18 = load double, double* %17, align 16
  %19 = fsub double %16, %18
  %20 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  store double %19, double* %20, align 16
  %21 = load double*, double** %4, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %25 = load double, double* %24, align 8
  %26 = fsub double %23, %25
  %27 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  store double %26, double* %27, align 8
  %28 = load double*, double** %4, align 8
  %29 = getelementptr inbounds double, double* %28, i64 2
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %32 = load double, double* %31, align 16
  %33 = fsub double %30, %32
  %34 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  store double %33, double* %34, align 16
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %124, %2
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %38 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %37, i32 0, i32 4
  %39 = load %struct.LinkCellSt*, %struct.LinkCellSt** %38, align 8
  %40 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %127

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 64, %44
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %118, %43
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %49 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %48, i32 0, i32 4
  %50 = load %struct.LinkCellSt*, %struct.LinkCellSt** %49, align 8
  %51 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %47, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %46
  %59 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %60 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %59, i32 0, i32 5
  %61 = load %struct.AtomsSt*, %struct.AtomsSt** %60, align 8
  %62 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %69 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %68, i32 0, i32 6
  %70 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %70, i64 %72
  %74 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %73, i32 0, i32 2
  %75 = load double, double* %74, align 8
  store double %75, double* %11, align 8
  %76 = load double, double* %11, align 8
  %77 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %78 = load double, double* %77, align 16
  %79 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %80 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %79, i32 0, i32 5
  %81 = load %struct.AtomsSt*, %struct.AtomsSt** %80, align 8
  %82 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %81, i32 0, i32 5
  %83 = load [3 x double]*, [3 x double]** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 %85
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 0
  %88 = load double, double* %87, align 8
  %89 = call double @llvm.fmuladd.f64(double %76, double %78, double %88)
  store double %89, double* %87, align 8
  %90 = load double, double* %11, align 8
  %91 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %92 = load double, double* %91, align 8
  %93 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %94 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %93, i32 0, i32 5
  %95 = load %struct.AtomsSt*, %struct.AtomsSt** %94, align 8
  %96 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %95, i32 0, i32 5
  %97 = load [3 x double]*, [3 x double]** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x double], [3 x double]* %97, i64 %99
  %101 = getelementptr inbounds [3 x double], [3 x double]* %100, i64 0, i64 1
  %102 = load double, double* %101, align 8
  %103 = call double @llvm.fmuladd.f64(double %90, double %92, double %102)
  store double %103, double* %101, align 8
  %104 = load double, double* %11, align 8
  %105 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %106 = load double, double* %105, align 16
  %107 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %108 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %107, i32 0, i32 5
  %109 = load %struct.AtomsSt*, %struct.AtomsSt** %108, align 8
  %110 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %109, i32 0, i32 5
  %111 = load [3 x double]*, [3 x double]** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 %113
  %115 = getelementptr inbounds [3 x double], [3 x double]* %114, i64 0, i64 2
  %116 = load double, double* %115, align 8
  %117 = call double @llvm.fmuladd.f64(double %104, double %106, double %116)
  store double %117, double* %115, align 8
  br label %118

118:                                              ; preds = %58
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %46, !llvm.loop !11

123:                                              ; preds = %46
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %35, !llvm.loop !12

127:                                              ; preds = %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @computeVcm(%struct.SimFlatSt* noundef %0, double* noundef %1) #0 {
  %3 = alloca %struct.SimFlatSt*, align 8
  %4 = alloca double*, align 8
  %5 = alloca [4 x double], align 16
  %6 = alloca [4 x double], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %3, align 8
  store double* %1, double** %4, align 8
  %12 = bitcast [4 x double]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = bitcast [4 x double]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %103, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %17 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %16, i32 0, i32 4
  %18 = load %struct.LinkCellSt*, %struct.LinkCellSt** %17, align 8
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 64, %23
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %97, %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %27, i32 0, i32 4
  %29 = load %struct.LinkCellSt*, %struct.LinkCellSt** %28, align 8
  %30 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %26, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %25
  %38 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %38, i32 0, i32 5
  %40 = load %struct.AtomsSt*, %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %40, i32 0, i32 5
  %42 = load [3 x double]*, [3 x double]** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 %44
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %49 = load double, double* %48, align 16
  %50 = fadd double %49, %47
  store double %50, double* %48, align 16
  %51 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %52 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %51, i32 0, i32 5
  %53 = load %struct.AtomsSt*, %struct.AtomsSt** %52, align 8
  %54 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %53, i32 0, i32 5
  %55 = load [3 x double]*, [3 x double]** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 %57
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 1
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  %62 = load double, double* %61, align 8
  %63 = fadd double %62, %60
  store double %63, double* %61, align 8
  %64 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %65 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %64, i32 0, i32 5
  %66 = load %struct.AtomsSt*, %struct.AtomsSt** %65, align 8
  %67 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %66, i32 0, i32 5
  %68 = load [3 x double]*, [3 x double]** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 %70
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 2
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  %75 = load double, double* %74, align 16
  %76 = fadd double %75, %73
  store double %76, double* %74, align 16
  %77 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %78 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %77, i32 0, i32 5
  %79 = load %struct.AtomsSt*, %struct.AtomsSt** %78, align 8
  %80 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %87 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %86, i32 0, i32 6
  %88 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %88, i64 %90
  %92 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %91, i32 0, i32 2
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %95 = load double, double* %94, align 8
  %96 = fadd double %95, %93
  store double %96, double* %94, align 8
  br label %97

97:                                               ; preds = %37
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %25, !llvm.loop !13

102:                                              ; preds = %25
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %14, !llvm.loop !14

106:                                              ; preds = %14
  br label %107

107:                                              ; preds = %106
  call void @profileStart(i32 noundef 10)
  br label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %110 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  call void @addRealParallel(double* noundef %109, double* noundef %110, i32 noundef 4)
  br label %111

111:                                              ; preds = %108
  call void @profileStop(i32 noundef 10)
  br label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  %114 = load double, double* %113, align 8
  store double %114, double* %11, align 8
  %115 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %116 = load double, double* %115, align 16
  %117 = load double, double* %11, align 8
  %118 = fdiv double %116, %117
  %119 = load double*, double** %4, align 8
  %120 = getelementptr inbounds double, double* %119, i64 0
  store double %118, double* %120, align 8
  %121 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  %122 = load double, double* %121, align 8
  %123 = load double, double* %11, align 8
  %124 = fdiv double %122, %123
  %125 = load double*, double** %4, align 8
  %126 = getelementptr inbounds double, double* %125, i64 1
  store double %124, double* %126, align 8
  %127 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  %128 = load double, double* %127, align 16
  %129 = load double, double* %11, align 8
  %130 = fdiv double %128, %129
  %131 = load double*, double** %4, align 8
  %132 = getelementptr inbounds double, double* %131, i64 2
  store double %130, double* %132, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @setTemperature(%struct.SimFlatSt* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.SimFlatSt*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x double], align 16
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %3, align 8
  store double %1, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %122, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %21 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %20, i32 0, i32 4
  %22 = load %struct.LinkCellSt*, %struct.LinkCellSt** %21, align 8
  %23 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %125

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 64, %27
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %116, %26
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %32 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %31, i32 0, i32 4
  %33 = load %struct.LinkCellSt*, %struct.LinkCellSt** %32, align 8
  %34 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %30, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %29
  %42 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %43 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %42, i32 0, i32 5
  %44 = load %struct.AtomsSt*, %struct.AtomsSt** %43, align 8
  %45 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %52 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %51, i32 0, i32 6
  %53 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %53, i64 %55
  %57 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %56, i32 0, i32 2
  %58 = load double, double* %57, align 8
  store double %58, double* %9, align 8
  %59 = load double, double* %4, align 8
  %60 = fmul double 0x3F1696FE6EF7EB54, %59
  %61 = load double, double* %9, align 8
  %62 = fdiv double %60, %61
  %63 = call double @sqrt(double noundef %62) #7
  store double %63, double* %10, align 8
  %64 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %65 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %64, i32 0, i32 5
  %66 = load %struct.AtomsSt*, %struct.AtomsSt** %65, align 8
  %67 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @mkSeed(i32 noundef %72, i32 noundef 123)
  store i64 %73, i64* %11, align 8
  %74 = load double, double* %9, align 8
  %75 = load double, double* %10, align 8
  %76 = fmul double %74, %75
  %77 = call double @gasdev(i64* noundef %11)
  %78 = fmul double %76, %77
  %79 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %80 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %79, i32 0, i32 5
  %81 = load %struct.AtomsSt*, %struct.AtomsSt** %80, align 8
  %82 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %81, i32 0, i32 5
  %83 = load [3 x double]*, [3 x double]** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 %85
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 0
  store double %78, double* %87, align 8
  %88 = load double, double* %9, align 8
  %89 = load double, double* %10, align 8
  %90 = fmul double %88, %89
  %91 = call double @gasdev(i64* noundef %11)
  %92 = fmul double %90, %91
  %93 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %94 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %93, i32 0, i32 5
  %95 = load %struct.AtomsSt*, %struct.AtomsSt** %94, align 8
  %96 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %95, i32 0, i32 5
  %97 = load [3 x double]*, [3 x double]** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x double], [3 x double]* %97, i64 %99
  %101 = getelementptr inbounds [3 x double], [3 x double]* %100, i64 0, i64 1
  store double %92, double* %101, align 8
  %102 = load double, double* %9, align 8
  %103 = load double, double* %10, align 8
  %104 = fmul double %102, %103
  %105 = call double @gasdev(i64* noundef %11)
  %106 = fmul double %104, %105
  %107 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %108 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %107, i32 0, i32 5
  %109 = load %struct.AtomsSt*, %struct.AtomsSt** %108, align 8
  %110 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %109, i32 0, i32 5
  %111 = load [3 x double]*, [3 x double]** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 %113
  %115 = getelementptr inbounds [3 x double], [3 x double]* %114, i64 0, i64 2
  store double %106, double* %115, align 8
  br label %116

116:                                              ; preds = %41
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %29, !llvm.loop !15

121:                                              ; preds = %29
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %18, !llvm.loop !16

125:                                              ; preds = %18
  %126 = load double, double* %4, align 8
  %127 = fcmp oeq double %126, 0.000000e+00
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %233

129:                                              ; preds = %125
  %130 = bitcast [3 x double]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %130, i8 0, i64 24, i1 false)
  %131 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  call void @setVcm(%struct.SimFlatSt* noundef %131, double* noundef %132)
  %133 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  call void @kineticEnergy(%struct.SimFlatSt* noundef %133)
  %134 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %135 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %134, i32 0, i32 8
  %136 = load double, double* %135, align 8
  %137 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %138 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %137, i32 0, i32 5
  %139 = load %struct.AtomsSt*, %struct.AtomsSt** %138, align 8
  %140 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sitofp i32 %141 to double
  %143 = fdiv double %136, %142
  %144 = fdiv double %143, 0x3F1696FE6EF7EB54
  %145 = fdiv double %144, 1.500000e+00
  store double %145, double* %13, align 8
  %146 = load double, double* %4, align 8
  %147 = load double, double* %13, align 8
  %148 = fdiv double %146, %147
  %149 = call double @sqrt(double noundef %148) #7
  store double %149, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %216, %129
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %153 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %152, i32 0, i32 4
  %154 = load %struct.LinkCellSt*, %struct.LinkCellSt** %153, align 8
  %155 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %151, %156
  br i1 %157, label %158, label %219

158:                                              ; preds = %150
  %159 = load i32, i32* %15, align 4
  %160 = mul nsw i32 64, %159
  store i32 %160, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %161

161:                                              ; preds = %210, %158
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %164 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %163, i32 0, i32 4
  %165 = load %struct.LinkCellSt*, %struct.LinkCellSt** %164, align 8
  %166 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %162, %171
  br i1 %172, label %173, label %215

173:                                              ; preds = %161
  %174 = load double, double* %14, align 8
  %175 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %176 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %175, i32 0, i32 5
  %177 = load %struct.AtomsSt*, %struct.AtomsSt** %176, align 8
  %178 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %177, i32 0, i32 5
  %179 = load [3 x double]*, [3 x double]** %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x double], [3 x double]* %179, i64 %181
  %183 = getelementptr inbounds [3 x double], [3 x double]* %182, i64 0, i64 0
  %184 = load double, double* %183, align 8
  %185 = fmul double %184, %174
  store double %185, double* %183, align 8
  %186 = load double, double* %14, align 8
  %187 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %188 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %187, i32 0, i32 5
  %189 = load %struct.AtomsSt*, %struct.AtomsSt** %188, align 8
  %190 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %189, i32 0, i32 5
  %191 = load [3 x double]*, [3 x double]** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x double], [3 x double]* %191, i64 %193
  %195 = getelementptr inbounds [3 x double], [3 x double]* %194, i64 0, i64 1
  %196 = load double, double* %195, align 8
  %197 = fmul double %196, %186
  store double %197, double* %195, align 8
  %198 = load double, double* %14, align 8
  %199 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %200 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %199, i32 0, i32 5
  %201 = load %struct.AtomsSt*, %struct.AtomsSt** %200, align 8
  %202 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %201, i32 0, i32 5
  %203 = load [3 x double]*, [3 x double]** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x double], [3 x double]* %203, i64 %205
  %207 = getelementptr inbounds [3 x double], [3 x double]* %206, i64 0, i64 2
  %208 = load double, double* %207, align 8
  %209 = fmul double %208, %198
  store double %209, double* %207, align 8
  br label %210

210:                                              ; preds = %173
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %161, !llvm.loop !17

215:                                              ; preds = %161
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %150, !llvm.loop !18

219:                                              ; preds = %150
  %220 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  call void @kineticEnergy(%struct.SimFlatSt* noundef %220)
  %221 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %222 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %221, i32 0, i32 8
  %223 = load double, double* %222, align 8
  %224 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %225 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %224, i32 0, i32 5
  %226 = load %struct.AtomsSt*, %struct.AtomsSt** %225, align 8
  %227 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sitofp i32 %228 to double
  %230 = fdiv double %223, %229
  %231 = fdiv double %230, 0x3F1696FE6EF7EB54
  %232 = fdiv double %231, 1.500000e+00
  store double %232, double* %13, align 8
  br label %233

233:                                              ; preds = %219, %128
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #5

declare dso_local i64 @mkSeed(i32 noundef, i32 noundef) #3

declare dso_local double @gasdev(i64* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local void @kineticEnergy(%struct.SimFlatSt* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @randomDisplacements(%struct.SimFlatSt* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.SimFlatSt*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %3, align 8
  store double %1, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %91, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %12 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %11, i32 0, i32 4
  %13 = load %struct.LinkCellSt*, %struct.LinkCellSt** %12, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 64, %18
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %85, %17
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %23 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %22, i32 0, i32 4
  %24 = load %struct.LinkCellSt*, %struct.LinkCellSt** %23, align 8
  %25 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %21, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %20
  %33 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %34 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %33, i32 0, i32 5
  %35 = load %struct.AtomsSt*, %struct.AtomsSt** %34, align 8
  %36 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mkSeed(i32 noundef %41, i32 noundef 457)
  store i64 %42, i64* %8, align 8
  %43 = call double @lcg61(i64* noundef %8)
  %44 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %43, double -1.000000e+00)
  %45 = load double, double* %4, align 8
  %46 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %47 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %46, i32 0, i32 5
  %48 = load %struct.AtomsSt*, %struct.AtomsSt** %47, align 8
  %49 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %48, i32 0, i32 4
  %50 = load [3 x double]*, [3 x double]** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 %52
  %54 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 0
  %55 = load double, double* %54, align 8
  %56 = call double @llvm.fmuladd.f64(double %44, double %45, double %55)
  store double %56, double* %54, align 8
  %57 = call double @lcg61(i64* noundef %8)
  %58 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %57, double -1.000000e+00)
  %59 = load double, double* %4, align 8
  %60 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %61 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %60, i32 0, i32 5
  %62 = load %struct.AtomsSt*, %struct.AtomsSt** %61, align 8
  %63 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %62, i32 0, i32 4
  %64 = load [3 x double]*, [3 x double]** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 %66
  %68 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0, i64 1
  %69 = load double, double* %68, align 8
  %70 = call double @llvm.fmuladd.f64(double %58, double %59, double %69)
  store double %70, double* %68, align 8
  %71 = call double @lcg61(i64* noundef %8)
  %72 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %71, double -1.000000e+00)
  %73 = load double, double* %4, align 8
  %74 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %75 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %74, i32 0, i32 5
  %76 = load %struct.AtomsSt*, %struct.AtomsSt** %75, align 8
  %77 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %76, i32 0, i32 4
  %78 = load [3 x double]*, [3 x double]** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 %80
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0, i64 2
  %83 = load double, double* %82, align 8
  %84 = call double @llvm.fmuladd.f64(double %72, double %73, double %83)
  store double %84, double* %82, align 8
  br label %85

85:                                               ; preds = %32
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %20, !llvm.loop !19

90:                                               ; preds = %20
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %9, !llvm.loop !20

94:                                               ; preds = %9
  ret void
}

declare dso_local double @lcg61(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

declare dso_local void @addRealParallel(double* noundef, double* noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
