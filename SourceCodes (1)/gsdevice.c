; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsdevice.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }

@null_device = internal global %struct.gx_device_s { i32 32, %struct.gx_device_procs_s* @null_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 16383, i32 16383, float 1.000000e+00, float 1.000000e+00, i32 0, i16 1, i32 1, i32 1 }, align 8
@gx_device_null_p = dso_local global %struct.gx_device_s* @null_device, align 8
@gx_device_list = external dso_local global [0 x %struct.gx_device_s*], align 8
@.str = private unnamed_addr constant [14 x i8] c"gs_makedevice\00", align 1
@mem_mapped_color_device = external dso_local global %struct.gx_device_memory_s, align 8
@mem_mono_device = external dso_local global %struct.gx_device_memory_s, align 8
@mem_true24_color_device = external dso_local global %struct.gx_device_memory_s, align 8
@mem_true32_color_device = external dso_local global %struct.gx_device_memory_s, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"gs_makeimagedevice(device)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gs_makeimagedevice(bits)\00", align 1
@null_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @gx_default_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @null_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @null_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @null_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @null_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @null_tile_trapezoid }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_flushpage(%struct.gs_state_s* noundef %0) #0 {
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
  %12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %11, i32 0, i32 2
  %13 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %12, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %15 = call i32 %13(%struct.gx_device_s* noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_copypage(%struct.gs_state_s* noundef %0) #0 {
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
  %12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %11, i32 0, i32 3
  %13 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %12, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %15 = call i32 %13(%struct.gx_device_s* noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_copyscanlines(%struct.gx_device_s* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gx_device_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %8, align 8
  %16 = call i32 @gs_device_is_memory(%struct.gx_device_s* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 -21, i32* %7, align 4
  br label %42

19:                                               ; preds = %6
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %8, align 8
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_memory_s*
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef %21, i32 noundef %22, i8* noundef %23, i32 noundef %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %8, align 8
  %37 = bitcast %struct.gx_device_s* %36 to %struct.gx_device_memory_s*
  %38 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef %37)
  %39 = mul nsw i32 %35, %38
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %31
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @gs_device_is_memory(%struct.gx_device_s* noundef) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 22
  %5 = load %struct.device_s*, %struct.device_s** %4, align 8
  %6 = getelementptr inbounds %struct.device_s, %struct.device_s* %5, i32 0, i32 0
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %6, align 8
  ret %struct.gx_device_s* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @gs_devicename(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_deviceparams(%struct.gx_device_s* noundef %0, %struct.gs_matrix_s* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %5, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 1
  %11 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %10, align 8
  %12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %11, i32 0, i32 1
  %13 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %12, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  call void %13(%struct.gx_device_s* noundef %14, %struct.gs_matrix_s* noundef %15)
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 %7
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %8, align 8
  %10 = icmp ne %struct.gx_device_s* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 %17
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %18, align 8
  store %struct.gx_device_s* %19, %struct.gx_device_s** %2, align 8
  br label %25

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5, !llvm.loop !4

24:                                               ; preds = %5
  store %struct.gx_device_s* null, %struct.gx_device_s** %2, align 8
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  ret %struct.gx_device_s* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makedevice(%struct.gx_device_s** noundef %0, %struct.gx_device_s* noundef %1, %struct.gs_matrix_s* noundef %2, i32 noundef %3, i32 noundef %4, i8* (i32, i32, i8*)* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gx_device_s**, align 8
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca %struct.gs_matrix_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8* (i32, i32, i8*)*, align 8
  %14 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s** %0, %struct.gx_device_s*** %8, align 8
  store %struct.gx_device_s* %1, %struct.gx_device_s** %9, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* (i32, i32, i8*)* %5, i8* (i32, i32, i8*)** %13, align 8
  %15 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %13, align 8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* %15(i32 noundef 1, i32 noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = bitcast i8* %19 to %struct.gx_device_s*
  store %struct.gx_device_s* %20, %struct.gx_device_s** %14, align 8
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %22 = icmp eq %struct.gx_device_s* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -25, i32* %7, align 4
  br label %50

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = icmp ule i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ule i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  store i32 -15, i32* %7, align 4
  br label %50

31:                                               ; preds = %27
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %33 = bitcast %struct.gx_device_s* %32 to i8*
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %35 = bitcast %struct.gx_device_s* %34 to i8*
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %35, i64 %39, i1 false)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 10
  store i32 0, i32* %47, align 4
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %14, align 8
  %49 = load %struct.gx_device_s**, %struct.gx_device_s*** %8, align 8
  store %struct.gx_device_s* %48, %struct.gx_device_s** %49, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %31, %30, %23
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makeimagedevice(%struct.gx_device_s** noundef %0, %struct.gs_matrix_s* noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %4, i32 noundef %5, i8* (i32, i32, i8*)* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gx_device_s**, align 8
  %10 = alloca %struct.gs_matrix_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8* (i32, i32, i8*)*, align 8
  %16 = alloca %struct.gx_device_memory_s*, align 8
  %17 = alloca %struct.gx_device_memory_s*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [768 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.gx_device_s** %0, %struct.gx_device_s*** %9, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* (i32, i32, i8*)* %6, i8* (i32, i32, i8*)** %15, align 8
  store %struct.gx_device_memory_s* @mem_mapped_color_device, %struct.gx_device_memory_s** %16, align 8
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %19, align 4
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ule i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = icmp ule i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %7
  store i32 -15, i32* %8, align 4
  br label %210

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  switch i32 %38, label %44 [
    i32 2, label %39
    i32 4, label %40
    i32 16, label %40
    i32 256, label %41
    i32 -24, label %42
    i32 -32, label %43
  ]

39:                                               ; preds = %37
  store i32 1, i32* %21, align 4
  store %struct.gx_device_memory_s* @mem_mono_device, %struct.gx_device_memory_s** %16, align 8
  br label %45

40:                                               ; preds = %37, %37
  store i32 -15, i32* %8, align 4
  br label %210

41:                                               ; preds = %37
  store i32 8, i32* %21, align 4
  br label %45

42:                                               ; preds = %37
  store i32 24, i32* %21, align 4
  store %struct.gx_device_memory_s* @mem_true24_color_device, %struct.gx_device_memory_s** %16, align 8
  store i32 0, i32* %19, align 4
  br label %45

43:                                               ; preds = %37
  store i32 32, i32* %21, align 4
  store %struct.gx_device_memory_s* @mem_true32_color_device, %struct.gx_device_memory_s** %16, align 8
  store i32 0, i32* %19, align 4
  br label %45

44:                                               ; preds = %37
  store i32 -15, i32* %8, align 4
  br label %210

45:                                               ; preds = %43, %42, %41, %39
  %46 = load i32, i32* %19, align 4
  %47 = mul nsw i32 %46, 3
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = icmp sle i32 %48, 8
  br i1 %49, label %50, label %133

50:                                               ; preds = %45
  store i32 0, i32* %26, align 4
  store i32 0, i32* %29, align 4
  %51 = load float*, float** %13, align 8
  store float* %51, float** %27, align 8
  %52 = getelementptr inbounds [768 x i8], [768 x i8]* %25, i64 0, i64 0
  store i8* %52, i8** %28, align 8
  br label %53

53:                                               ; preds = %118, %50
  %54 = load i32, i32* %29, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %125

57:                                               ; preds = %53
  %58 = load float*, float** %27, align 8
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fcmp olt double %60, -1.000000e-03
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load float*, float** %27, align 8
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fcmp ogt double %65, 1.001000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  store i32 -15, i32* %8, align 4
  br label %210

68:                                               ; preds = %62
  %69 = load float*, float** %27, align 8
  %70 = load float, float* %69, align 4
  %71 = fmul float %70, 2.550000e+02
  %72 = fpext float %71 to double
  %73 = fadd double %72, 5.000000e-01
  %74 = fptoui double %73 to i8
  %75 = load i8*, i8** %28, align 8
  store i8 %74, i8* %75, align 1
  %76 = load i32, i32* %29, align 4
  %77 = srem i32 %76, 3
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %117

79:                                               ; preds = %68
  %80 = load i8*, i8** %28, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %28, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %79
  %89 = load i8*, i8** %28, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %28, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %88
  %98 = load i8*, i8** %28, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %29, align 4
  %104 = sub nsw i32 %103, 2
  store i32 %104, i32* %24, align 4
  br label %114

105:                                              ; preds = %97
  %106 = load i8*, i8** %28, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %29, align 4
  %112 = sub nsw i32 %111, 2
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %102
  br label %116

115:                                              ; preds = %88, %79
  store i32 1, i32* %26, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %68
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %29, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %29, align 4
  %121 = load float*, float** %27, align 8
  %122 = getelementptr inbounds float, float* %121, i32 1
  store float* %122, float** %27, align 8
  %123 = load i8*, i8** %28, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %28, align 8
  br label %53, !llvm.loop !6

125:                                              ; preds = %53
  %126 = load i32, i32* %23, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %24, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128, %125
  store i32 -15, i32* %8, align 4
  br label %210

132:                                              ; preds = %128
  br label %134

133:                                              ; preds = %45
  store i32 1, i32* %26, align 4
  br label %134

134:                                              ; preds = %133, %132
  %135 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %15, align 8
  %136 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %16, align 8
  %137 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i8* %135(i32 noundef 1, i32 noundef %138, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %140 = bitcast i8* %139 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %140, %struct.gx_device_memory_s** %17, align 8
  %141 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %142 = icmp eq %struct.gx_device_memory_s* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 -25, i32* %8, align 4
  br label %210

144:                                              ; preds = %134
  %145 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %146 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %16, align 8
  %147 = bitcast %struct.gx_device_memory_s* %145 to i8*
  %148 = bitcast %struct.gx_device_memory_s* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 200, i1 false)
  %149 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %150 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %149, i32 0, i32 11
  %151 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %10, align 8
  %152 = bitcast %struct.gs_matrix_s* %150 to i8*
  %153 = bitcast %struct.gs_matrix_s* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 96, i1 false)
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %156 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %159 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %26, align 4
  %161 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %162 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %21, align 4
  %164 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %165 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 8
  %166 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %167 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef %166)
  store i64 %167, i64* %22, align 8
  %168 = load i64, i64* %22, align 8
  %169 = icmp ugt i64 %168, 4294967295
  br i1 %169, label %170, label %171

170:                                              ; preds = %144
  store i32 -13, i32* %8, align 4
  br label %210

171:                                              ; preds = %144
  %172 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %15, align 8
  %173 = load i64, i64* %22, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %20, align 4
  %176 = add i32 %174, %175
  %177 = call i8* %172(i32 noundef 1, i32 noundef %176, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i8* %177, i8** %18, align 8
  %178 = load i8*, i8** %18, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i32 -25, i32* %8, align 4
  br label %210

181:                                              ; preds = %171
  %182 = load i8*, i8** %18, align 8
  %183 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %184 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %183, i32 0, i32 13
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %24, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 0, i32 -1
  %189 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %190 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %189, i32 0, i32 16
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %193 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %192, i32 0, i32 17
  store i32 %191, i32* %193, align 4
  %194 = load i8*, i8** %18, align 8
  %195 = load i64, i64* %22, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  %197 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %198 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %197, i32 0, i32 18
  store i8* %196, i8** %198, align 8
  %199 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %200 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %199, i32 0, i32 18
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds [768 x i8], [768 x i8]* %25, i64 0, i64 0
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %201, i8* align 16 %202, i64 %204, i1 false)
  %205 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %206 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %205, i32 0, i32 10
  store i32 0, i32* %206, align 4
  %207 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %17, align 8
  %208 = bitcast %struct.gx_device_memory_s* %207 to %struct.gx_device_s*
  %209 = load %struct.gx_device_s**, %struct.gx_device_s*** %9, align 8
  store %struct.gx_device_s* %208, %struct.gx_device_s** %209, align 8
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %181, %180, %170, %143, %131, %67, %44, %40, %36
  %211 = load i32, i32* %8, align 4
  ret i32 %211
}

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef %0, %struct.gx_device_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca %struct.device_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store %struct.gx_device_s* %1, %struct.gx_device_s** %5, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 22
  %11 = load %struct.device_s*, %struct.device_s** %10, align 8
  store %struct.device_s* %11, %struct.device_s** %6, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 1
  %20 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %19, align 8
  %21 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %20, i32 0, i32 0
  %22 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %21, align 8
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %24 = call i32 %22(%struct.gx_device_s* noundef %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %17
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 10
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 1
  %35 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %34, align 8
  %36 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %35, i32 0, i32 5
  %37 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %36, align 8
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %39 = call i64 %37(%struct.gx_device_s* noundef %38, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %40 = load %struct.device_s*, %struct.device_s** %6, align 8
  %41 = getelementptr inbounds %struct.device_s, %struct.device_s* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 1
  %44 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %43, align 8
  %45 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %44, i32 0, i32 5
  %46 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %45, align 8
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %49 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 8
  %50 = load i16, i16* %49, align 4
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 8
  %53 = load i16, i16* %52, align 4
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 8
  %56 = load i16, i16* %55, align 4
  %57 = call i64 %46(%struct.gx_device_s* noundef %47, i16 noundef zeroext %50, i16 noundef zeroext %53, i16 noundef zeroext %56)
  %58 = load %struct.device_s*, %struct.device_s** %6, align 8
  %59 = getelementptr inbounds %struct.device_s, %struct.device_s* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %61 = load %struct.device_s*, %struct.device_s** %6, align 8
  %62 = getelementptr inbounds %struct.device_s, %struct.device_s* %61, i32 0, i32 0
  store %struct.gx_device_s* %60, %struct.gx_device_s** %62, align 8
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %64 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %32
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %68 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %32
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %77 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_erasepage to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %76)
  store i32 %77, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %72
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %70, %27
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @gs_initmatrix(...) #1

declare dso_local i32 @gs_initclip(...) #1

declare dso_local i32 @gs_erasepage(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_nulldevice(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** @gx_device_null_p, align 8
  %5 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %3, %struct.gx_device_s* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_device_no_output(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 22
  %5 = load %struct.device_s*, %struct.device_s** %4, align 8
  %6 = getelementptr inbounds %struct.device_s, %struct.device_s* %5, i32 0, i32 0
  store %struct.gx_device_s* @null_device, %struct.gx_device_s** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_open_device(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_default_get_initial_matrix(%struct.gx_device_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 5
  %7 = load float, float* %6, align 8
  %8 = fpext float %7 to double
  %9 = fdiv double %8, 7.200000e+01
  %10 = fptrunc double %9 to float
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 0
  store float %10, float* %12, align 8
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 2
  store float 0.000000e+00, float* %14, align 8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 4
  store float 0.000000e+00, float* %16, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 6
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = fdiv double %20, -7.200000e+01
  %22 = fptrunc double %21 to float
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 6
  store float %22, float* %24, align 8
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 8
  store float 0.000000e+00, float* %26, align 8
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to float
  %31 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %31, i32 0, i32 10
  store float %30, float* %32, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_sync_output(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_output_page(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %5 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %5, i32 0, i32 2
  %7 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %6, align 8
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %9 = call i32 %7(%struct.gx_device_s* noundef %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_close_device(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gx_default_map_rgb_color(%struct.gx_device_s* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.gx_device_s* %0, %struct.gx_device_s** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = load i16, i16* %6, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %7, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  br label %20

17:                                               ; preds = %4
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  br label %37

34:                                               ; preds = %25
  %35 = load i16, i16* %7, align 2
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  br label %42

39:                                               ; preds = %20
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = sext i32 %43 to i64
  ret i64 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_map_color_rgb(%struct.gx_device_s* noundef %0, i64 noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.gx_device_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16* %2, i16** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i16
  %9 = load i16*, i16** %6, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %10, align 2
  %11 = load i16*, i16** %6, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %8, i16* %12, align 2
  %13 = load i16*, i16** %6, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 0
  store i16 %8, i16* %14, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_fill_rectangle(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.gx_device_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_tile_rectangle(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca %struct.gx_bitmap_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store %struct.gx_bitmap_s* %1, %struct.gx_bitmap_s** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_copy_mono(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
  %11 = alloca %struct.gx_device_s*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_copy_color(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_draw_line(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.gx_device_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_fill_trapezoid(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @null_tile_trapezoid(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
  %11 = alloca %struct.gx_device_s*, align 8
  %12 = alloca %struct.gx_bitmap_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %11, align 8
  store %struct.gx_bitmap_s* %1, %struct.gx_bitmap_s** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  ret i32 0
}

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
!6 = distinct !{!6, !5}
