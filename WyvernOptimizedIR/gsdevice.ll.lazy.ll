; ModuleID = './gsdevice.ll'
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
define dso_local i32 @gs_flushpage(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 1
  %7 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %6, align 8
  %8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %7, i64 0, i32 2
  %9 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %8, align 8
  %10 = call i32 %9(%struct.gx_device_s* noundef %5) #8
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_copypage(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 1
  %7 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %6, align 8
  %8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %7, i64 0, i32 3
  %9 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %8, align 8
  %10 = call i32 %9(%struct.gx_device_s* noundef %5) #8
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_copyscanlines(%struct.gx_device_s* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32* noundef writeonly %4, i32* noundef writeonly %5) #0 {
  %7 = call i32 @gs_device_is_memory(%struct.gx_device_s* noundef %0) #8
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %6
  br label %19

9:                                                ; preds = %6
  %10 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %11 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef %10, i32 noundef %1, i8* noundef %2, i32 noundef %3) #8
  %.not1 = icmp eq i32* %4, null
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %9
  store i32 %11, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %.not2 = icmp eq i32* %5, null
  br i1 %.not2, label %18, label %14

14:                                               ; preds = %13
  %15 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %16 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef %15) #8
  %17 = mul nsw i32 %11, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %13
  br label %19

