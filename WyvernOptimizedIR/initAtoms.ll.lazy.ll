; ModuleID = './initAtoms.ll'
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
define dso_local noalias %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* nocapture noundef readonly %0) #0 {
  %2 = call i8* @comdMalloc(i64 noundef 56)
  %3 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = shl nsw i32 %4, 6
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = call i8* @comdMalloc(i64 noundef %7)
  %9 = getelementptr inbounds i8, i8* %2, i64 8
  %10 = bitcast i8* %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = sext i32 %5 to i64
  %12 = shl nsw i64 %11, 2
  %13 = call i8* @comdMalloc(i64 noundef %12)
  %14 = getelementptr inbounds i8, i8* %2, i64 16
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = sext i32 %5 to i64
  %17 = mul nsw i64 %16, 24
  %18 = call i8* @comdMalloc(i64 noundef %17)
  %19 = getelementptr inbounds i8, i8* %2, i64 24
  %20 = bitcast i8* %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = sext i32 %5 to i64
  %22 = mul nsw i64 %21, 24
  %23 = call i8* @comdMalloc(i64 noundef %22)
  %24 = getelementptr inbounds i8, i8* %2, i64 32
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  %26 = sext i32 %5 to i64
  %27 = mul nsw i64 %26, 24
  %28 = call i8* @comdMalloc(i64 noundef %27)
  %29 = getelementptr inbounds i8, i8* %2, i64 40
  %30 = bitcast i8* %29 to i8**
  store i8* %28, i8** %30, align 8
  %31 = sext i32 %5 to i64
  %32 = shl nsw i64 %31, 3
  %33 = call i8* @comdMalloc(i64 noundef %32)
  %34 = getelementptr inbounds i8, i8* %2, i64 48
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = bitcast i8* %2 to i32*
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds i8, i8* %2, i64 4
  %38 = bitcast i8* %37 to i32*
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %72, %1
  %.0 = phi i32 [ 0, %1 ], [ %73, %72 ]
  %40 = icmp slt i32 %.0, %5
  br i1 %40, label %41, label %74

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, i8* %2, i64 8
  %43 = bitcast i8* %42 to i32**
  %44 = load i32*, i32** %43, align 8
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds i8, i8* %2, i64 16
  %48 = bitcast i8* %47 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds i8, i8* %2, i64 24
  %53 = bitcast i8* %52 to [3 x double]**
  %54 = load [3 x double]*, [3 x double]** %53, align 8
  %55 = zext i32 %.0 to i64
  %56 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 %55, i64 0
  call void @zeroReal3(double* noundef %56)
  %57 = getelementptr inbounds i8, i8* %2, i64 32
  %58 = bitcast i8* %57 to [3 x double]**
  %59 = load [3 x double]*, [3 x double]** %58, align 8
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 %60, i64 0
  call void @zeroReal3(double* noundef %61)
  %62 = getelementptr inbounds i8, i8* %2, i64 40
  %63 = bitcast i8* %62 to [3 x double]**
  %64 = load [3 x double]*, [3 x double]** %63, align 8
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 %65, i64 0
  call void @zeroReal3(double* noundef %66)
  %67 = getelementptr inbounds i8, i8* %2, i64 48
  %68 = bitcast i8* %67 to double**
  %69 = load double*, double** %68, align 8
  %70 = zext i32 %.0 to i64
  %71 = getelementptr inbounds double, double* %69, i64 %70
  store double 0.000000e+00, double* %71, align 8
  br label %72

72:                                               ; preds = %41
  %73 = add nuw nsw i32 %.0, 1
  br label %39, !llvm.loop !4

