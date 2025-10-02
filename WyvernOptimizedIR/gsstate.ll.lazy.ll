; ModuleID = './gsstate.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsstate.c"
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
%struct.line_params_s = type { float, i32, i32, float, float, %struct.dash_params_s }
%struct.dash_params_s = type { float*, i32, float, i32, i32, float }
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@gs_state_sizeof = dso_local global i32 464, align 4
@.str = private unnamed_addr constant [15 x i8] c"gs_state_alloc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gs_state_free\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gs_gsave\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gs_grestore\00", align 1
@alloc_state_contents.cname = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"(gs)alloc_state_contents\00", align 1
@free_state_contents.cname = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"(gs)free_state_contents\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1) #0 {
  %3 = call i8* %0(i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6
  %4 = bitcast i8* %3 to %struct.gs_state_s*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %44

7:                                                ; preds = %2
  %8 = call i32 @alloc_state_contents(%struct.gs_state_s* noundef nonnull %4, i8* (i32, i32, i8*)* noundef %0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %44

11:                                               ; preds = %7
  %12 = bitcast i8* %3 to %struct.gs_state_s**
  store %struct.gs_state_s* null, %struct.gs_state_s** %12, align 8
  %13 = getelementptr inbounds i8, i8* %3, i64 8
  %14 = bitcast i8* %13 to i8* (i32, i32, i8*)**
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %14, align 8
  %15 = getelementptr inbounds i8, i8* %3, i64 16
  %16 = bitcast i8* %15 to void (i8*, i32, i32, i8*)**
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %16, align 8
  %17 = getelementptr inbounds i8, i8* %3, i64 256
  %18 = bitcast i8* %17 to %struct.gx_path_s**
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i64 0, i32 4
  store %struct.subpath* null, %struct.subpath** %20, align 8
  %21 = getelementptr inbounds i8, i8* %3, i64 264
  %22 = bitcast i8* %21 to %struct.gx_path_s**
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %22, align 8
  %24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i64 0, i32 4
  store %struct.subpath* null, %struct.subpath** %24, align 8
  %25 = getelementptr inbounds i8, i8* %3, i64 288
  %26 = bitcast i8* %25 to %struct.halftone_s**
  %27 = load %struct.halftone_s*, %struct.halftone_s** %26, align 8
  %28 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %27, i64 0, i32 5
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds i8, i8* %3, i64 288
  %30 = bitcast i8* %29 to %struct.halftone_s**
  %31 = load %struct.halftone_s*, %struct.halftone_s** %30, align 8
  %32 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds i8, i8* %3, i64 288
  %34 = bitcast i8* %33 to %struct.halftone_s**
  %35 = load %struct.halftone_s*, %struct.halftone_s** %34, align 8
  %36 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %35, i64 0, i32 2
  store i32 0, i32* %36, align 8
  call void @gs_nulldevice(%struct.gs_state_s* noundef nonnull %4) #6
  %37 = call i32 @gs_setflat(%struct.gs_state_s* noundef nonnull %4, double noundef 1.000000e+00)
  %38 = getelementptr inbounds i8, i8* %3, i64 437
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds i8, i8* %3, i64 436
  store i8 0, i8* %39, align 4
  %40 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef nonnull %4)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %11
  br label %44

43:                                               ; preds = %11
  br label %44

44:                                               ; preds = %43, %42, %10, %6
  %.0 = phi %struct.gs_state_s* [ null, %6 ], [ null, %10 ], [ null, %42 ], [ %4, %43 ]
  ret %struct.gs_state_s* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @alloc_state_contents(%struct.gs_state_s* nocapture noundef writeonly %0, i8* (i32, i32, i8*)* nocapture noundef readonly %1) #0 {
  %3 = load i8*, i8** @alloc_state_contents.cname, align 8
  %4 = call i8* %1(i32 noundef 1, i32 noundef 144, i8* noundef %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %53

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %9 = bitcast %struct.gx_path_s** %8 to i8**
  store i8* %4, i8** %9, align 8
  %10 = load i8*, i8** @alloc_state_contents.cname, align 8
  %11 = call i8* %1(i32 noundef 1, i32 noundef 144, i8* noundef %10) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %53

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %16 = bitcast %struct.gx_path_s** %15 to i8**
  store i8* %11, i8** %16, align 8
  %17 = load i8*, i8** @alloc_state_contents.cname, align 8
  %18 = call i8* %1(i32 noundef 1, i32 noundef 56, i8* noundef %17) #6
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %53

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %23 = bitcast %struct.line_params_s** %22 to i8**
  store i8* %18, i8** %23, align 8
  %24 = load i8*, i8** @alloc_state_contents.cname, align 8
  %25 = call i8* %1(i32 noundef 1, i32 noundef 32, i8* noundef %24) #6
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %53

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 11
  %30 = bitcast %struct.halftone_s** %29 to i8**
  store i8* %25, i8** %30, align 8
  %31 = load i8*, i8** @alloc_state_contents.cname, align 8
  %32 = call i8* %1(i32 noundef 1, i32 noundef 10, i8* noundef %31) #6
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %53

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %37 = bitcast %struct.gs_color_s** %36 to i8**
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** @alloc_state_contents.cname, align 8
  %39 = call i8* %1(i32 noundef 1, i32 noundef 32, i8* noundef %38) #6
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %44 = bitcast %struct.gx_device_color_s** %43 to i8**
  store i8* %39, i8** %44, align 8
  %45 = load i8*, i8** @alloc_state_contents.cname, align 8
  %46 = call i8* %1(i32 noundef 1, i32 noundef 32, i8* noundef %45) #6
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %51 = bitcast %struct.device_s** %50 to i8**
  store i8* %46, i8** %51, align 8
  %52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 23
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %48, %41, %34, %27, %20, %13, %6
  %.0 = phi i32 [ -1, %6 ], [ -1, %13 ], [ -1, %20 ], [ -1, %27 ], [ -1, %34 ], [ -1, %41 ], [ -1, %48 ], [ 0, %49 ]
  ret i32 %.0
}

declare dso_local void @gs_nulldevice(%struct.gs_state_s* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_setflat(%struct.gs_state_s* nocapture noundef writeonly %0, double noundef %1) #2 {
  %3 = fcmp ugt double %1, 0.000000e+00
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %8

5:                                                ; preds = %2
  %6 = fptrunc double %1 to float
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 21
  store float %6, float* %7, align 8
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ -15, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef %0) #0 {
  %2 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #6
  %3 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = call i32 @gs_setlinecap(%struct.gs_state_s* noundef %0, i32 noundef 0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = call i32 @gs_setlinejoin(%struct.gs_state_s* noundef %0, i32 noundef 0) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = call i32 @gs_setdash(%struct.gs_state_s* noundef %0, float* noundef null, i32 noundef 0, double noundef 0.000000e+00) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 @gs_setmiterlimit(%struct.gs_state_s* noundef %0, double noundef 1.000000e+01) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17, %14, %11, %8, %5, %1
  %.01 = phi i32 [ %3, %1 ], [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ], [ %18, %17 ], [ %21, %20 ], [ %24, %23 ]
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %26
  %.0 = phi i32 [ %.01, %26 ], [ 0, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_state_free(%struct.gs_state_s* noundef %0) #0 {
  call void @free_state_contents(%struct.gs_state_s* noundef %0)
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1, i32 1
  %3 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %2, align 8
  %4 = bitcast %struct.gs_state_s* %0 to i8*
  call void %3(i8* noundef %4, i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_state_contents(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1, i32 1
  %3 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %5) #6
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %7) #6
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 23
  %9 = load i32, i32* %8, align 8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %12 = bitcast %struct.device_s** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %13, i32 noundef 1, i32 noundef 32, i8* noundef %14) #6
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %17 = bitcast %struct.gx_device_color_s** %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %18, i32 noundef 1, i32 noundef 32, i8* noundef %19) #6
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %21 = bitcast %struct.gs_color_s** %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %22, i32 noundef 1, i32 noundef 10, i8* noundef %23) #6
  %24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 11
  %25 = bitcast %struct.halftone_s** %24 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %26, i32 noundef 1, i32 noundef 32, i8* noundef %27) #6
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %29 = bitcast %struct.line_params_s** %28 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %30, i32 noundef 1, i32 noundef 56, i8* noundef %31) #6
  %32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %33 = bitcast %struct.gx_path_s** %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %34, i32 noundef 1, i32 noundef 144, i8* noundef %35) #6
  %36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %37 = bitcast %struct.gx_path_s** %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @free_state_contents.cname, align 8
  call void %3(i8* noundef %38, i32 noundef 1, i32 noundef 144, i8* noundef %39) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_gsave(%struct.gs_state_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1, i32 0
  %3 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %2, align 8
  %4 = call i8* %3(i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %62

7:                                                ; preds = %1
  %8 = bitcast %struct.gs_state_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(464) %4, i8* noundef nonnull align 8 dereferenceable(464) %8, i64 464, i1 false)
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1, i32 0
  %10 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %11 = call i32 @alloc_state_contents(%struct.gs_state_s* noundef %0, i8* (i32, i32, i8*)* noundef %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %62

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %16 = bitcast %struct.gx_path_s** %15 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %4, i64 256
  %19 = bitcast i8* %18 to i8**
  %20 = load i8*, i8** %19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %17, i8* noundef nonnull align 8 dereferenceable(144) %20, i64 144, i1 false)
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %22 = bitcast %struct.gx_path_s** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %4, i64 264
  %25 = bitcast i8* %24 to i8**
  %26 = load i8*, i8** %25, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %23, i8* noundef nonnull align 8 dereferenceable(144) %26, i64 144, i1 false)
  %27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %28 = bitcast %struct.line_params_s** %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %4, i64 280
  %31 = bitcast i8* %30 to i8**
  %32 = load i8*, i8** %31, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %29, i8* noundef nonnull align 8 dereferenceable(56) %32, i64 56, i1 false)
  %33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 11
  %34 = bitcast %struct.halftone_s** %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %4, i64 288
  %37 = bitcast i8* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %35, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false)
  %39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %40 = bitcast %struct.gs_color_s** %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %4, i64 304
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %41, i8* noundef nonnull align 2 dereferenceable(10) %44, i64 10, i1 false)
  %45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %46 = bitcast %struct.gx_device_color_s** %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %4, i64 312
  %49 = bitcast i8* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %47, i8* noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false)
  %51 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %52 = bitcast %struct.device_s** %51 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %4, i64 448
  %55 = bitcast i8* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %53, i8* noundef nonnull align 8 dereferenceable(32) %56, i64 32, i1 false)
  %57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %57, align 8
  call void @gx_path_share(%struct.gx_path_s* noundef %58) #6
  %59 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %60 = load %struct.gx_path_s*, %struct.gx_path_s** %59, align 8
  call void @gx_path_share(%struct.gx_path_s* noundef %60) #6
  %61 = bitcast %struct.gs_state_s* %0 to i8**
  store i8* %4, i8** %61, align 8
  br label %62

