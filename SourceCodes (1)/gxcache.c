; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxcache.c'
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
define dso_local %struct.cached_char_s* @gx_alloc_char_bits(%struct.gs_font_dir_s* noundef %0, %struct.gx_device_memory_s* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.cached_char_s*, align 8
  %6 = alloca %struct.gs_font_dir_s*, align 8
  %7 = alloca %struct.gx_device_memory_s*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca %struct.cached_char_s*, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %6, align 8
  store %struct.gx_device_memory_s* %1, %struct.gx_device_memory_s** %7, align 8
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i16, i16* %9, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %19 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %21 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load i16, i16* %9, align 2
  %28 = zext i16 %27 to i32
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %33 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = udiv i32 %31, %34
  %36 = icmp ugt i32 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store %struct.cached_char_s* null, %struct.cached_char_s** %5, align 8
  br label %142

38:                                               ; preds = %26, %4
  %39 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %40 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %43 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = icmp uge i32 %41, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %38
  %47 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %48 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %51 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %46, %38
  %58 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %59 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %64 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %57
  store %struct.cached_char_s* null, %struct.cached_char_s** %5, align 8
  br label %142

70:                                               ; preds = %62
  %71 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  call void @zap_cache(%struct.gs_font_dir_s* noundef %71)
  br label %72

72:                                               ; preds = %70, %46
  %73 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %74 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %73, i32 0, i32 19
  %75 = load %struct.cached_char_s*, %struct.cached_char_s** %74, align 8
  %76 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %77 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %76, i32 0, i32 20
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %75, i64 %80
  store %struct.cached_char_s* %81, %struct.cached_char_s** %11, align 8
  %82 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %83 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %82, i32 0, i32 15
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %86 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %85, i32 0, i32 16
  %87 = load i32, i32* %86, align 8
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %91 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %94 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %93, i32 0, i32 16
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = add i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %100 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %102 to i32
  %104 = zext i32 %103 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %101, i8 0, i64 %104, i1 false)
  %105 = load i16, i16* %8, align 2
  %106 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %107 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %106, i32 0, i32 5
  store i16 %105, i16* %107, align 4
  %108 = load i16, i16* %9, align 2
  %109 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %110 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %109, i32 0, i32 4
  store i16 %108, i16* %110, align 2
  %111 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %112 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = trunc i32 %113 to i16
  %115 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %116 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %115, i32 0, i32 3
  store i16 %114, i16* %116, align 8
  %117 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  %118 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %117, i32 0, i32 8
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %121 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %120, i32 0, i32 13
  store i8* %119, i8** %121, align 8
  %122 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %122, i32 0, i32 1
  %124 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %123, align 8
  %125 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %124, i32 0, i32 0
  %126 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %125, align 8
  %127 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %128 = bitcast %struct.gx_device_memory_s* %127 to %struct.gx_device_s*
  %129 = call i32 %126(%struct.gx_device_s* noundef %128)
  %130 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %131 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = add i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %136 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = zext i32 %137 to i64
  %139 = add i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  %141 = load %struct.cached_char_s*, %struct.cached_char_s** %11, align 8
  store %struct.cached_char_s* %141, %struct.cached_char_s** %5, align 8
  br label %142

