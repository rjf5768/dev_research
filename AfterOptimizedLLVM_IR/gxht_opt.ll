; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxht.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_ht_cache_s = type { i8*, i32, %struct.ht_bit_s*, i32, i32, [25 x %struct.bit_tile_s] }
%struct.ht_bit_s = type { i16, i16 }
%struct.bit_tile_s = type { i32, %struct.gx_bitmap_s }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@cache = internal global %struct.gx_ht_cache_s zeroinitializer, align 8
@cache_bits = internal global [1000 x i8] zeroinitializer, align 16
@multi_bits = internal global [9 x i16*] [i16* null, i16* bitcast ([2 x i8]* @mb1 to i16*), i16* bitcast ([4 x i8]* @mb2 to i16*), i16* bitcast ([6 x i8]* @mb3 to i16*), i16* bitcast ([8 x i8]* @mb4 to i16*), i16* bitcast ([10 x i8]* @mb5 to i16*), i16* bitcast ([12 x i8]* @mb6 to i16*), i16* bitcast ([14 x i8]* @mb7 to i16*), i16* bitcast ([16 x i8]* @mb8 to i16*)], align 16
@single_bits8 = internal global [32 x i8] c"\80\00@\00 \00\10\00\08\00\04\00\02\00\01\00\00\80\00@\00 \00\10\00\08\00\04\00\02\00\01", align 16
@mb1 = internal global [2 x i8] c"\FF\FF", align 1
@mb2 = internal global [4 x i8] c"\AA\AAUU", align 1
@mb3 = internal global [6 x i8] c"\92II$$\92", align 1
@mb4 = internal global [8 x i8] c"\88\88DD\22\22\11\11", align 1
@mb5 = internal global [10 x i8] c"\84!B\10!\08\10\84\08B", align 1
@mb6 = internal global [12 x i8] c"\82\08A\04 \82\10A\08 \04\10", align 1
@mb7 = internal global [14 x i8] c"\81\02@\81 @\10 \08\10\04\08\02\04", align 1
@mb8 = internal global [16 x i8] c"\80\80@@  \10\10\08\08\04\04\02\02\01\01", align 16
@init_ht.up_to_16 = internal global [9 x i32] [i32 0, i32 16, i32 16, i32 15, i32 16, i32 15, i32 12, i32 14, i32 16], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_ht_construct_order(%struct.ht_bit_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ht_bit_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ht_bit_s* %0, %struct.ht_bit_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 0, %15
  %17 = and i32 %16, 31
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = sdiv i32 %20, 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = icmp sgt i32 %23, 1000
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -13, i32* %4, align 4
  br label %87

26:                                               ; preds = %3
  store %struct.ht_bit_s* null, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @cache_bits, i64 0, i64 0), i8** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 0), align 8
  store i32 1000, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 1), align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %27
  %32 = load %struct.ht_bit_s*, %struct.ht_bit_s** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %32, i64 %34
  %36 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 4
  %48 = shl i32 %47, 1
  %49 = trunc i32 %48 to i16
  %50 = load %struct.ht_bit_s*, %struct.ht_bit_s** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %50, i64 %52
  %54 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %53, i32 0, i32 0
  store i16 %49, i16* %54, align 2
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 8
  br i1 %56, label %57, label %68

57:                                               ; preds = %31
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [9 x i16*], [9 x i16*]* @multi_bits, i64 0, i64 %59
  %61 = load i16*, i16** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %61, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  br label %75

68:                                               ; preds = %31
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* bitcast ([32 x i8]* @single_bits8 to i16*), i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  br label %75

75:                                               ; preds = %68, %57
  %76 = phi i32 [ %67, %57 ], [ %74, %68 ]
  %77 = trunc i32 %76 to i16
  %78 = load %struct.ht_bit_s*, %struct.ht_bit_s** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %78, i64 %80
  %82 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %81, i32 0, i32 1
  store i16 %77, i16* %82, align 2
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %27, !llvm.loop !4

86:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %25
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_color_load(%struct.gx_device_color_s* noundef %0, %struct.gs_state_s* noundef %1) #0 {
  %3 = alloca %struct.gx_device_color_s*, align 8
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.halftone_s*, align 8
  %7 = alloca %struct.bit_tile_s*, align 8
  store %struct.gx_device_color_s* %0, %struct.gx_device_color_s** %3, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %4, align 8
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %3, align 8
  %9 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 11
  %17 = load %struct.halftone_s*, %struct.halftone_s** %16, align 8
  store %struct.halftone_s* %17, %struct.halftone_s** %6, align 8
  %18 = load %struct.ht_bit_s*, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 2), align 8
  %19 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  %20 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %19, i32 0, i32 4
  %21 = load %struct.ht_bit_s*, %struct.ht_bit_s** %20, align 8
  %22 = icmp ne %struct.ht_bit_s* %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  call void @init_ht(%struct.gx_ht_cache_s* noundef @cache, %struct.halftone_s* noundef %24)
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 4), align 4
  %28 = sdiv i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [25 x %struct.bit_tile_s], [25 x %struct.bit_tile_s]* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 5), i64 0, i64 %29
  store %struct.bit_tile_s* %30, %struct.bit_tile_s** %7, align 8
  %31 = load %struct.bit_tile_s*, %struct.bit_tile_s** %7, align 8
  %32 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.bit_tile_s*, %struct.bit_tile_s** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  call void @render_ht(%struct.bit_tile_s* noundef %37, i32 noundef %38, %struct.halftone_s* noundef %39)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.bit_tile_s*, %struct.bit_tile_s** %7, align 8
  %42 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %41, i32 0, i32 1
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %3, align 8
  %44 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 3
  store %struct.gx_bitmap_s* %42, %struct.gx_bitmap_s** %44, align 8
  br label %45

