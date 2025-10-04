; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
%struct.gs_path_enum_s = type { %struct.segment_s*, %struct.gs_state_s* }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@gs_path_enum_sizeof = dso_local global i32 16, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad type %x in gs_path_enum_next!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_flattenpath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %7, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %15, align 8
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 21
  %19 = load float, float* %18, align 8
  %20 = fpext float %19 to double
  %21 = call i32 @gx_path_flatten(%struct.gx_path_s* noundef %16, %struct.gx_path_s* noundef %4, double noundef %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %13
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 7
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %28, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %29)
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 7
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %31, align 8
  %33 = bitcast %struct.gx_path_s* %32 to i8*
  %34 = bitcast %struct.gx_path_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 144, i1 false)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %24, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @gx_path_flatten(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef, double noundef) #1

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_reversepath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  ret i32 -21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_pathbbox(%struct.gs_state_s* noundef %0, %struct.gs_rect_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gs_rect_s*, align 8
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  %7 = alloca %struct.gs_rect_s, align 4
  %8 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store %struct.gs_rect_s* %1, %struct.gs_rect_s** %5, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %10, align 8
  %12 = call i32 @gx_path_bbox(%struct.gx_path_s* noundef %11, %struct.gs_fixed_rect_s* noundef %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %24, i32 0, i32 0
  store float %23, float* %25, align 4
  %26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to double
  %30 = fmul double %29, 0x3F30000000000000
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %32, i32 0, i32 1
  store float %31, float* %33, align 4
  %34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = fmul double %37, 0x3F30000000000000
  %39 = fptrunc double %38 to float
  %40 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %40, i32 0, i32 0
  store float %39, float* %41, align 4
  %42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = fmul double %45, 0x3F30000000000000
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %48, i32 0, i32 1
  store float %47, float* %49, align 4
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %51 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 2
  %52 = bitcast %struct.gs_matrix_fixed_s* %51 to %struct.gs_matrix_s*
  %53 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %54 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* noundef %7, %struct.gs_matrix_s* noundef %52, %struct.gs_rect_s* noundef %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %17, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @gx_path_bbox(%struct.gx_path_s* noundef, %struct.gs_fixed_rect_s* noundef) #1

declare dso_local i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_rect_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_path_enum_init(%struct.gs_path_enum_s* noundef %0, %struct.gs_state_s* noundef %1) #0 {
  %3 = alloca %struct.gs_path_enum_s*, align 8
  %4 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_path_enum_s* %0, %struct.gs_path_enum_s** %3, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %4, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 7
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 4
  %9 = load %struct.subpath*, %struct.subpath** %8, align 8
  %10 = bitcast %struct.subpath* %9 to %struct.segment_s*
  %11 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %3, align 8
  %12 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %11, i32 0, i32 0
  store %struct.segment_s* %10, %struct.segment_s** %12, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %14 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %3, align 8
  %15 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %14, i32 0, i32 1
  store %struct.gs_state_s* %13, %struct.gs_state_s** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef %0, %struct.gs_point_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_path_enum_s*, align 8
  %5 = alloca %struct.gs_point_s*, align 8
  %6 = alloca %struct.segment_s*, align 8
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca %struct.gs_point_s, align 4
  %9 = alloca i32, align 4
  store %struct.gs_path_enum_s* %0, %struct.gs_path_enum_s** %4, align 8
  store %struct.gs_point_s* %1, %struct.gs_point_s** %5, align 8
  %10 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %11 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %10, i32 0, i32 0
  %12 = load %struct.segment_s*, %struct.segment_s** %11, align 8
  store %struct.segment_s* %12, %struct.segment_s** %6, align 8
  %13 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %14 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %13, i32 0, i32 1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %14, align 8
  store %struct.gs_state_s* %15, %struct.gs_state_s** %7, align 8
  %16 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %17 = icmp eq %struct.segment_s* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

19:                                               ; preds = %2
  %20 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 1
  %22 = load %struct.segment_s*, %struct.segment_s** %21, align 8
  %23 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %24 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %23, i32 0, i32 0
  store %struct.segment_s* %22, %struct.segment_s** %24, align 8
  %25 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 4, i32* %3, align 4
  br label %128

30:                                               ; preds = %19
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %32 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = fmul double %36, 0x3F30000000000000
  %38 = fptrunc double %37 to float
  %39 = fpext float %38 to double
  %40 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %41 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = fmul double %44, 0x3F30000000000000
  %46 = fptrunc double %45 to float
  %47 = fpext float %46 to double
  %48 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %31, double noundef %39, double noundef %47, %struct.gs_point_s* noundef %8)
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %128

52:                                               ; preds = %30
  %53 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %54 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %120 [
    i32 0, label %56
    i32 1, label %61
    i32 3, label %66
  ]

56:                                               ; preds = %52
  %57 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %57, i64 0
  %59 = bitcast %struct.gs_point_s* %58 to i8*
  %60 = bitcast %struct.gs_point_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  store i32 1, i32* %3, align 4
  br label %128

61:                                               ; preds = %52
  %62 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %62, i64 0
  %64 = bitcast %struct.gs_point_s* %63 to i8*
  %65 = bitcast %struct.gs_point_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 8, i1 false)
  store i32 2, i32* %3, align 4
  br label %128

