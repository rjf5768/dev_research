; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/ljForce.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/ljForce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, {}* }
%struct.SimFlatSt = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt*, %struct.HaloExchangeSt* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.HaloExchangeSt = type { [6 x i32], i32, i32 (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)*, void (i8*)*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.LjPotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)*, double, double }

@.str = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Cu\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"  Potential type   : Lennard-Jones\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  Species name     : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  Atomic number    : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  Mass             : %lg amu\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"  Lattice Type     : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"  Lattice spacing  : %lg Angstroms\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"  Cutoff           : %lg Angstroms\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"  Epsilon          : %lg eV\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"  Sigma            : %lg Angstroms\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"jBox>=0\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/ljForce.c\00", align 1
@__PRETTY_FUNCTION__.ljForce = private unnamed_addr constant [23 x i8] c"int ljForce(SimFlat *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ljDestroy(%struct.BasePotentialSt** noundef %0) #0 {
  %2 = alloca %struct.BasePotentialSt**, align 8
  %3 = alloca %struct.LjPotentialSt*, align 8
  store %struct.BasePotentialSt** %0, %struct.BasePotentialSt*** %2, align 8
  %4 = load %struct.BasePotentialSt**, %struct.BasePotentialSt*** %2, align 8
  %5 = icmp ne %struct.BasePotentialSt** %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.BasePotentialSt**, %struct.BasePotentialSt*** %2, align 8
  %9 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %8, align 8
  %10 = bitcast %struct.BasePotentialSt* %9 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %10, %struct.LjPotentialSt** %3, align 8
  %11 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %3, align 8
  %12 = icmp ne %struct.LjPotentialSt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %18

14:                                               ; preds = %7
  %15 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %3, align 8
  %16 = bitcast %struct.LjPotentialSt* %15 to i8*
  call void @comdFree(i8* noundef %16)
  %17 = load %struct.BasePotentialSt**, %struct.BasePotentialSt*** %2, align 8
  store %struct.BasePotentialSt* null, %struct.BasePotentialSt** %17, align 8
  br label %18