45:                                               ; preds = %40, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_ht(%struct.gx_ht_cache_s* noundef %0, %struct.halftone_s* noundef %1) #0 {
  %3 = alloca %struct.gx_ht_cache_s*, align 8
  %4 = alloca %struct.halftone_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bit_tile_s*, align 8
  store %struct.gx_ht_cache_s* %0, %struct.gx_ht_cache_s** %3, align 8
  store %struct.halftone_s* %1, %struct.halftone_s** %4, align 8
  %15 = load %struct.halftone_s*, %struct.halftone_s** %4, align 8
  %16 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.halftone_s*, %struct.halftone_s** %4, align 8
  %19 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 8
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* @init_ht.up_to_16, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %30, %26 ], [ %32, %31 ]
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 31
  %37 = ashr i32 %36, 5
  %38 = shl i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %3, align 8
  %43 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = udiv i32 1000, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 25
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 25, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %52
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %89, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %57
  %62 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %3, align 8
  %63 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %62, i32 0, i32 5
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [25 x %struct.bit_tile_s], [25 x %struct.bit_tile_s]* %63, i64 0, i64 %65
  store %struct.bit_tile_s* %66, %struct.bit_tile_s** %14, align 8
  %67 = load %struct.bit_tile_s*, %struct.bit_tile_s** %14, align 8
  %68 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.bit_tile_s*, %struct.bit_tile_s** %14, align 8
  %71 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.bit_tile_s*, %struct.bit_tile_s** %14, align 8
  %75 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.bit_tile_s*, %struct.bit_tile_s** %14, align 8
  %79 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.bit_tile_s*, %struct.bit_tile_s** %14, align 8
  %83 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %13, align 8
  br label %89

89:                                               ; preds = %61
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %57, !llvm.loop !6

92:                                               ; preds = %57
  %93 = load %struct.halftone_s*, %struct.halftone_s** %4, align 8
  %94 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %93, i32 0, i32 4
  %95 = load %struct.ht_bit_s*, %struct.ht_bit_s** %94, align 8
  %96 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %3, align 8
  %97 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %96, i32 0, i32 2
  store %struct.ht_bit_s* %95, %struct.ht_bit_s** %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %3, align 8
  %100 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %11, align 4
  %106 = sdiv i32 %104, %105
  %107 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %3, align 8
  %108 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @render_ht(%struct.bit_tile_s* noundef %0, i32 noundef %1, %struct.halftone_s* noundef %2) #0 {
  %4 = alloca %struct.bit_tile_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.halftone_s*, align 8
  %7 = alloca %struct.ht_bit_s*, align 8
  %8 = alloca %struct.ht_bit_s*, align 8
  %9 = alloca %struct.ht_bit_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bit_tile_s* %0, %struct.bit_tile_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.halftone_s* %2, %struct.halftone_s** %6, align 8
  %13 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  %14 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %13, i32 0, i32 4
  %15 = load %struct.ht_bit_s*, %struct.ht_bit_s** %14, align 8
  store %struct.ht_bit_s* %15, %struct.ht_bit_s** %7, align 8
  %16 = load %struct.bit_tile_s*, %struct.bit_tile_s** %4, align 8
  %17 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load %struct.bit_tile_s*, %struct.bit_tile_s** %4, align 8
  %21 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %3
  %26 = load %struct.bit_tile_s*, %struct.bit_tile_s** %4, align 8
  %27 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bit_tile_s*, %struct.bit_tile_s** %4, align 8
  %31 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %29, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  %37 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 1
  %40 = icmp sge i32 %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %25
  %42 = load %struct.halftone_s*, %struct.halftone_s** %6, align 8
  %43 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 -1, i64 %47, i1 false)
  br label %52

48:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 0, i64 %51, i1 false)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.ht_bit_s*, %struct.ht_bit_s** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %58, i64 %60
  store %struct.ht_bit_s* %61, %struct.ht_bit_s** %8, align 8
  %62 = load %struct.ht_bit_s*, %struct.ht_bit_s** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %62, i64 %64
  store %struct.ht_bit_s* %65, %struct.ht_bit_s** %9, align 8
  br label %75

66:                                               ; preds = %53
  %67 = load %struct.ht_bit_s*, %struct.ht_bit_s** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %67, i64 %69
  store %struct.ht_bit_s* %70, %struct.ht_bit_s** %8, align 8
  %71 = load %struct.ht_bit_s*, %struct.ht_bit_s** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %71, i64 %73
  store %struct.ht_bit_s* %74, %struct.ht_bit_s** %9, align 8
  br label %75

75:                                               ; preds = %66, %57
  br label %76

76:                                               ; preds = %92, %75
  %77 = load %struct.ht_bit_s*, %struct.ht_bit_s** %8, align 8
  %78 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %77, i32 0, i32 1
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.ht_bit_s*, %struct.ht_bit_s** %8, align 8
  %83 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %82, i32 0, i32 0
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = bitcast i8* %86 to i16*
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = xor i32 %89, %80
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %87, align 2
  br label %92

92:                                               ; preds = %76
  %93 = load %struct.ht_bit_s*, %struct.ht_bit_s** %8, align 8
  %94 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %93, i32 1
  store %struct.ht_bit_s* %94, %struct.ht_bit_s** %8, align 8
  %95 = load %struct.ht_bit_s*, %struct.ht_bit_s** %9, align 8
  %96 = icmp ult %struct.ht_bit_s* %94, %95
  br i1 %96, label %76, label %97, !llvm.loop !7

97:                                               ; preds = %92
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.bit_tile_s*, %struct.bit_tile_s** %4, align 8
  %100 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