66:                                               ; preds = %52
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %68 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %69 = bitcast %struct.segment_s* %68 to %struct.curve_segment*
  %70 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = fmul double %73, 0x3F30000000000000
  %75 = fptrunc double %74 to float
  %76 = fpext float %75 to double
  %77 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %78 = bitcast %struct.segment_s* %77 to %struct.curve_segment*
  %79 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = fmul double %82, 0x3F30000000000000
  %84 = fptrunc double %83 to float
  %85 = fpext float %84 to double
  %86 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %86, i64 0
  %88 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %67, double noundef %76, double noundef %85, %struct.gs_point_s* noundef %87)
  store i32 %88, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %66
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %92 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %93 = bitcast %struct.segment_s* %92 to %struct.curve_segment*
  %94 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = fmul double %97, 0x3F30000000000000
  %99 = fptrunc double %98 to float
  %100 = fpext float %99 to double
  %101 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %102 = bitcast %struct.segment_s* %101 to %struct.curve_segment*
  %103 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to double
  %107 = fmul double %106, 0x3F30000000000000
  %108 = fptrunc double %107 to float
  %109 = fpext float %108 to double
  %110 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %110, i64 1
  %112 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %91, double noundef %100, double noundef %109, %struct.gs_point_s* noundef %111)
  store i32 %112, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %90, %66
  store i32 0, i32* %3, align 4
  br label %128

115:                                              ; preds = %90
  %116 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %116, i64 2
  %118 = bitcast %struct.gs_point_s* %117 to i8*
  %119 = bitcast %struct.gs_point_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  store i32 3, i32* %3, align 4
  br label %128

120:                                              ; preds = %52
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %125 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %126)
  call void @exit(i32 noundef 1) #4
  unreachable

128:                                              ; preds = %115, %114, %61, %56, %50, %29, %18
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @gs_itransform(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_clippath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %7, align 8
  %9 = call i32 @gx_path_copy(%struct.gx_path_s* noundef %5, %struct.gx_path_s* noundef %8)
  ret i32 %9
}

declare dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_initclip(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 22
  %6 = load %struct.device_s*, %struct.device_s** %5, align 8
  %7 = getelementptr inbounds %struct.device_s, %struct.device_s* %6, i32 0, i32 0
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %7, align 8
  store %struct.gx_device_s* %8, %struct.gx_device_s** %3, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = shl i64 %13, 12
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = shl i64 %18, 12
  %20 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* noundef %9, i64 noundef 0, i64 noundef 0, i64 noundef %14, i64 noundef %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_clip(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = call i32 @common_clip(%struct.gs_state_s* noundef %3, i32 noundef -1)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_clip(%struct.gs_state_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_path_s, align 8
  %6 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 7
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %8, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 21
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = call i32 @gx_path_flatten(%struct.gx_path_s* noundef %9, %struct.gx_path_s* noundef %5, double noundef %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @set_clip_path(%struct.gs_state_s* noundef %18, %struct.gx_path_s* noundef %5, i32 noundef %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_eoclip(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = call i32 @common_clip(%struct.gs_state_s* noundef %3, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_clip_to_rectangle(%struct.gs_state_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gx_path_s, align 8
  %13 = alloca %struct.gx_path_s*, align 8
  %14 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.gx_path_s* %12, %struct.gx_path_s** %13, align 8
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef %15, %struct.gs_memory_procs* noundef %17)
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22)
  store i32 %23, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %26)
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %5
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 8
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %30, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %31)
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  %34 = call i32 @set_clip_path(%struct.gs_state_s* noundef %32, %struct.gx_path_s* noundef %33, i32 noundef -1)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

declare dso_local i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_clip_path(%struct.gs_state_s* noundef %0, %struct.gx_path_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gx_path_s*, align 8
  %6 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %10 = call i32 @gx_path_is_rectangle(%struct.gx_path_s* noundef %7, %struct.gs_fixed_rect_s* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %12, %3
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 1
  %33 = call i32 @gx_path_bbox(%struct.gx_path_s* noundef %30, %struct.gs_fixed_rect_s* noundef %32)
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 8
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %35, align 8
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %38 = bitcast %struct.gx_path_s* %36 to i8*
  %39 = bitcast %struct.gx_path_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 144, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  ret i32 0
}

declare dso_local i32 @gx_path_is_rectangle(%struct.gx_path_s* noundef, %struct.gs_fixed_rect_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
