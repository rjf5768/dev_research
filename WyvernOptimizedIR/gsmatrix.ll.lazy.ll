; ModuleID = './gsmatrix.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }

@gs_identity_matrix = dso_local global %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @gs_make_identity(%struct.gs_matrix_s* nocapture noundef writeonly %0) #0 {
  %2 = bitcast %struct.gs_matrix_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %2, i8* noundef nonnull align 8 dereferenceable(96) bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_make_translation(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef writeonly %2) #0 {
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %4, i8* noundef nonnull align 8 dereferenceable(96) bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %5 = fptrunc double %0 to float
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  store float %5, float* %6, align 8
  %7 = fptrunc double %1 to float
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  store float %7, float* %8, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_make_scaling(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef writeonly %2) #0 {
  %4 = bitcast %struct.gs_matrix_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %4, i8* noundef nonnull align 8 dereferenceable(96) bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %5 = fptrunc double %0 to float
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  store float %5, float* %6, align 8
  %7 = fptrunc double %1 to float
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  store float %7, float* %8, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_make_rotation(double noundef %0, %struct.gs_matrix_s* nocapture noundef writeonly %1) #2 {
  %3 = fmul double %0, 0x3F91DF46A2529D39
  %4 = fptrunc double %3 to float
  %5 = bitcast %struct.gs_matrix_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %5, i8* noundef nonnull align 8 dereferenceable(96) bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %6 = fpext float %4 to double
  %7 = call double @cos(double noundef %6) #6
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  store float %8, float* %9, align 8
  %10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  store float %8, float* %10, align 8
  %11 = fpext float %4 to double
  %12 = call double @sin(double noundef %11) #6
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  store float %13, float* %14, align 8
  %15 = fneg float %13
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  store float %15, float* %16, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef readonly %1, %struct.gs_matrix_s* nocapture noundef %2) #0 {
  %4 = alloca float, align 8
  %5 = alloca float, align 8
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 0
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %9 = load float, float* %8, align 8
  %10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 8
  %11 = load float, float* %10, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 10
  %13 = load float, float* %12, align 8
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  %17 = load float, float* %16, align 8
  %18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  %19 = load float, float* %18, align 8
  store float %19, float* %4, align 8
  %20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  %21 = load float, float* %20, align 8
  store float %21, float* %5, align 8
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %23 = bitcast float* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %26 = bitcast float* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %24, %27
  %.mask = and i64 %28, 9223372036854775807
  %29 = icmp eq i64 %.mask, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 8
  %32 = load float, float* %31, align 8
  %33 = call float @llvm.fmuladd.f32(float %11, float %15, float %32)
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  store float %33, float* %34, align 8
  %35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 10
  %36 = load float, float* %35, align 8
  %37 = call float @llvm.fmuladd.f32(float %13, float %17, float %36)
  %38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  store float %37, float* %38, align 8
  %39 = bitcast float* %4 to i64*
  %40 = load i64, i64* %39, align 8
  %.mask1 = and i64 %40, 9223372036854775807
  %41 = icmp eq i64 %.mask1, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  store float 0.000000e+00, float* %43, align 8
  br label %51

44:                                               ; preds = %30
  %45 = load float, float* %4, align 8
  %46 = fmul float %7, %45
  %47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  store float %46, float* %47, align 8
  %48 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  %49 = load float, float* %48, align 8
  %50 = call float @llvm.fmuladd.f32(float %11, float %45, float %49)
  store float %50, float* %48, align 8
  br label %51

51:                                               ; preds = %44, %42
  %52 = fmul float %7, %15
  %53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  store float %52, float* %53, align 8
  %54 = bitcast float* %5 to i64*
  %55 = load i64, i64* %54, align 8
  %.mask2 = and i64 %55, 9223372036854775807
  %56 = icmp eq i64 %.mask2, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  store float 0.000000e+00, float* %58, align 8
  br label %66

