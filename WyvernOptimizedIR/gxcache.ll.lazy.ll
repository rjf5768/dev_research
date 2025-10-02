; ModuleID = './gxcache.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_char_s = type { %struct.cached_char_s*, i32, %struct.cached_fm_pair_s*, i16, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, float, float, float, float, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_show_enum_s = type { %struct.gs_state_s*, i8*, i32, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_device_memory_s, %struct.device_s, i32, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, %struct.gs_point_s, i32, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gs_point_s = type { float, float }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_font_dir_s = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, %struct.gs_font_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.cached_char_s*], i8*, i32, %struct.cached_fm_pair_s*, i32, %struct.cached_char_s*, i32 }

@cached_char_sizeof = dso_local global i32 72, align 4
@cached_fm_pair_sizeof = dso_local global i32 32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cached_char_s* @gx_alloc_char_bits(%struct.gs_font_dir_s* nocapture noundef %0, %struct.gx_device_memory_s* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = zext i16 %2 to i32
  %6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = zext i16 %3 to i32
  %8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef %1) #9
  %10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 12
  %11 = load i32, i32* %10, align 8
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %21, label %12

12:                                               ; preds = %4
  %13 = zext i16 %3 to i32
  %14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = udiv i32 %15, %17
  %19 = icmp ult i32 %18, %13
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %89

21:                                               ; preds = %12, %4
  %22 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 11
  %25 = load i32, i32* %24, align 4
  %.not1 = icmp ult i32 %23, %25
  br i1 %.not1, label %26, label %34

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 %28, %30
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %9, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26, %21
  %35 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %9, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %34
  br label %89

44:                                               ; preds = %38
  call void @zap_cache(%struct.gs_font_dir_s* noundef %0)
  br label %45

45:                                               ; preds = %44, %26
  %46 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 19
  %47 = load %struct.cached_char_s*, %struct.cached_char_s** %46, align 8
  %48 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 20
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51
  %53 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 15
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 16
  %56 = load i32, i32* %55, align 8
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 8
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 16
  %61 = load i32, i32* %60, align 8
  %62 = trunc i64 %9 to i32
  %63 = add i32 %61, %62
  store i32 %63, i32* %60, align 8
  %64 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 8
  %65 = load i8*, i8** %64, align 8
  %66 = and i64 %9, 4294967295
  call void @llvm.memset.p0i8.i64(i8* align 1 %65, i8 0, i64 %66, i1 false)
  %67 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 5
  store i16 %2, i16* %67, align 4
  %68 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 4
  store i16 %3, i16* %68, align 2
  %69 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 12
  %70 = load i32, i32* %69, align 8
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 3
  store i16 %71, i16* %72, align 8
  %73 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %47, i64 %51, i32 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 13
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i64 0, i32 1
  %77 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %76, align 8
  %78 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %77, i64 0, i32 0
  %79 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %78, align 8
  %80 = bitcast %struct.gx_device_memory_s* %1 to %struct.gx_device_s*
  %81 = call i32 %79(%struct.gx_device_s* noundef %80) #9
  %82 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = add i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = trunc i64 %9 to i32
  %88 = add i32 %86, %87
  store i32 %88, i32* %85, align 8
  br label %89

