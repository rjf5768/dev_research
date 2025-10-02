; ModuleID = './compute.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/power/compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

@P = internal global double 1.000000e+00, align 8
@Q = internal global double 1.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Tree(%struct.root* nocapture noundef %0) #0 {
  %2 = alloca %struct.demand, align 8
  %3 = alloca %struct.demand, align 8
  %4 = alloca %struct.demand, align 8
  %5 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 0
  store double 0.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 1
  store double 0.000000e+00, double* %6, align 8
  br label %7

7:                                                ; preds = %34, %1
  %.0 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %8 = icmp ult i32 %.0, 11
  br i1 %8, label %9, label %36

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.root, %struct.root* %0, i64 0, i32 6, i64 %10
  %12 = load %struct.lateral*, %struct.lateral** %11, align 8
  %13 = getelementptr inbounds %struct.root, %struct.root* %0, i64 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.root, %struct.root* %0, i64 0, i32 2
  %16 = load double, double* %15, align 8
  %17 = call { double, double } @Compute_Lateral(%struct.lateral* noundef %12, double noundef %14, double noundef %16, double noundef %14, double noundef %16)
  %18 = getelementptr inbounds %struct.demand, %struct.demand* %4, i64 0, i32 0
  %19 = extractvalue { double, double } %17, 0
  store double %19, double* %18, align 8
  %20 = getelementptr inbounds %struct.demand, %struct.demand* %4, i64 0, i32 1
  %21 = extractvalue { double, double } %17, 1
  store double %21, double* %20, align 8
  %22 = bitcast %struct.demand* %2 to i8*
  %23 = bitcast %struct.demand* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8* noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.demand, %struct.demand* %2, i64 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fadd double %27, %25
  store double %28, double* %26, align 8
  %29 = getelementptr inbounds %struct.demand, %struct.demand* %2, i64 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fadd double %32, %30
  store double %33, double* %31, align 8
  br label %34

34:                                               ; preds = %9
  %35 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds %struct.root, %struct.root* %0, i64 0, i32 0, i32 0
  store double %38, double* %39, align 8
  %40 = getelementptr inbounds %struct.demand, %struct.demand* %3, i64 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds %struct.root, %struct.root* %0, i64 0, i32 0, i32 1
  store double %41, double* %42, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Lateral(%struct.lateral* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.demand, align 8
  %8 = alloca %struct.demand, align 8
  %9 = alloca %struct.demand, align 8
  %10 = alloca %struct.demand, align 8
  %11 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %14 = load double, double* %13, align 8
  %15 = fmul double %14, %2
  %16 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %17 = load double, double* %16, align 8
  %18 = fdiv double %15, %17
  %19 = fadd double %18, %1
  %20 = call double @llvm.fmuladd.f64(double %12, double %19, double %3)
  %21 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 2
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, %1
  %26 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %27 = load double, double* %26, align 8
  %28 = fdiv double %25, %27
  %29 = fadd double %28, %2
  %30 = call double @llvm.fmuladd.f64(double %22, double %29, double %4)
  %31 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 5
  %32 = load %struct.lateral*, %struct.lateral** %31, align 8
  %.not = icmp eq %struct.lateral* %32, null
  br i1 %.not, label %41, label %33

33:                                               ; preds = %5
  %34 = call { double, double } @Compute_Lateral(%struct.lateral* noundef nonnull %32, double noundef %1, double noundef %2, double noundef %20, double noundef %30)
  %35 = getelementptr inbounds %struct.demand, %struct.demand* %9, i64 0, i32 0
  %36 = extractvalue { double, double } %34, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds %struct.demand, %struct.demand* %9, i64 0, i32 1
  %38 = extractvalue { double, double } %34, 1
  store double %38, double* %37, align 8
  %39 = bitcast %struct.demand* %7 to i8*
  %40 = bitcast %struct.demand* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %39, i8* noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %33, %5
  %42 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 6
  %43 = load %struct.branch*, %struct.branch** %42, align 8
  %44 = call { double, double } @Compute_Branch(%struct.branch* noundef %43, double noundef %1, double noundef %2, double noundef %20, double noundef %30)
  %45 = getelementptr inbounds %struct.demand, %struct.demand* %10, i64 0, i32 0
  %46 = extractvalue { double, double } %44, 0
  store double %46, double* %45, align 8
  %47 = getelementptr inbounds %struct.demand, %struct.demand* %10, i64 0, i32 1
  %48 = extractvalue { double, double } %44, 1
  store double %48, double* %47, align 8
  %49 = bitcast %struct.demand* %8 to i8*
  %50 = bitcast %struct.demand* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %49, i8* noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false)
  %.not1 = icmp eq %struct.lateral* %32, null
  br i1 %.not1, label %64, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.demand, %struct.demand* %7, i64 0, i32 0
  %53 = load double, double* %52, align 8
  %54 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = fadd double %53, %55
  %57 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  store double %56, double* %57, align 8
  %58 = getelementptr inbounds %struct.demand, %struct.demand* %7, i64 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fadd double %59, %61
  %63 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  store double %62, double* %63, align 8
  br label %71

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  store double %66, double* %67, align 8
  %68 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  store double %69, double* %70, align 8
  br label %71