59:                                               ; preds = %51
  %60 = load float, float* %5, align 8
  %61 = fmul float %9, %60
  %62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  store float %61, float* %62, align 8
  %63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  %64 = load float, float* %63, align 8
  %65 = call float @llvm.fmuladd.f32(float %13, float %60, float %64)
  store float %65, float* %63, align 8
  br label %66

66:                                               ; preds = %59, %57
  %67 = fmul float %9, %17
  %68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  store float %67, float* %68, align 8
  br label %107

69:                                               ; preds = %3
  %70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %71 = load float, float* %70, align 8
  %72 = load float, float* %5, align 8
  %73 = fmul float %71, %72
  %74 = call float @llvm.fmuladd.f32(float %7, float %15, float %73)
  %75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  store float %74, float* %75, align 8
  %76 = load float, float* %4, align 8
  %77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %78 = load float, float* %77, align 8
  %79 = fmul float %78, %17
  %80 = call float @llvm.fmuladd.f32(float %7, float %76, float %79)
  %81 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  store float %80, float* %81, align 8
  %82 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %83 = load float, float* %82, align 8
  %84 = load float, float* %4, align 8
  %85 = fmul float %9, %17
  %86 = call float @llvm.fmuladd.f32(float %83, float %84, float %85)
  %87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  store float %86, float* %87, align 8
  %88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %89 = load float, float* %88, align 8
  %90 = load float, float* %5, align 8
  %91 = fmul float %9, %90
  %92 = call float @llvm.fmuladd.f32(float %89, float %15, float %91)
  %93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  store float %92, float* %93, align 8
  %94 = fmul float %13, %90
  %95 = call float @llvm.fmuladd.f32(float %11, float %15, float %94)
  %96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 8
  %97 = load float, float* %96, align 8
  %98 = fadd float %95, %97
  %99 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  store float %98, float* %99, align 8
  %100 = load float, float* %4, align 8
  %101 = fmul float %13, %17
  %102 = call float @llvm.fmuladd.f32(float %11, float %100, float %101)
  %103 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 10
  %104 = load float, float* %103, align 8
  %105 = fadd float %102, %104
  %106 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  store float %105, float* %106, align 8
  br label %107

107:                                              ; preds = %69, %66
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %4 = bitcast float* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %7 = bitcast float* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = or i64 %5, %8
  %.mask = and i64 %9, 9223372036854775807
  %10 = icmp eq i64 %.mask, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = bitcast %struct.gs_matrix_s* %0 to i64*
  %13 = load i64, i64* %12, align 8
  %.mask1 = and i64 %13, 9223372036854775807
  %14 = icmp eq i64 %.mask1, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %17 = bitcast float* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %.mask2 = and i64 %18, 9223372036854775807
  %19 = icmp eq i64 %.mask2, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11
  br label %98

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 0
  %23 = load float, float* %22, align 8
  %24 = fdiv float 1.000000e+00, %23
  %25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  store float %24, float* %25, align 8
  %26 = fneg float %24
  %27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 8
  %28 = load float, float* %27, align 8
  %29 = fmul float %28, %26
  %30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 8
  store float %29, float* %30, align 8
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  store float 0.000000e+00, float* %31, align 8
  %32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  store float 0.000000e+00, float* %32, align 8
  %33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %34 = load float, float* %33, align 8
  %35 = fdiv float 1.000000e+00, %34
  %36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  store float %35, float* %36, align 8
  %37 = fneg float %35
  %38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 10
  %39 = load float, float* %38, align 8
  %40 = fmul float %39, %37
  %41 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 10
  store float %40, float* %41, align 8
  br label %97

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %46 = load float, float* %45, align 8
  %47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %48 = load float, float* %47, align 8
  %49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %50 = load float, float* %49, align 8
  %51 = fneg float %48
  %52 = fmul float %50, %51
  %53 = call float @llvm.fmuladd.f32(float %44, float %46, float %52)
  %54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 8
  %55 = load float, float* %54, align 8
  %56 = fcmp oeq float %53, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %98

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 0
  %60 = load float, float* %59, align 8
  %61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %62 = load float, float* %61, align 8
  %63 = fdiv float %62, %53
  %64 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  store float %63, float* %64, align 8
  %65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %66 = load float, float* %65, align 8
  %67 = fneg float %66
  %68 = fdiv float %67, %53
  %69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  store float %68, float* %69, align 8
  %70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %71 = load float, float* %70, align 8
  %72 = fneg float %71
  %73 = fdiv float %72, %53
  %74 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  store float %73, float* %74, align 8
  %75 = fdiv float %60, %53
  %76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  store float %75, float* %76, align 8
  %77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  %78 = load float, float* %77, align 8
  %79 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 10
  %80 = load float, float* %79, align 8
  %81 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  %82 = load float, float* %81, align 8
  %83 = fmul float %80, %82
  %84 = call float @llvm.fmuladd.f32(float %55, float %78, float %83)
  %85 = fneg float %84
  %86 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 8
  store float %85, float* %86, align 8
  %87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  %88 = load float, float* %87, align 8
  %89 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 10
  %90 = load float, float* %89, align 8
  %91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  %92 = load float, float* %91, align 8
  %93 = fmul float %90, %92
  %94 = call float @llvm.fmuladd.f32(float %55, float %88, float %93)
  %95 = fneg float %94
  %96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 10
  store float %95, float* %96, align 8
  br label %97

