; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/timestep.c'
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
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %58, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  call void @profileStart(i32 noundef 4)
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %16 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %17 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %16, i32 0, i32 4
  %18 = load %struct.LinkCellSt*, %struct.LinkCellSt** %17, align 8
  %19 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load double, double* %6, align 8
  %22 = fmul double 5.000000e-01, %21
  call void @advanceVelocity(%struct.SimFlatSt* noundef %15, i32 noundef %20, double noundef %22)
  br label %23

23:                                               ; preds = %14
  call void @profileStop(i32 noundef 4)
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  call void @profileStart(i32 noundef 3)
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %28 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %28, i32 0, i32 4
  %30 = load %struct.LinkCellSt*, %struct.LinkCellSt** %29, align 8
  %31 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load double, double* %6, align 8
  call void @advancePosition(%struct.SimFlatSt* noundef %27, i32 noundef %32, double noundef %33)
  br label %34

34:                                               ; preds = %26
  call void @profileStop(i32 noundef 3)
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  call void @profileStart(i32 noundef 5)
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  call void @redistributeAtoms(%struct.SimFlatSt* noundef %38)
  br label %39

39:                                               ; preds = %37
  call void @profileStop(i32 noundef 5)
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  call void @profileStart(i32 noundef 7)
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  call void @computeForce(%struct.SimFlatSt* noundef %43)
  br label %44

44:                                               ; preds = %42
  call void @profileStop(i32 noundef 7)
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  call void @profileStart(i32 noundef 4)
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %49 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %50 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %49, i32 0, i32 4
  %51 = load %struct.LinkCellSt*, %struct.LinkCellSt** %50, align 8
  %52 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load double, double* %6, align 8
  %55 = fmul double 5.000000e-01, %54
  call void @advanceVelocity(%struct.SimFlatSt* noundef %48, i32 noundef %53, double noundef %55)
  br label %56

56:                                               ; preds = %47
  call void @profileStop(i32 noundef 4)
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %8, !llvm.loop !4

61:                                               ; preds = %8
  %62 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  call void @kineticEnergy(%struct.SimFlatSt* noundef %62)
  %63 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %63, i32 0, i32 7
  %65 = load double, double* %64, align 8
  ret double %65
}

