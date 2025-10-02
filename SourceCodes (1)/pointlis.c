; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/pointlis.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/pointlis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Can't create point\0A\00", align 1
@CHno = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @create_point(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.CHpoints*, align 8
  %4 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call noalias i8* @malloc(i64 noundef 32) #5
  %6 = bitcast i8* %5 to %struct.CHpoints*
  store %struct.CHpoints* %6, %struct.CHpoints** %3, align 8
  %7 = icmp ne %struct.CHpoints* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

10:                                               ; preds = %1
  %11 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %11, i32 0, i32 4
  store %struct.CHpoints* null, %struct.CHpoints** %12, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i32 0, i32 3
  store %struct.CHpoints* null, %struct.CHpoints** %14, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i32 0, i32 1
  %17 = bitcast %struct.point* %16 to i8*
  %18 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = load i32, i32* @CHno, align 4
  %20 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  ret %struct.CHpoints* %22
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_list_insert(%struct.CHpoints** noundef %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.CHpoints**, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = bitcast %struct.point* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.CHpoints** %0, %struct.CHpoints*** %4, align 8
  %7 = load i32, i32* @CHno, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @CHno, align 4
  %9 = bitcast %struct.point* %3 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call %struct.CHpoints* @create_point(i64 %10)
  store %struct.CHpoints* %11, %struct.CHpoints** %5, align 8
  %12 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %12, align 8
  %14 = icmp eq %struct.CHpoints* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %17 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %18 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %17, i32 0, i32 4
  store %struct.CHpoints* %16, %struct.CHpoints** %18, align 8
  %19 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %20 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 3
  store %struct.CHpoints* %19, %struct.CHpoints** %21, align 8
  %22 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %23 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  store %struct.CHpoints* %22, %struct.CHpoints** %23, align 8
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %26 = load %struct.CHpoints*, %struct.CHpoints** %25, align 8
  %27 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %28 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %27, i32 0, i32 3
  store %struct.CHpoints* %26, %struct.CHpoints** %28, align 8
  %29 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %30 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %31 = load %struct.CHpoints*, %struct.CHpoints** %30, align 8
  %32 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %31, i32 0, i32 4
  %33 = load %struct.CHpoints*, %struct.CHpoints** %32, align 8
  %34 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %33, i32 0, i32 3
  store %struct.CHpoints* %29, %struct.CHpoints** %34, align 8
  %35 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %36 = load %struct.CHpoints*, %struct.CHpoints** %35, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 4
  %38 = load %struct.CHpoints*, %struct.CHpoints** %37, align 8
  %39 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %40 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %39, i32 0, i32 4
  store %struct.CHpoints* %38, %struct.CHpoints** %40, align 8
  %41 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %42 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %43 = load %struct.CHpoints*, %struct.CHpoints** %42, align 8
  %44 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %43, i32 0, i32 4
  store %struct.CHpoints* %41, %struct.CHpoints** %44, align 8
  %45 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %46 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  store %struct.CHpoints* %45, %struct.CHpoints** %46, align 8
  br label %47

47:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %3, i32 0, i32 4
  %5 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %3, i32 0, i32 3
  %5 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @angle(%struct.CHpoints* noundef %0, %struct.CHpoints* noundef %1, %struct.CHpoints* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHpoints*, align 8
  %7 = alloca %struct.CHpoints*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.point, align 4
  %13 = alloca %struct.point, align 4
  %14 = alloca %struct.point, align 4
  %15 = alloca %struct.point, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %5, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %6, align 8
  store %struct.CHpoints* %2, %struct.CHpoints** %7, align 8
  %16 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %17 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %16, i32 0, i32 1
  %18 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 1
  %20 = bitcast %struct.point* %17 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = bitcast %struct.point* %19 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i64 @vector(i64 %21, i64 %23)
  %25 = bitcast %struct.point* %14 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.point* %12 to i8*
  %27 = bitcast %struct.point* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = load %struct.CHpoints*, %struct.CHpoints** %7, align 8
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i32 0, i32 1
  %32 = bitcast %struct.point* %29 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.point* %31 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = call i64 @vector(i64 %33, i64 %35)
  %37 = bitcast %struct.point* %15 to i64*
  store i64 %36, i64* %37, align 4
  %38 = bitcast %struct.point* %13 to i8*
  %39 = bitcast %struct.point* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %41, %43
  %45 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %44, %49
  %51 = sitofp i32 %50 to double
  store double %51, double* %8, align 8
  %52 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = add nsw i32 %56, %61
  %63 = sitofp i32 %62 to double
  store double %63, double* %9, align 8
  %64 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = add nsw i32 %68, %73
  %75 = sitofp i32 %74 to double
  store double %75, double* %10, align 8
  %76 = load double, double* %8, align 8
  %77 = load double, double* %8, align 8
  %78 = fmul double %76, %77
  %79 = load double, double* %9, align 8
  %80 = load double, double* %10, align 8
  %81 = fmul double %79, %80
  %82 = fdiv double %78, %81
  store double %82, double* %11, align 8
  %83 = load double, double* %8, align 8
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %85, label %88

85:                                               ; preds = %3
  %86 = load double, double* %11, align 8
  %87 = fneg double %86
  store double %87, double* %4, align 8
  br label %90

88:                                               ; preds = %3
  %89 = load double, double* %11, align 8
  store double %89, double* %4, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = load double, double* %4, align 8
  ret double %91
}

declare dso_local i64 @vector(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @number_points(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca [5 x i8], align 1
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %5 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i32 0, i32 3
  %7 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  store %struct.CHpoints* %7, %struct.CHpoints** %3, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %10 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %11 = icmp ne %struct.CHpoints* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i32 0, i32 3
  %15 = load %struct.CHpoints*, %struct.CHpoints** %14, align 8
  store %struct.CHpoints* %15, %struct.CHpoints** %3, align 8
  br label %8, !llvm.loop !4

16:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @remove_points(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %11 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %10, i32 0, i32 3
  %12 = load %struct.CHpoints*, %struct.CHpoints** %11, align 8
  store %struct.CHpoints* %12, %struct.CHpoints** %3, align 8
  br label %13

13:                                               ; preds = %165, %1
  %14 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %16 = icmp ne %struct.CHpoints* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 3
  %20 = load %struct.CHpoints*, %struct.CHpoints** %19, align 8
  %21 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %22 = icmp ne %struct.CHpoints* %20, %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  br i1 %24, label %25, label %166

25:                                               ; preds = %23
  %26 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %27 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %26, i32 0, i32 4
  %28 = load %struct.CHpoints*, %struct.CHpoints** %27, align 8
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %5 to i8*
  %31 = bitcast %struct.point* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %33 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %32, i32 0, i32 1
  %34 = bitcast %struct.point* %7 to i8*
  %35 = bitcast %struct.point* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 3
  %38 = load %struct.CHpoints*, %struct.CHpoints** %37, align 8
  %39 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %38, i32 0, i32 1
  %40 = bitcast %struct.point* %6 to i8*
  %41 = bitcast %struct.point* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = mul nsw i32 %46, %51
  %53 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %59, %61
  %63 = mul nsw i32 %57, %62
  %64 = add nsw i32 %52, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %161

66:                                               ; preds = %25
  %67 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %138, label %78

78:                                               ; preds = %72, %66
  %79 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %138, label %90

90:                                               ; preds = %84, %78
  %91 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %138, label %114

114:                                              ; preds = %108, %102, %96, %90
  %115 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %161

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %128, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %134, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %132, %108, %84, %72
  %139 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  store %struct.CHpoints* %139, %struct.CHpoints** %4, align 8
  %140 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %141 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %140, i32 0, i32 4
  %142 = load %struct.CHpoints*, %struct.CHpoints** %141, align 8
  %143 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %144 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %143, i32 0, i32 3
  %145 = load %struct.CHpoints*, %struct.CHpoints** %144, align 8
  %146 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %145, i32 0, i32 4
  store %struct.CHpoints* %142, %struct.CHpoints** %146, align 8
  %147 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %148 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %147, i32 0, i32 3
  %149 = load %struct.CHpoints*, %struct.CHpoints** %148, align 8
  %150 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %151 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %150, i32 0, i32 4
  %152 = load %struct.CHpoints*, %struct.CHpoints** %151, align 8
  %153 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %152, i32 0, i32 3
  store %struct.CHpoints* %149, %struct.CHpoints** %153, align 8
  %154 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %155 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %154, i32 0, i32 3
  %156 = load %struct.CHpoints*, %struct.CHpoints** %155, align 8
  store %struct.CHpoints* %156, %struct.CHpoints** %3, align 8
  %157 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %158 = bitcast %struct.CHpoints* %157 to i8*
  call void @free(i8* noundef %158) #5
  %159 = load i32, i32* @CHno, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* @CHno, align 4
  br label %165

161:                                              ; preds = %132, %126, %120, %114, %25
  %162 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %163 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %162, i32 0, i32 3
  %164 = load %struct.CHpoints*, %struct.CHpoints** %163, align 8
  store %struct.CHpoints* %164, %struct.CHpoints** %3, align 8
  br label %165

165:                                              ; preds = %161, %138
  br label %13, !llvm.loop !6

166:                                              ; preds = %23
  %167 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %168 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %167, i32 0, i32 4
  %169 = load %struct.CHpoints*, %struct.CHpoints** %168, align 8
  %170 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %169, i32 0, i32 1
  %171 = bitcast %struct.point* %5 to i8*
  %172 = bitcast %struct.point* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 8, i1 false)
  %173 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %174 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %173, i32 0, i32 1
  %175 = bitcast %struct.point* %7 to i8*
  %176 = bitcast %struct.point* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 8, i1 false)
  %177 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %178 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %177, i32 0, i32 3
  %179 = load %struct.CHpoints*, %struct.CHpoints** %178, align 8
  %180 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %179, i32 0, i32 1
  %181 = bitcast %struct.point* %6 to i8*
  %182 = bitcast %struct.point* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 8, i1 false)
  %183 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  %188 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %189, %191
  %193 = mul nsw i32 %187, %192
  %194 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %195, %197
  %199 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %200, %202
  %204 = mul nsw i32 %198, %203
  %205 = add nsw i32 %193, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %302

207:                                              ; preds = %166
  %208 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %279, label %219

219:                                              ; preds = %213, %207
  %220 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %221, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %279, label %231

231:                                              ; preds = %225, %219
  %232 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %279, label %255

255:                                              ; preds = %249, %243, %237, %231
  %256 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %257, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp sgt i32 %269, %271
  br i1 %272, label %273, label %302

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %275, %277
  br i1 %278, label %279, label %302

279:                                              ; preds = %273, %249, %225, %213
  %280 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  store %struct.CHpoints* %280, %struct.CHpoints** %4, align 8
  %281 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %282 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %281, i32 0, i32 4
  %283 = load %struct.CHpoints*, %struct.CHpoints** %282, align 8
  %284 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %285 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %284, i32 0, i32 3
  %286 = load %struct.CHpoints*, %struct.CHpoints** %285, align 8
  %287 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %286, i32 0, i32 4
  store %struct.CHpoints* %283, %struct.CHpoints** %287, align 8
  %288 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %289 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %288, i32 0, i32 3
  %290 = load %struct.CHpoints*, %struct.CHpoints** %289, align 8
  %291 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %292 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %291, i32 0, i32 4
  %293 = load %struct.CHpoints*, %struct.CHpoints** %292, align 8
  %294 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %293, i32 0, i32 3
  store %struct.CHpoints* %290, %struct.CHpoints** %294, align 8
  %295 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %296 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %295, i32 0, i32 3
  %297 = load %struct.CHpoints*, %struct.CHpoints** %296, align 8
  store %struct.CHpoints* %297, %struct.CHpoints** %3, align 8
  %298 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %299 = bitcast %struct.CHpoints* %298 to i8*
  call void @free(i8* noundef %299) #5
  %300 = load i32, i32* @CHno, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* @CHno, align 4
  br label %302

302:                                              ; preds = %279, %273, %267, %261, %255, %166
  %303 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  ret %struct.CHpoints* %303
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