71:                                               ; preds = %64, %51
  %72 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %75 = load double, double* %74, align 8
  %76 = fmul double %75, %75
  %77 = call double @llvm.fmuladd.f64(double %73, double %73, double %76)
  %78 = fmul double %73, 2.000000e+00
  %79 = fmul double %78, %75
  %80 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  %85 = load double, double* %84, align 8
  %86 = fmul double %83, -2.000000e+00
  %87 = fmul double %86, %83
  %88 = fmul double %87, %85
  %89 = call double @llvm.fmuladd.f64(double %79, double %81, double %88)
  %90 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %91 = load double, double* %90, align 8
  %92 = fsub double %89, %91
  %93 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = fneg double %96
  %100 = fmul double %98, %99
  %101 = call double @llvm.fmuladd.f64(double %91, double %94, double %100)
  %102 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  %105 = load double, double* %104, align 8
  %106 = fmul double %103, %105
  %107 = call double @llvm.fmuladd.f64(double %101, double %101, double %106)
  %108 = fneg double %92
  %109 = fmul double %77, -4.000000e+00
  %110 = fmul double %109, %107
  %111 = call double @llvm.fmuladd.f64(double %92, double %92, double %110)
  %112 = call double @sqrt(double noundef %111) #5
  %113 = fsub double %108, %112
  %114 = fmul double %77, 2.000000e+00
  %115 = fdiv double %113, %114
  %116 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = fsub double %115, %119
  %121 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %122 = load double, double* %121, align 8
  %123 = fmul double %120, %122
  %124 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %125 = load double, double* %124, align 8
  %126 = fdiv double %123, %125
  %127 = fadd double %117, %126
  %128 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  store double %127, double* %128, align 8
  %129 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 0
  store double %115, double* %129, align 8
  %130 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 3
  %131 = load double, double* %130, align 8
  %132 = fmul double %131, 2.000000e+00
  %133 = fmul double %132, %115
  %134 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 4
  %135 = load double, double* %134, align 8
  %136 = fmul double %135, 2.000000e+00
  %137 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 0, i32 1
  %138 = load double, double* %137, align 8
  %139 = fmul double %136, %138
  %140 = fsub double 1.000000e+00, %133
  %141 = fsub double %140, %139
  %142 = fdiv double %133, %141
  %143 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 1
  store double %142, double* %143, align 8
  %144 = fsub double 1.000000e+00, %133
  %145 = fsub double %144, %139
  %146 = fdiv double %139, %145
  %147 = getelementptr inbounds %struct.lateral, %struct.lateral* %0, i64 0, i32 2
  store double %146, double* %147, align 8
  %148 = bitcast %struct.demand* %6 to i8*
  %149 = bitcast %struct.lateral* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %148, i8* noundef nonnull align 8 dereferenceable(16) %149, i64 16, i1 false)
  %.elt = getelementptr inbounds %struct.demand, %struct.demand* %6, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %150 = insertvalue { double, double } undef, double %.unpack, 0
  %151 = getelementptr inbounds %struct.demand, %struct.demand* %6, i64 0, i32 1
  %.unpack3 = load double, double* %151, align 8
  %152 = insertvalue { double, double } %150, double %.unpack3, 1
  ret { double, double } %152
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Branch(%struct.branch* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.demand, align 8
  %8 = alloca %struct.demand, align 8
  %9 = alloca %struct.demand, align 8
  %10 = alloca %struct.demand, align 8
  %11 = alloca %struct.demand, align 8
  %12 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %15 = load double, double* %14, align 8
  %16 = fmul double %15, %2
  %17 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %18 = load double, double* %17, align 8
  %19 = fdiv double %16, %18
  %20 = fadd double %19, %1
  %21 = call double @llvm.fmuladd.f64(double %13, double %20, double %3)
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 2
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %1
  %27 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %28 = load double, double* %27, align 8
  %29 = fdiv double %26, %28
  %30 = fadd double %29, %2
  %31 = call double @llvm.fmuladd.f64(double %23, double %30, double %4)
  %32 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 5
  %33 = load %struct.branch*, %struct.branch** %32, align 8
  %.not = icmp eq %struct.branch* %33, null
  br i1 %.not, label %42, label %34

34:                                               ; preds = %5
  %35 = call { double, double } @Compute_Branch(%struct.branch* noundef nonnull %33, double noundef %1, double noundef %2, double noundef %21, double noundef %31)
  %36 = getelementptr inbounds %struct.demand, %struct.demand* %10, i64 0, i32 0
  %37 = extractvalue { double, double } %35, 0
  store double %37, double* %36, align 8
  %38 = getelementptr inbounds %struct.demand, %struct.demand* %10, i64 0, i32 1
  %39 = extractvalue { double, double } %35, 1
  store double %39, double* %38, align 8
  %40 = bitcast %struct.demand* %9 to i8*
  %41 = bitcast %struct.demand* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %42

42:                                               ; preds = %34, %5
  %43 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  store double 0.000000e+00, double* %43, align 8
  %44 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  store double 0.000000e+00, double* %44, align 8
  br label %45

45:                                               ; preds = %68, %42
  %.0 = phi i32 [ 0, %42 ], [ %69, %68 ]
  %46 = icmp ult i32 %.0, 12
  br i1 %46, label %47, label %70

47:                                               ; preds = %45
  %48 = zext i32 %.0 to i64
  %49 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 6, i64 %48
  %50 = load %struct.leaf*, %struct.leaf** %49, align 8
  %51 = call { double, double } @Compute_Leaf(%struct.leaf* noundef %50, double noundef %21, double noundef %31)
  %52 = getelementptr inbounds %struct.demand, %struct.demand* %11, i64 0, i32 0
  %53 = extractvalue { double, double } %51, 0
  store double %53, double* %52, align 8
  %54 = getelementptr inbounds %struct.demand, %struct.demand* %11, i64 0, i32 1
  %55 = extractvalue { double, double } %51, 1
  store double %55, double* %54, align 8
  %56 = bitcast %struct.demand* %7 to i8*
  %57 = bitcast %struct.demand* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.demand, %struct.demand* %7, i64 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, %59
  store double %62, double* %60, align 8
  %63 = getelementptr inbounds %struct.demand, %struct.demand* %7, i64 0, i32 1
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = fadd double %66, %64
  store double %67, double* %65, align 8
  br label %68

68:                                               ; preds = %47
  %69 = add nuw nsw i32 %.0, 1
  br label %45, !llvm.loop !6

70:                                               ; preds = %45
  %.not1 = icmp eq %struct.branch* %33, null
  br i1 %.not1, label %84, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.demand, %struct.demand* %9, i64 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fadd double %73, %75
  %77 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  store double %76, double* %77, align 8
  %78 = getelementptr inbounds %struct.demand, %struct.demand* %9, i64 0, i32 1
  %79 = load double, double* %78, align 8
  %80 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = fadd double %79, %81
  %83 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  store double %82, double* %83, align 8
  br label %91

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  store double %86, double* %87, align 8
  %88 = getelementptr inbounds %struct.demand, %struct.demand* %8, i64 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  store double %89, double* %90, align 8
  br label %91

91:                                               ; preds = %84, %71
  %92 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %95 = load double, double* %94, align 8
  %96 = fmul double %95, %95
  %97 = call double @llvm.fmuladd.f64(double %93, double %93, double %96)
  %98 = fmul double %93, 2.000000e+00
  %99 = fmul double %98, %95
  %100 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  %105 = load double, double* %104, align 8
  %106 = fmul double %103, -2.000000e+00
  %107 = fmul double %106, %103
  %108 = fmul double %107, %105
  %109 = call double @llvm.fmuladd.f64(double %99, double %101, double %108)
  %110 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %111 = load double, double* %110, align 8
  %112 = fsub double %109, %111
  %113 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = fneg double %116
  %120 = fmul double %118, %119
  %121 = call double @llvm.fmuladd.f64(double %111, double %114, double %120)
  %122 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %123 = load double, double* %122, align 8
  %124 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  %125 = load double, double* %124, align 8
  %126 = fmul double %123, %125
  %127 = call double @llvm.fmuladd.f64(double %121, double %121, double %126)
  %128 = fneg double %112
  %129 = fmul double %97, -4.000000e+00
  %130 = fmul double %129, %127
  %131 = call double @llvm.fmuladd.f64(double %112, double %112, double %130)
  %132 = call double @sqrt(double noundef %131) #5
  %133 = fsub double %128, %132
  %134 = fmul double %97, 2.000000e+00
  %135 = fdiv double %133, %134
  %136 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  %137 = load double, double* %136, align 8
  %138 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  %139 = load double, double* %138, align 8
  %140 = fsub double %135, %139
  %141 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %142 = load double, double* %141, align 8
  %143 = fmul double %140, %142
  %144 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %145 = load double, double* %144, align 8
  %146 = fdiv double %143, %145
  %147 = fadd double %137, %146
  %148 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  store double %147, double* %148, align 8
  %149 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 0
  store double %135, double* %149, align 8
  %150 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 3
  %151 = load double, double* %150, align 8
  %152 = fmul double %151, 2.000000e+00
  %153 = fmul double %152, %135
  %154 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 4
  %155 = load double, double* %154, align 8
  %156 = fmul double %155, 2.000000e+00
  %157 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 0, i32 1
  %158 = load double, double* %157, align 8
  %159 = fmul double %156, %158
  %160 = fsub double 1.000000e+00, %153
  %161 = fsub double %160, %159
  %162 = fdiv double %153, %161
  %163 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 1
  store double %162, double* %163, align 8
  %164 = fsub double 1.000000e+00, %153
  %165 = fsub double %164, %159
  %166 = fdiv double %159, %165
  %167 = getelementptr inbounds %struct.branch, %struct.branch* %0, i64 0, i32 2
  store double %166, double* %167, align 8
  %168 = bitcast %struct.demand* %6 to i8*
  %169 = bitcast %struct.branch* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %168, i8* noundef nonnull align 8 dereferenceable(16) %169, i64 16, i1 false)
  %.elt = getelementptr inbounds %struct.demand, %struct.demand* %6, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %170 = insertvalue { double, double } undef, double %.unpack, 0
  %171 = getelementptr inbounds %struct.demand, %struct.demand* %6, i64 0, i32 1
  %.unpack3 = load double, double* %171, align 8
  %172 = insertvalue { double, double } %170, double %.unpack3, 1
  ret { double, double } %172
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Leaf(%struct.leaf* nocapture noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.demand, align 8
  %5 = getelementptr inbounds %struct.leaf, %struct.leaf* %0, i64 0, i32 0, i32 0
  %6 = load double, double* %5, align 8
  store double %6, double* @P, align 8
  %7 = getelementptr inbounds %struct.leaf, %struct.leaf* %0, i64 0, i32 0, i32 1
  %8 = load double, double* %7, align 8
  store double %8, double* @Q, align 8
  call void @optimize_node(double noundef %1, double noundef %2)
  %9 = load double, double* @P, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store double 0.000000e+00, double* @P, align 8
  store double 0.000000e+00, double* @Q, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load double, double* @P, align 8
  %14 = getelementptr inbounds %struct.leaf, %struct.leaf* %0, i64 0, i32 0, i32 0
  store double %13, double* %14, align 8
  %15 = load double, double* @Q, align 8
  %16 = getelementptr inbounds %struct.leaf, %struct.leaf* %0, i64 0, i32 0, i32 1
  store double %15, double* %16, align 8
  %17 = bitcast %struct.demand* %4 to i8*
  %18 = bitcast %struct.leaf* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8* noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %.elt = getelementptr inbounds %struct.demand, %struct.demand* %4, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %19 = insertvalue { double, double } undef, double %.unpack, 0
  %20 = getelementptr inbounds %struct.demand, %struct.demand* %4, i64 0, i32 1
  %.unpack2 = load double, double* %20, align 8
  %21 = insertvalue { double, double } %19, double %.unpack2, 1
  ret { double, double } %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @optimize_node(double noundef %0, double noundef %1) #0 {
  %3 = alloca [2 x double], align 16
  %4 = alloca [2 x double], align 16
  %5 = alloca [2 x double], align 16
  %6 = alloca [2 x double], align 16
  br label %7

7:                                                ; preds = %135, %2
  %8 = call double @find_h()
  %9 = call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x3EB0C6F7A0B5ED8D
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %13 = call double @find_gradient_h(double* noundef nonnull %12)
  %14 = fdiv double %8, %13
  %15 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %16 = load double, double* %15, align 16
  %17 = load double, double* @P, align 8
  %18 = fneg double %14
  %19 = call double @llvm.fmuladd.f64(double %18, double %16, double %17)
  store double %19, double* @P, align 8
  %20 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 1
  %21 = load double, double* %20, align 8
  %22 = load double, double* @Q, align 8
  %23 = fneg double %14
  %24 = call double @llvm.fmuladd.f64(double %23, double %21, double %22)
  store double %24, double* @Q, align 8
  br label %25

25:                                               ; preds = %11, %7
  %26 = call double @find_g()
  %27 = fcmp ogt double %26, 0x3EB0C6F7A0B5ED8D
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %30 = call double @find_gradient_g(double* noundef nonnull %29)
  %31 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %32 = call double @find_gradient_h(double* noundef nonnull %31)
  %33 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %34 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %35 = call double @make_orthogonal(double* noundef nonnull %33, double* noundef nonnull %34)
  %36 = fmul double %30, %35
  %37 = fdiv double %26, %36
  %38 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %39 = load double, double* %38, align 16
  %40 = load double, double* @P, align 8
  %41 = fneg double %37
  %42 = call double @llvm.fmuladd.f64(double %41, double %39, double %40)
  store double %42, double* @P, align 8
  %43 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = load double, double* @Q, align 8
  %46 = fneg double %37
  %47 = call double @llvm.fmuladd.f64(double %46, double %44, double %45)
  store double %47, double* @Q, align 8
  br label %48

48:                                               ; preds = %28, %25
  %49 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %50 = call double @find_gradient_f(double noundef %0, double noundef %1, double* noundef nonnull %49)
  %51 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  call void @find_dd_grad_f(double noundef %0, double noundef %1, double* noundef nonnull %51)
  br label %52

52:                                               ; preds = %55, %48
  %.01 = phi i32 [ 0, %48 ], [ %63, %55 ]
  %.0 = phi double [ 0.000000e+00, %48 ], [ %62, %55 ]
  %53 = icmp ult i32 %.01, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = zext i32 %.01 to i64
  %57 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 %56
  %58 = load double, double* %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 %59
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %58, double %61, double %.0)
  %63 = add nuw nsw i32 %.01, 1
  br label %52, !llvm.loop !7