89:                                               ; preds = %45, %43, %20
  %.0 = phi %struct.cached_char_s* [ null, %20 ], [ null, %43 ], [ %52, %45 ]
  ret %struct.cached_char_s* %.0
}

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @zap_cache(%struct.gs_font_dir_s* nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 6
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 8
  store i32 0, i32* %3, align 8
  %4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 10
  store i32 0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 16
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 18
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 20
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 14, i64 0
  %9 = bitcast %struct.cached_char_s** %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1024) %9, i8 0, i64 1024, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gx_unalloc_cached_char(%struct.gs_font_dir_s* nocapture noundef %0, %struct.cached_char_s* nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 3
  %4 = load i16, i16* %3, align 8
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 4
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = mul nuw nsw i32 %5, %8
  %10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 20
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 16
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %14, %9
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %20, %9
  store i32 %21, i32* %19, align 8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 17, i32 0
  %3 = load float, float* %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 17, i32 2
  %5 = load float, float* %4, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 17, i32 4
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 17, i32 6
  %9 = load float, float* %8, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 16
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %10, align 8
  %12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i64 0, i32 3
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %12, align 8
  %14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 17
  %15 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %14, align 8
  %16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 18
  %17 = load i32, i32* %16, align 8
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %15, i64 %18
  %20 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 8
  %21 = load i32, i32* %20, align 8
  br label %22

22:                                               ; preds = %56, %1
  %.02 = phi %struct.cached_fm_pair_s* [ %19, %1 ], [ %.1, %56 ]
  %.01 = phi i32 [ %21, %1 ], [ %23, %56 ]
  %23 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %57, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 17
  %26 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %25, align 8
  %27 = icmp eq %struct.cached_fm_pair_s* %.02, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.02, i64 %31
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.02, i64 -1
  br label %35

35:                                               ; preds = %33, %28
  %.1 = phi %struct.cached_fm_pair_s* [ %32, %28 ], [ %34, %33 ]
  %36 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.1, i64 0, i32 0
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %36, align 8
  %38 = icmp eq %struct.gs_font_s* %37, %11
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.1, i64 0, i32 1
  %41 = load float, float* %40, align 8
  %42 = fcmp oeq float %41, %3
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.1, i64 0, i32 2
  %45 = load float, float* %44, align 4
  %46 = fcmp oeq float %45, %5
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.1, i64 0, i32 3
  %49 = load float, float* %48, align 8
  %50 = fcmp oeq float %49, %7
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %.1, i64 0, i32 4
  %53 = load float, float* %52, align 4
  %54 = fcmp oeq float %53, %9
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %88

56:                                               ; preds = %51, %47, %43, %39, %35
  br label %22, !llvm.loop !4

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  call void @zap_cache(%struct.gs_font_dir_s* noundef %13)
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 17
  %69 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %68, align 8
  %70 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 18
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72
  %74 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 18
  %75 = add i32 %71, 1
  store i32 %75, i32* %74, align 8
  %76 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i64 0, i32 18
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %79, %64
  %82 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %73, i64 0, i32 0
  store %struct.gs_font_s* %11, %struct.gs_font_s** %82, align 8
  %83 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72, i32 1
  store float %3, float* %83, align 8
  %84 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72, i32 2
  store float %5, float* %84, align 4
  %85 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72, i32 3
  store float %7, float* %85, align 8
  %86 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72, i32 4
  store float %9, float* %86, align 4
  %87 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i64 %72, i32 5
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %55
  %.0 = phi %struct.cached_fm_pair_s* [ %.1, %55 ], [ %73, %81 ]
  ret %struct.cached_fm_pair_s* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @gx_add_cached_char(%struct.gs_font_dir_s* nocapture noundef %0, %struct.cached_char_s* noundef %1, %struct.cached_fm_pair_s* noundef %2) #6 {
  %4 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 127
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 14, i64 %7
  br label %9

9:                                                ; preds = %11, %3
  %.0 = phi %struct.cached_char_s** [ %8, %3 ], [ %13, %11 ]
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %.0, align 8
  %.not = icmp eq %struct.cached_char_s* %10, null
  br i1 %.not, label %14, label %11

11:                                               ; preds = %9
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %.0, align 8
  %13 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %12, i64 0, i32 0
  br label %9, !llvm.loop !6

14:                                               ; preds = %9
  store %struct.cached_char_s* %1, %struct.cached_char_s** %.0, align 8
  %15 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 0
  store %struct.cached_char_s* null, %struct.cached_char_s** %15, align 8
  %16 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 2
  store %struct.cached_fm_pair_s* %2, %struct.cached_fm_pair_s** %16, align 8
  %17 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %2, i64 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s* nocapture noundef readonly %0, %struct.cached_fm_pair_s* noundef readnone %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 16
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i64 0, i32 3
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %8 = and i32 %2, 127
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i64 0, i32 14, i64 %9
  br label %11

11:                                               ; preds = %21, %3
  %.01.in = phi %struct.cached_char_s** [ %10, %3 ], [ %22, %21 ]
  %.01 = load %struct.cached_char_s*, %struct.cached_char_s** %.01.in, align 8
  %.not = icmp eq %struct.cached_char_s* %.01, null
  br i1 %.not, label %23, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %.01, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %.01, i64 0, i32 2
  %18 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %17, align 8
  %19 = icmp eq %struct.cached_fm_pair_s* %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %.01, i64 0, i32 0
  br label %11, !llvm.loop !7

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %20
  %.0 = phi %struct.cached_char_s* [ %.01, %20 ], [ null, %23 ]
  ret %struct.cached_char_s* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_copy_cached_char(%struct.gs_show_enum_s* nocapture noundef %0, %struct.cached_char_s* nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gs_fixed_point_s, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %7, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i64 0, i32 10
  %10 = load i8, i8* %9, align 8
  %.not = icmp eq i8 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 7
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i64 0, i32 9, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i64 0, i32 9, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = phi i32 [ -14, %11 ], [ 0, %12 ]
  br i1 %.not, label %23, label %24

23:                                               ; preds = %21
  br label %131

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 25
  %26 = load i32, i32* %25, align 4
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %27, label %39

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 14
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %28, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 13
  %31 = load %struct.gs_color_s*, %struct.gs_color_s** %30, align 8
  %32 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %31, %struct.gx_device_color_s* noundef %29, %struct.gs_state_s* noundef %6) #9
  %33 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %29, i64 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %131

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 25
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 7, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = add nsw i64 %44, 2048
  %46 = lshr i64 %45, 12
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 7, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = add nsw i64 %52, 2048
  %54 = lshr i64 %53, 12
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 5
  %57 = load i16, i16* %56, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 4
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 13
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, %47
  br i1 %64, label %79, label %65

65:                                               ; preds = %39
  %66 = add nsw i32 %47, %58
  %67 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 14
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, %55
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = add nsw i32 %55, %61
  %76 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i64 0, i32 16
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %74, %70, %65, %39
  %80 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 2
  %81 = bitcast %struct.gs_matrix_s* %4 to i8*
  %82 = bitcast %struct.gs_matrix_fixed_s* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %81, i8* noundef nonnull align 8 dereferenceable(96) %82, i64 96, i1 false)
  %83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to double
  %86 = fmul double %85, 0x3F30000000000000
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i64 0, i32 8
  %89 = load float, float* %88, align 8
  %90 = fsub float %89, %87
  store float %90, float* %88, align 8
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = fmul double %93, 0x3F30000000000000
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i64 0, i32 10
  %97 = load float, float* %96, align 8
  %98 = fsub float %97, %95
  store float %98, float* %96, align 8
  %99 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 3
  %100 = load i16, i16* %99, align 8
  %101 = zext i16 %100 to i32
  %102 = shl nuw nsw i32 %101, 3
  %103 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @gs_imagemask(%struct.gs_state_s* noundef %6, i32 noundef %102, i32 noundef %61, i32 noundef 1, %struct.gs_matrix_s* noundef nonnull %4, i8* noundef %104) #9
  br label %125