18:                                               ; preds = %14, %13, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BasePotentialSt* @initLjPot() #0 {
  %1 = alloca %struct.LjPotentialSt*, align 8
  %2 = call i8* @comdMalloc(i64 noundef 80)
  %3 = bitcast i8* %2 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %3, %struct.LjPotentialSt** %1, align 8
  %4 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %5 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %4, i32 0, i32 6
  store i32 (%struct.SimFlatSt*)* @ljForce, i32 (%struct.SimFlatSt*)** %5, align 8
  %6 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %7 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %6, i32 0, i32 7
  store void (%struct._IO_FILE*, %struct.BasePotentialSt*)* @ljPrint, void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %7, align 8
  %8 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %9 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %8, i32 0, i32 8
  store void (%struct.BasePotentialSt**)* @ljDestroy, void (%struct.BasePotentialSt**)** %9, align 8
  %10 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %11 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %10, i32 0, i32 9
  store double 2.315000e+00, double* %11, align 8
  %12 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %13 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %12, i32 0, i32 10
  store double 1.670000e-01, double* %13, align 8
  %14 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %15 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %14, i32 0, i32 1
  store double 0x40B9BA7E39DCDE3E, double* %15, align 8
  %16 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %17 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %16, i32 0, i32 2
  store double 3.615000e+00, double* %17, align 8
  %18 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %19 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %18, i32 0, i32 3
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %21 = call i8* @strcpy(i8* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5
  %22 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %23 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %22, i32 0, i32 9
  %24 = load double, double* %23, align 8
  %25 = fmul double 2.500000e+00, %24
  %26 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %27 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %26, i32 0, i32 0
  store double %25, double* %27, align 8
  %28 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %29 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %28, i32 0, i32 4
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 0, i64 0
  %31 = call i8* @strcpy(i8* noundef %30, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  %32 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %33 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %32, i32 0, i32 5
  store i32 29, i32* %33, align 4
  %34 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %1, align 8
  %35 = bitcast %struct.LjPotentialSt* %34 to %struct.BasePotentialSt*
  ret %struct.BasePotentialSt* %35
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #5
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ljForce(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca %struct.LjPotentialSt*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [27 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [3 x double], align 16
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %34 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %35 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %34, i32 0, i32 9
  %36 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %35, align 8
  %37 = bitcast %struct.BasePotentialSt* %36 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %37, %struct.LjPotentialSt** %3, align 8
  %38 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %3, align 8
  %39 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %38, i32 0, i32 9
  %40 = load double, double* %39, align 8
  store double %40, double* %4, align 8
  %41 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %3, align 8
  %42 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %41, i32 0, i32 10
  %43 = load double, double* %42, align 8
  store double %43, double* %5, align 8
  %44 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %3, align 8
  %45 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  store double %46, double* %6, align 8
  %47 = load double, double* %6, align 8
  %48 = load double, double* %6, align 8
  %49 = fmul double %47, %48
  store double %49, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %50 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %50, i32 0, i32 7
  store double 0.000000e+00, double* %51, align 8
  %52 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %53 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %52, i32 0, i32 4
  %54 = load %struct.LinkCellSt*, %struct.LinkCellSt** %53, align 8
  %55 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 64
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %80, %1
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %63, i32 0, i32 5
  %65 = load %struct.AtomsSt*, %struct.AtomsSt** %64, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %65, i32 0, i32 6
  %67 = load [3 x double]*, [3 x double]** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %69
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 0
  call void @zeroReal3(double* noundef %71)
  %72 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %73 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %72, i32 0, i32 5
  %74 = load %struct.AtomsSt*, %struct.AtomsSt** %73, align 8
  %75 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %74, i32 0, i32 7
  %76 = load double*, double** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double 0.000000e+00, double* %79, align 8
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %58, !llvm.loop !4

83:                                               ; preds = %58
  %84 = load double, double* %4, align 8
  %85 = load double, double* %4, align 8
  %86 = fmul double %84, %85
  %87 = load double, double* %4, align 8
  %88 = fmul double %86, %87
  %89 = load double, double* %4, align 8
  %90 = fmul double %88, %89
  %91 = load double, double* %4, align 8
  %92 = fmul double %90, %91
  %93 = load double, double* %4, align 8
  %94 = fmul double %92, %93
  store double %94, double* %11, align 8
  %95 = load double, double* %11, align 8
  %96 = load double, double* %7, align 8
  %97 = load double, double* %7, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %7, align 8
  %100 = fmul double %98, %99
  %101 = fdiv double %95, %100
  store double %101, double* %12, align 8
  %102 = load double, double* %12, align 8
  %103 = fmul double 1.000000e+00, %102
  %104 = load double, double* %12, align 8
  %105 = fsub double %104, 1.000000e+00
  %106 = fmul double %103, %105
  store double %106, double* %13, align 8
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %381, %83
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %110 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %109, i32 0, i32 4
  %111 = load %struct.LinkCellSt*, %struct.LinkCellSt** %110, align 8
  %112 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %108, %113
  br i1 %114, label %115, label %384

115:                                              ; preds = %107
  %116 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %117 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %116, i32 0, i32 4
  %118 = load %struct.LinkCellSt*, %struct.LinkCellSt** %117, align 8
  %119 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %118, i32 0, i32 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %381

128:                                              ; preds = %115
  %129 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %130 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %129, i32 0, i32 4
  %131 = load %struct.LinkCellSt*, %struct.LinkCellSt** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = getelementptr inbounds [27 x i32], [27 x i32]* %14, i64 0, i64 0
  %134 = call i32 @getNeighborBoxes(%struct.LinkCellSt* noundef %131, i32 noundef %132, i32* noundef %133)
  store i32 %134, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %135

135:                                              ; preds = %377, %128
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %380

139:                                              ; preds = %135
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [27 x i32], [27 x i32]* %14, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %148

147:                                              ; preds = %139
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.ljForce, i64 0, i64 0)) #6
  unreachable

148:                                              ; preds = %146
  %149 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %150 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %149, i32 0, i32 4
  %151 = load %struct.LinkCellSt*, %struct.LinkCellSt** %150, align 8
  %152 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %151, i32 0, i32 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  br label %377

161:                                              ; preds = %148
  %162 = load i32, i32* %15, align 4
  %163 = mul nsw i32 %162, 64
  store i32 %163, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %164

164:                                              ; preds = %371, %161
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %376

168:                                              ; preds = %164
  %169 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %170 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %169, i32 0, i32 5
  %171 = load %struct.AtomsSt*, %struct.AtomsSt** %170, align 8
  %172 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %19, align 4
  %179 = mul nsw i32 64, %178
  store i32 %179, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %180

180:                                              ; preds = %365, %168
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %20, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %370

184:                                              ; preds = %180
  %185 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %186 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %185, i32 0, i32 5
  %187 = load %struct.AtomsSt*, %struct.AtomsSt** %186, align 8
  %188 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %196 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %195, i32 0, i32 4
  %197 = load %struct.LinkCellSt*, %struct.LinkCellSt** %196, align 8
  %198 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %194, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %184
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %23, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %365

206:                                              ; preds = %201, %184
  store double 0.000000e+00, double* %28, align 8
  store i32 0, i32* %29, align 4
  br label %207

207:                                              ; preds = %249, %206
  %208 = load i32, i32* %29, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %252

210:                                              ; preds = %207
  %211 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %212 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %211, i32 0, i32 5
  %213 = load %struct.AtomsSt*, %struct.AtomsSt** %212, align 8
  %214 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %213, i32 0, i32 4
  %215 = load [3 x double]*, [3 x double]** %214, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [3 x double], [3 x double]* %215, i64 %217
  %219 = load i32, i32* %29, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x double], [3 x double]* %218, i64 0, i64 %220
  %222 = load double, double* %221, align 8
  %223 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %224 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %223, i32 0, i32 5
  %225 = load %struct.AtomsSt*, %struct.AtomsSt** %224, align 8
  %226 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %225, i32 0, i32 4
  %227 = load [3 x double]*, [3 x double]** %226, align 8
  %228 = load i32, i32* %24, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [3 x double], [3 x double]* %227, i64 %229
  %231 = load i32, i32* %29, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x double], [3 x double]* %230, i64 0, i64 %232
  %234 = load double, double* %233, align 8
  %235 = fsub double %222, %234
  %236 = load i32, i32* %29, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %237
  store double %235, double* %238, align 8
  %239 = load i32, i32* %29, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %240
  %242 = load double, double* %241, align 8
  %243 = load i32, i32* %29, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %244
  %246 = load double, double* %245, align 8
  %247 = load double, double* %28, align 8
  %248 = call double @llvm.fmuladd.f64(double %242, double %246, double %247)
  store double %248, double* %28, align 8
  br label %249