142:                                              ; preds = %72, %69, %37
  %143 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  ret %struct.cached_char_s* %143
}

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @zap_cache(%struct.gs_font_dir_s* noundef %0) #0 {
  %2 = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %2, align 8
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 6
  store i32 0, i32* %4, align 8
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %5, i32 0, i32 8
  store i32 0, i32* %6, align 8
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i32 0, i32 10
  store i32 0, i32* %8, align 8
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %10 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 16
  store i32 0, i32* %10, align 8
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %12 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 18
  store i32 0, i32* %12, align 8
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 20
  store i32 0, i32* %14, align 8
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 14
  %17 = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %16, i64 0, i64 0
  %18 = bitcast %struct.cached_char_s** %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 1024, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_unalloc_cached_char(%struct.gs_font_dir_s* noundef %0, %struct.cached_char_s* noundef %1) #0 {
  %3 = alloca %struct.gs_font_dir_s*, align 8
  %4 = alloca %struct.cached_char_s*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %3, align 8
  store %struct.cached_char_s* %1, %struct.cached_char_s** %4, align 8
  %6 = load %struct.cached_char_s*, %struct.cached_char_s** %4, align 8
  %7 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %6, i32 0, i32 3
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %4, align 8
  %11 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %10, i32 0, i32 4
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = mul nsw i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 8
  %23 = sub i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %25 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = sub i32 %31, %28
  store i32 %32, i32* %30, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.cached_fm_pair_s*, align 8
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.gs_font_s*, align 8
  %9 = alloca %struct.gs_font_dir_s*, align 8
  %10 = alloca %struct.cached_fm_pair_s*, align 8
  %11 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  store float %15, float* %4, align 4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 17
  %18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 2
  %19 = load float, float* %18, align 8
  store float %19, float* %5, align 4
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 17
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 4
  %23 = load float, float* %22, align 8
  store float %23, float* %6, align 4
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 17
  %26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 6
  %27 = load float, float* %26, align 8
  store float %27, float* %7, align 4
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 16
  %30 = load %struct.gs_font_s*, %struct.gs_font_s** %29, align 8
  store %struct.gs_font_s* %30, %struct.gs_font_s** %8, align 8
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %32 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %31, i32 0, i32 3
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %32, align 8
  store %struct.gs_font_dir_s* %33, %struct.gs_font_dir_s** %9, align 8
  %34 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %35 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %34, i32 0, i32 17
  %36 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %35, align 8
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %38 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %36, i64 %40
  store %struct.cached_fm_pair_s* %41, %struct.cached_fm_pair_s** %10, align 8
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %43 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %97, %1
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %51 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %52 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %51, i32 0, i32 17
  %53 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %52, align 8
  %54 = icmp eq %struct.cached_fm_pair_s* %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %57 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %59, i64 %60
  store %struct.cached_fm_pair_s* %61, %struct.cached_fm_pair_s** %10, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %64 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %63, i32 -1
  store %struct.cached_fm_pair_s* %64, %struct.cached_fm_pair_s** %10, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %67 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %66, i32 0, i32 0
  %68 = load %struct.gs_font_s*, %struct.gs_font_s** %67, align 8
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %70 = icmp eq %struct.gs_font_s* %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %73 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %72, i32 0, i32 1
  %74 = load float, float* %73, align 8
  %75 = load float, float* %4, align 4
  %76 = fcmp oeq float %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %79 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %78, i32 0, i32 2
  %80 = load float, float* %79, align 4
  %81 = load float, float* %5, align 4
  %82 = fcmp oeq float %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %85 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %84, i32 0, i32 3
  %86 = load float, float* %85, align 8
  %87 = load float, float* %6, align 4
  %88 = fcmp oeq float %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %91 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %90, i32 0, i32 4
  %92 = load float, float* %91, align 4
  %93 = load float, float* %7, align 4
  %94 = fcmp oeq float %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  store %struct.cached_fm_pair_s* %96, %struct.cached_fm_pair_s** %2, align 8
  br label %151

97:                                               ; preds = %89, %83, %77, %71, %65
  br label %45, !llvm.loop !4

98:                                               ; preds = %45
  %99 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %100 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %103 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  call void @zap_cache(%struct.gs_font_dir_s* noundef %107)
  br label %108

108:                                              ; preds = %106, %98
  %109 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %110 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = add i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %114 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %113, i32 0, i32 17
  %115 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %114, align 8
  %116 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %117 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %116, i32 0, i32 18
  %118 = load i32, i32* %117, align 8
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %115, i64 %119
  store %struct.cached_fm_pair_s* %120, %struct.cached_fm_pair_s** %10, align 8
  %121 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %122 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %121, i32 0, i32 18
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %126 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %108
  %130 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %9, align 8
  %131 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %130, i32 0, i32 18
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %108
  %133 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %134 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %135 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %134, i32 0, i32 0
  store %struct.gs_font_s* %133, %struct.gs_font_s** %135, align 8
  %136 = load float, float* %4, align 4
  %137 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %138 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %137, i32 0, i32 1
  store float %136, float* %138, align 8
  %139 = load float, float* %5, align 4
  %140 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %141 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %140, i32 0, i32 2
  store float %139, float* %141, align 4
  %142 = load float, float* %6, align 4
  %143 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %144 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %143, i32 0, i32 3
  store float %142, float* %144, align 8
  %145 = load float, float* %7, align 4
  %146 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %147 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %146, i32 0, i32 4
  store float %145, float* %147, align 4
  %148 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  %149 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %148, i32 0, i32 5
  store i32 0, i32* %149, align 8
  %150 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %10, align 8
  store %struct.cached_fm_pair_s* %150, %struct.cached_fm_pair_s** %2, align 8
  br label %151

