; ModuleID = './ljForce.ll'
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
  %.not = icmp eq %struct.BasePotentialSt** %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %9

3:                                                ; preds = %1
  %4 = bitcast %struct.BasePotentialSt** %0 to %struct.LjPotentialSt**
  %5 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %4, align 8
  %.not1 = icmp eq %struct.LjPotentialSt* %5, null
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = bitcast %struct.LjPotentialSt* %5 to i8*
  call void @comdFree(i8* noundef nonnull %8)
  store %struct.BasePotentialSt* null, %struct.BasePotentialSt** %0, align 8
  br label %9

9:                                                ; preds = %7, %6, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BasePotentialSt* @initLjPot() #0 {
  %1 = call i8* @comdMalloc(i64 noundef 80)
  %2 = getelementptr inbounds i8, i8* %1, i64 40
  %3 = bitcast i8* %2 to i32 (%struct.SimFlatSt*)**
  store i32 (%struct.SimFlatSt*)* @ljForce, i32 (%struct.SimFlatSt*)** %3, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 48
  %5 = bitcast i8* %4 to void (%struct._IO_FILE*, %struct.BasePotentialSt*)**
  store void (%struct._IO_FILE*, %struct.BasePotentialSt*)* @ljPrint, void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 56
  %7 = bitcast i8* %6 to void (%struct.BasePotentialSt**)**
  store void (%struct.BasePotentialSt**)* @ljDestroy, void (%struct.BasePotentialSt**)** %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 64
  %9 = bitcast i8* %8 to double*
  store double 2.315000e+00, double* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 72
  %11 = bitcast i8* %10 to double*
  store double 1.670000e-01, double* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = bitcast i8* %12 to double*
  store double 0x40B9BA7E39DCDE3E, double* %13, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 16
  %15 = bitcast i8* %14 to double*
  store double 3.615000e+00, double* %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 24
  %17 = bitcast i8* %16 to i32*
  store i32 4408134, i32* %17, align 1
  %18 = getelementptr inbounds i8, i8* %1, i64 64
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 8
  %21 = fmul double %20, 2.500000e+00
  %22 = bitcast i8* %1 to double*
  store double %21, double* %22, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %23, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 3, i1 false) #8
  %24 = getelementptr inbounds i8, i8* %1, i64 36
  %25 = bitcast i8* %24 to i32*
  store i32 29, i32* %25, align 4
  %26 = bitcast i8* %1 to %struct.BasePotentialSt*
  ret %struct.BasePotentialSt* %26
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #8
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ljForce(%struct.SimFlatSt* nocapture noundef %0) #0 {
  %2 = alloca [27 x i32], align 16
  %3 = alloca [3 x double], align 16
  %4 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 9
  %5 = bitcast %struct.BasePotentialSt** %4 to %struct.LjPotentialSt**
  %6 = load %struct.LjPotentialSt*, %struct.LjPotentialSt** %5, align 8
  %7 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %6, i64 0, i32 9
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %6, i64 0, i32 10
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.LjPotentialSt, %struct.LjPotentialSt* %6, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  store double 0.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %16 = load %struct.LinkCellSt*, %struct.LinkCellSt** %15, align 8
  %17 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %16, i64 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = shl nsw i32 %18, 6
  br label %20

20:                                               ; preds = %35, %1
  %.08 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %21 = icmp slt i32 %.08, %19
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %24 = load %struct.AtomsSt*, %struct.AtomsSt** %23, align 8
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %24, i64 0, i32 6
  %26 = load [3 x double]*, [3 x double]** %25, align 8
  %27 = zext i32 %.08 to i64
  %28 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 %27, i64 0
  call void @zeroReal3(double* noundef %28)
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %30 = load %struct.AtomsSt*, %struct.AtomsSt** %29, align 8
  %31 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %30, i64 0, i32 7
  %32 = load double*, double** %31, align 8
  %33 = zext i32 %.08 to i64
  %34 = getelementptr inbounds double, double* %32, i64 %33
  store double 0.000000e+00, double* %34, align 8
  br label %35