74:                                               ; preds = %39
  %75 = bitcast i8* %2 to %struct.AtomsSt*
  ret %struct.AtomsSt* %75
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #8
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @zeroReal3(double* nocapture noundef writeonly %0) #1 {
  store double 0.000000e+00, double* %0, align 8
  %2 = getelementptr inbounds double, double* %0, i64 1
  store double 0.000000e+00, double* %2, align 8
  %3 = getelementptr inbounds double, double* %0, i64 2
  store double 0.000000e+00, double* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroyAtoms(%struct.AtomsSt* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 2
  %3 = load i32*, i32** %2, align 8
  %.not = icmp eq i32* %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 2
  %6 = bitcast i32** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @comdFree(i8* noundef %7)
  br label %8

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %.not1 = icmp eq i32* %11, null
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 3
  %14 = bitcast i32** %13 to i8**
  %15 = load i8*, i8** %14, align 8
  call void @comdFree(i8* noundef %15)
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 4
  %19 = load [3 x double]*, [3 x double]** %18, align 8
  %.not2 = icmp eq [3 x double]* %19, null
  br i1 %.not2, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 4
  %22 = bitcast [3 x double]** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  call void @comdFree(i8* noundef %23)
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 4
  store [3 x double]* null, [3 x double]** %25, align 8
  %26 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 5
  %27 = load [3 x double]*, [3 x double]** %26, align 8
  %.not3 = icmp eq [3 x double]* %27, null
  br i1 %.not3, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 5
  %30 = bitcast [3 x double]** %29 to i8**
  %31 = load i8*, i8** %30, align 8
  call void @comdFree(i8* noundef %31)
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 5
  store [3 x double]* null, [3 x double]** %33, align 8
  %34 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 6
  %35 = load [3 x double]*, [3 x double]** %34, align 8
  %.not4 = icmp eq [3 x double]* %35, null
  br i1 %.not4, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 6
  %38 = bitcast [3 x double]** %37 to i8**
  %39 = load i8*, i8** %38, align 8
  call void @comdFree(i8* noundef %39)
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 6
  store [3 x double]* null, [3 x double]** %41, align 8
  %42 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 7
  %43 = load double*, double** %42, align 8
  %.not5 = icmp eq double* %43, null
  br i1 %.not5, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 7
  %46 = bitcast double** %45 to i8**
  %47 = load i8*, i8** %46, align 8
  call void @comdFree(i8* noundef %47)
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %0, i64 0, i32 7
  store double* null, double** %49, align 8
  %50 = bitcast %struct.AtomsSt* %0 to i8*
  call void @comdFree(i8* noundef %50)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @createFccLattice(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, %struct.SimFlatSt* nocapture noundef readonly %4) #0 {
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i64 0, i32 3
  %9 = load %struct.DomainSt*, %struct.DomainSt** %8, align 8
  %10 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 5, i64 0
  %11 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 6, i64 0
  br label %12

12:                                               ; preds = %31, %5
  %.04 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %13 = icmp ult i32 %.04, 3
  br i1 %13, label %14, label %33

14:                                               ; preds = %12
  %15 = zext i32 %.04 to i64
  %16 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 5, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fdiv double %17, %3
  %19 = call double @llvm.floor.f64(double %18)
  %20 = fptosi double %19 to i32
  %21 = zext i32 %.04 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %21
  store i32 %20, i32* %22, align 4
  %23 = zext i32 %.04 to i64
  %24 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 6, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fdiv double %25, %3
  %27 = call double @llvm.ceil.f64(double %26)
  %28 = fptosi double %27 to i32
  %29 = zext i32 %.04 to i64
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %29
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %14
  %32 = add nuw nsw i32 %.04, 1
  br label %12, !llvm.loop !6

33:                                               ; preds = %12
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %120, %33
  %.03 = phi i32 [ %35, %33 ], [ %121, %120 ]
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %.03, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %117, %40
  %.02 = phi i32 [ %42, %40 ], [ %118, %117 ]
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %.02, %45
  br i1 %46, label %47, label %119

47:                                               ; preds = %43
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %114, %47
  %.01 = phi i32 [ %49, %47 ], [ %115, %114 ]
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %.01, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %111, %54
  %.0 = phi i32 [ 0, %54 ], [ %112, %111 ]
  %56 = icmp ult i32 %.0, 4
  br i1 %56, label %57, label %113

57:                                               ; preds = %55
  %58 = sitofp i32 %.03 to double
  %59 = zext i32 %.0 to i64
  %60 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* @__const.createFccLattice.basis, i64 0, i64 %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, %58
  %63 = fmul double %62, %3
  %64 = sitofp i32 %.02 to double
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* @__const.createFccLattice.basis, i64 0, i64 %65, i64 1
  %67 = load double, double* %66, align 8
  %68 = fadd double %67, %64
  %69 = fmul double %68, %3
  %70 = sitofp i32 %.01 to double
  %71 = zext i32 %.0 to i64
  %72 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* @__const.createFccLattice.basis, i64 0, i64 %71, i64 2
  %73 = load double, double* %72, align 8
  %74 = fadd double %73, %70
  %75 = fmul double %74, %3
  %76 = load double, double* %10, align 8
  %77 = fcmp olt double %63, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %57
  %79 = load double, double* %11, align 8
  %80 = fcmp ult double %63, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %78, %57
  br label %111

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 5, i64 1
  %84 = load double, double* %83, align 8
  %85 = fcmp olt double %69, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 6, i64 1
  %88 = load double, double* %87, align 8
  %89 = fcmp ult double %69, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %82
  br label %111

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 5, i64 2
  %93 = load double, double* %92, align 8
  %94 = fcmp olt double %75, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %9, i64 0, i32 6, i64 2
  %97 = load double, double* %96, align 8
  %98 = fcmp ult double %75, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %91
  br label %111

100:                                              ; preds = %95
  %101 = mul nsw i32 %.03, %1
  %102 = add nsw i32 %.02, %101
  %103 = mul nsw i32 %102, %2
  %104 = add nsw i32 %.01, %103
  %105 = shl nsw i32 %104, 2
  %106 = add nsw i32 %.0, %105
  %107 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i64 0, i32 4
  %108 = load %struct.LinkCellSt*, %struct.LinkCellSt** %107, align 8
  %109 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i64 0, i32 5
  %110 = load %struct.AtomsSt*, %struct.AtomsSt** %109, align 8
  call void @putAtomInBox(%struct.LinkCellSt* noundef %108, %struct.AtomsSt* noundef %110, i32 noundef %106, i32 noundef 0, double noundef %63, double noundef %69, double noundef %75, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  br label %111

111:                                              ; preds = %100, %99, %90, %81
  %112 = add nuw nsw i32 %.0, 1
  br label %55, !llvm.loop !7

113:                                              ; preds = %55
  br label %114

114:                                              ; preds = %113
  %115 = add nsw i32 %.01, 1
  br label %50, !llvm.loop !8

116:                                              ; preds = %50
  br label %117

117:                                              ; preds = %116
  %118 = add nsw i32 %.02, 1
  br label %43, !llvm.loop !9

119:                                              ; preds = %43
  br label %120

120:                                              ; preds = %119
  %121 = add nsw i32 %.03, 1
  br label %36, !llvm.loop !10

122:                                              ; preds = %36
  br label %123

123:                                              ; preds = %122
  call void @profileStart(i32 noundef 10) #8
  br label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i64 0, i32 5
  %126 = load %struct.AtomsSt*, %struct.AtomsSt** %125, align 8
  %127 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %126, i64 0, i32 0
  %128 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %126, i64 0, i32 1
  call void @addIntParallel(i32* noundef %127, i32* noundef nonnull %128, i32 noundef 1) #8
  br label %129

129:                                              ; preds = %124
  call void @profileStop(i32 noundef 10) #8
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i64 0, i32 5
  %132 = load %struct.AtomsSt*, %struct.AtomsSt** %131, align 8
  %133 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %132, i64 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = shl nsw i32 %0, 2
  %136 = mul nsw i32 %135, %1
  %137 = mul nsw i32 %136, %2
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %141

140:                                              ; preds = %130
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.createFccLattice, i64 0, i64 0)) #9
  unreachable

