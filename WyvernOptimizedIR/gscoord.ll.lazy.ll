; ModuleID = './gscoord.ll'
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
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 1
  %7 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %6, align 8
  %8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %7, i64 0, i32 1
  %9 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %8, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %11 = bitcast %struct.gs_matrix_fixed_s* %10 to %struct.gs_matrix_s*
  call void %9(%struct.gx_device_s* noundef %5, %struct.gs_matrix_s* noundef nonnull %11) #6
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  %13 = load float, float* %12, align 8
  %14 = fmul float %13, 4.096000e+03
  %15 = fptosi float %14 to i64
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 12
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  %18 = load float, float* %17, align 8
  %19 = fmul float %18, 4.096000e+03
  %20 = fptosi float %19 to i64
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 13
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %23, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_defaultmatrix(%struct.gs_state_s* nocapture noundef readonly %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %4 = load %struct.device_s*, %struct.device_s** %3, align 8
  %5 = getelementptr inbounds %struct.device_s, %struct.device_s* %4, i64 0, i32 0
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i64 0, i32 1
  %8 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %7, align 8
  %9 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %8, i64 0, i32 1
  %10 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %9, align 8
  call void %10(%struct.gx_device_s* noundef %6, %struct.gs_matrix_s* noundef %1) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_currentmatrix(%struct.gs_state_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %4 = bitcast %struct.gs_matrix_s* %1 to i8*
  %5 = bitcast %struct.gs_matrix_fixed_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %4, i8* noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_setmatrix(%struct.gs_state_s* nocapture noundef %0, %struct.gs_matrix_s* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %4 = bitcast %struct.gs_matrix_fixed_s* %3 to i8*
  %5 = bitcast %struct.gs_matrix_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %4, i8* noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false)
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  %7 = load float, float* %6, align 8
  %8 = fmul float %7, 4.096000e+03
  %9 = fptosi float %8 to i64
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 12
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  %12 = load float, float* %11, align 8
  %13 = fmul float %12, 4.096000e+03
  %14 = fptosi float %13 to i64
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 13
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %17, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_point_s, align 4
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = bitcast %struct.gs_matrix_fixed_s* %5 to %struct.gs_matrix_s*
  %7 = call i32 @gs_distance_transform(double noundef %1, double noundef %2, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_point_s* noundef nonnull %4) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i64 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  %14 = load float, float* %13, align 8
  %15 = fadd float %14, %12
  store float %15, float* %13, align 8
  %16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i64 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  %19 = load float, float* %18, align 8
  %20 = fadd float %19, %17
  store float %20, float* %18, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  %22 = load float, float* %21, align 8
  %23 = fmul float %22, 4.096000e+03
  %24 = fptosi float %23 to i64
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 12
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  %27 = load float, float* %26, align 8
  %28 = fmul float %27, 4.096000e+03
  %29 = fptosi float %28 to i64
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 13
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %10, %9
  %.0 = phi i32 [ %7, %9 ], [ 0, %10 ]
  ret i32 %.0
}

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_scale(%struct.gs_state_s* nocapture noundef %0, double noundef %1, double noundef %2) #4 {
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 0
  %5 = load float, float* %4, align 8
  %6 = fpext float %5 to double
  %7 = fmul double %6, %1
  %8 = fptrunc double %7 to float
  store float %8, float* %4, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 2
  %10 = load float, float* %9, align 8
  %11 = fpext float %10 to double
  %12 = fmul double %11, %1
  %13 = fptrunc double %12 to float
  store float %13, float* %9, align 8
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 4
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = fmul double %16, %2
  %18 = fptrunc double %17 to float
  store float %18, float* %14, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 6
  %20 = load float, float* %19, align 8
  %21 = fpext float %20 to double
  %22 = fmul double %21, %2
  %23 = fptrunc double %22 to float
  store float %23, float* %19, align 8
  %24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %25, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %4 = bitcast %struct.gs_matrix_fixed_s* %3 to %struct.gs_matrix_s*
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = bitcast %struct.gs_matrix_fixed_s* %5 to %struct.gs_matrix_s*
  %7 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef nonnull %4, double noundef %1, %struct.gs_matrix_s* noundef nonnull %6) #6
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %9, align 8
  ret i32 %7
}

declare dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef, double noundef, %struct.gs_matrix_s* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_concat(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %4 = bitcast %struct.gs_matrix_fixed_s* %3 to %struct.gs_matrix_s*
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = bitcast %struct.gs_matrix_fixed_s* %5 to %struct.gs_matrix_s*
  %7 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %1, %struct.gs_matrix_s* noundef nonnull %4, %struct.gs_matrix_s* noundef nonnull %6) #6
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  %9 = load float, float* %8, align 8
  %10 = fmul float %9, 4.096000e+03
  %11 = fptosi float %10 to i64
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 12
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  %14 = load float, float* %13, align 8
  %15 = fmul float %14, 4.096000e+03
  %16 = fptosi float %15 to i64
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 13
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %19, align 8
  ret i32 %7
}

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_transform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = bitcast %struct.gs_matrix_fixed_s* %5 to %struct.gs_matrix_s*
  %7 = call i32 @gs_point_transform(double noundef %1, double noundef %2, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_point_s* noundef %3) #6
  ret i32 %7
}

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_dtransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = bitcast %struct.gs_matrix_fixed_s* %5 to %struct.gs_matrix_s*
  %7 = call i32 @gs_distance_transform(double noundef %1, double noundef %2, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_point_s* noundef %3) #6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_itransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %9 = bitcast %struct.gs_matrix_fixed_s* %8 to %struct.gs_matrix_s*
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 3
  %11 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef nonnull %9, %struct.gs_matrix_s* noundef nonnull %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = fptrunc double %1 to float
  %18 = fpext float %17 to double
  %19 = fptrunc double %2 to float
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 3
  %22 = call i32 @gs_point_transform(double noundef %18, double noundef %20, %struct.gs_matrix_s* noundef nonnull %21, %struct.gs_point_s* noundef %3) #6
  br label %23

23:                                               ; preds = %16, %13
  %.0 = phi i32 [ %22, %16 ], [ %11, %13 ]
  ret i32 %.0
}

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_idtransform(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %9 = bitcast %struct.gs_matrix_fixed_s* %8 to %struct.gs_matrix_s*
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 3
  %11 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef nonnull %9, %struct.gs_matrix_s* noundef nonnull %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = fptrunc double %1 to float
  %18 = fpext float %17 to double
  %19 = fptrunc double %2 to float
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 3
  %22 = call i32 @gs_distance_transform(double noundef %18, double noundef %20, %struct.gs_matrix_s* noundef nonnull %21, %struct.gs_point_s* noundef %3) #6
  br label %23

23:                                               ; preds = %16, %13
  %.0 = phi i32 [ %22, %16 ], [ %11, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_translate_to_fixed(%struct.gs_state_s* nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 12
  store i64 %1, i64* %4, align 8
  %5 = sitofp i64 %1 to double
  %6 = fmul double %5, 0x3F30000000000000
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 8
  store float %7, float* %8, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 13
  store i64 %2, i64* %9, align 8
  %10 = sitofp i64 %2 to double
  %11 = fmul double %10, 0x3F30000000000000
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2, i32 10
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 4
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 1, i32* %15, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
