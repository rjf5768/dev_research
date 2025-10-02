; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsstate.c'
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
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca i8* (i32, i32, i8*)*, align 8
  %5 = alloca void (i8*, i32, i32, i8*)*, align 8
  %6 = alloca %struct.gs_state_s*, align 8
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %4, align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %5, align 8
  %7 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %4, align 8
  %8 = call i8* %7(i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = bitcast i8* %8 to %struct.gs_state_s*
  store %struct.gs_state_s* %9, %struct.gs_state_s** %6, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %11 = icmp eq %struct.gs_state_s* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.gs_state_s* null, %struct.gs_state_s** %3, align 8
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %15 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %4, align 8
  %16 = call i32 @alloc_state_contents(%struct.gs_state_s* noundef %14, i8* (i32, i32, i8*)* noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store %struct.gs_state_s* null, %struct.gs_state_s** %3, align 8
  br label %63

19:                                               ; preds = %13
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 0
  store %struct.gs_state_s* null, %struct.gs_state_s** %21, align 8
  %22 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %4, align 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %24, i32 0, i32 0
  store i8* (i32, i32, i8*)* %22, i8* (i32, i32, i8*)** %25, align 8
  %26 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %5, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %28, i32 0, i32 1
  store void (i8*, i32, i32, i8*)* %26, void (i8*, i32, i32, i8*)** %29, align 8
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 7
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %31, align 8
  %33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %33, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 8
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %35, align 8
  %37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %36, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %37, align 8
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 11
  %40 = load %struct.halftone_s*, %struct.halftone_s** %39, align 8
  %41 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %40, i32 0, i32 5
  store i32 0, i32* %41, align 8
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 11
  %44 = load %struct.halftone_s*, %struct.halftone_s** %43, align 8
  %45 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %47 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 11
  %48 = load %struct.halftone_s*, %struct.halftone_s** %47, align 8
  %49 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  call void @gs_nulldevice(%struct.gs_state_s* noundef %50)
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %52 = call i32 @gs_setflat(%struct.gs_state_s* noundef %51, double noundef 1.000000e+00)
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 20
  store i8 0, i8* %54, align 1
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 19
  store i8 0, i8* %56, align 4
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %58 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef %57)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %19
  store %struct.gs_state_s* null, %struct.gs_state_s** %3, align 8
  br label %63

61:                                               ; preds = %19
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  store %struct.gs_state_s* %62, %struct.gs_state_s** %3, align 8
  br label %63

63:                                               ; preds = %61, %60, %18, %12
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  ret %struct.gs_state_s* %64
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @alloc_state_contents(%struct.gs_state_s* noundef %0, i8* (i32, i32, i8*)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i8* (i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i8* (i32, i32, i8*)* %1, i8* (i32, i32, i8*)** %5, align 8
  %7 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %8 = load i8*, i8** @alloc_state_contents.cname, align 8
  %9 = call i8* %7(i32 noundef 1, i32 noundef 144, i8* noundef %8)
  store i8* %9, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gx_path_s*
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 7
  store %struct.gx_path_s* %14, %struct.gx_path_s** %16, align 8
  %17 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %18 = load i8*, i8** @alloc_state_contents.cname, align 8
  %19 = call i8* %17(i32 noundef 1, i32 noundef 144, i8* noundef %18)
  store i8* %19, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %79

22:                                               ; preds = %12
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.gx_path_s*
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 8
  store %struct.gx_path_s* %24, %struct.gx_path_s** %26, align 8
  %27 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %28 = load i8*, i8** @alloc_state_contents.cname, align 8
  %29 = call i8* %27(i32 noundef 1, i32 noundef 56, i8* noundef %28)
  store i8* %29, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %79

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.line_params_s*
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 10
  store %struct.line_params_s* %34, %struct.line_params_s** %36, align 8
  %37 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %38 = load i8*, i8** @alloc_state_contents.cname, align 8
  %39 = call i8* %37(i32 noundef 1, i32 noundef 32, i8* noundef %38)
  store i8* %39, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %79

42:                                               ; preds = %32
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to %struct.halftone_s*
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 11
  store %struct.halftone_s* %44, %struct.halftone_s** %46, align 8
  %47 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %48 = load i8*, i8** @alloc_state_contents.cname, align 8
  %49 = call i8* %47(i32 noundef 1, i32 noundef 10, i8* noundef %48)
  store i8* %49, i8** %6, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %79

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.gs_color_s*
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 13
  store %struct.gs_color_s* %54, %struct.gs_color_s** %56, align 8
  %57 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %58 = load i8*, i8** @alloc_state_contents.cname, align 8
  %59 = call i8* %57(i32 noundef 1, i32 noundef 32, i8* noundef %58)
  store i8* %59, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %79

62:                                               ; preds = %52
  %63 = load i8*, i8** %6, align 8
  %64 = bitcast i8* %63 to %struct.gx_device_color_s*
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 14
  store %struct.gx_device_color_s* %64, %struct.gx_device_color_s** %66, align 8
  %67 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %5, align 8
  %68 = load i8*, i8** @alloc_state_contents.cname, align 8
  %69 = call i8* %67(i32 noundef 1, i32 noundef 32, i8* noundef %68)
  store i8* %69, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %79

72:                                               ; preds = %62
  %73 = load i8*, i8** %6, align 8
  %74 = bitcast i8* %73 to %struct.device_s*
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %76 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %75, i32 0, i32 22
  store %struct.device_s* %74, %struct.device_s** %76, align 8
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %78 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %77, i32 0, i32 23
  store i32 0, i32* %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %71, %61, %51, %41, %31, %21, %11
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local void @gs_nulldevice(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setflat(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = fcmp ole double %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -15, i32* %3, align 4
  br label %14

9:                                                ; preds = %2
  %10 = load double, double* %5, align 8
  %11 = fptrunc double %10 to float
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 21
  store float %11, float* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %6 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %5)
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %8 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %16 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %15, double noundef 1.000000e+00)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %20 = call i32 @gs_setlinecap(%struct.gs_state_s* noundef %19, i32 noundef 0)
  store i32 %20, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %24 = call i32 @gs_setlinejoin(%struct.gs_state_s* noundef %23, i32 noundef 0)
  store i32 %24, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %28 = call i32 @gs_setdash(%struct.gs_state_s* noundef %27, float* noundef null, i32 noundef 0, double noundef 0.000000e+00)
  store i32 %28, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %32 = call i32 @gs_setgray(%struct.gs_state_s* noundef %31, double noundef 0.000000e+00)
  store i32 %32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %36 = call i32 @gs_setmiterlimit(%struct.gs_state_s* noundef %35, double noundef 1.000000e+01)
  store i32 %36, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30, %26, %22, %18, %14, %10, %1
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_state_free(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  call void @free_state_contents(%struct.gs_state_s* noundef %3)
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %5, i32 0, i32 1
  %7 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %6, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %9 = bitcast %struct.gs_state_s* %8 to i8*
  call void %7(i8* noundef %9, i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_state_contents(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  %3 = alloca void (i8*, i32, i32, i8*)*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %5, i32 0, i32 1
  %7 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %6, align 8
  store void (i8*, i32, i32, i8*)* %7, void (i8*, i32, i32, i8*)** %3, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %10)
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %12, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %13)
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 23
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 22
  %22 = load %struct.device_s*, %struct.device_s** %21, align 8
  %23 = bitcast %struct.device_s* %22 to i8*
  %24 = load i8*, i8** @free_state_contents.cname, align 8
  call void %19(i8* noundef %23, i32 noundef 1, i32 noundef 32, i8* noundef %24)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 14
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %28, align 8
  %30 = bitcast %struct.gx_device_color_s* %29 to i8*
  %31 = load i8*, i8** @free_state_contents.cname, align 8
  call void %26(i8* noundef %30, i32 noundef 1, i32 noundef 32, i8* noundef %31)
  %32 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 13
  %35 = load %struct.gs_color_s*, %struct.gs_color_s** %34, align 8
  %36 = bitcast %struct.gs_color_s* %35 to i8*
  %37 = load i8*, i8** @free_state_contents.cname, align 8
  call void %32(i8* noundef %36, i32 noundef 1, i32 noundef 10, i8* noundef %37)
  %38 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 11
  %41 = load %struct.halftone_s*, %struct.halftone_s** %40, align 8
  %42 = bitcast %struct.halftone_s* %41 to i8*
  %43 = load i8*, i8** @free_state_contents.cname, align 8
  call void %38(i8* noundef %42, i32 noundef 1, i32 noundef 32, i8* noundef %43)
  %44 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %46 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 10
  %47 = load %struct.line_params_s*, %struct.line_params_s** %46, align 8
  %48 = bitcast %struct.line_params_s* %47 to i8*
  %49 = load i8*, i8** @free_state_contents.cname, align 8
  call void %44(i8* noundef %48, i32 noundef 1, i32 noundef 56, i8* noundef %49)
  %50 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 8
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %52, align 8
  %54 = bitcast %struct.gx_path_s* %53 to i8*
  %55 = load i8*, i8** @free_state_contents.cname, align 8
  call void %50(i8* noundef %54, i32 noundef 1, i32 noundef 144, i8* noundef %55)
  %56 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %3, align 8
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 7
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %58, align 8
  %60 = bitcast %struct.gx_path_s* %59 to i8*
  %61 = load i8*, i8** @free_state_contents.cname, align 8
  call void %56(i8* noundef %60, i32 noundef 1, i32 noundef 144, i8* noundef %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_gsave(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %6, i32 0, i32 0
  %8 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %7, align 8
  %9 = call i8* %8(i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %10 = bitcast i8* %9 to %struct.gs_state_s*
  store %struct.gs_state_s* %10, %struct.gs_state_s** %4, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %12 = icmp eq %struct.gs_state_s* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -25, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %17 = bitcast %struct.gs_state_s* %15 to i8*
  %18 = bitcast %struct.gs_state_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 464, i1 false)
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %21, i32 0, i32 0
  %23 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %22, align 8
  %24 = call i32 @alloc_state_contents(%struct.gs_state_s* noundef %19, i8* (i32, i32, i8*)* noundef %23)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -25, i32* %2, align 4
  br label %93

27:                                               ; preds = %14
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 7
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %29, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 7
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %32, align 8
  %34 = bitcast %struct.gx_path_s* %30 to i8*
  %35 = bitcast %struct.gx_path_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 144, i1 false)
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 8
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %37, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 8
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %40, align 8
  %42 = bitcast %struct.gx_path_s* %38 to i8*
  %43 = bitcast %struct.gx_path_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 144, i1 false)
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 10
  %46 = load %struct.line_params_s*, %struct.line_params_s** %45, align 8
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 10
  %49 = load %struct.line_params_s*, %struct.line_params_s** %48, align 8
  %50 = bitcast %struct.line_params_s* %46 to i8*
  %51 = bitcast %struct.line_params_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 56, i1 false)
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 11
  %54 = load %struct.halftone_s*, %struct.halftone_s** %53, align 8
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 11
  %57 = load %struct.halftone_s*, %struct.halftone_s** %56, align 8
  %58 = bitcast %struct.halftone_s* %54 to i8*
  %59 = bitcast %struct.halftone_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 32, i1 false)
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 13
  %62 = load %struct.gs_color_s*, %struct.gs_color_s** %61, align 8
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %64 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %63, i32 0, i32 13
  %65 = load %struct.gs_color_s*, %struct.gs_color_s** %64, align 8
  %66 = bitcast %struct.gs_color_s* %62 to i8*
  %67 = bitcast %struct.gs_color_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %66, i8* align 2 %67, i64 10, i1 false)
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %69 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %68, i32 0, i32 14
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %69, align 8
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %72 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %71, i32 0, i32 14
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %72, align 8
  %74 = bitcast %struct.gx_device_color_s* %70 to i8*
  %75 = bitcast %struct.gx_device_color_s* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 32, i1 false)
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %77 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 22
  %78 = load %struct.device_s*, %struct.device_s** %77, align 8
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %80 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 22
  %81 = load %struct.device_s*, %struct.device_s** %80, align 8
  %82 = bitcast %struct.device_s* %78 to i8*
  %83 = bitcast %struct.device_s* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 32, i1 false)
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %85 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 7
  %86 = load %struct.gx_path_s*, %struct.gx_path_s** %85, align 8
  call void @gx_path_share(%struct.gx_path_s* noundef %86)
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %88 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 8
  %89 = load %struct.gx_path_s*, %struct.gx_path_s** %88, align 8
  call void @gx_path_share(%struct.gx_path_s* noundef %89)
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %92 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 0
  store %struct.gs_state_s* %90, %struct.gs_state_s** %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %27, %26, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @gx_path_share(%struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_grestore(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  store %struct.gs_state_s* %7, %struct.gs_state_s** %4, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %9 = icmp eq %struct.gs_state_s* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -23, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  call void @free_state_contents(%struct.gs_state_s* noundef %12)
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %15 = bitcast %struct.gs_state_s* %13 to i8*
  %16 = bitcast %struct.gs_state_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 464, i1 false)
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %18, i32 0, i32 1
  %20 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %19, align 8
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = bitcast %struct.gs_state_s* %21 to i8*
  call void %20(i8* noundef %22, i32 noundef 1, i32 noundef 464, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_grestoreall(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %5 = call i32 @gs_grestore(%struct.gs_state_s* noundef %4)
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef %0, %struct.gs_state_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  store %struct.gs_state_s* %8, %struct.gs_state_s** %5, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 0
  store %struct.gs_state_s* %9, %struct.gs_state_s** %11, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  ret %struct.gs_state_s* %12
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

; Function Attrs: noinline nounwind uwtable
define dso_local float @gs_currentflat(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 21
  %5 = load float, float* %4, align 8
  ret float %5
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

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