19:                                               ; preds = %18, %8
  %.0 = phi i32 [ 0, %18 ], [ -21, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_device_is_memory(%struct.gx_device_s* noundef) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  ret %struct.gx_device_s* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @gs_devicename(%struct.gx_device_s* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_deviceparams(%struct.gx_device_s* noundef %0, %struct.gs_matrix_s* noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 1
  %6 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %5, align 8
  %7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %6, i64 0, i32 1
  %8 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %7, align 8
  call void %8(%struct.gx_device_s* noundef %0, %struct.gs_matrix_s* noundef %1) #8
  %9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %13, %1
  %.01 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %3 = zext i32 %.01 to i64
  %4 = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 %3
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %.not = icmp eq %struct.gx_device_s* %5, null
  br i1 %.not, label %15, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %.01, %0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 %9
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %10, align 8
  br label %16

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %8
  %.0 = phi %struct.gx_device_s* [ %11, %8 ], [ null, %15 ]
  ret %struct.gx_device_s* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makedevice(%struct.gx_device_s** nocapture noundef writeonly %0, %struct.gx_device_s* nocapture noundef readonly %1, %struct.gs_matrix_s* nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4, i8* (i32, i32, i8*)* nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i8* %5(i32 noundef 1, i32 noundef %8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %29

12:                                               ; preds = %6
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14, %12
  br label %29

17:                                               ; preds = %14
  %18 = bitcast %struct.gx_device_s* %1 to i8*
  %19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* align 8 %18, i64 %21, i1 false)
  %22 = getelementptr inbounds i8, i8* %9, i64 24
  %23 = bitcast i8* %22 to i32*
  store i32 %3, i32* %23, align 8
  %24 = getelementptr inbounds i8, i8* %9, i64 28
  %25 = bitcast i8* %24 to i32*
  store i32 %4, i32* %25, align 4
  %26 = getelementptr inbounds i8, i8* %9, i64 52
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 4
  %28 = bitcast %struct.gx_device_s** %0 to i8**
  store i8* %9, i8** %28, align 8
  br label %29

29:                                               ; preds = %17, %16, %11
  %.0 = phi i32 [ -25, %11 ], [ -15, %16 ], [ 0, %17 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makeimagedevice(%struct.gx_device_s** nocapture noundef writeonly %0, %struct.gs_matrix_s* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float* nocapture noundef readonly %4, i32 noundef %5, i8* (i32, i32, i8*)* nocapture noundef readonly %6) #0 {
  %8 = alloca [768 x i8], align 16
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %7
  br label %125

13:                                               ; preds = %10
  switch i32 %5, label %19 [
    i32 2, label %14
    i32 4, label %15
    i32 16, label %15
    i32 256, label %16
    i32 -24, label %17
    i32 -32, label %18
  ]

14:                                               ; preds = %13
  br label %20

15:                                               ; preds = %13, %13
  br label %125

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %125

20:                                               ; preds = %18, %17, %16, %14
  %.016 = phi i32 [ 0, %18 ], [ 0, %17 ], [ %5, %16 ], [ %5, %14 ]
  %.015 = phi %struct.gx_device_memory_s* [ @mem_true32_color_device, %18 ], [ @mem_true24_color_device, %17 ], [ @mem_mapped_color_device, %16 ], [ @mem_mono_device, %14 ]
  %21 = phi i1 [ false, %18 ], [ false, %17 ], [ true, %16 ], [ true, %14 ]
  %.014 = phi i32 [ 32, %18 ], [ 24, %17 ], [ 8, %16 ], [ 1, %14 ]
  %22 = mul nsw i32 %.016, 3
  br i1 %21, label %23, label %79

23:                                               ; preds = %20
  %24 = getelementptr inbounds [768 x i8], [768 x i8]* %8, i64 0, i64 0
  br label %25

25:                                               ; preds = %69, %23
  %.09 = phi i32 [ -1, %23 ], [ %.413, %69 ]
  %.05 = phi i32 [ -1, %23 ], [ %.38, %69 ]
  %.04 = phi i32 [ 0, %23 ], [ %.2, %69 ]
  %.03 = phi float* [ %4, %23 ], [ %71, %69 ]
  %.02 = phi i8* [ %24, %23 ], [ %72, %69 ]
  %.01 = phi i32 [ 0, %23 ], [ %70, %69 ]
  %26 = icmp slt i32 %.01, %22
  br i1 %26, label %27, label %73

27:                                               ; preds = %25
  %28 = load float, float* %.03, align 4
  %29 = fpext float %28 to double
  %30 = fcmp olt double %29, -1.000000e-03
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load float, float* %.03, align 4
  %33 = fpext float %32 to double
  %34 = fcmp ogt double %33, 1.001000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %125

36:                                               ; preds = %31
  %37 = load float, float* %.03, align 4
  %38 = fmul float %37, 2.550000e+02
  %39 = fpext float %38 to double
  %40 = fadd double %39, 5.000000e-01
  %41 = fptoui double %40 to i8
  store i8 %41, i8* %.02, align 1
  %42 = urem i32 %.01, 3
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load i8, i8* %.02, align 1
  %46 = getelementptr inbounds i8, i8* %.02, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = icmp eq i8 %45, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i8, i8* %.02, align 1
  %51 = getelementptr inbounds i8, i8* %.02, i64 -2
  %52 = load i8, i8* %51, align 1
  %53 = icmp eq i8 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i8, i8* %.02, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = add nsw i32 %.01, -2
  br label %65

59:                                               ; preds = %54
  %60 = load i8, i8* %.02, align 1
  %61 = icmp eq i8 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = add nsw i32 %.01, -2
  br label %64

64:                                               ; preds = %62, %59
  %.110 = phi i32 [ %63, %62 ], [ %.09, %59 ]
  br label %65

65:                                               ; preds = %64, %57
  %.211 = phi i32 [ %.09, %57 ], [ %.110, %64 ]
  %.16 = phi i32 [ %58, %57 ], [ %.05, %64 ]
  br label %67

66:                                               ; preds = %49, %44
  br label %67

67:                                               ; preds = %66, %65
  %.312 = phi i32 [ %.211, %65 ], [ %.09, %66 ]
  %.27 = phi i32 [ %.16, %65 ], [ %.05, %66 ]
  %.1 = phi i32 [ %.04, %65 ], [ 1, %66 ]
  br label %68

68:                                               ; preds = %67, %36
  %.413 = phi i32 [ %.312, %67 ], [ %.09, %36 ]
  %.38 = phi i32 [ %.27, %67 ], [ %.05, %36 ]
  %.2 = phi i32 [ %.1, %67 ], [ %.04, %36 ]
  br label %69

69:                                               ; preds = %68
  %70 = add nuw nsw i32 %.01, 1
  %71 = getelementptr inbounds float, float* %.03, i64 1
  %72 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %25, !llvm.loop !6

73:                                               ; preds = %25
  %74 = icmp slt i32 %.09, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = icmp slt i32 %.05, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %75, %73
  br label %125

78:                                               ; preds = %75
  br label %80

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %79, %78
  %.4 = phi i32 [ %.05, %78 ], [ -1, %79 ]
  %.3 = phi i32 [ %.04, %78 ], [ 1, %79 ]
  %81 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %.015, i64 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* %6(i32 noundef 1, i32 noundef %82, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %125

86:                                               ; preds = %80
  %87 = bitcast i8* %83 to %struct.gx_device_memory_s*
  %88 = bitcast %struct.gx_device_memory_s* %.015 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(200) %83, i8* noundef nonnull align 8 dereferenceable(200) %88, i64 200, i1 false)
  %89 = getelementptr inbounds i8, i8* %83, i64 56
  %90 = bitcast %struct.gs_matrix_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %89, i8* noundef nonnull align 8 dereferenceable(96) %90, i64 96, i1 false)
  %91 = getelementptr inbounds i8, i8* %83, i64 24
  %92 = bitcast i8* %91 to i32*
  store i32 %2, i32* %92, align 8
  %93 = getelementptr inbounds i8, i8* %83, i64 28
  %94 = bitcast i8* %93 to i32*
  store i32 %3, i32* %94, align 4
  %95 = getelementptr inbounds i8, i8* %83, i64 40
  %96 = bitcast i8* %95 to i32*
  store i32 %.3, i32* %96, align 8
  %97 = getelementptr inbounds i8, i8* %83, i64 48
  %98 = bitcast i8* %97 to i32*
  store i32 %.014, i32* %98, align 8
  %99 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef nonnull %87) #8
  %100 = icmp ugt i64 %99, 4294967295
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %125

102:                                              ; preds = %86
  %103 = trunc i64 %99 to i32
  %104 = add i32 %22, %103
  %105 = call i8* %6(i32 noundef 1, i32 noundef %104, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %125

108:                                              ; preds = %102
  %109 = getelementptr inbounds i8, i8* %83, i64 160
  %110 = bitcast i8* %109 to i8**
  store i8* %105, i8** %110, align 8
  %111 = icmp ne i32 %.4, 0
  %112 = sext i1 %111 to i32
  %113 = getelementptr inbounds i8, i8* %83, i64 184
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds i8, i8* %83, i64 188
  %116 = bitcast i8* %115 to i32*
  store i32 %.016, i32* %116, align 4
  %117 = getelementptr inbounds i8, i8* %105, i64 %99
  %118 = getelementptr inbounds i8, i8* %83, i64 192
  %119 = bitcast i8* %118 to i8**
  store i8* %117, i8** %119, align 8
  %120 = getelementptr inbounds [768 x i8], [768 x i8]* %8, i64 0, i64 0
  %121 = sext i32 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %117, i8* nonnull align 16 %120, i64 %121, i1 false)
  %122 = getelementptr inbounds i8, i8* %83, i64 52
  %123 = bitcast i8* %122 to i32*
  store i32 0, i32* %123, align 4
  %124 = bitcast %struct.gx_device_s** %0 to i8**
  store i8* %83, i8** %124, align 8
  br label %125

125:                                              ; preds = %108, %107, %101, %85, %77, %35, %19, %15, %12
  %.0 = phi i32 [ -15, %12 ], [ -15, %19 ], [ -15, %35 ], [ -15, %77 ], [ -25, %85 ], [ -13, %101 ], [ -25, %107 ], [ 0, %108 ], [ -15, %15 ]
  ret i32 %.0
}

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef %0, %struct.gx_device_s* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %4 = load %struct.device_s*, %struct.device_s** %3, align 8
  %5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 10
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 1
  %9 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %8, align 8
  %10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %9, i64 0, i32 0
  %11 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %10, align 8
  %12 = call i32 %11(%struct.gx_device_s* noundef %1) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %46

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 10
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 1
  %19 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %18, align 8
  %20 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %19, i64 0, i32 5
  %21 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %20, align 8
  %22 = call i64 %21(%struct.gx_device_s* noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #8
  %23 = getelementptr inbounds %struct.device_s, %struct.device_s* %4, i64 0, i32 3
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 1
  %25 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %24, align 8
  %26 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %25, i64 0, i32 5
  %27 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %26, align 8
  %28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i64 0, i32 8
  %29 = load i16, i16* %28, align 4
  %30 = call i64 %27(%struct.gx_device_s* noundef %1, i16 noundef zeroext %29, i16 noundef zeroext %29, i16 noundef zeroext %29) #8
  %31 = getelementptr inbounds %struct.device_s, %struct.device_s* %4, i64 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.device_s, %struct.device_s* %4, i64 0, i32 0
  store %struct.gx_device_s* %1, %struct.gx_device_s** %32, align 8
  %33 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %17
  %.01 = phi i32 [ %33, %17 ], [ %36, %35 ]
  br label %46

39:                                               ; preds = %35
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %40, label %45

40:                                               ; preds = %39
  %41 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_erasepage to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %43, %38, %14
  %.0 = phi i32 [ %.01, %38 ], [ 0, %45 ], [ %41, %43 ], [ %12, %14 ]
  ret i32 %.0
}

declare dso_local i32 @gs_initmatrix(...) #1

declare dso_local i32 @gs_initclip(...) #1

declare dso_local i32 @gs_erasepage(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_nulldevice(%struct.gs_state_s* noundef %0) #0 {
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** @gx_device_null_p, align 8
  %3 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %0, %struct.gx_device_s* noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gx_device_no_output(%struct.gs_state_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  store %struct.gx_device_s* @null_device, %struct.gx_device_s** %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_open_device(%struct.gx_device_s* nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gx_default_get_initial_matrix(%struct.gx_device_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 5
  %4 = load float, float* %3, align 8
  %5 = fdiv float %4, 7.200000e+01
  %6 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 0
  store float %5, float* %6, align 8
  %7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 2
  store float 0.000000e+00, float* %7, align 8
  %8 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 4
  store float 0.000000e+00, float* %8, align 8
  %9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 6
  %10 = load float, float* %9, align 4
  %11 = fdiv float %10, -7.200000e+01
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 6
  store float %11, float* %12, align 8
  %13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 8
  store float 0.000000e+00, float* %13, align 8
  %14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i64 0, i32 10
  store float %16, float* %17, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_sync_output(%struct.gx_device_s* nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_output_page(%struct.gx_device_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 1
  %3 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %3, i64 0, i32 2
  %5 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %4, align 8
  %6 = call i32 %5(%struct.gx_device_s* noundef %0) #8
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_close_device(%struct.gx_device_s* nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gx_default_map_rgb_color(%struct.gx_device_s* nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #6 {
  %5 = icmp ugt i16 %1, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %.in = phi i16 [ %1, %6 ], [ %2, %7 ]
  %9 = icmp ugt i16 %.in, %3
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp ugt i16 %1, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %.in1 = phi i16 [ %1, %12 ], [ %2, %13 ]
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %14
  %.in2 = phi i16 [ %.in1, %14 ], [ %3, %15 ]
  %17 = zext i16 %.in2 to i64
  ret i64 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gx_default_map_color_rgb(%struct.gx_device_s* nocapture noundef readnone %0, i64 noundef %1, i16* nocapture noundef writeonly %2) #7 {
  %4 = trunc i64 %1 to i16
  %5 = getelementptr inbounds i16, i16* %2, i64 2
  store i16 %4, i16* %5, align 2
  %6 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %4, i16* %6, align 2
  store i16 %4, i16* %2, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_fill_rectangle(%struct.gx_device_s* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_tile_rectangle(%struct.gx_device_s* nocapture noundef readnone %0, %struct.gx_bitmap_s* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_copy_mono(%struct.gx_device_s* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_copy_color(%struct.gx_device_s* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_draw_line(%struct.gx_device_s* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_fill_trapezoid(%struct.gx_device_s* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_tile_trapezoid(%struct.gx_device_s* nocapture noundef readnone %0, %struct.gx_bitmap_s* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #6 {
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