249:                                              ; preds = %210
  %250 = load i32, i32* %29, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %29, align 4
  br label %207, !llvm.loop !6

252:                                              ; preds = %207
  %253 = load double, double* %28, align 8
  %254 = load double, double* %7, align 8
  %255 = fcmp ogt double %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %365

257:                                              ; preds = %252
  %258 = load double, double* %28, align 8
  %259 = fdiv double 1.000000e+00, %258
  store double %259, double* %28, align 8
  %260 = load double, double* %11, align 8
  %261 = load double, double* %28, align 8
  %262 = load double, double* %28, align 8
  %263 = fmul double %261, %262
  %264 = load double, double* %28, align 8
  %265 = fmul double %263, %264
  %266 = fmul double %260, %265
  store double %266, double* %30, align 8
  %267 = load double, double* %30, align 8
  %268 = load double, double* %30, align 8
  %269 = fsub double %268, 1.000000e+00
  %270 = load double, double* %13, align 8
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double %267, double %269, double %271)
  store double %272, double* %31, align 8
  %273 = load double, double* %31, align 8
  %274 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %275 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %274, i32 0, i32 5
  %276 = load %struct.AtomsSt*, %struct.AtomsSt** %275, align 8
  %277 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %276, i32 0, i32 7
  %278 = load double*, double** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, double* %278, i64 %280
  %282 = load double, double* %281, align 8
  %283 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %273, double %282)
  store double %283, double* %281, align 8
  %284 = load double, double* %31, align 8
  %285 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %286 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %285, i32 0, i32 5
  %287 = load %struct.AtomsSt*, %struct.AtomsSt** %286, align 8
  %288 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %287, i32 0, i32 7
  %289 = load double*, double** %288, align 8
  %290 = load i32, i32* %24, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %289, i64 %291
  %293 = load double, double* %292, align 8
  %294 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %284, double %293)
  store double %294, double* %292, align 8
  %295 = load i32, i32* %19, align 4
  %296 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %297 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %296, i32 0, i32 4
  %298 = load %struct.LinkCellSt*, %struct.LinkCellSt** %297, align 8
  %299 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp slt i32 %295, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %257
  %303 = load double, double* %31, align 8
  %304 = load double, double* %8, align 8
  %305 = fadd double %304, %303
  store double %305, double* %8, align 8
  br label %310

306:                                              ; preds = %257
  %307 = load double, double* %31, align 8
  %308 = load double, double* %8, align 8
  %309 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %307, double %308)
  store double %309, double* %8, align 8
  br label %310