151:                                              ; preds = %132, %95
  %152 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %2, align 8
  ret %struct.cached_fm_pair_s* %152
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_add_cached_char(%struct.gs_font_dir_s* noundef %0, %struct.cached_char_s* noundef %1, %struct.cached_fm_pair_s* noundef %2) #0 {
  %4 = alloca %struct.gs_font_dir_s*, align 8
  %5 = alloca %struct.cached_char_s*, align 8
  %6 = alloca %struct.cached_fm_pair_s*, align 8
  %7 = alloca %struct.cached_char_s**, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %4, align 8
  store %struct.cached_char_s* %1, %struct.cached_char_s** %5, align 8
  store %struct.cached_fm_pair_s* %2, %struct.cached_fm_pair_s** %6, align 8
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %4, align 8
  %9 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %8, i32 0, i32 14
  %10 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %11 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 127
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %9, i64 0, i64 %14
  store %struct.cached_char_s** %15, %struct.cached_char_s*** %7, align 8
  br label %16

16:                                               ; preds = %20, %3
  %17 = load %struct.cached_char_s**, %struct.cached_char_s*** %7, align 8
  %18 = load %struct.cached_char_s*, %struct.cached_char_s** %17, align 8
  %19 = icmp ne %struct.cached_char_s* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.cached_char_s**, %struct.cached_char_s*** %7, align 8
  %22 = load %struct.cached_char_s*, %struct.cached_char_s** %21, align 8
  %23 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %22, i32 0, i32 0
  store %struct.cached_char_s** %23, %struct.cached_char_s*** %7, align 8
  br label %16, !llvm.loop !6

24:                                               ; preds = %16
  %25 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %26 = load %struct.cached_char_s**, %struct.cached_char_s*** %7, align 8
  store %struct.cached_char_s* %25, %struct.cached_char_s** %26, align 8
  %27 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %28 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %27, i32 0, i32 0
  store %struct.cached_char_s* null, %struct.cached_char_s** %28, align 8
  %29 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %6, align 8
  %30 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %31 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %30, i32 0, i32 2
  store %struct.cached_fm_pair_s* %29, %struct.cached_fm_pair_s** %31, align 8
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %6, align 8
  %33 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s* noundef %0, %struct.cached_fm_pair_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cached_char_s*, align 8
  %5 = alloca %struct.gs_state_s*, align 8
  %6 = alloca %struct.cached_fm_pair_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cached_char_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %5, align 8
  store %struct.cached_fm_pair_s* %1, %struct.cached_fm_pair_s** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %5, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 16
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %10, align 8
  %12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 3
  %13 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %12, align 8
  %14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %13, i32 0, i32 14
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 127
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %14, i64 0, i64 %17
  %19 = load %struct.cached_char_s*, %struct.cached_char_s** %18, align 8
  store %struct.cached_char_s* %19, %struct.cached_char_s** %8, align 8
  br label %20

20:                                               ; preds = %37, %3
  %21 = load %struct.cached_char_s*, %struct.cached_char_s** %8, align 8
  %22 = icmp ne %struct.cached_char_s* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %8, align 8
  %25 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.cached_char_s*, %struct.cached_char_s** %8, align 8
  %31 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %30, i32 0, i32 2
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %31, align 8
  %33 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %6, align 8
  %34 = icmp eq %struct.cached_fm_pair_s* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load %struct.cached_char_s*, %struct.cached_char_s** %8, align 8
  store %struct.cached_char_s* %36, %struct.cached_char_s** %4, align 8
  br label %42

37:                                               ; preds = %29, %23
  %38 = load %struct.cached_char_s*, %struct.cached_char_s** %8, align 8
  %39 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %38, i32 0, i32 0
  %40 = load %struct.cached_char_s*, %struct.cached_char_s** %39, align 8
  store %struct.cached_char_s* %40, %struct.cached_char_s** %8, align 8
  br label %20, !llvm.loop !7