62:                                               ; preds = %14, %13, %6
  %.0 = phi i32 [ -25, %6 ], [ -25, %13 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @gx_path_share(%struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_grestore(%struct.gs_state_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = icmp eq %struct.gs_state_s* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  call void @free_state_contents(%struct.gs_state_s* noundef %0)
  %7 = bitcast %struct.gs_state_s* %0 to i8*
  %8 = bitcast %struct.gs_state_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(464) %7, i8* noundef nonnull align 8 dereferenceable(464) %8, i64 464, i1 false)
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1, i32 1
  %10 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %9, align 8
  %11 = bitcast %struct.gs_state_s* %3 to i8*
  call void %10(i8* noundef nonnull %11, i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %12

12:                                               ; preds = %6, %5
  %.0 = phi i32 [ -23, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_grestoreall(%struct.gs_state_s* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0)
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %2, !llvm.loop !4

6:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* nocapture noundef %0, %struct.gs_state_s* noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  store %struct.gs_state_s* %1, %struct.gs_state_s** %5, align 8
  ret %struct.gs_state_s* %4
}

declare dso_local i32 @gs_initmatrix(...) #1

declare dso_local i32 @gs_newpath(...) #1

declare dso_local i32 @gs_initclip(...) #1

declare dso_local i32 @gs_setlinewidth(%struct.gs_state_s* noundef, double noundef) #1

declare dso_local i32 @gs_setlinecap(%struct.gs_state_s* noundef, i32 noundef) #1

declare dso_local i32 @gs_setlinejoin(%struct.gs_state_s* noundef, i32 noundef) #1

declare dso_local i32 @gs_setdash(%struct.gs_state_s* noundef, float* noundef, i32 noundef, double noundef) #1

declare dso_local i32 @gs_setgray(%struct.gs_state_s* noundef, double noundef) #1

declare dso_local i32 @gs_setmiterlimit(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @gs_currentflat(%struct.gs_state_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 21
  %3 = load float, float* %2, align 8
  ret float %3
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
