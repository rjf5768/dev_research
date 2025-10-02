; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath.c"
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
%struct.device_s = type opaque
%struct.gs_point_s = type { float, float }
%struct.gs_fixed_point_s = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_newpath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %5)
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %7, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef %8, %struct.gs_memory_procs* noundef %10)
  ret i32 0
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_closepath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %5)
  ret i32 %6
}

declare dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentpoint(%struct.gs_state_s* noundef %0, %struct.gs_point_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gs_point_s*, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  %7 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store %struct.gs_point_s* %1, %struct.gs_point_s** %5, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %10, %struct.gs_fixed_point_s* noundef %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 0x3F30000000000000
  %22 = fptrunc double %21 to float
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sitofp i64 %25 to double
  %27 = fmul double %26, 0x3F30000000000000
  %28 = fptrunc double %27 to float
  %29 = fpext float %28 to double
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %31 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %17, double noundef %23, double noundef %29, %struct.gs_point_s* noundef %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @gx_path_current_point(%struct.gx_path_s* noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gs_itransform(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %11 = load double, double* %5, align 8
  %12 = load double, double* %6, align 8
  %13 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %10, double noundef %11, double noundef %12, %struct.gs_fixed_point_s* noundef %8)
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %18, i64 noundef %20, i64 noundef %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef, double noundef, double noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rmoveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %11 = load double, double* %5, align 8
  %12 = load double, double* %6, align 8
  %13 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %10, double noundef %11, double noundef %12, %struct.gs_fixed_point_s* noundef %8)
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gx_path_add_relative_point(%struct.gx_path_s* noundef %18, i64 noundef %20, i64 noundef %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef, double noundef, double noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gx_path_add_relative_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 2
  %11 = load double, double* %5, align 8
  %12 = load double, double* %6, align 8
  %13 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %10, double noundef %11, double noundef %12, %struct.gs_fixed_point_s* noundef %8)
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %18, i64 noundef %20, i64 noundef %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rlineto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %12, align 8
  %14 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %13, %struct.gs_fixed_point_s* noundef %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 2
  %22 = load double, double* %6, align 8
  %23 = load double, double* %7, align 8
  %24 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %21, double noundef %22, double noundef %23, %struct.gs_fixed_point_s* noundef %9)
  store i32 %24, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 7
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %28, align 8
  %30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %36, %38
  %40 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %29, i64 noundef %34, i64 noundef %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %26, %19
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arc(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %14 = load double, double* %8, align 8
  %15 = load double, double* %9, align 8
  %16 = load double, double* %10, align 8
  %17 = load double, double* %11, align 8
  %18 = load double, double* %12, align 8
  %19 = call i32 @arc_either(%struct.gs_state_s* noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17, double noundef %18, i32 noundef 0)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @arc_either(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store i32 %6, i32* %15, align 4
  %32 = load double, double* %13, align 8
  %33 = fmul double %32, 4.096000e+03
  %34 = fptosi double %33 to i64
  store i64 %34, i64* %16, align 8
  %35 = load double, double* %14, align 8
  %36 = fmul double %35, 4.096000e+03
  %37 = fptosi double %36 to i64
  store i64 %37, i64* %17, align 8
  store i32 1, i32* %26, align 4
  %38 = load double, double* %12, align 8
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  store i32 -15, i32* %8, align 4
  br label %252

41:                                               ; preds = %7
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i64, i64* %16, align 8
  %47 = srem i64 %46, 1474560
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = srem i64 %48, 1474560
  store i64 %49, i64* %17, align 8
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = add nsw i64 %57, 1474560
  store i64 %58, i64* %16, align 8
  br label %59

59:                                               ; preds = %56, %52
  br label %68

60:                                               ; preds = %45
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %16, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* %17, align 8
  %66 = add nsw i64 %65, 1474560
  store i64 %66, i64* %17, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i64, i64* %16, align 8
  %71 = sitofp i64 %70 to double
  %72 = fmul double %71, 0x3F30000000000000
  %73 = fptrunc double %72 to float
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3F91DF46A2529D39
  %76 = fptrunc double %75 to float
  store float %76, float* %19, align 4
  %77 = load double, double* %12, align 8
  %78 = load float, float* %19, align 4
  %79 = fpext float %78 to double
  %80 = call double @sin(double noundef %79) #4
  %81 = fmul double %77, %80
  %82 = fptrunc double %81 to float
  store float %82, float* %22, align 4
  %83 = load double, double* %12, align 8
  %84 = load float, float* %19, align 4
  %85 = fpext float %84 to double
  %86 = call double @cos(double noundef %85) #4
  %87 = fmul double %83, %86
  %88 = fptrunc double %87 to float
  store float %88, float* %23, align 4
  %89 = load double, double* %10, align 8
  %90 = load float, float* %23, align 4
  %91 = fpext float %90 to double
  %92 = fadd double %89, %91
  %93 = fptrunc double %92 to float
  store float %93, float* %20, align 4
  %94 = load double, double* %11, align 8
  %95 = load float, float* %22, align 4
  %96 = fpext float %95 to double
  %97 = fadd double %94, %96
  %98 = fptrunc double %97 to float
  store float %98, float* %21, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %69
  br label %102

102:                                              ; preds = %145, %101
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %16, align 8
  %105 = sub nsw i64 %103, %104
  store i64 %105, i64* %18, align 8
  %106 = icmp slt i64 %105, -368640
  br i1 %106, label %107, label %150

107:                                              ; preds = %102
  %108 = load float, float* %22, align 4
  store float %108, float* %28, align 4
  %109 = load float, float* %23, align 4
  %110 = fneg float %109
  store float %110, float* %22, align 4
  %111 = load float, float* %28, align 4
  store float %111, float* %23, align 4
  %112 = load double, double* %10, align 8
  %113 = load float, float* %23, align 4
  %114 = fpext float %113 to double
  %115 = fadd double %112, %114
  %116 = fptrunc double %115 to float
  store float %116, float* %24, align 4
  %117 = load double, double* %11, align 8
  %118 = load float, float* %22, align 4
  %119 = fpext float %118 to double
  %120 = fadd double %117, %119
  %121 = fptrunc double %120 to float
  store float %121, float* %25, align 4
  %122 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %123 = load float, float* %20, align 4
  %124 = fpext float %123 to double
  %125 = load float, float* %21, align 4
  %126 = fpext float %125 to double
  %127 = load float, float* %24, align 4
  %128 = fpext float %127 to double
  %129 = load float, float* %25, align 4
  %130 = fpext float %129 to double
  %131 = load float, float* %20, align 4
  %132 = load float, float* %23, align 4
  %133 = fadd float %131, %132
  %134 = fpext float %133 to double
  %135 = load float, float* %21, align 4
  %136 = load float, float* %22, align 4
  %137 = fadd float %135, %136
  %138 = fpext float %137 to double
  %139 = load i32, i32* %26, align 4
  %140 = call i32 @arc_add(%struct.gs_state_s* noundef %122, double noundef %124, double noundef %126, double noundef %128, double noundef %130, double noundef %134, double noundef %138, i32 noundef %139)
  store i32 %140, i32* %27, align 4
  %141 = load i32, i32* %27, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %107
  %144 = load i32, i32* %27, align 4
  store i32 %144, i32* %8, align 4
  br label %252

145:                                              ; preds = %107
  %146 = load float, float* %24, align 4
  store float %146, float* %20, align 4
  %147 = load float, float* %25, align 4
  store float %147, float* %21, align 4
  %148 = load i64, i64* %16, align 8
  %149 = sub nsw i64 %148, 368640
  store i64 %149, i64* %16, align 8
  store i32 0, i32* %26, align 4
  br label %102, !llvm.loop !4

150:                                              ; preds = %102
  br label %201

151:                                              ; preds = %69
  br label %152

152:                                              ; preds = %195, %151
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = sub nsw i64 %153, %154
  store i64 %155, i64* %18, align 8
  %156 = icmp sgt i64 %155, 368640
  br i1 %156, label %157, label %200

157:                                              ; preds = %152
  %158 = load float, float* %23, align 4
  store float %158, float* %29, align 4
  %159 = load float, float* %22, align 4
  %160 = fneg float %159
  store float %160, float* %23, align 4
  %161 = load float, float* %29, align 4
  store float %161, float* %22, align 4
  %162 = load double, double* %10, align 8
  %163 = load float, float* %23, align 4
  %164 = fpext float %163 to double
  %165 = fadd double %162, %164
  %166 = fptrunc double %165 to float
  store float %166, float* %24, align 4
  %167 = load double, double* %11, align 8
  %168 = load float, float* %22, align 4
  %169 = fpext float %168 to double
  %170 = fadd double %167, %169
  %171 = fptrunc double %170 to float
  store float %171, float* %25, align 4
  %172 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %173 = load float, float* %20, align 4
  %174 = fpext float %173 to double
  %175 = load float, float* %21, align 4
  %176 = fpext float %175 to double
  %177 = load float, float* %24, align 4
  %178 = fpext float %177 to double
  %179 = load float, float* %25, align 4
  %180 = fpext float %179 to double
  %181 = load float, float* %20, align 4
  %182 = load float, float* %23, align 4
  %183 = fadd float %181, %182
  %184 = fpext float %183 to double
  %185 = load float, float* %21, align 4
  %186 = load float, float* %22, align 4
  %187 = fadd float %185, %186
  %188 = fpext float %187 to double
  %189 = load i32, i32* %26, align 4
  %190 = call i32 @arc_add(%struct.gs_state_s* noundef %172, double noundef %174, double noundef %176, double noundef %178, double noundef %180, double noundef %184, double noundef %188, i32 noundef %189)
  store i32 %190, i32* %27, align 4
  %191 = load i32, i32* %27, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %157
  %194 = load i32, i32* %27, align 4
  store i32 %194, i32* %8, align 4
  br label %252

195:                                              ; preds = %157
  %196 = load float, float* %24, align 4
  store float %196, float* %20, align 4
  %197 = load float, float* %25, align 4
  store float %197, float* %21, align 4
  %198 = load i64, i64* %16, align 8
  %199 = add nsw i64 %198, 368640
  store i64 %199, i64* %16, align 8
  store i32 0, i32* %26, align 4
  br label %152, !llvm.loop !6

200:                                              ; preds = %152
  br label %201

201:                                              ; preds = %200, %150
  %202 = load i64, i64* %18, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  br label %252

205:                                              ; preds = %201
  %206 = load i64, i64* %18, align 8
  %207 = sitofp i64 %206 to double
  %208 = fmul double %207, 0x3F30000000000000
  %209 = fptrunc double %208 to float
  %210 = fpext float %209 to double
  %211 = fmul double %210, 0x3F81DF46A2529D39
  %212 = call double @tan(double noundef %211) #4
  %213 = fptrunc double %212 to float
  store float %213, float* %30, align 4
  %214 = load i64, i64* %17, align 8
  %215 = sitofp i64 %214 to double
  %216 = fmul double %215, 0x3F30000000000000
  %217 = fptrunc double %216 to float
  %218 = fpext float %217 to double
  %219 = fmul double %218, 0x3F91DF46A2529D39
  %220 = fptrunc double %219 to float
  store float %220, float* %31, align 4
  %221 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %222 = load float, float* %20, align 4
  %223 = fpext float %222 to double
  %224 = load float, float* %21, align 4
  %225 = fpext float %224 to double
  %226 = load double, double* %10, align 8
  %227 = load double, double* %12, align 8
  %228 = load float, float* %31, align 4
  %229 = fpext float %228 to double
  %230 = call double @cos(double noundef %229) #4
  %231 = call double @llvm.fmuladd.f64(double %227, double %230, double %226)
  %232 = load double, double* %11, align 8
  %233 = load double, double* %12, align 8
  %234 = load float, float* %31, align 4
  %235 = fpext float %234 to double
  %236 = call double @sin(double noundef %235) #4
  %237 = call double @llvm.fmuladd.f64(double %233, double %236, double %232)
  %238 = load float, float* %20, align 4
  %239 = load float, float* %30, align 4
  %240 = load float, float* %22, align 4
  %241 = fneg float %239
  %242 = call float @llvm.fmuladd.f32(float %241, float %240, float %238)
  %243 = fpext float %242 to double
  %244 = load float, float* %21, align 4
  %245 = load float, float* %30, align 4
  %246 = load float, float* %23, align 4
  %247 = call float @llvm.fmuladd.f32(float %245, float %246, float %244)
  %248 = fpext float %247 to double
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @arc_add(%struct.gs_state_s* noundef %221, double noundef %223, double noundef %225, double noundef %231, double noundef %237, double noundef %243, double noundef %248, i32 noundef %249)
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %205, %204, %193, %143, %40
  %253 = load i32, i32* %8, align 4
  ret i32 %253
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arcn(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %14 = load double, double* %8, align 8
  %15 = load double, double* %9, align 8
  %16 = load double, double* %10, align 8
  %17 = load double, double* %11, align 8
  %18 = load double, double* %12, align 8
  %19 = call i32 @arc_either(%struct.gs_state_s* noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17, double noundef %18, i32 noundef 1)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arcto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, float* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.gs_point_s, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca %struct.gs_fixed_point_s, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store float* %6, float** %15, align 8
  %34 = load double, double* %14, align 8
  %35 = fcmp olt double %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i32 -23, i32* %8, align 4
  br label %196

37:                                               ; preds = %7
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %39 = call i32 @gs_currentpoint(%struct.gs_state_s* noundef %38, %struct.gs_point_s* noundef %20)
  store i32 %39, i32* %21, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %8, align 4
  br label %196

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load double, double* %10, align 8
  %48 = fsub double %46, %47
  %49 = fptrunc double %48 to float
  store float %49, float* %22, align 4
  %50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = load double, double* %11, align 8
  %54 = fsub double %52, %53
  %55 = fptrunc double %54 to float
  store float %55, float* %23, align 4
  %56 = load double, double* %12, align 8
  %57 = load double, double* %10, align 8
  %58 = fsub double %56, %57
  %59 = fptrunc double %58 to float
  store float %59, float* %24, align 4
  %60 = load double, double* %13, align 8
  %61 = load double, double* %11, align 8
  %62 = fsub double %60, %61
  %63 = fptrunc double %62 to float
  store float %63, float* %25, align 4
  %64 = load float, float* %22, align 4
  %65 = load float, float* %22, align 4
  %66 = load float, float* %23, align 4
  %67 = load float, float* %23, align 4
  %68 = fmul float %66, %67
  %69 = call float @llvm.fmuladd.f32(float %64, float %65, float %68)
  %70 = fpext float %69 to double
  store double %70, double* %26, align 8
  %71 = load float, float* %24, align 4
  %72 = load float, float* %24, align 4
  %73 = load float, float* %25, align 4
  %74 = load float, float* %25, align 4
  %75 = fmul float %73, %74
  %76 = call float @llvm.fmuladd.f32(float %71, float %72, float %75)
  %77 = fpext float %76 to double
  store double %77, double* %27, align 8
  %78 = load float, float* %23, align 4
  %79 = load float, float* %24, align 4
  %80 = load float, float* %25, align 4
  %81 = load float, float* %22, align 4
  %82 = fmul float %80, %81
  %83 = fneg float %82
  %84 = call float @llvm.fmuladd.f32(float %78, float %79, float %83)
  %85 = fpext float %84 to double
  store double %85, double* %28, align 8
  %86 = load double, double* %26, align 8
  %87 = load double, double* %27, align 8
  %88 = fmul double %86, %87
  %89 = call double @sqrt(double noundef %88) #4
  %90 = load float, float* %22, align 4
  %91 = load float, float* %24, align 4
  %92 = load float, float* %23, align 4
  %93 = load float, float* %25, align 4
  %94 = fmul float %92, %93
  %95 = call float @llvm.fmuladd.f32(float %90, float %91, float %94)
  %96 = fpext float %95 to double
  %97 = fsub double %89, %96
  store double %97, double* %29, align 8
  %98 = load double, double* %28, align 8
  %99 = call double @llvm.fabs.f64(double %98)
  %100 = fcmp olt double %99, 0x3EB0C6F7A0B5ED8D
  br i1 %100, label %105, label %101

101:                                              ; preds = %43
  %102 = load double, double* %29, align 8
  %103 = call double @llvm.fabs.f64(double %102)
  %104 = fcmp olt double %103, 0x3EB0C6F7A0B5ED8D
  br i1 %104, label %105, label %127

105:                                              ; preds = %101, %43
  %106 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %106, i32 0, i32 2
  %108 = load double, double* %10, align 8
  %109 = load double, double* %11, align 8
  %110 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %107, double noundef %108, double noundef %109, %struct.gs_fixed_point_s* noundef %30)
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %115 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 7
  %116 = load %struct.gx_path_s*, %struct.gx_path_s** %115, align 8
  %117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %116, i64 noundef %118, i64 noundef %120)
  store i32 %121, i32* %21, align 4
  br label %122

122:                                              ; preds = %113, %105
  %123 = load double, double* %10, align 8
  %124 = fptrunc double %123 to float
  store float %124, float* %18, align 4
  store float %124, float* %16, align 4
  %125 = load double, double* %11, align 8
  %126 = fptrunc double %125 to float
  store float %126, float* %19, align 4
  store float %126, float* %17, align 4
  br label %178

127:                                              ; preds = %101
  %128 = load double, double* %14, align 8
  %129 = load double, double* %28, align 8
  %130 = fmul double %128, %129
  %131 = load double, double* %29, align 8
  %132 = fdiv double %130, %131
  %133 = call double @llvm.fabs.f64(double %132)
  store double %133, double* %31, align 8
  %134 = load double, double* %31, align 8
  %135 = load double, double* %26, align 8
  %136 = call double @sqrt(double noundef %135) #4
  %137 = fdiv double %134, %136
  store double %137, double* %32, align 8
  %138 = load double, double* %31, align 8
  %139 = load double, double* %27, align 8
  %140 = call double @sqrt(double noundef %139) #4
  %141 = fdiv double %138, %140
  store double %141, double* %33, align 8
  %142 = load double, double* %10, align 8
  %143 = load float, float* %22, align 4
  %144 = fpext float %143 to double
  %145 = load double, double* %32, align 8
  %146 = call double @llvm.fmuladd.f64(double %144, double %145, double %142)
  %147 = fptrunc double %146 to float
  store float %147, float* %16, align 4
  %148 = load double, double* %11, align 8
  %149 = load float, float* %23, align 4
  %150 = fpext float %149 to double
  %151 = load double, double* %32, align 8
  %152 = call double @llvm.fmuladd.f64(double %150, double %151, double %148)
  %153 = fptrunc double %152 to float
  store float %153, float* %17, align 4
  %154 = load double, double* %10, align 8
  %155 = load float, float* %24, align 4
  %156 = fpext float %155 to double
  %157 = load double, double* %33, align 8
  %158 = call double @llvm.fmuladd.f64(double %156, double %157, double %154)
  %159 = fptrunc double %158 to float
  store float %159, float* %18, align 4
  %160 = load double, double* %11, align 8
  %161 = load float, float* %25, align 4
  %162 = fpext float %161 to double
  %163 = load double, double* %33, align 8
  %164 = call double @llvm.fmuladd.f64(double %162, double %163, double %160)
  %165 = fptrunc double %164 to float
  store float %165, float* %19, align 4
  %166 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %167 = load float, float* %16, align 4
  %168 = fpext float %167 to double
  %169 = load float, float* %17, align 4
  %170 = fpext float %169 to double
  %171 = load float, float* %18, align 4
  %172 = fpext float %171 to double
  %173 = load float, float* %19, align 4
  %174 = fpext float %173 to double
  %175 = load double, double* %10, align 8
  %176 = load double, double* %11, align 8
  %177 = call i32 @arc_add(%struct.gs_state_s* noundef %166, double noundef %168, double noundef %170, double noundef %172, double noundef %174, double noundef %175, double noundef %176, i32 noundef 1)
  store i32 %177, i32* %21, align 4
  br label %178

178:                                              ; preds = %127, %122
  %179 = load float*, float** %15, align 8
  %180 = icmp ne float* %179, null
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = load float, float* %16, align 4
  %183 = load float*, float** %15, align 8
  %184 = getelementptr inbounds float, float* %183, i64 0
  store float %182, float* %184, align 4
  %185 = load float, float* %17, align 4
  %186 = load float*, float** %15, align 8
  %187 = getelementptr inbounds float, float* %186, i64 1
  store float %185, float* %187, align 4
  %188 = load float, float* %18, align 4
  %189 = load float*, float** %15, align 8
  %190 = getelementptr inbounds float, float* %189, i64 2
  store float %188, float* %190, align 4
  %191 = load float, float* %19, align 4
  %192 = load float*, float** %15, align 8
  %193 = getelementptr inbounds float, float* %192, i64 3
  store float %191, float* %193, align 4
  br label %194

194:                                              ; preds = %181, %178
  %195 = load i32, i32* %21, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %41, %36
  %197 = load i32, i32* %8, align 4
  ret i32 %197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.gs_state_s*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gx_path_s*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.gs_fixed_point_s, align 8
  %21 = alloca %struct.gs_fixed_point_s, align 8
  %22 = alloca %struct.gs_fixed_point_s, align 8
  %23 = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %10, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 7
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %25, align 8
  store %struct.gx_path_s* %26, %struct.gx_path_s** %18, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %10, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 2
  %29 = load double, double* %11, align 8
  %30 = load double, double* %12, align 8
  %31 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %28, double noundef %29, double noundef %30, %struct.gs_fixed_point_s* noundef %20)
  store i32 %31, i32* %19, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %10, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 2
  %36 = load double, double* %13, align 8
  %37 = load double, double* %14, align 8
  %38 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %35, double noundef %36, double noundef %37, %struct.gs_fixed_point_s* noundef %21)
  store i32 %38, i32* %19, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %33
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %10, align 8
  %42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 2
  %43 = load double, double* %15, align 8
  %44 = load double, double* %16, align 8
  %45 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %42, double noundef %43, double noundef %44, %struct.gs_fixed_point_s* noundef %22)
  store i32 %45, i32* %19, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %52 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %51, %struct.gs_fixed_point_s* noundef %23)
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %55, i64 noundef %57, i64 noundef %59)
  br label %68