41:                                               ; preds = %20
  store %struct.cached_char_s* null, %struct.cached_char_s** %4, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.cached_char_s*, %struct.cached_char_s** %4, align 8
  ret %struct.cached_char_s* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_copy_cached_char(%struct.gs_show_enum_s* noundef %0, %struct.cached_char_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_show_enum_s*, align 8
  %5 = alloca %struct.cached_char_s*, align 8
  %6 = alloca %struct.gs_state_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_fixed_point_s, align 8
  %13 = alloca %struct.gx_device_color_s*, align 8
  %14 = alloca %struct.gs_matrix_s, align 8
  %15 = alloca %struct.gx_device_s*, align 8
  store %struct.gs_show_enum_s* %0, %struct.gs_show_enum_s** %4, align 8
  store %struct.cached_char_s* %1, %struct.cached_char_s** %5, align 8
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %17 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %17, align 8
  store %struct.gs_state_s* %18, %struct.gs_state_s** %6, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 7
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %20, align 8
  %22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 10
  %23 = load i8, i8* %22, align 8
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 7
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %28, align 8
  %30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 7
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %35, align 8
  %37 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %26, %25
  %42 = phi i32 [ -14, %25 ], [ 0, %26 ]
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %200

47:                                               ; preds = %41
  %48 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %49 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %48, i32 0, i32 25
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %47
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 14
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %54, align 8
  store %struct.gx_device_color_s* %55, %struct.gx_device_color_s** %13, align 8
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 13
  %58 = load %struct.gs_color_s*, %struct.gs_color_s** %57, align 8
  %59 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %13, align 8
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %61 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %58, %struct.gx_device_color_s* noundef %59, %struct.gs_state_s* noundef %60)
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %13, align 8
  %63 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %200

67:                                               ; preds = %52
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %69 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %68, i32 0, i32 25
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %47
  %71 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %72 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 2048
  %81 = ashr i64 %80, 12
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %84 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %86
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 2048
  %93 = ashr i64 %92, 12
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %96 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %95, i32 0, i32 5
  %97 = load i16, i16* %96, align 4
  %98 = zext i16 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %100 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %99, i32 0, i32 4
  %101 = load i16, i16* %100, align 2
  %102 = zext i16 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %105 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %130, label %108

108:                                              ; preds = %70
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %113 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %130, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %119 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %127 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %126, i32 0, i32 16
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %122, %116, %108, %70
  %131 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %132 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %131, i32 0, i32 2
  %133 = bitcast %struct.gs_matrix_fixed_s* %132 to %struct.gs_matrix_s*
  %134 = bitcast %struct.gs_matrix_s* %14 to i8*
  %135 = bitcast %struct.gs_matrix_s* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 96, i1 false)
  %136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sitofp i64 %137 to double
  %139 = fmul double %138, 0x3F30000000000000
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 8
  %142 = load float, float* %141, align 8
  %143 = fsub float %142, %140
  store float %143, float* %141, align 8
  %144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to double
  %147 = fmul double %146, 0x3F30000000000000
  %148 = fptrunc double %147 to float
  %149 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 10
  %150 = load float, float* %149, align 8
  %151 = fsub float %150, %148
  store float %151, float* %149, align 8
  %152 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %153 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %154 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %153, i32 0, i32 3
  %155 = load i16, i16* %154, align 8
  %156 = zext i16 %155 to i32
  %157 = mul nsw i32 %156, 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %160 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %159, i32 0, i32 8
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @gs_imagemask(%struct.gs_state_s* noundef %152, i32 noundef %157, i32 noundef %158, i32 noundef 1, %struct.gs_matrix_s* noundef %14, i8* noundef %161)
  store i32 %162, i32* %11, align 4
  br label %192

163:                                              ; preds = %122
  %164 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %165 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %164, i32 0, i32 22
  %166 = load %struct.device_s*, %struct.device_s** %165, align 8
  %167 = getelementptr inbounds %struct.device_s, %struct.device_s* %166, i32 0, i32 0
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %167, align 8
  store %struct.gx_device_s* %168, %struct.gx_device_s** %15, align 8
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %15, align 8
  %170 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %169, i32 0, i32 1
  %171 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %170, align 8
  %172 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %171, i32 0, i32 9
  %173 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %172, align 8
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %15, align 8
  %175 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %176 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %175, i32 0, i32 8
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %179 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %178, i32 0, i32 3
  %180 = load i16, i16* %179, align 8
  %181 = zext i16 %180 to i32
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %187 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %186, i32 0, i32 14
  %188 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %187, align 8
  %189 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 %173(%struct.gx_device_s* noundef %174, i8* noundef %177, i32 noundef 0, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %185, i64 noundef -1, i64 noundef %190)
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %163, %130
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  br label %198

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ]
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %66, %45
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @gx_color_render(...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