35:                                               ; preds = %22
  %36 = add nuw nsw i32 %.08, 1
  br label %20, !llvm.loop !4

37:                                               ; preds = %20
  %38 = fmul double %8, %8
  %39 = fmul double %38, %8
  %40 = fmul double %39, %8
  %41 = fmul double %40, %8
  %42 = fmul double %41, %8
  %43 = fmul double %13, %13
  %44 = fmul double %43, %13
  %45 = fdiv double %42, %44
  %46 = fadd double %45, -1.000000e+00
  br label %47

47:                                               ; preds = %234, %37
  %.010 = phi i32 [ 0, %37 ], [ %235, %234 ]
  %.06 = phi double [ 0.000000e+00, %37 ], [ %.7, %234 ]
  %48 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %49 = load %struct.LinkCellSt*, %struct.LinkCellSt** %48, align 8
  %50 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %49, i64 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %.010, %51
  br i1 %52, label %53, label %236

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %55 = load %struct.LinkCellSt*, %struct.LinkCellSt** %54, align 8
  %56 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %55, i64 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = zext i32 %.010 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %234

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %65 = load %struct.LinkCellSt*, %struct.LinkCellSt** %64, align 8
  %66 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %67 = call i32 @getNeighborBoxes(%struct.LinkCellSt* noundef %65, i32 noundef %.010, i32* noundef nonnull %66) #8
  br label %68

68:                                               ; preds = %231, %63
  %.09 = phi i32 [ 0, %63 ], [ %232, %231 ]
  %.1 = phi double [ %.06, %63 ], [ %.6, %231 ]
  %69 = icmp slt i32 %.09, %67
  br i1 %69, label %70, label %233

70:                                               ; preds = %68
  %71 = zext i32 %.09 to i64
  %72 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.ljForce, i64 0, i64 0)) #9
  unreachable

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %79 = load %struct.LinkCellSt*, %struct.LinkCellSt** %78, align 8
  %80 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %79, i64 0, i32 8
  %81 = load i32*, i32** %80, align 8
  %82 = sext i32 %73 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %231

87:                                               ; preds = %77
  %88 = shl nsw i32 %.010, 6
  br label %89

89:                                               ; preds = %227, %87
  %.07 = phi i32 [ %88, %87 ], [ %229, %227 ]
  %.2 = phi double [ %.1, %87 ], [ %.3, %227 ]
  %.05 = phi i32 [ 0, %87 ], [ %228, %227 ]
  %90 = icmp slt i32 %.05, %60
  br i1 %90, label %91, label %230

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %93 = load %struct.AtomsSt*, %struct.AtomsSt** %92, align 8
  %94 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %93, i64 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = zext i32 %.07 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = shl nsw i32 %73, 6
  br label %100

100:                                              ; preds = %223, %91
  %.3 = phi double [ %.2, %91 ], [ %.5, %223 ]
  %.04 = phi i32 [ %99, %91 ], [ %225, %223 ]
  %.03 = phi i32 [ 0, %91 ], [ %224, %223 ]
  %101 = icmp slt i32 %.03, %84
  br i1 %101, label %102, label %226

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %104 = load %struct.LinkCellSt*, %struct.LinkCellSt** %103, align 8
  %105 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %104, i64 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %73, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %110 = load %struct.AtomsSt*, %struct.AtomsSt** %109, align 8
  %111 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %110, i64 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = sext i32 %.04 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %.not = icmp sgt i32 %115, %98
  br i1 %.not, label %117, label %116

116:                                              ; preds = %108
  br label %223

117:                                              ; preds = %108, %102
  br label %118