97:                                               ; preds = %58, %21
  br label %98

98:                                               ; preds = %97, %57, %20
  %.0 = phi i32 [ -23, %20 ], [ 0, %97 ], [ -23, %57 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* nocapture noundef readonly %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef writeonly %2) #2 {
  %4 = fcmp ult double %1, -3.600000e+02
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = fcmp ugt double %1, 3.600000e+02
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = fptosi double %1 to i32
  %9 = sdiv i32 %8, 90
  %10 = mul nsw i32 %9, 90
  %11 = sitofp i32 %10 to double
  %12 = fcmp oeq double %11, %1
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = and i32 %9, 3
  br label %15

15:                                               ; preds = %16, %13
  %.04 = phi i32 [ %14, %13 ], [ %17, %16 ]
  %.01 = phi i32 [ 0, %13 ], [ %.0, %16 ]
  %.0 = phi i32 [ 1, %13 ], [ %18, %16 ]
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %19, label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %.04, -1
  %18 = sub nsw i32 0, %.01
  br label %15, !llvm.loop !4

19:                                               ; preds = %15
  %20 = sitofp i32 %.01 to float
  %21 = sitofp i32 %.0 to float
  br label %31

22:                                               ; preds = %7, %5, %3
  %23 = fmul double %1, 0x3F91DF46A2529D39
  %24 = fptrunc double %23 to float
  %25 = fpext float %24 to double
  %26 = call double @sin(double noundef %25) #6
  %27 = fptrunc double %26 to float
  %28 = fpext float %24 to double
  %29 = call double @cos(double noundef %28) #6
  %30 = fptrunc double %29 to float
  br label %31