310:                                              ; preds = %306, %302
  %311 = load double, double* %5, align 8
  %312 = fmul double -4.000000e+00, %311
  %313 = load double, double* %30, align 8
  %314 = fmul double %312, %313
  %315 = load double, double* %28, align 8
  %316 = fmul double %314, %315
  %317 = load double, double* %30, align 8
  %318 = call double @llvm.fmuladd.f64(double 1.200000e+01, double %317, double -6.000000e+00)
  %319 = fmul double %316, %318
  store double %319, double* %32, align 8
  store i32 0, i32* %33, align 4
  br label %320

320:                                              ; preds = %361, %310
  %321 = load i32, i32* %33, align 4
  %322 = icmp slt i32 %321, 3
  br i1 %322, label %323, label %364

323:                                              ; preds = %320
  %324 = load i32, i32* %33, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %325
  %327 = load double, double* %326, align 8
  %328 = load double, double* %32, align 8
  %329 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %330 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %329, i32 0, i32 5
  %331 = load %struct.AtomsSt*, %struct.AtomsSt** %330, align 8
  %332 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %331, i32 0, i32 6
  %333 = load [3 x double]*, [3 x double]** %332, align 8
  %334 = load i32, i32* %21, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [3 x double], [3 x double]* %333, i64 %335
  %337 = load i32, i32* %33, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [3 x double], [3 x double]* %336, i64 0, i64 %338
  %340 = load double, double* %339, align 8
  %341 = fneg double %327
  %342 = call double @llvm.fmuladd.f64(double %341, double %328, double %340)
  store double %342, double* %339, align 8
  %343 = load i32, i32* %33, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %344
  %346 = load double, double* %345, align 8
  %347 = load double, double* %32, align 8
  %348 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %349 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %348, i32 0, i32 5
  %350 = load %struct.AtomsSt*, %struct.AtomsSt** %349, align 8
  %351 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %350, i32 0, i32 6
  %352 = load [3 x double]*, [3 x double]** %351, align 8
  %353 = load i32, i32* %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [3 x double], [3 x double]* %352, i64 %354
  %356 = load i32, i32* %33, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [3 x double], [3 x double]* %355, i64 0, i64 %357
  %359 = load double, double* %358, align 8
  %360 = call double @llvm.fmuladd.f64(double %346, double %347, double %359)
  store double %360, double* %358, align 8
  br label %361

361:                                              ; preds = %323
  %362 = load i32, i32* %33, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %33, align 4
  br label %320, !llvm.loop !7

364:                                              ; preds = %320
  br label %365

365:                                              ; preds = %364, %256, %205
  %366 = load i32, i32* %25, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %25, align 4
  %368 = load i32, i32* %24, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %24, align 4
  br label %180, !llvm.loop !8

370:                                              ; preds = %180
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %22, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %22, align 4
  %374 = load i32, i32* %21, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %21, align 4
  br label %164, !llvm.loop !9

376:                                              ; preds = %164
  br label %377

377:                                              ; preds = %376, %160
  %378 = load i32, i32* %18, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %18, align 4
  br label %135, !llvm.loop !10

380:                                              ; preds = %135
  br label %381

381:                                              ; preds = %380, %127
  %382 = load i32, i32* %15, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %15, align 4
  br label %107, !llvm.loop !11

384:                                              ; preds = %107
  %385 = load double, double* %8, align 8
  %386 = fmul double %385, 4.000000e+00
  %387 = load double, double* %5, align 8
  %388 = fmul double %386, %387
  store double %388, double* %8, align 8
  %389 = load double, double* %8, align 8
  %390 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %391 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %390, i32 0, i32 7
  store double %389, double* %391, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ljPrint(%struct._IO_FILE* noundef %0, %struct.BasePotentialSt* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.BasePotentialSt*, align 8
  %5 = alloca %struct.LjPotentialSt*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.BasePotentialSt* %1, %struct.BasePotentialSt** %4, align 8
  %6 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %4, align 8
  %7 = bitcast %struct.BasePotentialSt* %6 to %struct.LjPotentialSt*
  store %struct.LjPotentialSt* %7, %struct.LjPotentialSt** %5, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %12 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %11, i32 0, i32 4
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %17 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 noundef %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %21 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %22 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fdiv double %23, 0x4059E921DD37DC65
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double noundef %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %27 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %28 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %27, i32 0, i32 3
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %33 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %32, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), double noundef %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %38 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), double noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %43 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %42, i32 0, i32 10
  %44 = load double, double* %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), double noundef %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %47 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %48 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %47, i32 0, i32 9
  %49 = load double, double* %48, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), double noundef %49)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

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

declare dso_local i32 @getNeighborBoxes(%struct.LinkCellSt* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