118:                                              ; preds = %140, %117
  %.02 = phi double [ 0.000000e+00, %117 ], [ %147, %140 ]
  %.01 = phi i32 [ 0, %117 ], [ %148, %140 ]
  %119 = icmp ult i32 %.01, 3
  br i1 %119, label %120, label %149

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %122 = load %struct.AtomsSt*, %struct.AtomsSt** %121, align 8
  %123 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %122, i64 0, i32 4
  %124 = load [3 x double]*, [3 x double]** %123, align 8
  %125 = zext i32 %.07 to i64
  %126 = zext i32 %.01 to i64
  %127 = getelementptr inbounds [3 x double], [3 x double]* %124, i64 %125, i64 %126
  %128 = load double, double* %127, align 8
  %129 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %130 = load %struct.AtomsSt*, %struct.AtomsSt** %129, align 8
  %131 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %130, i64 0, i32 4
  %132 = load [3 x double]*, [3 x double]** %131, align 8
  %133 = sext i32 %.04 to i64
  %134 = zext i32 %.01 to i64
  %135 = getelementptr inbounds [3 x double], [3 x double]* %132, i64 %133, i64 %134
  %136 = load double, double* %135, align 8
  %137 = fsub double %128, %136
  %138 = zext i32 %.01 to i64
  %139 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %138
  store double %137, double* %139, align 8
  br label %140

140:                                              ; preds = %120
  %141 = zext i32 %.01 to i64
  %142 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = zext i32 %.01 to i64
  %145 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %144
  %146 = load double, double* %145, align 8
  %147 = call double @llvm.fmuladd.f64(double %143, double %146, double %.02)
  %148 = add nuw nsw i32 %.01, 1
  br label %118, !llvm.loop !6

149:                                              ; preds = %118
  %150 = fcmp ogt double %.02, %13
  br i1 %150, label %151, label %152

151:                                              ; preds = %149
  br label %223

152:                                              ; preds = %149
  %153 = fdiv double 1.000000e+00, %.02
  %154 = fmul double %153, %153
  %155 = fmul double %154, %153
  %156 = fmul double %42, %155
  %157 = fadd double %156, -1.000000e+00
  %158 = fneg double %45
  %159 = fmul double %46, %158
  %160 = call double @llvm.fmuladd.f64(double %156, double %157, double %159)
  %161 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %162 = load %struct.AtomsSt*, %struct.AtomsSt** %161, align 8
  %163 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %162, i64 0, i32 7
  %164 = load double*, double** %163, align 8
  %165 = zext i32 %.07 to i64
  %166 = getelementptr inbounds double, double* %164, i64 %165
  %167 = load double, double* %166, align 8
  %168 = call double @llvm.fmuladd.f64(double %160, double 5.000000e-01, double %167)
  store double %168, double* %166, align 8
  %169 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %170 = load %struct.AtomsSt*, %struct.AtomsSt** %169, align 8
  %171 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %170, i64 0, i32 7
  %172 = load double*, double** %171, align 8
  %173 = sext i32 %.04 to i64
  %174 = getelementptr inbounds double, double* %172, i64 %173
  %175 = load double, double* %174, align 8
  %176 = call double @llvm.fmuladd.f64(double %160, double 5.000000e-01, double %175)
  store double %176, double* %174, align 8
  %177 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %178 = load %struct.LinkCellSt*, %struct.LinkCellSt** %177, align 8
  %179 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %178, i64 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %73, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %152
  %183 = fadd double %.3, %160
  br label %186

184:                                              ; preds = %152
  %185 = call double @llvm.fmuladd.f64(double %160, double 5.000000e-01, double %.3)
  br label %186

186:                                              ; preds = %184, %182
  %.4 = phi double [ %183, %182 ], [ %185, %184 ]
  %187 = fmul double %10, -4.000000e+00
  %188 = fmul double %187, %156
  %189 = fmul double %188, %153
  %190 = call double @llvm.fmuladd.f64(double %156, double 1.200000e+01, double -6.000000e+00)
  %191 = fmul double %189, %190
  br label %192

192:                                              ; preds = %220, %186
  %.0 = phi i32 [ 0, %186 ], [ %221, %220 ]
  %193 = icmp ult i32 %.0, 3
  br i1 %193, label %194, label %222

