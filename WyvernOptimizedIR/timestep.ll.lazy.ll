; ModuleID = './timestep.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/timestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SimFlatSt = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt*, %struct.HaloExchangeSt* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.HaloExchangeSt = type { [6 x i32], i32, i32 (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)*, void (i8*)*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local double @timestep(%struct.SimFlatSt* noundef %0, i32 noundef %1, double noundef %2) #0 {
  br label %4

4:                                                ; preds = %41, %3
  %.0 = phi i32 [ 0, %3 ], [ %42, %41 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  call void @profileStart(i32 noundef 4) #4
  br label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %10 = load %struct.LinkCellSt*, %struct.LinkCellSt** %9, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %10, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = fmul double %2, 5.000000e-01
  call void @advanceVelocity(%struct.SimFlatSt* noundef %0, i32 noundef %12, double noundef %13)
  br label %14

14:                                               ; preds = %8
  call void @profileStop(i32 noundef 4) #4
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  call void @profileStart(i32 noundef 3) #4
  br label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %19 = load %struct.LinkCellSt*, %struct.LinkCellSt** %18, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %19, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  call void @advancePosition(%struct.SimFlatSt* noundef %0, i32 noundef %21, double noundef %2)
  br label %22

22:                                               ; preds = %17
  call void @profileStop(i32 noundef 3) #4
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  call void @profileStart(i32 noundef 5) #4
  br label %25

25:                                               ; preds = %24
  call void @redistributeAtoms(%struct.SimFlatSt* noundef %0)
  br label %26

26:                                               ; preds = %25
  call void @profileStop(i32 noundef 5) #4
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  call void @profileStart(i32 noundef 7) #4
  br label %29

29:                                               ; preds = %28
  call void @computeForce(%struct.SimFlatSt* noundef %0)
  br label %30

30:                                               ; preds = %29
  call void @profileStop(i32 noundef 7) #4
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  call void @profileStart(i32 noundef 4) #4
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %35 = load %struct.LinkCellSt*, %struct.LinkCellSt** %34, align 8
  %36 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %35, i64 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = fmul double %2, 5.000000e-01
  call void @advanceVelocity(%struct.SimFlatSt* noundef %0, i32 noundef %37, double noundef %38)
  br label %39

39:                                               ; preds = %33
  call void @profileStop(i32 noundef 4) #4
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

43:                                               ; preds = %4
  call void @kineticEnergy(%struct.SimFlatSt* noundef %0)
  %44 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  %45 = load double, double* %44, align 8
  ret double %45
}

declare dso_local void @profileStart(i32 noundef) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @advanceVelocity(%struct.SimFlatSt* nocapture noundef readonly %0, i32 noundef %1, double noundef %2) #2 {
  br label %4

4:                                                ; preds = %67, %3
  %.02 = phi i32 [ 0, %3 ], [ %68, %67 ]
  %5 = icmp slt i32 %.02, %1
  br i1 %5, label %6, label %69

6:                                                ; preds = %4
  %7 = shl nsw i32 %.02, 6
  br label %8

8:                                                ; preds = %63, %6
  %.01 = phi i32 [ %7, %6 ], [ %65, %63 ]
  %.0 = phi i32 [ 0, %6 ], [ %64, %63 ]
  %9 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %10 = load %struct.LinkCellSt*, %struct.LinkCellSt** %9, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %10, i64 0, i32 8
  %12 = load i32*, i32** %11, align 8
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.0, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %19 = load %struct.AtomsSt*, %struct.AtomsSt** %18, align 8
  %20 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %19, i64 0, i32 6
  %21 = load [3 x double]*, [3 x double]** %20, align 8
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 %22, i64 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %26 = load %struct.AtomsSt*, %struct.AtomsSt** %25, align 8
  %27 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %26, i64 0, i32 5
  %28 = load [3 x double]*, [3 x double]** %27, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 %29, i64 0
  %31 = load double, double* %30, align 8
  %32 = call double @llvm.fmuladd.f64(double %2, double %24, double %31)
  store double %32, double* %30, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %34 = load %struct.AtomsSt*, %struct.AtomsSt** %33, align 8
  %35 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %34, i64 0, i32 6
  %36 = load [3 x double]*, [3 x double]** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 %37, i64 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %41 = load %struct.AtomsSt*, %struct.AtomsSt** %40, align 8
  %42 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %41, i64 0, i32 5
  %43 = load [3 x double]*, [3 x double]** %42, align 8
  %44 = zext i32 %.01 to i64
  %45 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 %44, i64 1
  %46 = load double, double* %45, align 8
  %47 = call double @llvm.fmuladd.f64(double %2, double %39, double %46)
  store double %47, double* %45, align 8
  %48 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %49 = load %struct.AtomsSt*, %struct.AtomsSt** %48, align 8
  %50 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %49, i64 0, i32 6
  %51 = load [3 x double]*, [3 x double]** %50, align 8
  %52 = zext i32 %.01 to i64
  %53 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i64 0, i32 5
  %58 = load [3 x double]*, [3 x double]** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 %59, i64 2
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %2, double %54, double %61)
  store double %62, double* %60, align 8
  br label %63