61:                                               ; preds = %50
  %62 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %62, i64 noundef %64, i64 noundef %66)
  br label %68

68:                                               ; preds = %61, %54
  %69 = phi i32 [ %60, %54 ], [ %67, %61 ]
  store i32 %69, i32* %19, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %40, %33, %8
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %9, align 4
  br label %88

73:                                               ; preds = %68, %47
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @gx_path_add_arc(%struct.gx_path_s* noundef %74, i64 noundef %76, i64 noundef %78, i64 noundef %80, i64 noundef %82, i64 noundef %84, i64 noundef %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %73, %71
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_curveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gs_fixed_point_s, align 8
  %17 = alloca %struct.gs_fixed_point_s, align 8
  %18 = alloca %struct.gs_fixed_point_s, align 8
  %19 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 2
  %22 = load double, double* %10, align 8
  %23 = load double, double* %11, align 8
  %24 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %21, double noundef %22, double noundef %23, %struct.gs_fixed_point_s* noundef %16)
  store i32 %24, i32* %19, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %7
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 2
  %29 = load double, double* %12, align 8
  %30 = load double, double* %13, align 8
  %31 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %28, double noundef %29, double noundef %30, %struct.gs_fixed_point_s* noundef %17)
  store i32 %31, i32* %19, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 2
  %36 = load double, double* %14, align 8
  %37 = load double, double* %15, align 8
  %38 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %35, double noundef %36, double noundef %37, %struct.gs_fixed_point_s* noundef %18)
  store i32 %38, i32* %19, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %26, %7
  %41 = load i32, i32* %19, align 4
  store i32 %41, i32* %8, align 4
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %44 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 7
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %44, align 8
  %46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @gx_path_add_curve(%struct.gx_path_s* noundef %45, i64 noundef %47, i64 noundef %49, i64 noundef %51, i64 noundef %53, i64 noundef %55, i64 noundef %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %42, %40
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rcurveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gs_fixed_point_s, align 8
  %17 = alloca %struct.gs_fixed_point_s, align 8
  %18 = alloca %struct.gs_fixed_point_s, align 8
  %19 = alloca %struct.gs_fixed_point_s, align 8
  %20 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 7
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %22, align 8
  %24 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %23, %struct.gs_fixed_point_s* noundef %16)
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %20, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %20, align 4
  store i32 %28, i32* %8, align 4
  br label %87

