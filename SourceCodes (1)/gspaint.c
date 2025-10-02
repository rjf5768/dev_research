; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspaint.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_image_enum_s = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, %struct.gs_state_s*, i8*, i32, i32, i32, i32, i32, [4 x i8*], i32, i32, i32, i64, i64, i32, [256 x %struct.gx_device_color_s] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_erasepage(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca %struct.device_s*, align 8
  %4 = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 22
  %7 = load %struct.device_s*, %struct.device_s** %6, align 8
  store %struct.device_s* %7, %struct.device_s** %3, align 8
  %8 = load %struct.device_s*, %struct.device_s** %3, align 8
  %9 = getelementptr inbounds %struct.device_s, %struct.device_s* %8, i32 0, i32 0
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  store %struct.gx_device_s* %10, %struct.gx_device_s** %4, align 8
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 1
  %13 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %12, align 8
  %14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %13, i32 0, i32 7
  %15 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %14, align 8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.device_s*, %struct.device_s** %3, align 8
  %24 = getelementptr inbounds %struct.device_s, %struct.device_s* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 %15(%struct.gx_device_s* noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef %19, i32 noundef %22, i64 noundef %25)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_fill(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = call i32 @gs_fill_trim(%struct.gs_state_s* noundef %3, i64 noundef 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_fill_trim(%struct.gs_state_s* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 20
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %12, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 0
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %15, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %19 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %13, %struct.gx_path_s* noundef %18)
  store i32 %19, i32* %5, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 13
  %23 = load %struct.gs_color_s*, %struct.gs_color_s** %22, align 8
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 14
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %25, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %28 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %23, %struct.gx_device_color_s* noundef %26, %struct.gs_state_s* noundef %27)
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 7
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %30, align 8
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 14
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %33, align 8
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* noundef %31, %struct.gx_device_color_s* noundef %34, %struct.gs_state_s* noundef %35, i32 noundef -1, i64 noundef %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %20, %10
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %43 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @gx_path_merge(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #1

declare dso_local i32 @gx_color_render(...) #1

declare dso_local i32 @gx_fill_path(...) #1

declare dso_local i32 @gs_newpath(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_eofill(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 13
  %6 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 14
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %8, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %11 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %6, %struct.gx_device_color_s* noundef %9, %struct.gs_state_s* noundef %10)
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 20
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 0
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %21, align 8
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 7
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %23, align 8
  %25 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %19, %struct.gx_path_s* noundef %24)
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 13
  %29 = load %struct.gs_color_s*, %struct.gs_color_s** %28, align 8
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 14
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %31, align 8
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %34 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %29, %struct.gx_device_color_s* noundef %32, %struct.gs_state_s* noundef %33)
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 7
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %36, align 8
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 14
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %39, align 8
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %42 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* noundef %37, %struct.gx_device_color_s* noundef %40, %struct.gs_state_s* noundef %41, i32 noundef 1, i64 noundef 0)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %16
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %48 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_stroke(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 20
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %10, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %15, align 8
  %17 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %11, %struct.gx_path_s* noundef %16)
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 13
  %21 = load %struct.gs_color_s*, %struct.gs_color_s** %20, align 8
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 14
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %23, align 8
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %26 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %21, %struct.gx_device_color_s* noundef %24, %struct.gs_state_s* noundef %25)
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 7
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %28, align 8
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %31 = call i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_fill to i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* noundef %29, %struct.gs_state_s* noundef %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %8
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %37 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @gx_stroke_fill(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_strokepath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef %4, %struct.gs_memory_procs* noundef %7)
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = call i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_add to i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* noundef %10, %struct.gx_path_s* noundef %4, %struct.gs_state_s* noundef %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 7
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %19, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %20)
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 7
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %22, align 8
  %24 = bitcast %struct.gx_path_s* %23 to i8*
  %25 = bitcast %struct.gx_path_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 144, i1 false)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

declare dso_local i32 @gx_stroke_add(...) #1

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_colorimage(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.gs_matrix_s* noundef %5, i8* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gs_matrix_s*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.gs_image_enum_s, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.gs_matrix_s* %5, %struct.gs_matrix_s** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %14, align 8
  %28 = call i32 @gs_image_init(%struct.gs_image_enum_s* noundef %16, %struct.gs_state_s* noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, %struct.gs_matrix_s* noundef %27)
  store i32 %28, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %8, align 4
  br label %84

32:                                               ; preds = %7
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul i32 %36, %37
  %39 = load i32, i32* %13, align 4
  %40 = mul i32 %38, %39
  %41 = add i32 %40, 7
  %42 = lshr i32 %41, 3
  %43 = load i32, i32* %11, align 4
  %44 = mul i32 %42, %43
  store i32 %44, i32* %18, align 4
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef %16, i8* noundef %45, i32 noundef %46)
  store i32 %47, i32* %17, align 4
  br label %76

48:                                               ; preds = %32
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %49, %50
  %52 = add i32 %51, 7
  %53 = lshr i32 %52, 3
  %54 = load i32, i32* %11, align 4
  %55 = mul i32 %53, %54
  store i32 %55, i32* %19, align 4
  %56 = load i8*, i8** %15, align 8
  store i8* %56, i8** %20, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %21, align 4
  br label %58

58:                                               ; preds = %71, %48
  %59 = load i8*, i8** %20, align 8
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef %16, i8* noundef %59, i32 noundef %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %8, align 4
  br label %84

66:                                               ; preds = %58
  %67 = load i32, i32* %19, align 4
  %68 = load i8*, i8** %20, align 8
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %20, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %58, label %75, !llvm.loop !4

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %35
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %17, align 4
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %64, %30
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @gs_image_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_image_next(%struct.gs_image_enum_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_image(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gs_matrix_s* noundef %4, i8* noundef %5) #0 {
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gs_matrix_s*, align 8
  %12 = alloca i8*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.gs_matrix_s* %4, %struct.gs_matrix_s** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @gs_colorimage(%struct.gs_state_s* noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef 1, %struct.gs_matrix_s* noundef %17, i8* noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gs_matrix_s* noundef %4, i8* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_state_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_matrix_s*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gs_image_enum_s, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.gs_matrix_s* %4, %struct.gs_matrix_s** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = add i32 %17, 7
  %19 = lshr i32 %18, 3
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %12, align 8
  %27 = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef %14, %struct.gs_state_s* noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, %struct.gs_matrix_s* noundef %26)
  store i32 %27, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %7, align 4
  br label %42

31:                                               ; preds = %6
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef %14, i8* noundef %32, i32 noundef %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %15, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
