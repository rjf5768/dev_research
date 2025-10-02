; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/Bounds.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/Bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TBounds = type { %struct.TVector, %struct.TVector }
%struct.TVector = type { double, double }

@.str = private unnamed_addr constant [12 x i8] c"src && dest\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/Bounds.c\00", align 1
@__PRETTY_FUNCTION__.Bounds_Copy = private unnamed_addr constant [39 x i8] c"void Bounds_Copy(TBounds *, TBounds *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__PRETTY_FUNCTION__.Bounds_Infinite = private unnamed_addr constant [32 x i8] c"void Bounds_Infinite(TBounds *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"b && add\00", align 1
@__PRETTY_FUNCTION__.Bounds_AddBounds = private unnamed_addr constant [44 x i8] c"void Bounds_AddBounds(TBounds *, TBounds *)\00", align 1
@__PRETTY_FUNCTION__.Bounds_AddEpsilon = private unnamed_addr constant [42 x i8] c"void Bounds_AddEpsilon(TBounds *, double)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"b && tst\00", align 1
@__PRETTY_FUNCTION__.Bounds_IsOverlappingBounds = private unnamed_addr constant [55 x i8] c"_Bool Bounds_IsOverlappingBounds(TBounds *, TBounds *)\00", align 1
@__PRETTY_FUNCTION__.Bounds_WidthAxis = private unnamed_addr constant [49 x i8] c"double Bounds_WidthAxis(TBounds *, unsigned int)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__PRETTY_FUNCTION__.Bounds_CenterAxis = private unnamed_addr constant [50 x i8] c"double Bounds_CenterAxis(TBounds *, unsigned int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_Copy(%struct.TBounds* noundef %0, %struct.TBounds* noundef %1) #0 {
  %3 = alloca %struct.TBounds*, align 8
  %4 = alloca %struct.TBounds*, align 8
  store %struct.TBounds* %0, %struct.TBounds** %3, align 8
  store %struct.TBounds* %1, %struct.TBounds** %4, align 8
  %5 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %6 = icmp ne %struct.TBounds* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %9 = icmp ne %struct.TBounds* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.Bounds_Copy, i64 0, i64 0)) #3
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %14 = bitcast %struct.TBounds* %13 to i8*
  %15 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %16 = bitcast %struct.TBounds* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %16, i64 32, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_Infinite(%struct.TBounds* noundef %0) #0 {
  %2 = alloca %struct.TBounds*, align 8
  store %struct.TBounds* %0, %struct.TBounds** %2, align 8
  %3 = load %struct.TBounds*, %struct.TBounds** %2, align 8
  %4 = icmp ne %struct.TBounds* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Bounds_Infinite, i64 0, i64 0)) #3
  unreachable

7:                                                ; preds = %5
  %8 = load %struct.TBounds*, %struct.TBounds** %2, align 8
  %9 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TVector, %struct.TVector* %9, i32 0, i32 0
  store double 1.000000e+64, double* %10, align 8
  %11 = load %struct.TBounds*, %struct.TBounds** %2, align 8
  %12 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TVector, %struct.TVector* %12, i32 0, i32 1
  store double 1.000000e+64, double* %13, align 8
  %14 = load %struct.TBounds*, %struct.TBounds** %2, align 8
  %15 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TVector, %struct.TVector* %15, i32 0, i32 0
  store double -1.000000e+64, double* %16, align 8
  %17 = load %struct.TBounds*, %struct.TBounds** %2, align 8
  %18 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TVector, %struct.TVector* %18, i32 0, i32 1
  store double -1.000000e+64, double* %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_AddBounds(%struct.TBounds* noundef %0, %struct.TBounds* noundef %1) #0 {
  %3 = alloca %struct.TBounds*, align 8
  %4 = alloca %struct.TBounds*, align 8
  store %struct.TBounds* %0, %struct.TBounds** %3, align 8
  store %struct.TBounds* %1, %struct.TBounds** %4, align 8
  %5 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %6 = icmp ne %struct.TBounds* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %9 = icmp ne %struct.TBounds* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.Bounds_AddBounds, i64 0, i64 0)) #3
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %14 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TVector, %struct.TVector* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %18 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TVector, %struct.TVector* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp olt double %16, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %24 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TVector, %struct.TVector* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  br label %32

27:                                               ; preds = %12
  %28 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %29 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TVector, %struct.TVector* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi double [ %26, %22 ], [ %31, %27 ]
  %34 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %35 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TVector, %struct.TVector* %35, i32 0, i32 0
  store double %33, double* %36, align 8
  %37 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %38 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TVector, %struct.TVector* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %42 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TVector, %struct.TVector* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fcmp olt double %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %48 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TVector, %struct.TVector* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  br label %56

51:                                               ; preds = %32
  %52 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %53 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TVector, %struct.TVector* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi double [ %50, %46 ], [ %55, %51 ]
  %58 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %59 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TVector, %struct.TVector* %59, i32 0, i32 1
  store double %57, double* %60, align 8
  %61 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %62 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TVector, %struct.TVector* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %66 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TVector, %struct.TVector* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fcmp ogt double %64, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %56
  %71 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %72 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TVector, %struct.TVector* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  br label %80

75:                                               ; preds = %56
  %76 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %77 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TVector, %struct.TVector* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi double [ %74, %70 ], [ %79, %75 ]
  %82 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %83 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TVector, %struct.TVector* %83, i32 0, i32 0
  store double %81, double* %84, align 8
  %85 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %86 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TVector, %struct.TVector* %86, i32 0, i32 1
  %88 = load double, double* %87, align 8
  %89 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %90 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TVector, %struct.TVector* %90, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fcmp ogt double %88, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %96 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TVector, %struct.TVector* %96, i32 0, i32 1
  %98 = load double, double* %97, align 8
  br label %104