141:                                              ; preds = %139
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

declare dso_local void @putAtomInBox(%struct.LinkCellSt* noundef, %struct.AtomsSt* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #4

declare dso_local void @profileStart(i32 noundef) #4

declare dso_local void @addIntParallel(i32* noundef, i32* noundef, i32 noundef) #4

declare dso_local void @profileStop(i32 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @setVcm(%struct.SimFlatSt* nocapture noundef readonly %0, double* nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0
  call void @computeVcm(%struct.SimFlatSt* noundef %0, double* noundef nonnull %5)
  %6 = load double, double* %1, align 8
  %7 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0
  %8 = load double, double* %7, align 16
  %9 = fsub double %6, %8
  %10 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double %9, double* %10, align 16
  %11 = getelementptr inbounds double, double* %1, i64 1
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 1
  %14 = load double, double* %13, align 8
  %15 = fsub double %12, %14
  %16 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double %15, double* %16, align 8
  %17 = getelementptr inbounds double, double* %1, i64 2
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 2
  %20 = load double, double* %19, align 16
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double %21, double* %22, align 16
  br label %23

23:                                               ; preds = %87, %2
  %.02 = phi i32 [ 0, %2 ], [ %88, %87 ]
  %24 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %25 = load %struct.LinkCellSt*, %struct.LinkCellSt** %24, align 8
  %26 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %25, i64 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %.02, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %23
  %30 = shl nsw i32 %.02, 6
  br label %31

31:                                               ; preds = %83, %29
  %.01 = phi i32 [ %30, %29 ], [ %85, %83 ]
  %.0 = phi i32 [ 0, %29 ], [ %84, %83 ]
  %32 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %33 = load %struct.LinkCellSt*, %struct.LinkCellSt** %32, align 8
  %34 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %33, i64 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %.0, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %42 = load %struct.AtomsSt*, %struct.AtomsSt** %41, align 8
  %43 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %42, i64 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = zext i32 %.01 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 6
  %49 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %48, align 8
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %49, i64 %50, i32 2
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %54 = load double, double* %53, align 16
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i64 0, i32 5
  %58 = load [3 x double]*, [3 x double]** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %52, double %54, double %61)
  store double %62, double* %60, align 8
  %63 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %66 = load %struct.AtomsSt*, %struct.AtomsSt** %65, align 8
  %67 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %66, i64 0, i32 5
  %68 = load [3 x double]*, [3 x double]** %67, align 8
  %69 = zext i32 %.01 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 %69, i64 1
  %71 = load double, double* %70, align 8
  %72 = call double @llvm.fmuladd.f64(double %52, double %64, double %71)
  store double %72, double* %70, align 8
  %73 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %74 = load double, double* %73, align 16
  %75 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %76 = load %struct.AtomsSt*, %struct.AtomsSt** %75, align 8
  %77 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %76, i64 0, i32 5
  %78 = load [3 x double]*, [3 x double]** %77, align 8
  %79 = zext i32 %.01 to i64
  %80 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 %79, i64 2
  %81 = load double, double* %80, align 8
  %82 = call double @llvm.fmuladd.f64(double %52, double %74, double %81)
  store double %82, double* %80, align 8
  br label %83

83:                                               ; preds = %40
  %84 = add nuw nsw i32 %.0, 1
  %85 = add nuw nsw i32 %.01, 1
  br label %31, !llvm.loop !11

86:                                               ; preds = %31
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.02, 1
  br label %23, !llvm.loop !12

89:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @computeVcm(%struct.SimFlatSt* nocapture noundef readonly %0, double* nocapture noundef writeonly %1) #0 {
  %3 = alloca [4 x double], align 16
  %4 = alloca [4 x double], align 16
  %5 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %6 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  br label %7

7:                                                ; preds = %74, %2
  %.02 = phi i32 [ 0, %2 ], [ %75, %74 ]
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %9 = load %struct.LinkCellSt*, %struct.LinkCellSt** %8, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %9, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %.02, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %7
  %14 = shl nsw i32 %.02, 6
  br label %15

15:                                               ; preds = %70, %13
  %.01 = phi i32 [ %14, %13 ], [ %72, %70 ]
  %.0 = phi i32 [ 0, %13 ], [ %71, %70 ]
  %16 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %17 = load %struct.LinkCellSt*, %struct.LinkCellSt** %16, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %17, i64 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %.0, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %26 = load %struct.AtomsSt*, %struct.AtomsSt** %25, align 8
  %27 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %26, i64 0, i32 5
  %28 = load [3 x double]*, [3 x double]** %27, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 %29, i64 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %33 = load double, double* %32, align 16
  %34 = fadd double %33, %31
  store double %34, double* %32, align 16
  %35 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %36 = load %struct.AtomsSt*, %struct.AtomsSt** %35, align 8
  %37 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %36, i64 0, i32 5
  %38 = load [3 x double]*, [3 x double]** %37, align 8
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 %39, i64 1
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 1
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %41
  store double %44, double* %42, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %46 = load %struct.AtomsSt*, %struct.AtomsSt** %45, align 8
  %47 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %46, i64 0, i32 5
  %48 = load [3 x double]*, [3 x double]** %47, align 8
  %49 = zext i32 %.01 to i64
  %50 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 %49, i64 2
  %51 = load double, double* %50, align 8
  %52 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 2
  %53 = load double, double* %52, align 16
  %54 = fadd double %53, %51
  store double %54, double* %52, align 16
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i64 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 6
  %63 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %62, align 8
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %63, i64 %64, i32 2
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 3
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, %66
  store double %69, double* %67, align 8
  br label %70

70:                                               ; preds = %24
  %71 = add nuw nsw i32 %.0, 1
  %72 = add nuw nsw i32 %.01, 1
  br label %15, !llvm.loop !13

73:                                               ; preds = %15
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !14

76:                                               ; preds = %7
  br label %77

77:                                               ; preds = %76
  call void @profileStart(i32 noundef 10) #8
  br label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %80 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  call void @addRealParallel(double* noundef nonnull %79, double* noundef nonnull %80, i32 noundef 4) #8
  br label %81

81:                                               ; preds = %78
  call void @profileStop(i32 noundef 10) #8
  br label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %84 = load double, double* %83, align 8
  %85 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %86 = load double, double* %85, align 16
  %87 = fdiv double %86, %84
  store double %87, double* %1, align 8
  %88 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %89 = load double, double* %88, align 8
  %90 = fdiv double %89, %84
  %91 = getelementptr inbounds double, double* %1, i64 1
  store double %90, double* %91, align 8
  %92 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %93 = load double, double* %92, align 16
  %94 = fdiv double %93, %84
  %95 = getelementptr inbounds double, double* %1, i64 2
  store double %94, double* %95, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @setTemperature(%struct.SimFlatSt* noundef %0, double noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  br label %5

5:                                                ; preds = %77, %2
  %.02 = phi i32 [ 0, %2 ], [ %78, %77 ]
  %6 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %7 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %7, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %.02, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = shl nsw i32 %.02, 6
  br label %13

13:                                               ; preds = %73, %11
  %.04 = phi i32 [ 0, %11 ], [ %74, %73 ]
  %.03 = phi i32 [ %12, %11 ], [ %75, %73 ]
  %14 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %15 = load %struct.LinkCellSt*, %struct.LinkCellSt** %14, align 8
  %16 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %15, i64 0, i32 8
  %17 = load i32*, i32** %16, align 8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %.04, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %24 = load %struct.AtomsSt*, %struct.AtomsSt** %23, align 8
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %24, i64 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = zext i32 %.03 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 6
  %31 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %30, align 8
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %31, i64 %32, i32 2
  %34 = load double, double* %33, align 8
  %35 = fmul double %1, 0x3F1696FE6EF7EB54
  %36 = fdiv double %35, %34
  %37 = call double @sqrt(double noundef %36) #8
  %38 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %39 = load %struct.AtomsSt*, %struct.AtomsSt** %38, align 8
  %40 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %39, i64 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = zext i32 %.03 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @mkSeed(i32 noundef %44, i32 noundef 123) #8
  store i64 %45, i64* %3, align 8
  %46 = fmul double %34, %37
  %47 = call double @gasdev(i64* noundef nonnull %3) #8
  %48 = fmul double %46, %47
  %49 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %50 = load %struct.AtomsSt*, %struct.AtomsSt** %49, align 8
  %51 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %50, i64 0, i32 5
  %52 = load [3 x double]*, [3 x double]** %51, align 8
  %53 = zext i32 %.03 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 %53, i64 0
  store double %48, double* %54, align 8
  %55 = fmul double %34, %37
  %56 = call double @gasdev(i64* noundef nonnull %3) #8
  %57 = fmul double %55, %56
  %58 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %59 = load %struct.AtomsSt*, %struct.AtomsSt** %58, align 8
  %60 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %59, i64 0, i32 5
  %61 = load [3 x double]*, [3 x double]** %60, align 8
  %62 = zext i32 %.03 to i64
  %63 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 %62, i64 1
  store double %57, double* %63, align 8
  %64 = fmul double %34, %37
  %65 = call double @gasdev(i64* noundef nonnull %3) #8
  %66 = fmul double %64, %65
  %67 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %68 = load %struct.AtomsSt*, %struct.AtomsSt** %67, align 8
  %69 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %68, i64 0, i32 5
  %70 = load [3 x double]*, [3 x double]** %69, align 8
  %71 = zext i32 %.03 to i64
  %72 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 %71, i64 2
  store double %66, double* %72, align 8
  br label %73

73:                                               ; preds = %22
  %74 = add nuw nsw i32 %.04, 1
  %75 = add nuw nsw i32 %.03, 1
  br label %13, !llvm.loop !15

76:                                               ; preds = %13
  br label %77

77:                                               ; preds = %76
  %78 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !16

79:                                               ; preds = %5
  %80 = fcmp oeq double %1, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %146

82:                                               ; preds = %79
  %83 = bitcast [3 x double]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %83, i8 0, i64 24, i1 false)
  %84 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  call void @setVcm(%struct.SimFlatSt* noundef %0, double* noundef nonnull %84)
  call void @kineticEnergy(%struct.SimFlatSt* noundef %0) #8
  %85 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  %86 = load double, double* %85, align 8
  %87 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %88 = load %struct.AtomsSt*, %struct.AtomsSt** %87, align 8
  %89 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %88, i64 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %86, %91
  %93 = fdiv double %92, 0x3F1696FE6EF7EB54
  %94 = fdiv double %93, 1.500000e+00
  %95 = fdiv double %1, %94
  %96 = call double @sqrt(double noundef %95) #8
  br label %97

97:                                               ; preds = %143, %82
  %.05 = phi i32 [ 0, %82 ], [ %144, %143 ]
  %98 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %99 = load %struct.LinkCellSt*, %struct.LinkCellSt** %98, align 8
  %100 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %99, i64 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %.05, %101
  br i1 %102, label %103, label %145

103:                                              ; preds = %97
  %104 = shl nsw i32 %.05, 6
  br label %105

105:                                              ; preds = %139, %103
  %.01 = phi i32 [ %104, %103 ], [ %141, %139 ]
  %.0 = phi i32 [ 0, %103 ], [ %140, %139 ]
  %106 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %107 = load %struct.LinkCellSt*, %struct.LinkCellSt** %106, align 8
  %108 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %107, i64 0, i32 8
  %109 = load i32*, i32** %108, align 8
  %110 = zext i32 %.05 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %.0, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %116 = load %struct.AtomsSt*, %struct.AtomsSt** %115, align 8
  %117 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %116, i64 0, i32 5
  %118 = load [3 x double]*, [3 x double]** %117, align 8
  %119 = zext i32 %.01 to i64
  %120 = getelementptr inbounds [3 x double], [3 x double]* %118, i64 %119, i64 0
  %121 = load double, double* %120, align 8
  %122 = fmul double %121, %96
  store double %122, double* %120, align 8
  %123 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %124 = load %struct.AtomsSt*, %struct.AtomsSt** %123, align 8
  %125 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %124, i64 0, i32 5
  %126 = load [3 x double]*, [3 x double]** %125, align 8
  %127 = zext i32 %.01 to i64
  %128 = getelementptr inbounds [3 x double], [3 x double]* %126, i64 %127, i64 1
  %129 = load double, double* %128, align 8
  %130 = fmul double %129, %96
  store double %130, double* %128, align 8
  %131 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %132 = load %struct.AtomsSt*, %struct.AtomsSt** %131, align 8
  %133 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %132, i64 0, i32 5
  %134 = load [3 x double]*, [3 x double]** %133, align 8
  %135 = zext i32 %.01 to i64
  %136 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 %135, i64 2
  %137 = load double, double* %136, align 8
  %138 = fmul double %137, %96
  store double %138, double* %136, align 8
  br label %139

139:                                              ; preds = %114
  %140 = add nuw nsw i32 %.0, 1
  %141 = add nuw nsw i32 %.01, 1
  br label %105, !llvm.loop !17

142:                                              ; preds = %105
  br label %143

143:                                              ; preds = %142
  %144 = add nuw nsw i32 %.05, 1
  br label %97, !llvm.loop !18

145:                                              ; preds = %97
  call void @kineticEnergy(%struct.SimFlatSt* noundef %0) #8
  br label %146

146:                                              ; preds = %145, %81
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #6

declare dso_local i64 @mkSeed(i32 noundef, i32 noundef) #4

declare dso_local double @gasdev(i64* noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare dso_local void @kineticEnergy(%struct.SimFlatSt* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @randomDisplacements(%struct.SimFlatSt* nocapture noundef readonly %0, double noundef %1) #0 {
  %3 = alloca i64, align 8
  br label %4

4:                                                ; preds = %64, %2
  %.02 = phi i32 [ 0, %2 ], [ %65, %64 ]
  %5 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %6 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %7 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %6, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %.02, %8
  br i1 %9, label %10, label %66

10:                                               ; preds = %4
  %11 = shl nsw i32 %.02, 6
  br label %12

12:                                               ; preds = %60, %10
  %.01 = phi i32 [ %11, %10 ], [ %62, %60 ]
  %.0 = phi i32 [ 0, %10 ], [ %61, %60 ]
  %13 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %14 = load %struct.LinkCellSt*, %struct.LinkCellSt** %13, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %14, i64 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %.0, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %23 = load %struct.AtomsSt*, %struct.AtomsSt** %22, align 8
  %24 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %23, i64 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @mkSeed(i32 noundef %28, i32 noundef 457) #8
  store i64 %29, i64* %3, align 8
  %30 = call double @lcg61(i64* noundef nonnull %3) #8
  %31 = call double @llvm.fmuladd.f64(double %30, double 2.000000e+00, double -1.000000e+00)
  %32 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %33 = load %struct.AtomsSt*, %struct.AtomsSt** %32, align 8
  %34 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %33, i64 0, i32 4
  %35 = load [3 x double]*, [3 x double]** %34, align 8
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 %36, i64 0
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %31, double %1, double %38)
  store double %39, double* %37, align 8
  %40 = call double @lcg61(i64* noundef nonnull %3) #8
  %41 = call double @llvm.fmuladd.f64(double %40, double 2.000000e+00, double -1.000000e+00)
  %42 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %43 = load %struct.AtomsSt*, %struct.AtomsSt** %42, align 8
  %44 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %43, i64 0, i32 4
  %45 = load [3 x double]*, [3 x double]** %44, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = call double @llvm.fmuladd.f64(double %41, double %1, double %48)
  store double %49, double* %47, align 8
  %50 = call double @lcg61(i64* noundef nonnull %3) #8
  %51 = call double @llvm.fmuladd.f64(double %50, double 2.000000e+00, double -1.000000e+00)
  %52 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %53 = load %struct.AtomsSt*, %struct.AtomsSt** %52, align 8
  %54 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %53, i64 0, i32 4
  %55 = load [3 x double]*, [3 x double]** %54, align 8
  %56 = zext i32 %.01 to i64
  %57 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 %56, i64 2
  %58 = load double, double* %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %51, double %1, double %58)
  store double %59, double* %57, align 8
  br label %60

60:                                               ; preds = %21
  %61 = add nuw nsw i32 %.0, 1
  %62 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !19

63:                                               ; preds = %12
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !20

66:                                               ; preds = %4
  ret void
}

declare dso_local double @lcg61(i64* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

declare dso_local void @addRealParallel(double* noundef, double* noundef, i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