declare dso_local void @profileStart(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @advanceVelocity(%struct.SimFlatSt* noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %102, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %105

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 64, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %96, %14
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %20 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %19, i32 0, i32 4
  %21 = load %struct.LinkCellSt*, %struct.LinkCellSt** %20, align 8
  %22 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %18, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %17
  %30 = load double, double* %6, align 8
  %31 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %32 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %31, i32 0, i32 5
  %33 = load %struct.AtomsSt*, %struct.AtomsSt** %32, align 8
  %34 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %33, i32 0, i32 6
  %35 = load [3 x double]*, [3 x double]** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 %37
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 0
  %40 = load double, double* %39, align 8
  %41 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %42 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %41, i32 0, i32 5
  %43 = load %struct.AtomsSt*, %struct.AtomsSt** %42, align 8
  %44 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %43, i32 0, i32 5
  %45 = load [3 x double]*, [3 x double]** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 %47
  %49 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 0, i64 0
  %50 = load double, double* %49, align 8
  %51 = call double @llvm.fmuladd.f64(double %30, double %40, double %50)
  store double %51, double* %49, align 8
  %52 = load double, double* %6, align 8
  %53 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %54 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %53, i32 0, i32 5
  %55 = load %struct.AtomsSt*, %struct.AtomsSt** %54, align 8
  %56 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %55, i32 0, i32 6
  %57 = load [3 x double]*, [3 x double]** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 %59
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0, i64 1
  %62 = load double, double* %61, align 8
  %63 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %63, i32 0, i32 5
  %65 = load %struct.AtomsSt*, %struct.AtomsSt** %64, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %65, i32 0, i32 5
  %67 = load [3 x double]*, [3 x double]** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %69
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 1
  %72 = load double, double* %71, align 8
  %73 = call double @llvm.fmuladd.f64(double %52, double %62, double %72)
  store double %73, double* %71, align 8
  %74 = load double, double* %6, align 8
  %75 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %76 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %75, i32 0, i32 5
  %77 = load %struct.AtomsSt*, %struct.AtomsSt** %76, align 8
  %78 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %77, i32 0, i32 6
  %79 = load [3 x double]*, [3 x double]** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 %81
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 2
  %84 = load double, double* %83, align 8
  %85 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %86 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %85, i32 0, i32 5
  %87 = load %struct.AtomsSt*, %struct.AtomsSt** %86, align 8
  %88 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %87, i32 0, i32 5
  %89 = load [3 x double]*, [3 x double]** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 %91
  %93 = getelementptr inbounds [3 x double], [3 x double]* %92, i64 0, i64 2
  %94 = load double, double* %93, align 8
  %95 = call double @llvm.fmuladd.f64(double %74, double %84, double %94)
  store double %95, double* %93, align 8
  br label %96

96:                                               ; preds = %29
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %17, !llvm.loop !6

101:                                              ; preds = %17
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %10, !llvm.loop !7

105:                                              ; preds = %10
  ret void
}

declare dso_local void @profileStop(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @advancePosition(%struct.SimFlatSt* noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %128, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %131

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 64, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %122, %16
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %21, i32 0, i32 4
  %23 = load %struct.LinkCellSt*, %struct.LinkCellSt** %22, align 8
  %24 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %20, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %19
  %32 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %32, i32 0, i32 5
  %34 = load %struct.AtomsSt*, %struct.AtomsSt** %33, align 8
  %35 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %42 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %41, i32 0, i32 6
  %43 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %43, i64 %45
  %47 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %46, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = fdiv double 1.000000e+00, %48
  store double %49, double* %11, align 8
  %50 = load double, double* %6, align 8
  %51 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %52 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %51, i32 0, i32 5
  %53 = load %struct.AtomsSt*, %struct.AtomsSt** %52, align 8
  %54 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %53, i32 0, i32 5
  %55 = load [3 x double]*, [3 x double]** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 %57
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 0
  %60 = load double, double* %59, align 8
  %61 = fmul double %50, %60
  %62 = load double, double* %11, align 8
  %63 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %63, i32 0, i32 5
  %65 = load %struct.AtomsSt*, %struct.AtomsSt** %64, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %65, i32 0, i32 4
  %67 = load [3 x double]*, [3 x double]** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %69
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 0
  %72 = load double, double* %71, align 8
  %73 = call double @llvm.fmuladd.f64(double %61, double %62, double %72)
  store double %73, double* %71, align 8
  %74 = load double, double* %6, align 8
  %75 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %76 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %75, i32 0, i32 5
  %77 = load %struct.AtomsSt*, %struct.AtomsSt** %76, align 8
  %78 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %77, i32 0, i32 5
  %79 = load [3 x double]*, [3 x double]** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 %81
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 1
  %84 = load double, double* %83, align 8
  %85 = fmul double %74, %84
  %86 = load double, double* %11, align 8
  %87 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %88 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %87, i32 0, i32 5
  %89 = load %struct.AtomsSt*, %struct.AtomsSt** %88, align 8
  %90 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %89, i32 0, i32 4
  %91 = load [3 x double]*, [3 x double]** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 %93
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 1
  %96 = load double, double* %95, align 8
  %97 = call double @llvm.fmuladd.f64(double %85, double %86, double %96)
  store double %97, double* %95, align 8
  %98 = load double, double* %6, align 8
  %99 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %100 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %99, i32 0, i32 5
  %101 = load %struct.AtomsSt*, %struct.AtomsSt** %100, align 8
  %102 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %101, i32 0, i32 5
  %103 = load [3 x double]*, [3 x double]** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x double], [3 x double]* %103, i64 %105
  %107 = getelementptr inbounds [3 x double], [3 x double]* %106, i64 0, i64 2
  %108 = load double, double* %107, align 8
  %109 = fmul double %98, %108
  %110 = load double, double* %11, align 8
  %111 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %112 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %111, i32 0, i32 5
  %113 = load %struct.AtomsSt*, %struct.AtomsSt** %112, align 8
  %114 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %113, i32 0, i32 4
  %115 = load [3 x double]*, [3 x double]** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 %117
  %119 = getelementptr inbounds [3 x double], [3 x double]* %118, i64 0, i64 2
  %120 = load double, double* %119, align 8
  %121 = call double @llvm.fmuladd.f64(double %109, double %110, double %120)
  store double %121, double* %119, align 8
  br label %122

122:                                              ; preds = %31
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %19, !llvm.loop !8

127:                                              ; preds = %19
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %12, !llvm.loop !9

131:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @redistributeAtoms(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %4 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %5 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i32 0, i32 4
  %6 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %7 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %7, i32 0, i32 5
  %9 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  call void @updateLinkCells(%struct.LinkCellSt* noundef %6, %struct.AtomsSt* noundef %9)
  br label %10

10:                                               ; preds = %1
  call void @profileStart(i32 noundef 6)
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %13 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %12, i32 0, i32 10
  %14 = load %struct.HaloExchangeSt*, %struct.HaloExchangeSt** %13, align 8
  %15 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %16 = bitcast %struct.SimFlatSt* %15 to i8*
  call void @haloExchange(%struct.HaloExchangeSt* noundef %14, i8* noundef %16)
  br label %17

17:                                               ; preds = %11
  call void @profileStop(i32 noundef 6)
  br label %18

18:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %21, i32 0, i32 4
  %23 = load %struct.LinkCellSt*, %struct.LinkCellSt** %22, align 8
  %24 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %28, i32 0, i32 5
  %30 = load %struct.AtomsSt*, %struct.AtomsSt** %29, align 8
  %31 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %32 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %31, i32 0, i32 4
  %33 = load %struct.LinkCellSt*, %struct.LinkCellSt** %32, align 8
  %34 = load i32, i32* %3, align 4
  call void @sortAtomsInCell(%struct.AtomsSt* noundef %30, %struct.LinkCellSt* noundef %33, i32 noundef %34)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19, !llvm.loop !10

38:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @computeForce(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %3 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %4 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %3, i32 0, i32 9
  %5 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %4, align 8
  %6 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %5, i32 0, i32 6
  %7 = load i32 (%struct.SimFlatSt*)*, i32 (%struct.SimFlatSt*)** %6, align 8
  %8 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %9 = call i32 %7(%struct.SimFlatSt* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @kineticEnergy(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca [2 x double], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [2 x double], align 16
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %10 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %11 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %10, i32 0, i32 7
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  store double %12, double* %13, align 16
  %14 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %130, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %17, i32 0, i32 4
  %19 = load %struct.LinkCellSt*, %struct.LinkCellSt** %18, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %133

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 64, %24
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %124, %23
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %28, i32 0, i32 4
  %30 = load %struct.LinkCellSt*, %struct.LinkCellSt** %29, align 8
  %31 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %27, %36
  br i1 %37, label %38, label %129

38:                                               ; preds = %26
  %39 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %40 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %39, i32 0, i32 5
  %41 = load %struct.AtomsSt*, %struct.AtomsSt** %40, align 8
  %42 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %49 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %48, i32 0, i32 6
  %50 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %50, i64 %52
  %54 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = fdiv double 5.000000e-01, %55
  store double %56, double* %8, align 8
  %57 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %58 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %57, i32 0, i32 5
  %59 = load %struct.AtomsSt*, %struct.AtomsSt** %58, align 8
  %60 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %59, i32 0, i32 5
  %61 = load [3 x double]*, [3 x double]** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 %63
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 0
  %66 = load double, double* %65, align 8
  %67 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %68 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %67, i32 0, i32 5
  %69 = load %struct.AtomsSt*, %struct.AtomsSt** %68, align 8
  %70 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %69, i32 0, i32 5
  %71 = load [3 x double]*, [3 x double]** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 %73
  %75 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 0
  %76 = load double, double* %75, align 8
  %77 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %78 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %77, i32 0, i32 5
  %79 = load %struct.AtomsSt*, %struct.AtomsSt** %78, align 8
  %80 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %79, i32 0, i32 5
  %81 = load [3 x double]*, [3 x double]** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 %83
  %85 = getelementptr inbounds [3 x double], [3 x double]* %84, i64 0, i64 1
  %86 = load double, double* %85, align 8
  %87 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %88 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %87, i32 0, i32 5
  %89 = load %struct.AtomsSt*, %struct.AtomsSt** %88, align 8
  %90 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %89, i32 0, i32 5
  %91 = load [3 x double]*, [3 x double]** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 %93
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 1
  %96 = load double, double* %95, align 8
  %97 = fmul double %86, %96
  %98 = call double @llvm.fmuladd.f64(double %66, double %76, double %97)
  %99 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %100 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %99, i32 0, i32 5
  %101 = load %struct.AtomsSt*, %struct.AtomsSt** %100, align 8
  %102 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %101, i32 0, i32 5
  %103 = load [3 x double]*, [3 x double]** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x double], [3 x double]* %103, i64 %105
  %107 = getelementptr inbounds [3 x double], [3 x double]* %106, i64 0, i64 2
  %108 = load double, double* %107, align 8
  %109 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %110 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %109, i32 0, i32 5
  %111 = load %struct.AtomsSt*, %struct.AtomsSt** %110, align 8
  %112 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %111, i32 0, i32 5
  %113 = load [3 x double]*, [3 x double]** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x double], [3 x double]* %113, i64 %115
  %117 = getelementptr inbounds [3 x double], [3 x double]* %116, i64 0, i64 2
  %118 = load double, double* %117, align 8
  %119 = call double @llvm.fmuladd.f64(double %108, double %118, double %98)
  %120 = load double, double* %8, align 8
  %121 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  %122 = load double, double* %121, align 8
  %123 = call double @llvm.fmuladd.f64(double %119, double %120, double %122)
  store double %123, double* %121, align 8
  br label %124

124:                                              ; preds = %38
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %26, !llvm.loop !11

129:                                              ; preds = %26
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %15, !llvm.loop !12

133:                                              ; preds = %15
  br label %134

134:                                              ; preds = %133
  call void @profileStart(i32 noundef 10)
  br label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %137 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  call void @addRealParallel(double* noundef %136, double* noundef %137, i32 noundef 2)
  br label %138

138:                                              ; preds = %135
  call void @profileStop(i32 noundef 10)
  br label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %141 = load double, double* %140, align 16
  %142 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %143 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %142, i32 0, i32 7
  store double %141, double* %143, align 8
  %144 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %145 = load double, double* %144, align 8
  %146 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %147 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %146, i32 0, i32 8
  store double %145, double* %147, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local void @addRealParallel(double* noundef, double* noundef, i32 noundef) #1

declare dso_local void @updateLinkCells(%struct.LinkCellSt* noundef, %struct.AtomsSt* noundef) #1

declare dso_local void @haloExchange(%struct.HaloExchangeSt* noundef, i8* noundef) #1

declare dso_local void @sortAtomsInCell(%struct.AtomsSt* noundef, %struct.LinkCellSt* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