64:                                               ; preds = %52
  %65 = call double @llvm.fabs.f64(double %.0)
  %66 = fdiv double %50, %65
  %67 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %68 = call double @find_gradient_h(double* noundef nonnull %67)
  %69 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %70 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %71 = call double @make_orthogonal(double* noundef nonnull %69, double* noundef nonnull %70)
  %72 = fmul double %66, %71
  %73 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %74 = call double @find_gradient_g(double* noundef nonnull %73)
  br label %75

75:                                               ; preds = %78, %64
  %.12 = phi i32 [ 0, %64 ], [ %86, %78 ]
  %.1 = phi double [ 0.000000e+00, %64 ], [ %85, %78 ]
  %76 = icmp ult i32 %.12, 2
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77
  %79 = zext i32 %.12 to i64
  %80 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 %79
  %81 = load double, double* %80, align 8
  %82 = zext i32 %.12 to i64
  %83 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 %82
  %84 = load double, double* %83, align 8
  %85 = call double @llvm.fmuladd.f64(double %81, double %84, double %.1)
  %86 = add nuw nsw i32 %.12, 1
  br label %75, !llvm.loop !8

87:                                               ; preds = %75
  %88 = fcmp ogt double %.1, 0.000000e+00
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = call double @find_g()
  %91 = fneg double %90
  %92 = fdiv double %91, %.1
  %93 = fcmp ogt double %72, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %89
  %.03 = phi double [ %92, %94 ], [ %72, %89 ]
  br label %96