31:                                               ; preds = %22, %19
  %.03 = phi float [ %20, %19 ], [ %27, %22 ]
  %.02 = phi float [ %21, %19 ], [ %30, %22 ]
  %32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 0
  %33 = load float, float* %32, align 8
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 2
  %35 = load float, float* %34, align 8
  %36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %37 = load float, float* %36, align 8
  %38 = fmul float %.03, %37
  %39 = call float @llvm.fmuladd.f32(float %.02, float %33, float %38)
  %40 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  store float %39, float* %40, align 8
  %41 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %42 = load float, float* %41, align 8
  %43 = fmul float %.03, %42
  %44 = call float @llvm.fmuladd.f32(float %.02, float %35, float %43)
  %45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  store float %44, float* %45, align 8
  %46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 4
  %47 = load float, float* %46, align 8
  %48 = fneg float %.03
  %49 = fmul float %33, %48
  %50 = call float @llvm.fmuladd.f32(float %.02, float %47, float %49)
  %51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  store float %50, float* %51, align 8
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 6
  %53 = load float, float* %52, align 8
  %54 = fneg float %.03
  %55 = fmul float %35, %54
  %56 = call float @llvm.fmuladd.f32(float %.02, float %53, float %55)
  %57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  store float %56, float* %57, align 8
  %58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 8
  %59 = load float, float* %58, align 8
  %60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  store float %59, float* %60, align 8
  %61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i64 0, i32 10
  %62 = load float, float* %61, align 8
  %63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  store float %62, float* %63, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_point_transform(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef readonly %2, %struct.gs_point_s* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  %9 = load float, float* %8, align 8
  %10 = fpext float %9 to double
  %11 = call double @llvm.fmuladd.f64(double %0, double %7, double %10)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  store float %12, float* %13, align 4
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  %18 = load float, float* %17, align 8
  %19 = fpext float %18 to double
  %20 = call double @llvm.fmuladd.f64(double %1, double %16, double %19)
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  store float %21, float* %22, align 4
  %23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %24 = bitcast float* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %.mask = and i64 %25, 9223372036854775807
  %26 = icmp eq i64 %.mask, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %29 = load float, float* %28, align 8
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = call double @llvm.fmuladd.f64(double %1, double %30, double %33)
  %35 = fptrunc double %34 to float
  store float %35, float* %31, align 4
  br label %36

36:                                               ; preds = %27, %4
  %37 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %38 = bitcast float* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %.mask1 = and i64 %39, 9223372036854775807
  %40 = icmp eq i64 %.mask1, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call double @llvm.fmuladd.f64(double %0, double %44, double %47)
  %49 = fptrunc double %48 to float
  store float %49, float* %45, align 4
  br label %50

50:                                               ; preds = %41, %36
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef readonly %2, %struct.gs_point_s* nocapture noundef %3) #0 {
  %5 = alloca %struct.gs_matrix_s, align 8
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %7 = bitcast float* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %10 = bitcast float* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = or i64 %8, %11
  %.mask = and i64 %12, 9223372036854775807
  %13 = icmp eq i64 %.mask, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = fsub double %0, %17
  %19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = fpext float %20 to double
  %22 = fdiv double %18, %21
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  store float %23, float* %24, align 4
  %25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  %26 = load float, float* %25, align 8
  %27 = fpext float %26 to double
  %28 = fsub double %1, %27
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %30 = load float, float* %29, align 8
  %31 = fpext float %30 to double
  %32 = fdiv double %28, %31
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  store float %33, float* %34, align 4
  br label %41

35:                                               ; preds = %4
  %36 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %2, %struct.gs_matrix_s* noundef nonnull %5)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %41

39:                                               ; preds = %35
  %40 = call i32 @gs_point_transform(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef nonnull %5, %struct.gs_point_s* noundef %3)
  br label %41