99:                                               ; preds = %80
  %100 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %101 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TVector, %struct.TVector* %101, i32 0, i32 1
  %103 = load double, double* %102, align 8
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi double [ %98, %94 ], [ %103, %99 ]
  %106 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %107 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TVector, %struct.TVector* %107, i32 0, i32 1
  store double %105, double* %108, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_AddEpsilon(%struct.TBounds* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.TBounds*, align 8
  %4 = alloca double, align 8
  store %struct.TBounds* %0, %struct.TBounds** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %6 = icmp ne %struct.TBounds* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.Bounds_AddEpsilon, i64 0, i64 0)) #3
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %11 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TVector, %struct.TVector* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = load double, double* %4, align 8
  %15 = fsub double %13, %14
  %16 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %17 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TVector, %struct.TVector* %17, i32 0, i32 0
  store double %15, double* %18, align 8
  %19 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %20 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TVector, %struct.TVector* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = load double, double* %4, align 8
  %24 = fsub double %22, %23
  %25 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %26 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TVector, %struct.TVector* %26, i32 0, i32 1
  store double %24, double* %27, align 8
  %28 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %29 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TVector, %struct.TVector* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load double, double* %4, align 8
  %33 = fadd double %31, %32
  %34 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %35 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TVector, %struct.TVector* %35, i32 0, i32 0
  store double %33, double* %36, align 8
  %37 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %38 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TVector, %struct.TVector* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load double, double* %4, align 8
  %42 = fadd double %40, %41
  %43 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %44 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TVector, %struct.TVector* %44, i32 0, i32 1
  store double %42, double* %45, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Bounds_IsOverlappingBounds(%struct.TBounds* noundef %0, %struct.TBounds* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.TBounds*, align 8
  %5 = alloca %struct.TBounds*, align 8
  store %struct.TBounds* %0, %struct.TBounds** %4, align 8
  store %struct.TBounds* %1, %struct.TBounds** %5, align 8
  %6 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %7 = icmp ne %struct.TBounds* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.TBounds*, %struct.TBounds** %5, align 8
  %10 = icmp ne %struct.TBounds* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.Bounds_IsOverlappingBounds, i64 0, i64 0)) #3
  unreachable

13:                                               ; preds = %11
  %14 = load %struct.TBounds*, %struct.TBounds** %5, align 8
  %15 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TVector, %struct.TVector* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %19 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TVector, %struct.TVector* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fcmp olt double %17, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load %struct.TBounds*, %struct.TBounds** %5, align 8
  %25 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TVector, %struct.TVector* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %29 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TVector, %struct.TVector* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fcmp ogt double %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %13
  store i1 false, i1* %3, align 1
  br label %56

34:                                               ; preds = %23
  %35 = load %struct.TBounds*, %struct.TBounds** %5, align 8
  %36 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TVector, %struct.TVector* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %40 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TVector, %struct.TVector* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fcmp olt double %38, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = load %struct.TBounds*, %struct.TBounds** %5, align 8
  %46 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TVector, %struct.TVector* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = load %struct.TBounds*, %struct.TBounds** %4, align 8
  %50 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TVector, %struct.TVector* %50, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = fcmp ogt double %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %34
  store i1 false, i1* %3, align 1
  br label %56

55:                                               ; preds = %44
  store i1 true, i1* %3, align 1
  br label %56

56:                                               ; preds = %55, %54, %33
  %57 = load i1, i1* %3, align 1
  ret i1 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Bounds_WidthAxis(%struct.TBounds* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.TBounds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store %struct.TBounds* %0, %struct.TBounds** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %7 = icmp ne %struct.TBounds* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.Bounds_WidthAxis, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %16 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TVector, %struct.TVector* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %20 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TVector, %struct.TVector* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fsub double %18, %22
  store double %23, double* %5, align 8
  br label %43

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %30 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TVector, %struct.TVector* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %34 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TVector, %struct.TVector* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fsub double %32, %36
  store double %37, double* %5, align 8
  br label %42

38:                                               ; preds = %24
  br i1 false, label %39, label %40

39:                                               ; preds = %38
  br label %41

40:                                               ; preds = %38
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.Bounds_WidthAxis, i64 0, i64 0)) #3
  unreachable

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %14
  %44 = load double, double* %5, align 8
  ret double %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Bounds_CenterAxis(%struct.TBounds* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.TBounds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store %struct.TBounds* %0, %struct.TBounds** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %7 = icmp ne %struct.TBounds* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.Bounds_CenterAxis, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %16 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TVector, %struct.TVector* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %20 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TVector, %struct.TVector* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fadd double %18, %22
  %24 = fmul double %23, 5.000000e-01
  store double %24, double* %5, align 8
  br label %45

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %31 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TVector, %struct.TVector* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = load %struct.TBounds*, %struct.TBounds** %3, align 8
  %35 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TVector, %struct.TVector* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fadd double %33, %37
  %39 = fmul double %38, 5.000000e-01
  store double %39, double* %5, align 8
  br label %44

40:                                               ; preds = %25
  br i1 false, label %41, label %42

41:                                               ; preds = %40
  br label %43

42:                                               ; preds = %40
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.Bounds_CenterAxis, i64 0, i64 0)) #3
  unreachable

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43, %29
  br label %45

45:                                               ; preds = %44, %14
  %46 = load double, double* %5, align 8
  ret double %46
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