194:                                              ; preds = %192
  %195 = zext i32 %.0 to i64
  %196 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %195
  %197 = load double, double* %196, align 8
  %198 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %199 = load %struct.AtomsSt*, %struct.AtomsSt** %198, align 8
  %200 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %199, i64 0, i32 6
  %201 = load [3 x double]*, [3 x double]** %200, align 8
  %202 = zext i32 %.07 to i64
  %203 = zext i32 %.0 to i64
  %204 = getelementptr inbounds [3 x double], [3 x double]* %201, i64 %202, i64 %203
  %205 = load double, double* %204, align 8
  %206 = fneg double %197
  %207 = call double @llvm.fmuladd.f64(double %206, double %191, double %205)
  store double %207, double* %204, align 8
  %208 = zext i32 %.0 to i64
  %209 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %208
  %210 = load double, double* %209, align 8
  %211 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %212 = load %struct.AtomsSt*, %struct.AtomsSt** %211, align 8
  %213 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %212, i64 0, i32 6
  %214 = load [3 x double]*, [3 x double]** %213, align 8
  %215 = sext i32 %.04 to i64
  %216 = zext i32 %.0 to i64
  %217 = getelementptr inbounds [3 x double], [3 x double]* %214, i64 %215, i64 %216
  %218 = load double, double* %217, align 8
  %219 = call double @llvm.fmuladd.f64(double %210, double %191, double %218)
  store double %219, double* %217, align 8
  br label %220

220:                                              ; preds = %194
  %221 = add nuw nsw i32 %.0, 1
  br label %192, !llvm.loop !7

222:                                              ; preds = %192
  br label %223

223:                                              ; preds = %222, %151, %116
  %.5 = phi double [ %.3, %116 ], [ %.3, %151 ], [ %.4, %222 ]
  %224 = add nuw nsw i32 %.03, 1
  %225 = add nsw i32 %.04, 1
  br label %100, !llvm.loop !8

226:                                              ; preds = %100
  br label %227

227:                                              ; preds = %226
  %228 = add nuw nsw i32 %.05, 1
  %229 = add nuw nsw i32 %.07, 1
  br label %89, !llvm.loop !9

230:                                              ; preds = %89
  br label %231

231:                                              ; preds = %230, %86
  %.6 = phi double [ %.1, %86 ], [ %.2, %230 ]
  %232 = add nuw nsw i32 %.09, 1
  br label %68, !llvm.loop !10

233:                                              ; preds = %68
  br label %234

234:                                              ; preds = %233, %62
  %.7 = phi double [ %.06, %62 ], [ %.1, %233 ]
  %235 = add nuw nsw i32 %.010, 1
  br label %47, !llvm.loop !11

236:                                              ; preds = %47
  %237 = fmul double %.06, 4.000000e+00
  %238 = fmul double %237, %10
  %239 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  store double %238, double* %239, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @ljPrint(%struct._IO_FILE* noundef %0, %struct.BasePotentialSt* noundef %1) #0 {
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %0)
  %4 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 4, i64 0
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %4) #8
  %6 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 noundef %7) #8
  %9 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = fdiv double %10, 0x4059E921DD37DC65
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double noundef %11) #8
  %13 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 3, i64 0
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %13) #8
  %15 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 2
  %16 = load double, double* %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), double noundef %16) #8
  %18 = getelementptr %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), double noundef %19) #8
  %21 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 1, i32 1
  %22 = load double, double* %21, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), double noundef %22) #8
  %24 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %1, i64 1, i32 0
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), double noundef %25) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @zeroReal3(double* nocapture noundef writeonly %0) #3 {
  store double 0.000000e+00, double* %0, align 8
  %2 = getelementptr inbounds double, double* %0, i64 1
  store double 0.000000e+00, double* %2, align 8
  %3 = getelementptr inbounds double, double* %0, i64 2
  store double 0.000000e+00, double* %3, align 8
  ret void
}

declare dso_local i32 @getNeighborBoxes(%struct.LinkCellSt* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
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