41:                                               ; preds = %39, %38, %14
  %.0 = phi i32 [ 0, %14 ], [ %36, %38 ], [ %40, %39 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_distance_transform(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef readonly %2, %struct.gs_point_s* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = fpext float %6 to double
  %8 = fmul double %7, %0
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  store float %9, float* %10, align 4
  %11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = fmul double %13, %1
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  store float %15, float* %16, align 4
  %17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %18 = bitcast float* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %.mask = and i64 %19, 9223372036854775807
  %20 = icmp eq i64 %.mask, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %23 = load float, float* %22, align 8
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fpext float %26 to double
  %28 = call double @llvm.fmuladd.f64(double %1, double %24, double %27)
  %29 = fptrunc double %28 to float
  store float %29, float* %25, align 4
  br label %30

30:                                               ; preds = %21, %4
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %32 = bitcast float* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %.mask1 = and i64 %33, 9223372036854775807
  %34 = icmp eq i64 %.mask1, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %37 = load float, float* %36, align 8
  %38 = fpext float %37 to double
  %39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = call double @llvm.fmuladd.f64(double %0, double %38, double %41)
  %43 = fptrunc double %42 to float
  store float %43, float* %39, align 4
  br label %44

44:                                               ; preds = %35, %30
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_distance_transform_inverse(double noundef %0, double noundef %1, %struct.gs_matrix_s* nocapture noundef readonly %2, %struct.gs_point_s* nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %6 = bitcast float* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %9 = bitcast float* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = or i64 %7, %10
  %.mask = and i64 %11, 9223372036854775807
  %12 = icmp eq i64 %.mask, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = fdiv double %0, %16
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  store float %18, float* %19, align 4
  %20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %21 = load float, float* %20, align 8
  %22 = fpext float %21 to double
  %23 = fdiv double %1, %22
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  store float %24, float* %25, align 4
  br label %66

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %28 = load float, float* %27, align 8
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %30 = load float, float* %29, align 8
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %32 = load float, float* %31, align 8
  %33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %34 = load float, float* %33, align 8
  %35 = fneg float %32
  %36 = fmul float %34, %35
  %37 = call float @llvm.fmuladd.f32(float %28, float %30, float %36)
  %38 = fpext float %37 to double
  %39 = fcmp oeq float %37, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %67

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %46 = load float, float* %45, align 8
  %47 = fpext float %46 to double
  %48 = fneg double %47
  %49 = fmul double %48, %1
  %50 = call double @llvm.fmuladd.f64(double %0, double %44, double %49)
  %51 = fdiv double %50, %38
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 0
  store float %52, float* %53, align 4
  %54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %55 = load float, float* %54, align 8
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %58 = load float, float* %57, align 8
  %59 = fpext float %58 to double
  %60 = fneg double %59
  %61 = fmul double %60, %0
  %62 = call double @llvm.fmuladd.f64(double %1, double %56, double %61)
  %63 = fdiv double %62, %38
  %64 = fptrunc double %63 to float
  %65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i64 0, i32 1
  store float %64, float* %65, align 4
  br label %66

66:                                               ; preds = %41, %13
  br label %67

67:                                               ; preds = %66, %40
  %.0 = phi i32 [ 0, %66 ], [ -23, %40 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef readonly %1, %struct.gs_rect_s* nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.gs_point_s, align 4
  %5 = alloca %struct.gs_point_s, align 4
  %6 = alloca %struct.gs_point_s, align 4
  %7 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = call i32 @gs_point_transform_inverse(double noundef %9, double noundef %12, %struct.gs_matrix_s* noundef %1, %struct.gs_point_s* noundef nonnull %4)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 1, i32 0
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = fsub float %17, %19
  %21 = fpext float %20 to double
  %22 = call i32 @gs_distance_transform_inverse(double noundef %21, double noundef 0.000000e+00, %struct.gs_matrix_s* noundef %1, %struct.gs_point_s* noundef nonnull %5)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 1, i32 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %0, i64 0, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fsub float %26, %28
  %30 = fpext float %29 to double
  %31 = call i32 @gs_distance_transform_inverse(double noundef 0.000000e+00, double noundef %30, %struct.gs_matrix_s* noundef %1, %struct.gs_point_s* noundef nonnull %6)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %15, %3
  %.06 = phi i32 [ %13, %3 ], [ %22, %15 ], [ %31, %24 ]
  br label %91

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i64 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fadd float %36, %42
  br label %48

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = fadd float %36, %46
  br label %48

48:                                               ; preds = %44, %40
  %.07 = phi float [ %43, %40 ], [ %36, %44 ]
  %.02 = phi float [ %36, %40 ], [ %47, %44 ]
  %49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fadd float %.07, %54
  br label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = fadd float %.02, %58
  br label %60

60:                                               ; preds = %56, %52
  %.18 = phi float [ %55, %52 ], [ %.07, %56 ]
  %.13 = phi float [ %.02, %52 ], [ %59, %56 ]
  %61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i64 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fcmp olt float %64, 0.000000e+00
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fadd float %62, %68
  br label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = fadd float %62, %72
  br label %74

74:                                               ; preds = %70, %66
  %.04 = phi float [ %69, %66 ], [ %62, %70 ]
  %.01 = phi float [ %62, %66 ], [ %73, %70 ]
  %75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fcmp olt float %76, 0.000000e+00
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fadd float %.04, %80
  br label %86

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = fadd float %.01, %84
  br label %86

86:                                               ; preds = %82, %78
  %.15 = phi float [ %81, %78 ], [ %.04, %82 ]
  %.1 = phi float [ %.01, %78 ], [ %85, %82 ]
  %87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 0, i32 0
  store float %.18, float* %87, align 4
  %88 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 0, i32 1
  store float %.15, float* %88, align 4
  %89 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 1, i32 0
  store float %.13, float* %89, align 4
  %90 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 1, i32 1
  store float %.1, float* %90, align 4
  br label %91

91:                                               ; preds = %86, %33
  %.0 = phi i32 [ %.06, %33 ], [ 0, %86 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* nocapture noundef readonly %0, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* nocapture noundef %3) #5 {
  %5 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = fpext float %6 to double
  %8 = fmul double %7, %1
  %9 = fmul double %8, 4.096000e+03
  %10 = fptosi double %9 to i64
  %11 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, %10
  %14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 6
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = fmul double %17, %2
  %19 = fmul double %18, 4.096000e+03
  %20 = fptosi double %19 to i64
  %21 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %20
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 4
  %26 = bitcast float* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %.mask = and i64 %27, 9223372036854775807
  %28 = icmp eq i64 %.mask, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 4
  %31 = load float, float* %30, align 8
  %32 = fpext float %31 to double
  %33 = fmul double %32, %2
  %34 = fmul double %33, 4.096000e+03
  %35 = fptosi double %34 to i64
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %35
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %29, %4
  %40 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 2
  %41 = bitcast float* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %.mask1 = and i64 %42, 9223372036854775807
  %43 = icmp eq i64 %.mask1, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 2
  %46 = load float, float* %45, align 8
  %47 = fpext float %46 to double
  %48 = fmul double %47, %1
  %49 = fmul double %48, 4.096000e+03
  %50 = fptosi double %49 to i64
  %51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %50
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %44, %39
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* nocapture noundef readonly %0, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* nocapture noundef %3) #5 {
  %5 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = fpext float %6 to double
  %8 = fmul double %7, %1
  %9 = fmul double %8, 4.096000e+03
  %10 = fptosi double %9 to i64
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 6
  %13 = load float, float* %12, align 8
  %14 = fpext float %13 to double
  %15 = fmul double %14, %2
  %16 = fmul double %15, 4.096000e+03
  %17 = fptosi double %16 to i64
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 4
  %20 = bitcast float* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %.mask = and i64 %21, 9223372036854775807
  %22 = icmp eq i64 %.mask, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 4
  %25 = load float, float* %24, align 8
  %26 = fpext float %25 to double
  %27 = fmul double %26, %2
  %28 = fmul double %27, 4.096000e+03
  %29 = fptosi double %28 to i64
  %30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %29
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %23, %4
  %34 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 2
  %35 = bitcast float* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %.mask1 = and i64 %36, 9223372036854775807
  %37 = icmp eq i64 %.mask1, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %0, i64 0, i32 2
  %40 = load float, float* %39, align 8
  %41 = fpext float %40 to double
  %42 = fmul double %41, %1
  %43 = fmul double %42, 4.096000e+03
  %44 = fptosi double %43 to i64
  %45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %38, %33
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