96:                                               ; preds = %95, %87
  %.14 = phi double [ %.03, %95 ], [ %72, %87 ]
  %97 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %98 = load double, double* %97, align 16
  %99 = load double, double* @P, align 8
  %100 = call double @llvm.fmuladd.f64(double %.14, double %98, double %99)
  store double %100, double* @P, align 8
  %101 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  %102 = load double, double* %101, align 8
  %103 = load double, double* @Q, align 8
  %104 = call double @llvm.fmuladd.f64(double %.14, double %102, double %103)
  store double %104, double* @Q, align 8
  %105 = call double @find_h()
  %106 = call double @find_g()
  %107 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %108 = call double @find_gradient_f(double noundef %0, double noundef %1, double* noundef nonnull %107)
  %109 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %110 = call double @find_gradient_h(double* noundef nonnull %109)
  br label %111

111:                                              ; preds = %96
  %112 = call double @llvm.fabs.f64(double %105)
  %113 = fcmp ogt double %112, 0x3EB0C6F7A0B5ED8D
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = fcmp ogt double %106, 0x3EB0C6F7A0B5ED8D
  br i1 %115, label %135, label %116

116:                                              ; preds = %114
  %117 = call double @llvm.fabs.f64(double %106)
  %118 = fcmp ogt double %117, 0x3EB0C6F7A0B5ED8D
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %121 = load double, double* %120, align 16
  %122 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 1
  %123 = load double, double* %122, align 8
  %124 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 1
  %125 = load double, double* %124, align 8
  %126 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0, i64 0
  %127 = load double, double* %126, align 16
  %128 = fneg double %125
  %129 = fmul double %127, %128
  %130 = call double @llvm.fmuladd.f64(double %121, double %123, double %129)
  %131 = call double @llvm.fabs.f64(double %130)
  %132 = fcmp ogt double %131, 0x3EB0C6F7A0B5ED8D
  br label %133

