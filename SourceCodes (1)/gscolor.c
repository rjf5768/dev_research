; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gscolor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gscolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.gs_screen_enum_s = type { float, float, %struct.ht_bit_s*, i32, i32, %struct.gs_matrix_s, i32, i32, %struct.gs_state_s* }
%struct.gs_point_s = type { float, float }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@gs_screen_enum_sizeof = dso_local global i32 136, align 4
@gs_color_sizeof = dso_local global i32 10, align 4
@.str = private unnamed_addr constant [17 x i8] c"halftone samples\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store double %1, double* %5, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 13
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %10, align 8
  store %struct.gs_color_s* %11, %struct.gs_color_s** %8, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 19
  %14 = load i8, i8* %13, align 4
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -21, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load double, double* %5, align 8
  %19 = call i32 @check_unit(double noundef %18, float* noundef %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load float, float* %6, align 4
  %24 = fmul float 6.553500e+04, %23
  %25 = fptoui float %24 to i16
  %26 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %27 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %26, i32 0, i32 3
  store i16 %25, i16* %27, align 2
  %28 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %29 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %28, i32 0, i32 3
  %30 = load i16, i16* %29, align 2
  %31 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %32 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %31, i32 0, i32 2
  store i16 %30, i16* %32, align 2
  %33 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %34 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %33, i32 0, i32 1
  store i16 %30, i16* %34, align 2
  %35 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %36 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %35, i32 0, i32 0
  store i16 %30, i16* %36, align 2
  %37 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %38 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %37, i32 0, i32 5
  store i8 1, i8* %38, align 1
  %39 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %40 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %39, i32 0, i32 4
  store i8 1, i8* %40, align 2
  br label %41

41:                                               ; preds = %22, %17
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_unit(double noundef %0, float* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load float*, float** %4, align 8
  store float 0.000000e+00, float* %8, align 4
  br label %19

9:                                                ; preds = %2
  %10 = load double, double* %3, align 8
  %11 = fcmp ogt double %10, 1.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load float*, float** %4, align 8
  store float 1.000000e+00, float* %13, align 4
  br label %18

14:                                               ; preds = %9
  %15 = load double, double* %3, align 8
  %16 = fptrunc double %15 to float
  %17 = load float*, float** %4, align 8
  store float %16, float* %17, align 4
  br label %18

18:                                               ; preds = %14, %12
  br label %19

19:                                               ; preds = %18, %7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @gs_currentgray(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 13
  %5 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 13
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %14 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 3
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 13
  %20 = load %struct.gs_color_s*, %struct.gs_color_s** %19, align 8
  %21 = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef %20)
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi i32 [ %16, %10 ], [ %22, %17 ]
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, 6.553500e+04
  ret float %26
}

declare dso_local zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setgscolor(%struct.gs_state_s* noundef %0, %struct.gs_color_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store %struct.gs_color_s* %1, %struct.gs_color_s** %5, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 19
  %8 = load i8, i8* %7, align 4
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -21, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 13
  %14 = load %struct.gs_color_s*, %struct.gs_color_s** %13, align 8
  %15 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %16 = bitcast %struct.gs_color_s* %14 to i8*
  %17 = bitcast %struct.gs_color_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %16, i8* align 2 %17, i64 10, i1 false)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentgscolor(%struct.gs_state_s* noundef %0, %struct.gs_color_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_color_s* %1, %struct.gs_color_s** %4, align 8
  %5 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %9 = bitcast %struct.gs_color_s* %5 to i8*
  %10 = bitcast %struct.gs_color_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %9, i8* align 2 %10, i64 10, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_sethsbcolor(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [3 x i16], align 2
  %11 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 19
  %14 = load i8, i8* %13, align 4
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -21, i32* %5, align 4
  br label %37

17:                                               ; preds = %4
  %18 = load double, double* %7, align 8
  %19 = load double, double* %8, align 8
  %20 = load double, double* %9, align 8
  %21 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 0
  %22 = call i32 @tri_param(double noundef %18, double noundef %19, double noundef %20, i16* noundef %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 13
  %28 = load %struct.gs_color_s*, %struct.gs_color_s** %27, align 8
  %29 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 0
  %30 = load i16, i16* %29, align 2
  %31 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 1
  %32 = load i16, i16* %31, align 2
  %33 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 2
  %34 = load i16, i16* %33, align 2
  call void @gx_color_from_hsb(%struct.gs_color_s* noundef %28, i16 noundef zeroext %30, i16 noundef zeroext %32, i16 noundef zeroext %34)
  br label %35

35:                                               ; preds = %25, %17
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tri_param(double noundef %0, double noundef %1, double noundef %2, i16* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i16* %3, i16** %9, align 8
  %14 = load double, double* %6, align 8
  %15 = call i32 @check_unit(double noundef %14, float* noundef %11)
  store i32 %15, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load double, double* %7, align 8
  %19 = call i32 @check_unit(double noundef %18, float* noundef %12)
  store i32 %19, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load double, double* %8, align 8
  %23 = call i32 @check_unit(double noundef %22, float* noundef %13)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load float, float* %11, align 4
  %29 = fmul float %28, 6.553500e+04
  %30 = fptoui float %29 to i16
  %31 = load i16*, i16** %9, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 0
  store i16 %30, i16* %32, align 2
  %33 = load float, float* %12, align 4
  %34 = fmul float %33, 6.553500e+04
  %35 = fptoui float %34 to i16
  %36 = load i16*, i16** %9, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 1
  store i16 %35, i16* %37, align 2
  %38 = load float, float* %13, align 4
  %39 = fmul float %38, 6.553500e+04
  %40 = fptoui float %39 to i16
  %41 = load i16*, i16** %9, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 2
  store i16 %40, i16* %42, align 2
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %27, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local void @gx_color_from_hsb(%struct.gs_color_s* noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currenthsbcolor(%struct.gs_state_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [3 x i16], align 2
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %9 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  call void @gx_color_to_hsb(%struct.gs_color_s* noundef %8, i16* noundef %9)
  %10 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %11 = load i16, i16* %10, align 2
  %12 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %13 = load i16, i16* %12, align 2
  %14 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %15 = load i16, i16* %14, align 2
  %16 = load float*, float** %4, align 8
  call void @tri_return(i16 noundef zeroext %11, i16 noundef zeroext %13, i16 noundef zeroext %15, float* noundef %16)
  ret i32 0
}

declare dso_local void @gx_color_to_hsb(%struct.gs_color_s* noundef, i16* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @tri_return(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, float* noundef %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca float*, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store float* %3, float** %8, align 8
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, 6.553500e+04
  %13 = load float*, float** %8, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  store float %12, float* %14, align 4
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %17, 6.553500e+04
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float %18, float* %20, align 4
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, 6.553500e+04
  %25 = load float*, float** %8, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  store float %24, float* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setrgbcolor(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [3 x i16], align 2
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 19
  %15 = load i8, i8* %14, align 4
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -21, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load double, double* %7, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %9, align 8
  %22 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 0
  %23 = call i32 @tri_param(double noundef %19, double noundef %20, double noundef %21, i16* noundef %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %18
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 13
  %29 = load %struct.gs_color_s*, %struct.gs_color_s** %28, align 8
  store %struct.gs_color_s* %29, %struct.gs_color_s** %12, align 8
  %30 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 0
  %31 = load i16, i16* %30, align 2
  %32 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %33 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %32, i32 0, i32 0
  store i16 %31, i16* %33, align 2
  %34 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 1
  %35 = load i16, i16* %34, align 2
  %36 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %37 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %36, i32 0, i32 1
  store i16 %35, i16* %37, align 2
  %38 = getelementptr inbounds [3 x i16], [3 x i16]* %10, i64 0, i64 2
  %39 = load i16, i16* %38, align 2
  %40 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %41 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %40, i32 0, i32 2
  store i16 %39, i16* %41, align 2
  %42 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  call void @gx_color_from_rgb(%struct.gs_color_s* noundef %42)
  br label %43

43:                                               ; preds = %26, %18
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local void @gx_color_from_rgb(%struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentrgbcolor(%struct.gs_state_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.gs_color_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  store %struct.gs_color_s* %8, %struct.gs_color_s** %5, align 8
  %9 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %10 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %13 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 2
  %15 = load %struct.gs_color_s*, %struct.gs_color_s** %5, align 8
  %16 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %15, i32 0, i32 2
  %17 = load i16, i16* %16, align 2
  %18 = load float*, float** %4, align 8
  call void @tri_return(i16 noundef zeroext %11, i16 noundef zeroext %14, i16 noundef zeroext %17, float* noundef %18)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_colorrgb(%struct.gs_color_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct.gs_color_s*, align 8
  %4 = alloca float*, align 8
  store %struct.gs_color_s* %0, %struct.gs_color_s** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 2
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 2
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %12 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 2
  %13 = load i16, i16* %12, align 2
  %14 = load float*, float** %4, align 8
  call void @tri_return(i16 noundef zeroext %7, i16 noundef zeroext %10, i16 noundef zeroext %13, float* noundef %14)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setscreen(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, float (double, double)* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca float (double, double)*, align 8
  %10 = alloca %struct.gs_screen_enum_s, align 8
  %11 = alloca %struct.gs_point_s, align 4
  %12 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store float (double, double)* %3, float (double, double)** %9, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %14 = load double, double* %7, align 8
  %15 = load double, double* %8, align 8
  %16 = call i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef %10, %struct.gs_state_s* noundef %13, double noundef %14, double noundef %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %39, %21
  %23 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %10, %struct.gs_point_s* noundef %11)
  store i32 %23, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load float (double, double)*, float (double, double)** %9, align 8
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = call float %26(double noundef %29, double noundef %32)
  %34 = fpext float %33 to double
  %35 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef %10, double noundef %34)
  store i32 %35, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %25
  br label %22, !llvm.loop !4

40:                                               ; preds = %22
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %40
  %46 = load float (double, double)*, float (double, double)** %9, align 8
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 12
  store float (double, double)* %46, float (double, double)** %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %43, %37, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef %0, %struct.gs_state_s* noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_screen_enum_s*, align 8
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ht_bit_s*, align 8
  %14 = alloca float, align 4
  %15 = alloca %struct.gs_point_s, align 4
  %16 = alloca %struct.gs_matrix_s, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_screen_enum_s* %0, %struct.gs_screen_enum_s** %6, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %22 = load double, double* %8, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -15, i32* %5, align 4
  br label %147

25:                                               ; preds = %4
  %26 = load double, double* %8, align 8
  %27 = fdiv double 7.200000e+01, %26
  %28 = fptrunc double %27 to float
  store float %28, float* %14, align 4
  %29 = bitcast %struct.gs_matrix_s* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 96, i1 false)
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %31 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef %30)
  call void @gs_deviceparams(%struct.gx_device_s* noundef %31, %struct.gs_matrix_s* noundef %16, i32* noundef %17, i32* noundef %18)
  %32 = load float, float* %14, align 4
  %33 = fpext float %32 to double
  %34 = load float, float* %14, align 4
  %35 = fpext float %34 to double
  %36 = call i32 @gs_distance_transform(double noundef %33, double noundef %35, %struct.gs_matrix_s* noundef %16, %struct.gs_point_s* noundef %15)
  store i32 %36, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %147

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = fptosi float %46 to i32
  %48 = sub nsw i32 0, %47
  br label %53

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fptosi float %51 to i32
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %48, %44 ], [ %52, %49 ]
  store i32 %54, i32* %10, align 4
  %55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 1
  %56 = load float, float* %55, align 4
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fptosi float %60 to i32
  %62 = sub nsw i32 0, %61
  br label %67

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %15, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = fptosi float %65 to i32
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i32 [ %62, %58 ], [ %66, %63 ]
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 65535, %78
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -15, i32* %5, align 4
  br label %147

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i8* @gs_malloc(i32 noundef %85, i32 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %87 = bitcast i8* %86 to %struct.ht_bit_s*
  store %struct.ht_bit_s* %87, %struct.ht_bit_s** %13, align 8
  %88 = load %struct.ht_bit_s*, %struct.ht_bit_s** %13, align 8
  %89 = icmp eq %struct.ht_bit_s* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 -25, i32* %5, align 4
  br label %147

91:                                               ; preds = %82
  %92 = load double, double* %8, align 8
  %93 = fptrunc double %92 to float
  %94 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %95 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %94, i32 0, i32 0
  store float %93, float* %95, align 8
  %96 = load double, double* %9, align 8
  %97 = fptrunc double %96 to float
  %98 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %99 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %98, i32 0, i32 1
  store float %97, float* %99, align 4
  %100 = load %struct.ht_bit_s*, %struct.ht_bit_s** %13, align 8
  %101 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %102 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %101, i32 0, i32 2
  store %struct.ht_bit_s* %100, %struct.ht_bit_s** %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %105 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %108 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %110 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %109, i32 0, i32 7
  store i32 0, i32* %110, align 4
  %111 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %112 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %111, i32 0, i32 6
  store i32 0, i32* %112, align 8
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %114 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %115 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %114, i32 0, i32 8
  store %struct.gs_state_s* %113, %struct.gs_state_s** %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sitofp i32 %116 to double
  %118 = fdiv double 2.000000e+00, %117
  %119 = fptrunc double %118 to float
  store float %119, float* %19, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sitofp i32 %120 to double
  %122 = fdiv double 2.000000e+00, %121
  %123 = fptrunc double %122 to float
  store float %123, float* %20, align 4
  call void @gs_make_identity(%struct.gs_matrix_s* noundef %21)
  %124 = load float, float* %19, align 4
  %125 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 0
  store float %124, float* %125, align 8
  %126 = load float, float* %20, align 4
  %127 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 6
  store float %126, float* %127, align 8
  %128 = load float, float* %19, align 4
  %129 = fpext float %128 to double
  %130 = call double @llvm.fmuladd.f64(double %129, double 5.000000e-01, double -1.000000e+00)
  %131 = fptrunc double %130 to float
  %132 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 8
  store float %131, float* %132, align 8
  %133 = load float, float* %20, align 4
  %134 = fpext float %133 to double
  %135 = call double @llvm.fmuladd.f64(double %134, double 5.000000e-01, double -1.000000e+00)
  %136 = fptrunc double %135 to float
  %137 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 10
  store float %136, float* %137, align 8
  %138 = load double, double* %9, align 8
  %139 = fneg double %138
  %140 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %141 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %140, i32 0, i32 5
  %142 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef %21, double noundef %139, %struct.gs_matrix_s* noundef %141)
  store i32 %142, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %91
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %5, align 4
  br label %147

146:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %144, %90, %81, %38, %24
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %0, %struct.gs_point_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_screen_enum_s*, align 8
  %5 = alloca %struct.gs_point_s*, align 8
  %6 = alloca %struct.gs_point_s, align 4
  %7 = alloca i32, align 4
  store %struct.gs_screen_enum_s* %0, %struct.gs_screen_enum_s** %4, align 8
  store %struct.gs_point_s* %1, %struct.gs_point_s** %5, align 8
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %12 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %17 = call i32 @gx_screen_finish(%struct.gs_screen_enum_s* noundef %16)
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %20 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = sitofp i32 %21 to double
  %23 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %24 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %28 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %27, i32 0, i32 5
  %29 = call i32 @gs_point_transform(double noundef %22, double noundef %26, %struct.gs_matrix_s* noundef %28, %struct.gs_point_s* noundef %6)
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fpext float %35 to double
  %37 = fcmp olt double %36, -1.000000e+00
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = fadd double %41, 2.000000e+00
  %43 = fptrunc double %42 to float
  store float %43, float* %39, align 4
  br label %56

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = fcmp ogt double %47, 1.000000e+00
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = fsub double %52, 2.000000e+00
  %54 = fptrunc double %53 to float
  store float %54, float* %50, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fcmp olt double %59, -1.000000e+00
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 1
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  %65 = fadd double %64, 2.000000e+00
  %66 = fptrunc double %65 to float
  store float %66, float* %62, align 4
  br label %79

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = fpext float %69 to double
  %71 = fcmp ogt double %70, 1.000000e+00
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = fpext float %74 to double
  %76 = fsub double %75, 2.000000e+00
  %77 = fptrunc double %76 to float
  store float %77, float* %73, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %81 = bitcast %struct.gs_point_s* %80 to i8*
  %82 = bitcast %struct.gs_point_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %31, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_screen_enum_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.ht_bit_s*, align 8
  store %struct.gs_screen_enum_s* %0, %struct.gs_screen_enum_s** %4, align 8
  store double %1, double* %5, align 8
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %8, i32 0, i32 2
  %10 = load %struct.ht_bit_s*, %struct.ht_bit_s** %9, align 8
  store %struct.ht_bit_s* %10, %struct.ht_bit_s** %7, align 8
  %11 = load double, double* %5, align 8
  %12 = fcmp olt double %11, -1.000000e+00
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = fcmp ogt double %14, 1.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 -15, i32* %3, align 4
  br label %56

17:                                               ; preds = %13
  %18 = load double, double* %5, align 8
  %19 = fmul double %18, 3.276700e+04
  %20 = fptoui double %19 to i16
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %21, 32767
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %6, align 2
  %24 = load i16, i16* %6, align 2
  %25 = load %struct.ht_bit_s*, %struct.ht_bit_s** %7, align 8
  %26 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %27 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %30 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %34 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %25, i64 %37
  %39 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %38, i32 0, i32 1
  store i16 %24, i16* %39, align 2
  %40 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %41 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %45 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %17
  %49 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %50 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %49, i32 0, i32 6
  store i32 0, i32* %50, align 8
  %51 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %52 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %17
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentscreen(%struct.gs_state_s* noundef %0, float* noundef %1, float* noundef %2, float (double, double)** noundef %3) #0 {
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float (double, double)**, align 8
  %9 = alloca %struct.halftone_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float (double, double)** %3, float (double, double)*** %8, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 11
  %12 = load %struct.halftone_s*, %struct.halftone_s** %11, align 8
  store %struct.halftone_s* %12, %struct.halftone_s** %9, align 8
  %13 = load %struct.halftone_s*, %struct.halftone_s** %9, align 8
  %14 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = load float*, float** %6, align 8
  store float %15, float* %16, align 4
  %17 = load %struct.halftone_s*, %struct.halftone_s** %9, align 8
  %18 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %7, align 8
  store float %19, float* %20, align 4
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 12
  %23 = load float (double, double)*, float (double, double)** %22, align 8
  %24 = load float (double, double)**, float (double, double)*** %8, align 8
  store float (double, double)* %23, float (double, double)** %24, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @gs_deviceparams(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32* noundef, i32* noundef) #1

declare dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef) #1

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef, double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @gx_screen_finish(%struct.gs_screen_enum_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_screen_enum_s*, align 8
  %4 = alloca %struct.ht_bit_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.halftone_s*, align 8
  store %struct.gs_screen_enum_s* %0, %struct.gs_screen_enum_s** %3, align 8
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %10 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %9, i32 0, i32 2
  %11 = load %struct.ht_bit_s*, %struct.ht_bit_s** %10, align 8
  store %struct.ht_bit_s* %11, %struct.ht_bit_s** %4, align 8
  %12 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %13 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %16 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = trunc i32 %24 to i16
  %26 = load %struct.ht_bit_s*, %struct.ht_bit_s** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %26, i64 %28
  %30 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %29, i32 0, i32 0
  store i16 %25, i16* %30, align 2
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %19, !llvm.loop !6

34:                                               ; preds = %19
  %35 = load %struct.ht_bit_s*, %struct.ht_bit_s** %4, align 8
  %36 = load i32, i32* %5, align 4
  call void @gx_sort_ht_order(%struct.ht_bit_s* noundef %35, i32 noundef %36)
  %37 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %38 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %37, i32 0, i32 2
  %39 = load %struct.ht_bit_s*, %struct.ht_bit_s** %38, align 8
  %40 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %41 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %44 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.ht_bit_s*, i32, i32, ...) bitcast (i32 (...)* @gx_ht_construct_order to i32 (%struct.ht_bit_s*, i32, i32, ...)*)(%struct.ht_bit_s* noundef %39, i32 noundef %42, i32 noundef %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %91

51:                                               ; preds = %34
  %52 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %53 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %52, i32 0, i32 8
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %53, align 8
  %55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 11
  %56 = load %struct.halftone_s*, %struct.halftone_s** %55, align 8
  store %struct.halftone_s* %56, %struct.halftone_s** %8, align 8
  %57 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %58 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %57, i32 0, i32 0
  %59 = load float, float* %58, align 8
  %60 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %61 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %60, i32 0, i32 0
  store float %59, float* %61, align 8
  %62 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %63 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %66 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %65, i32 0, i32 1
  store float %64, float* %66, align 4
  %67 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %68 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %71 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %73 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %76 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %78 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %77, i32 0, i32 2
  %79 = load %struct.ht_bit_s*, %struct.ht_bit_s** %78, align 8
  %80 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %81 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %80, i32 0, i32 4
  store %struct.ht_bit_s* %79, %struct.ht_bit_s** %81, align 8
  %82 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %83 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %86 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %90 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %51, %49
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

declare dso_local void @gx_sort_ht_order(%struct.ht_bit_s* noundef, i32 noundef) #1

declare dso_local i32 @gx_ht_construct_order(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