29:                                               ; preds = %7
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 2
  %32 = load double, double* %10, align 8
  %33 = load double, double* %11, align 8
  %34 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %31, double noundef %32, double noundef %33, %struct.gs_fixed_point_s* noundef %17)
  store i32 %34, i32* %20, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 2
  %39 = load double, double* %12, align 8
  %40 = load double, double* %13, align 8
  %41 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %38, double noundef %39, double noundef %40, %struct.gs_fixed_point_s* noundef %18)
  store i32 %41, i32* %20, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 2
  %46 = load double, double* %14, align 8
  %47 = load double, double* %15, align 8
  %48 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %45, double noundef %46, double noundef %47, %struct.gs_fixed_point_s* noundef %19)
  store i32 %48, i32* %20, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %36, %29
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %8, align 4
  br label %87

52:                                               ; preds = %43
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 7
  %55 = load %struct.gx_path_s*, %struct.gx_path_s** %54, align 8
  %56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %62, %64
  %66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %67, %69
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  %76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %82, %84
  %86 = call i32 @gx_path_add_curve(%struct.gx_path_s* noundef %55, i64 noundef %60, i64 noundef %65, i64 noundef %70, i64 noundef %75, i64 noundef %80, i64 noundef %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %52, %50, %27
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #3

declare dso_local i32 @gx_path_add_arc(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