133:                                              ; preds = %119, %116
  %134 = phi i1 [ false, %116 ], [ %132, %119 ]
  br label %135

135:                                              ; preds = %133, %114, %111
  %136 = phi i1 [ true, %114 ], [ true, %111 ], [ %134, %133 ]
  br i1 %136, label %7, label %137, !llvm.loop !9

137:                                              ; preds = %135
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_h(double* nocapture noundef %0) #0 {
  store double 1.000000e+00, double* %0, align 8
  %2 = getelementptr inbounds double, double* %0, i64 1
  store double -5.000000e+00, double* %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %.01 = phi i32 [ 0, %1 ], [ %14, %6 ]
  %.0 = phi double [ 0.000000e+00, %1 ], [ %13, %6 ]
  %4 = icmp ult i32 %.01, 2
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds double, double* %0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %9, double %12, double %.0)
  %14 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !10

15:                                               ; preds = %3
  %16 = call double @sqrt(double noundef %.0) #5
  br label %17

17:                                               ; preds = %24, %15
  %.1 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %18 = icmp ult i32 %.1, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = zext i32 %.1 to i64
  %21 = getelementptr inbounds double, double* %0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fdiv double %22, %16
  store double %23, double* %21, align 8
  br label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %.1, 1
  br label %17, !llvm.loop !11

