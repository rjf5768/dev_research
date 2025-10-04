; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gscoord.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gscoord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque
%struct.gs_point_s = type { float, float }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_initmatrix(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 22
  %6 = load %struct.device_s*, %struct.device_s** %5, align 8
  %7 = getelementptr inbounds %struct.device_s, %struct.device_s* %6, i32 0, i32 0
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %7, align 8
  store %struct.gx_device_s* %8, %struct.gx_device_s** %3, align 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 1
  %11 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %10, align 8
  %12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %11, i32 0, i32 1
  %13 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %12, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 2
  %17 = bitcast %struct.gs_matrix_fixed_s* %16 to %struct.gs_matrix_s*
  call void %13(%struct.gx_device_s* noundef %14, %struct.gs_matrix_s* noundef %17)
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %19, i32 0, i32 8
  %21 = load float, float* %20, align 8
  %22 = fmul float %21, 4.096000e+03
  %23 = fptosi float %22 to i64
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %25, i32 0, i32 12
  store i64 %23, i64* %26, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %28, i32 0, i32 10
  %30 = load float, float* %29, align 8
  %31 = fmul float %30, 4.096000e+03
  %32 = fptosi float %31 to i64
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %34, i32 0, i32 13
  store i64 %32, i64* %35, align 8
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 18
  store i32 0, i32* %39, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_defaultmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 22
  %8 = load %struct.device_s*, %struct.device_s** %7, align 8
  %9 = getelementptr inbounds %struct.device_s, %struct.device_s* %8, i32 0, i32 0
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  store %struct.gx_device_s* %10, %struct.gx_device_s** %5, align 8
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 1
  %13 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %12, align 8
  %14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %13, i32 0, i32 1
  %15 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %14, align 8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  call void %15(%struct.gx_device_s* noundef %16, %struct.gs_matrix_s* noundef %17)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %8 = bitcast %struct.gs_matrix_fixed_s* %7 to %struct.gs_matrix_s*
  %9 = bitcast %struct.gs_matrix_s* %5 to i8*
  %10 = bitcast %struct.gs_matrix_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 96, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 2
  %7 = bitcast %struct.gs_matrix_fixed_s* %6 to %struct.gs_matrix_s*
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %9 = bitcast %struct.gs_matrix_s* %7 to i8*
  %10 = bitcast %struct.gs_matrix_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 96, i1 false)
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %12, i32 0, i32 8
  %14 = load float, float* %13, align 8
  %15 = fmul float %14, 4.096000e+03
  %16 = fptosi float %15 to i64
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %18, i32 0, i32 12
  store i64 %16, i64* %19, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %21, i32 0, i32 10
  %23 = load float, float* %22, align 8
  %24 = fmul float %23, 4.096000e+03
  %25 = fptosi float %24 to i64
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %27, i32 0, i32 13
  store i64 %25, i64* %28, align 8
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 18
  store i32 0, i32* %32, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_point_s, align 4
  %9 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* %7, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 2
  %14 = bitcast %struct.gs_matrix_fixed_s* %13 to %struct.gs_matrix_s*
  %15 = call i32 @gs_distance_transform(double noundef %10, double noundef %11, %struct.gs_matrix_s* noundef %14, %struct.gs_point_s* noundef %8)
  store i32 %15, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %23, i32 0, i32 8
  %25 = load float, float* %24, align 8
  %26 = fadd float %25, %21
  store float %26, float* %24, align 8
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %30, i32 0, i32 10
  %32 = load float, float* %31, align 8
  %33 = fadd float %32, %28
  store float %33, float* %31, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %35, i32 0, i32 8
  %37 = load float, float* %36, align 8
  %38 = fmul float %37, 4.096000e+03
  %39 = fptosi float %38 to i64
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %41, i32 0, i32 12
  store i64 %39, i64* %42, align 8
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %44 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %44, i32 0, i32 10
  %46 = load float, float* %45, align 8
  %47 = fmul float %46, 4.096000e+03
  %48 = fptosi float %47 to i64
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %50, i32 0, i32 13
  store i64 %48, i64* %51, align 8
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 4
  store i32 0, i32* %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %19, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = fpext float %11 to double
  %13 = fmul double %12, %7
  %14 = fptrunc double %13 to float
  store float %14, float* %10, align 8
  %15 = load double, double* %5, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %17, i32 0, i32 2
  %19 = load float, float* %18, align 8
  %20 = fpext float %19 to double
  %21 = fmul double %20, %15
  %22 = fptrunc double %21 to float
  store float %22, float* %18, align 8
  %23 = load double, double* %6, align 8
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %25, i32 0, i32 4
  %27 = load float, float* %26, align 8
  %28 = fpext float %27 to double
  %29 = fmul double %28, %23
  %30 = fptrunc double %29 to float
  store float %30, float* %26, align 8
  %31 = load double, double* %6, align 8
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %33, i32 0, i32 6
  %35 = load float, float* %34, align 8
  %36 = fpext float %35 to double
  %37 = fmul double %36, %31
  %38 = fptrunc double %37 to float
  store float %38, float* %34, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 18
  store i32 0, i32* %42, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 2
  %8 = bitcast %struct.gs_matrix_fixed_s* %7 to %struct.gs_matrix_s*
  %9 = load double, double* %4, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %12 = bitcast %struct.gs_matrix_fixed_s* %11 to %struct.gs_matrix_s*
  %13 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef %8, double noundef %9, %struct.gs_matrix_s* noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 18
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef, double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_concat(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 2
  %9 = bitcast %struct.gs_matrix_fixed_s* %8 to %struct.gs_matrix_s*
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 2
  %12 = bitcast %struct.gs_matrix_fixed_s* %11 to %struct.gs_matrix_s*
  %13 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %6, %struct.gs_matrix_s* noundef %9, %struct.gs_matrix_s* noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %15, i32 0, i32 8
  %17 = load float, float* %16, align 8
  %18 = fmul float %17, 4.096000e+03
  %19 = fptosi float %18 to i64
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %21, i32 0, i32 12
  store i64 %19, i64* %22, align 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %24, i32 0, i32 10
  %26 = load float, float* %25, align 8
  %27 = fmul float %26, 4.096000e+03
  %28 = fptosi float %27 to i64
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %30, i32 0, i32 13
  store i64 %28, i64* %31, align 8
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 18
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_transform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load double, double* %7, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %13 = bitcast %struct.gs_matrix_fixed_s* %12 to %struct.gs_matrix_s*
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %15 = call i32 @gs_point_transform(double noundef %9, double noundef %10, %struct.gs_matrix_s* noundef %13, %struct.gs_point_s* noundef %14)
  ret i32 %15
}

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_dtransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load double, double* %7, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %13 = bitcast %struct.gs_matrix_fixed_s* %12 to %struct.gs_matrix_s*
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %15 = call i32 @gs_distance_transform(double noundef %9, double noundef %10, %struct.gs_matrix_s* noundef %13, %struct.gs_point_s* noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_itransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gs_point_s*, align 8
  %10 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %9, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 2
  %18 = bitcast %struct.gs_matrix_fixed_s* %17 to %struct.gs_matrix_s*
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 3
  %21 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %18, %struct.gs_matrix_s* noundef %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load double, double* %7, align 8
  %31 = fptrunc double %30 to float
  %32 = fpext float %31 to double
  %33 = load double, double* %8, align 8
  %34 = fptrunc double %33 to float
  %35 = fpext float %34 to double
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 3
  %38 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %39 = call i32 @gs_point_transform(double noundef %32, double noundef %35, %struct.gs_matrix_s* noundef %37, %struct.gs_point_s* noundef %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_idtransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gs_point_s*, align 8
  %10 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %9, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 2
  %18 = bitcast %struct.gs_matrix_fixed_s* %17 to %struct.gs_matrix_s*
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 3
  %21 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %18, %struct.gs_matrix_s* noundef %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load double, double* %7, align 8
  %31 = fptrunc double %30 to float
  %32 = fpext float %31 to double
  %33 = load double, double* %8, align 8
  %34 = fptrunc double %33 to float
  %35 = fpext float %34 to double
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 3
  %38 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %39 = call i32 @gs_distance_transform(double noundef %32, double noundef %35, %struct.gs_matrix_s* noundef %37, %struct.gs_point_s* noundef %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_translate_to_fixed(%struct.gs_state_s* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %9, i32 0, i32 12
  store i64 %7, i64* %10, align 8
  %11 = sitofp i64 %7 to double
  %12 = fmul double %11, 0x3F30000000000000
  %13 = fptrunc double %12 to float
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %15, i32 0, i32 8
  store float %13, float* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %19, i32 0, i32 13
  store i64 %17, i64* %20, align 8
  %21 = sitofp i64 %17 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = fptrunc double %22 to float
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %25, i32 0, i32 10
  store float %23, float* %26, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 18
  store i32 1, i32* %30, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