106:                                              ; preds = %74
  %107 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 22
  %108 = load %struct.device_s*, %struct.device_s** %107, align 8
  %109 = getelementptr inbounds %struct.device_s, %struct.device_s* %108, i64 0, i32 0
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %109, align 8
  %111 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %110, i64 0, i32 1
  %112 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %111, align 8
  %113 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %112, i64 0, i32 9
  %114 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %113, align 8
  %115 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i64 0, i32 3
  %118 = load i16, i16* %117, align 8
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i64 0, i32 14
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %120, align 8
  %122 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %121, i64 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 %114(%struct.gx_device_s* noundef %110, i8* noundef %116, i32 noundef 0, i32 noundef %119, i32 noundef %47, i32 noundef %55, i32 noundef %58, i32 noundef %61, i64 noundef -1, i64 noundef %123) #9
  br label %125

125:                                              ; preds = %106, %79
  %.01 = phi i32 [ %105, %79 ], [ %124, %106 ]
  %126 = icmp slt i32 %.01, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  br label %129

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %127
  %130 = phi i32 [ %.01, %127 ], [ 0, %128 ]
  br label %131

131:                                              ; preds = %129, %36, %23
  %.0 = phi i32 [ %22, %23 ], [ %130, %129 ], [ 1, %36 ]
  ret i32 %.0
}

declare dso_local i32 @gx_color_render(...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nounwind }

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