26:                                               ; preds = %17
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_g(double* nocapture noundef %0) #0 {
  %2 = load double, double* @P, align 8
  %3 = fmul double %2, 2.000000e+00
  store double %3, double* %0, align 8
  %4 = load double, double* @Q, align 8
  %5 = fmul double %4, 2.000000e+00
  %6 = getelementptr inbounds double, double* %0, i64 1
  store double %5, double* %6, align 8
  br label %7

7:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %18, %10 ]
  %.0 = phi double [ 0.000000e+00, %1 ], [ %17, %10 ]
  %8 = icmp ult i32 %.01, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds double, double* %0, i64 %11
  %13 = load double, double* %12, align 8
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds double, double* %0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = call double @llvm.fmuladd.f64(double %13, double %16, double %.0)
  %18 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !12

19:                                               ; preds = %7
  %20 = call double @sqrt(double noundef %.0) #5
  br label %21

21:                                               ; preds = %28, %19
  %.1 = phi i32 [ 0, %19 ], [ %29, %28 ]
  %22 = icmp ult i32 %.1, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = zext i32 %.1 to i64
  %25 = getelementptr inbounds double, double* %0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fdiv double %26, %20
  store double %27, double* %25, align 8
  br label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %.1, 1
  br label %21, !llvm.loop !13