63:                                               ; preds = %17
  %64 = add nuw nsw i32 %.0, 1
  %65 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !6

66:                                               ; preds = %8
  br label %67

67:                                               ; preds = %66
  %68 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !7

69:                                               ; preds = %4
  ret void
}

declare dso_local void @profileStop(i32 noundef) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @advancePosition(%struct.SimFlatSt* nocapture noundef readonly %0, i32 noundef %1, double noundef %2) #2 {
  br label %4

4:                                                ; preds = %83, %3
  %.02 = phi i32 [ 0, %3 ], [ %84, %83 ]
  %5 = icmp slt i32 %.02, %1
  br i1 %5, label %6, label %85

6:                                                ; preds = %4
  %7 = shl nsw i32 %.02, 6
  br label %8

8:                                                ; preds = %79, %6
  %.01 = phi i32 [ %7, %6 ], [ %81, %79 ]
  %.0 = phi i32 [ 0, %6 ], [ %80, %79 ]
  %9 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %10 = load %struct.LinkCellSt*, %struct.LinkCellSt** %9, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %10, i64 0, i32 8
  %12 = load i32*, i32** %11, align 8
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.0, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %19 = load %struct.AtomsSt*, %struct.AtomsSt** %18, align 8
  %20 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %19, i64 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 6
  %26 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %25, align 8
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %26, i64 %27, i32 2
  %29 = load double, double* %28, align 8
  %30 = fdiv double 1.000000e+00, %29
  %31 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %32 = load %struct.AtomsSt*, %struct.AtomsSt** %31, align 8
  %33 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %32, i64 0, i32 5
  %34 = load [3 x double]*, [3 x double]** %33, align 8
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 %35, i64 0
  %37 = load double, double* %36, align 8
  %38 = fmul double %37, %2
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %40 = load %struct.AtomsSt*, %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %40, i64 0, i32 4
  %42 = load [3 x double]*, [3 x double]** %41, align 8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %38, double %30, double %45)
  store double %46, double* %44, align 8
  %47 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %48 = load %struct.AtomsSt*, %struct.AtomsSt** %47, align 8
  %49 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %48, i64 0, i32 5
  %50 = load [3 x double]*, [3 x double]** %49, align 8
  %51 = zext i32 %.01 to i64
  %52 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 %51, i64 1
  %53 = load double, double* %52, align 8
  %54 = fmul double %53, %2
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i64 0, i32 4
  %58 = load [3 x double]*, [3 x double]** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 %59, i64 1
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %54, double %30, double %61)
  store double %62, double* %60, align 8
  %63 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %64 = load %struct.AtomsSt*, %struct.AtomsSt** %63, align 8
  %65 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %64, i64 0, i32 5
  %66 = load [3 x double]*, [3 x double]** %65, align 8
  %67 = zext i32 %.01 to i64
  %68 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 %67, i64 2
  %69 = load double, double* %68, align 8
  %70 = fmul double %69, %2
  %71 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %72 = load %struct.AtomsSt*, %struct.AtomsSt** %71, align 8
  %73 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %72, i64 0, i32 4
  %74 = load [3 x double]*, [3 x double]** %73, align 8
  %75 = zext i32 %.01 to i64
  %76 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 %75, i64 2
  %77 = load double, double* %76, align 8
  %78 = call double @llvm.fmuladd.f64(double %70, double %30, double %77)
  store double %78, double* %76, align 8
  br label %79

79:                                               ; preds = %17
  %80 = add nuw nsw i32 %.0, 1
  %81 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !8

82:                                               ; preds = %8
  br label %83

83:                                               ; preds = %82
  %84 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !9

85:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @redistributeAtoms(%struct.SimFlatSt* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %3 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %4 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %5 = load %struct.AtomsSt*, %struct.AtomsSt** %4, align 8
  call void @updateLinkCells(%struct.LinkCellSt* noundef %3, %struct.AtomsSt* noundef %5) #4
  br label %6

6:                                                ; preds = %1
  call void @profileStart(i32 noundef 6) #4
  br label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 10
  %9 = load %struct.HaloExchangeSt*, %struct.HaloExchangeSt** %8, align 8
  %10 = bitcast %struct.SimFlatSt* %0 to i8*
  call void @haloExchange(%struct.HaloExchangeSt* noundef %9, i8* noundef %10) #4
  br label %11

11:                                               ; preds = %7
  call void @profileStop(i32 noundef 6) #4
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %24, %12
  %.0 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %14 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %15 = load %struct.LinkCellSt*, %struct.LinkCellSt** %14, align 8
  %16 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %15, i64 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %.0, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %21 = load %struct.AtomsSt*, %struct.AtomsSt** %20, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %23 = load %struct.LinkCellSt*, %struct.LinkCellSt** %22, align 8
  call void @sortAtomsInCell(%struct.AtomsSt* noundef %21, %struct.LinkCellSt* noundef %23, i32 noundef %.0) #4
  br label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !10

26:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @computeForce(%struct.SimFlatSt* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 9
  %3 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %2, align 8
  %4 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %3, i64 0, i32 6
  %5 = load i32 (%struct.SimFlatSt*)*, i32 (%struct.SimFlatSt*)** %4, align 8
  %6 = call i32 %5(%struct.SimFlatSt* noundef %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @kineticEnergy(%struct.SimFlatSt* nocapture noundef %0) #0 {
  %2 = alloca [2 x double], align 16
  %3 = alloca [2 x double], align 16
  %4 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 0
  store double %5, double* %6, align 16
  %7 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1
  store double 0.000000e+00, double* %7, align 8
  br label %8

8:                                                ; preds = %91, %1
  %.01 = phi i32 [ 0, %1 ], [ %92, %91 ]
  %9 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %10 = load %struct.LinkCellSt*, %struct.LinkCellSt** %9, align 8
  %11 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %10, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %.01, %12
  br i1 %13, label %14, label %93

14:                                               ; preds = %8
  %15 = shl nsw i32 %.01, 6
  br label %16

16:                                               ; preds = %87, %14
  %.02 = phi i32 [ %15, %14 ], [ %89, %87 ]
  %.0 = phi i32 [ 0, %14 ], [ %88, %87 ]
  %17 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %18 = load %struct.LinkCellSt*, %struct.LinkCellSt** %17, align 8
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %18, i64 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %.0, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %27 = load %struct.AtomsSt*, %struct.AtomsSt** %26, align 8
  %28 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %27, i64 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 6
  %34 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %33, align 8
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %34, i64 %35, i32 2
  %37 = load double, double* %36, align 8
  %38 = fdiv double 5.000000e-01, %37
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %40 = load %struct.AtomsSt*, %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %40, i64 0, i32 5
  %42 = load [3 x double]*, [3 x double]** %41, align 8
  %43 = zext i32 %.02 to i64
  %44 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %47 = load %struct.AtomsSt*, %struct.AtomsSt** %46, align 8
  %48 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %47, i64 0, i32 5
  %49 = load [3 x double]*, [3 x double]** %48, align 8
  %50 = zext i32 %.02 to i64
  %51 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 %50, i64 0
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %54 = load %struct.AtomsSt*, %struct.AtomsSt** %53, align 8
  %55 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %54, i64 0, i32 5
  %56 = load [3 x double]*, [3 x double]** %55, align 8
  %57 = zext i32 %.02 to i64
  %58 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 %57, i64 1
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %61 = load %struct.AtomsSt*, %struct.AtomsSt** %60, align 8
  %62 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %61, i64 0, i32 5
  %63 = load [3 x double]*, [3 x double]** %62, align 8
  %64 = zext i32 %.02 to i64
  %65 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 %64, i64 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %59, %66
  %68 = call double @llvm.fmuladd.f64(double %45, double %52, double %67)
  %69 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %70 = load %struct.AtomsSt*, %struct.AtomsSt** %69, align 8
  %71 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %70, i64 0, i32 5
  %72 = load [3 x double]*, [3 x double]** %71, align 8
  %73 = zext i32 %.02 to i64
  %74 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 %73, i64 2
  %75 = load double, double* %74, align 8
  %76 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %77 = load %struct.AtomsSt*, %struct.AtomsSt** %76, align 8
  %78 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %77, i64 0, i32 5
  %79 = load [3 x double]*, [3 x double]** %78, align 8
  %80 = zext i32 %.02 to i64
  %81 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 %80, i64 2
  %82 = load double, double* %81, align 8
  %83 = call double @llvm.fmuladd.f64(double %75, double %82, double %68)
  %84 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 1
  %85 = load double, double* %84, align 8
  %86 = call double @llvm.fmuladd.f64(double %83, double %38, double %85)
  store double %86, double* %84, align 8
  br label %87

87:                                               ; preds = %25
  %88 = add nuw nsw i32 %.0, 1
  %89 = add nuw nsw i32 %.02, 1
  br label %16, !llvm.loop !11

90:                                               ; preds = %16
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !12

93:                                               ; preds = %8
  br label %94

94:                                               ; preds = %93
  call void @profileStart(i32 noundef 10) #4
  br label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0, i64 0
  %97 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  call void @addRealParallel(double* noundef nonnull %96, double* noundef nonnull %97, i32 noundef 2) #4
  br label %98

98:                                               ; preds = %95
  call void @profileStop(i32 noundef 10) #4
  br label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %101 = load double, double* %100, align 16
  %102 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  store double %101, double* %102, align 8
  %103 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  store double %104, double* %105, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local void @addRealParallel(double* noundef, double* noundef, i32 noundef) #1

declare dso_local void @updateLinkCells(%struct.LinkCellSt* noundef, %struct.AtomsSt* noundef) #1

declare dso_local void @haloExchange(%struct.HaloExchangeSt* noundef, i8* noundef) #1

declare dso_local void @sortAtomsInCell(%struct.AtomsSt* noundef, %struct.LinkCellSt* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!12 = distinct !{!12, !5}