30:                                               ; preds = %21
  ret double %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @make_orthogonal(double* nocapture noundef %0, double* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.03 = phi i32 [ 0, %2 ], [ %14, %6 ]
  %.02 = phi double [ 0.000000e+00, %2 ], [ %13, %6 ]
  %4 = icmp ult i32 %.03, 2
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = zext i32 %.03 to i64
  %8 = getelementptr inbounds double, double* %0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.03 to i64
  %11 = getelementptr inbounds double, double* %1, i64 %10
  %12 = load double, double* %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %9, double %12, double %.02)
  %14 = add nuw nsw i32 %.03, 1
  br label %3, !llvm.loop !14

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %27, %15
  %.1 = phi i32 [ 0, %15 ], [ %35, %27 ]
  %.01 = phi double [ 0.000000e+00, %15 ], [ %34, %27 ]
  %17 = icmp ult i32 %.1, 2
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds double, double* %1, i64 %19
  %21 = load double, double* %20, align 8
  %22 = zext i32 %.1 to i64
  %23 = getelementptr inbounds double, double* %0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = fneg double %.02
  %26 = call double @llvm.fmuladd.f64(double %25, double %21, double %24)
  store double %26, double* %23, align 8
  br label %27

27:                                               ; preds = %18
  %28 = zext i32 %.1 to i64
  %29 = getelementptr inbounds double, double* %0, i64 %28
  %30 = load double, double* %29, align 8
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds double, double* %0, i64 %31
  %33 = load double, double* %32, align 8
  %34 = call double @llvm.fmuladd.f64(double %30, double %33, double %.01)
  %35 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !15

36:                                               ; preds = %16
  %37 = call double @sqrt(double noundef %.01) #5
  br label %38

38:                                               ; preds = %45, %36
  %.2 = phi i32 [ 0, %36 ], [ %46, %45 ]
  %39 = icmp ult i32 %.2, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = zext i32 %.2 to i64
  %42 = getelementptr inbounds double, double* %0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fdiv double %43, %37
  store double %44, double* %42, align 8
  br label %45

45:                                               ; preds = %40
  %46 = add nuw nsw i32 %.2, 1
  br label %38, !llvm.loop !16

47:                                               ; preds = %38
  %48 = fneg double %.02
  %49 = call double @llvm.fmuladd.f64(double %48, double %.02, double 1.000000e+00)
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %56

52:                                               ; preds = %47
  %53 = fneg double %.02
  %54 = call double @llvm.fmuladd.f64(double %53, double %.02, double 1.000000e+00)
  %55 = call double @sqrt(double noundef %54) #5
  br label %56

56:                                               ; preds = %52, %51
  %.0 = phi double [ 0.000000e+00, %51 ], [ %55, %52 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_f(double noundef %0, double noundef %1, double* nocapture noundef %2) #0 {
  %4 = load double, double* @P, align 8
  %5 = fadd double %4, 1.000000e+00
  %6 = fdiv double 1.000000e+00, %5
  %7 = fsub double %6, %0
  store double %7, double* %2, align 8
  %8 = load double, double* @Q, align 8
  %9 = fadd double %8, 1.000000e+00
  %10 = fdiv double 1.000000e+00, %9
  %11 = fsub double %10, %1
  %12 = getelementptr inbounds double, double* %2, i64 1
  store double %11, double* %12, align 8
  br label %13

13:                                               ; preds = %16, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %16 ]
  %.0 = phi double [ 0.000000e+00, %3 ], [ %23, %16 ]
  %14 = icmp ult i32 %.01, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds double, double* %2, i64 %17
  %19 = load double, double* %18, align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds double, double* %2, i64 %20
  %22 = load double, double* %21, align 8
  %23 = call double @llvm.fmuladd.f64(double %19, double %22, double %.0)
  %24 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !17

25:                                               ; preds = %13
  %26 = call double @sqrt(double noundef %.0) #5
  br label %27

27:                                               ; preds = %34, %25
  %.1 = phi i32 [ 0, %25 ], [ %35, %34 ]
  %28 = icmp ult i32 %.1, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = zext i32 %.1 to i64
  %31 = getelementptr inbounds double, double* %2, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fdiv double %32, %26
  store double %33, double* %31, align 8
  br label %34

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !18

36:                                               ; preds = %27
  ret double %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_dd_grad_f(double noundef %0, double noundef %1, double* nocapture noundef writeonly %2) #0 {
  %4 = load double, double* @P, align 8
  %5 = fadd double %4, 1.000000e+00
  %6 = fdiv double 1.000000e+00, %5
  %7 = load double, double* @Q, align 8
  %8 = fadd double %7, 1.000000e+00
  %9 = fdiv double 1.000000e+00, %8
  %10 = fsub double %6, %0
  %11 = fsub double %9, %1
  %12 = fmul double %11, %11
  %13 = call double @llvm.fmuladd.f64(double %10, double %10, double %12)
  %14 = call double @sqrt(double noundef %13) #5
  %15 = fneg double %6
  %16 = fmul double %6, %15
  %17 = fmul double %16, %10
  %18 = fdiv double %17, %14
  store double %18, double* %2, align 8
  %19 = fneg double %9
  %20 = fmul double %9, %19
  %21 = fmul double %20, %11
  %22 = fdiv double %21, %14
  %23 = getelementptr inbounds double, double* %2, i64 1
  store double %22, double* %23, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local double @find_g() #4 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @Q, align 8
  %3 = fmul double %2, %2
  %4 = call double @llvm.fmuladd.f64(double %1, double %1, double %3)
  %5 = fadd double %4, -8.000000e-01
  ret double %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local double @find_h() #4 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @Q, align 8
  %3 = call double @llvm.fmuladd.f64(double %2, double -5.000000e+00, double %1)
  ret double %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
