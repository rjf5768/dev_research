; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxdraw.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_fill_rectangle(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gx_device_color_s*, align 8
  %13 = alloca %struct.gs_state_s*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gx_device_s*, align 8
  %17 = alloca %struct.gx_bitmap_s*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.gx_device_color_s* %4, %struct.gx_device_color_s** %12, align 8
  store %struct.gs_state_s* %5, %struct.gs_state_s** %13, align 8
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 22
  %28 = load %struct.device_s*, %struct.device_s** %27, align 8
  %29 = getelementptr inbounds %struct.device_s, %struct.device_s* %28, i32 0, i32 0
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %29, align 8
  store %struct.gx_device_s* %30, %struct.gx_device_s** %16, align 8
  %31 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %32 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %6
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 1
  %38 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %37, align 8
  %39 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %38, i32 0, i32 7
  %40 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %39, align 8
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i32 %40(%struct.gx_device_s* noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i64 noundef %46)
  store i32 %47, i32* %7, align 4
  br label %177

48:                                               ; preds = %6
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %15, align 8
  %52 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %53 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %52, i32 0, i32 3
  %54 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %53, align 8
  store %struct.gx_bitmap_s* %54, %struct.gx_bitmap_s** %17, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %57 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %142

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %63 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %142

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %69 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %67, %70
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %76 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %66
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %82 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = srem i32 %80, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %88 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %86, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %79
  %92 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %93 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %21, align 4
  %95 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %96 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  store i8* %102, i8** %22, align 8
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %104 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %91
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %109 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 1
  %110 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %109, align 8
  %111 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %110, i32 0, i32 10
  %112 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %111, align 8
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 %112(%struct.gx_device_s* noundef %113, i8* noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %120)
  br label %139

122:                                              ; preds = %91
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 1
  %125 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %124, align 8
  %126 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %125, i32 0, i32 9
  %127 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %126, align 8
  %128 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %129 = load i8*, i8** %22, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call i32 %127(%struct.gx_device_s* noundef %128, i8* noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i64 noundef %136, i64 noundef %137)
  br label %139

139:                                              ; preds = %122, %107
  %140 = phi i32 [ %121, %107 ], [ %138, %122 ]
  store i32 %140, i32* %7, align 4
  br label %177

141:                                              ; preds = %79, %66
  br label %142

142:                                              ; preds = %141, %60, %48
  %143 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %144 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i64 -1, i64* %15, align 8
  store i64 -1, i64* %14, align 8
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %150 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %149, i32 0, i32 1
  %151 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %150, align 8
  %152 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %151, i32 0, i32 8
  %153 = load i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)** %152, align 8
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %155 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %15, align 8
  %162 = call i32 %153(%struct.gx_device_s* noundef %154, %struct.gx_bitmap_s* noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i64 noundef %160, i64 noundef %161)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %148
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %167 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %17, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @gx_default_tile_rectangle(%struct.gx_device_s* noundef %166, %struct.gx_bitmap_s* noundef %167, i32 noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i64 noundef %172, i64 noundef %173)
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %165, %148
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %139, %35
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_tile_rectangle(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca %struct.gx_bitmap_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, align 8
  %30 = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store %struct.gx_bitmap_s* %1, %struct.gx_bitmap_s** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %34 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %10, align 8
  %35 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %10, align 8
  %38 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %18, align 4
  %40 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %10, align 8
  %41 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %17, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  br label %69

65:                                               ; preds = %8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %17, align 4
  %68 = srem i32 %66, %67
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i32 [ %64, %60 ], [ %68, %65 ]
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %18, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %24, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %26, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %25, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %27, align 4
  %80 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %10, align 8
  %81 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* %19, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8* %87, i8** %28, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %69
  %91 = load i64, i64* %16, align 8
  %92 = icmp eq i64 %91, -1
  br label %93

93:                                               ; preds = %90, %69
  %94 = phi i1 [ false, %69 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %31, align 4
  %96 = load i32, i32* %31, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %100 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 1
  %101 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %100, align 8
  %102 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %101, i32 0, i32 10
  %103 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %102, align 8
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* %103, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %30, align 8
  br label %110

104:                                              ; preds = %93
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 1
  %107 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %106, align 8
  %108 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %107, i32 0, i32 9
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %108, align 8
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* %109, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %29, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %26, align 4
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %27, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %33, align 4
  br label %124

124:                                              ; preds = %242, %122
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %247

128:                                              ; preds = %124
  %129 = load i32, i32* %31, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %30, align 8
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %134 = load i8*, i8** %28, align 8
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %33, align 4
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = call i32 %132(%struct.gx_device_s* noundef %133, i8* noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %140)
  br label %155

142:                                              ; preds = %128
  %143 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %29, align 8
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %145 = load i8*, i8** %28, align 8
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %33, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %27, align 4
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* %16, align 8
  %154 = call i32 %143(%struct.gx_device_s* noundef %144, i8* noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %151, i64 noundef %152, i64 noundef %153)
  br label %155

155:                                              ; preds = %142, %131
  %156 = phi i32 [ %141, %131 ], [ %154, %142 ]
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %26, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %32, align 4
  br label %160

160:                                              ; preds = %189, %155
  %161 = load i32, i32* %32, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %160
  %165 = load i32, i32* %31, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %30, align 8
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %170 = load i8*, i8** %28, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %32, align 4
  %173 = load i32, i32* %33, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %27, align 4
  %176 = call i32 %168(%struct.gx_device_s* noundef %169, i8* noundef %170, i32 noundef 0, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174, i32 noundef %175)
  br label %189

177:                                              ; preds = %164
  %178 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %29, align 8
  %179 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %180 = load i8*, i8** %28, align 8
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %32, align 4
  %183 = load i32, i32* %33, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %27, align 4
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %16, align 8
  %188 = call i32 %178(%struct.gx_device_s* noundef %179, i8* noundef %180, i32 noundef 0, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %185, i64 noundef %186, i64 noundef %187)
  br label %189

189:                                              ; preds = %177, %167
  %190 = phi i32 [ %176, %167 ], [ %188, %177 ]
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %32, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %32, align 4
  br label %160, !llvm.loop !4

194:                                              ; preds = %160
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %20, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %194
  %199 = load i32, i32* %31, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %30, align 8
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %204 = load i8*, i8** %28, align 8
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %32, align 4
  %207 = load i32, i32* %33, align 4
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %32, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %27, align 4
  %212 = call i32 %202(%struct.gx_device_s* noundef %203, i8* noundef %204, i32 noundef 0, i32 noundef %205, i32 noundef %206, i32 noundef %207, i32 noundef %210, i32 noundef %211)
  br label %227

213:                                              ; preds = %198
  %214 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %29, align 8
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %216 = load i8*, i8** %28, align 8
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %33, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %32, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* %27, align 4
  %224 = load i64, i64* %15, align 8
  %225 = load i64, i64* %16, align 8
  %226 = call i32 %214(%struct.gx_device_s* noundef %215, i8* noundef %216, i32 noundef 0, i32 noundef %217, i32 noundef %218, i32 noundef %219, i32 noundef %222, i32 noundef %223, i64 noundef %224, i64 noundef %225)
  br label %227

227:                                              ; preds = %213, %201
  %228 = phi i32 [ %212, %201 ], [ %226, %213 ]
  br label %229

229:                                              ; preds = %227, %194
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %33, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %33, align 4
  %233 = load i32, i32* %33, align 4
  %234 = load i32, i32* %23, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* %33, align 4
  %239 = sub nsw i32 %237, %238
  br label %242

240:                                              ; preds = %229
  %241 = load i32, i32* %18, align 4
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi i32 [ %239, %236 ], [ %241, %240 ]
  store i32 %243, i32* %27, align 4
  %244 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %10, align 8
  %245 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %28, align 8
  br label %124, !llvm.loop !6

247:                                              ; preds = %124
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_fill_trapezoid_fixed(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gx_device_color_s*, align 8
  %19 = alloca %struct.gs_state_s*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.gx_device_s*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.gx_device_color_s* %7, %struct.gx_device_color_s** %18, align 8
  store %struct.gs_state_s* %8, %struct.gs_state_s** %19, align 8
  %45 = load i64, i64* %11, align 8
  %46 = ashr i64 %45, 12
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %20, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %21, align 8
  %51 = load i64, i64* %21, align 8
  %52 = add nsw i64 %51, 4095
  %53 = ashr i64 %52, 12
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %20, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %22, align 4
  %57 = load i64, i64* %13, align 8
  %58 = ashr i64 %57, 12
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %23, align 4
  %60 = load i64, i64* %14, align 8
  %61 = ashr i64 %60, 12
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %24, align 4
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %25, align 8
  %66 = load i64, i64* %25, align 8
  %67 = add nsw i64 %66, 4095
  %68 = ashr i64 %67, 12
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %24, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %26, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %16, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %27, align 8
  %75 = load i64, i64* %27, align 8
  %76 = add nsw i64 %75, 4095
  %77 = ashr i64 %76, 12
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %28, align 4
  %79 = load i32, i32* %28, align 4
  %80 = load i32, i32* %23, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %29, align 4
  %82 = load i32, i32* %22, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %9
  %85 = load i32, i32* %26, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84, %9
  %88 = load i32, i32* %29, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84
  store i32 0, i32* %10, align 4
  br label %364

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %91
  %95 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %96 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %101 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %100, i32 0, i32 22
  %102 = load %struct.device_s*, %struct.device_s** %101, align 8
  %103 = getelementptr inbounds %struct.device_s, %struct.device_s* %102, i32 0, i32 0
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %103, align 8
  store %struct.gx_device_s* %104, %struct.gx_device_s** %30, align 8
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %30, align 8
  %106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 1
  %107 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %106, align 8
  %108 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %107, i32 0, i32 12
  %109 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)** %108, align 8
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %30, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %28, align 4
  %116 = load i32, i32* %26, align 4
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %118 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 %109(%struct.gx_device_s* noundef %110, i32 noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef %116, i64 noundef %119)
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %364

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123, %94, %91
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %20, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %35, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %26, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %131, %132
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %40, align 4
  %135 = load i32, i32* %23, align 4
  store i32 %135, i32* %41, align 4
  %136 = load i32, i32* %35, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %124
  %139 = load i32, i32* %35, align 4
  %140 = load i32, i32* %29, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32, i32* %35, align 4
  %144 = load i32, i32* %29, align 4
  %145 = sdiv i32 %143, %144
  store i32 %145, i32* %33, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %34, align 4
  %147 = load i32, i32* %33, align 4
  %148 = load i32, i32* %29, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %35, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %35, align 4
  br label %153

152:                                              ; preds = %138
  store i32 0, i32* %33, align 4
  store i32 1, i32* %34, align 4
  br label %153

153:                                              ; preds = %152, %142
  br label %173

154:                                              ; preds = %124
  %155 = load i32, i32* %35, align 4
  %156 = load i32, i32* %29, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp sle i32 %155, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %29, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* %33, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %34, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %29, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %35, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %35, align 4
  br label %172

169:                                              ; preds = %154
  store i32 0, i32* %33, align 4
  store i32 -1, i32* %34, align 4
  %170 = load i32, i32* %35, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %35, align 4
  br label %172

172:                                              ; preds = %169, %159
  br label %173

173:                                              ; preds = %172, %153
  %174 = load i32, i32* %40, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %173
  %177 = load i32, i32* %40, align 4
  %178 = load i32, i32* %29, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load i32, i32* %40, align 4
  %182 = load i32, i32* %29, align 4
  %183 = sdiv i32 %181, %182
  store i32 %183, i32* %38, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %39, align 4
  %185 = load i32, i32* %38, align 4
  %186 = load i32, i32* %29, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %40, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* %40, align 4
  br label %220

190:                                              ; preds = %176
  %191 = load i32, i32* %33, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load i32, i32* %35, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load i32, i32* %40, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %196
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %23, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %29, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %208 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %209 = call i32 @gz_fill_rectangle(i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, %struct.gx_device_color_s* noundef %207, %struct.gs_state_s* noundef %208)
  br label %218

210:                                              ; preds = %199
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* %29, align 4
  %215 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %216 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %217 = call i32 @gz_fill_rectangle(i32 noundef %211, i32 noundef %212, i32 noundef %213, i32 noundef %214, %struct.gx_device_color_s* noundef %215, %struct.gs_state_s* noundef %216)
  br label %218

218:                                              ; preds = %210, %202
  store i32 0, i32* %10, align 4
  br label %364

219:                                              ; preds = %196, %193, %190
  store i32 0, i32* %38, align 4
  store i32 1, i32* %39, align 4
  br label %220

220:                                              ; preds = %219, %180
  br label %240

221:                                              ; preds = %173
  %222 = load i32, i32* %40, align 4
  %223 = load i32, i32* %29, align 4
  %224 = sub nsw i32 0, %223
  %225 = icmp sle i32 %222, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load i32, i32* %40, align 4
  %228 = load i32, i32* %29, align 4
  %229 = sdiv i32 %227, %228
  store i32 %229, i32* %38, align 4
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %39, align 4
  %231 = load i32, i32* %38, align 4
  %232 = load i32, i32* %29, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %40, align 4
  %235 = sub nsw i32 %233, %234
  store i32 %235, i32* %40, align 4
  br label %239

236:                                              ; preds = %221
  store i32 0, i32* %38, align 4
  store i32 -1, i32* %39, align 4
  %237 = load i32, i32* %40, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %40, align 4
  br label %239

239:                                              ; preds = %236, %226
  br label %240

240:                                              ; preds = %239, %220
  %241 = load i32, i32* %20, align 4
  store i32 %241, i32* %31, align 4
  %242 = load i32, i32* %35, align 4
  %243 = ashr i32 %242, 1
  store i32 %243, i32* %32, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %36, align 4
  %247 = load i32, i32* %40, align 4
  %248 = ashr i32 %247, 1
  store i32 %248, i32* %37, align 4
  %249 = load i32, i32* %31, align 4
  store i32 %249, i32* %42, align 4
  %250 = load i32, i32* %36, align 4
  store i32 %250, i32* %43, align 4
  %251 = load i32, i32* %41, align 4
  store i32 %251, i32* %44, align 4
  br label %252

252:                                              ; preds = %326, %240
  %253 = load i32, i32* %31, align 4
  %254 = load i32, i32* %42, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* %36, align 4
  %258 = load i32, i32* %43, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %291

260:                                              ; preds = %256, %252
  %261 = load i32, i32* %17, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %260
  %264 = load i32, i32* %44, align 4
  %265 = load i32, i32* %42, align 4
  %266 = load i32, i32* %41, align 4
  %267 = load i32, i32* %44, align 4
  %268 = sub nsw i32 %266, %267
  %269 = load i32, i32* %43, align 4
  %270 = load i32, i32* %42, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %273 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %274 = call i32 @gz_fill_rectangle(i32 noundef %264, i32 noundef %265, i32 noundef %268, i32 noundef %271, %struct.gx_device_color_s* noundef %272, %struct.gs_state_s* noundef %273)
  br label %287

275:                                              ; preds = %260
  %276 = load i32, i32* %42, align 4
  %277 = load i32, i32* %44, align 4
  %278 = load i32, i32* %43, align 4
  %279 = load i32, i32* %42, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load i32, i32* %41, align 4
  %282 = load i32, i32* %44, align 4
  %283 = sub nsw i32 %281, %282
  %284 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %285 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %286 = call i32 @gz_fill_rectangle(i32 noundef %276, i32 noundef %277, i32 noundef %280, i32 noundef %283, %struct.gx_device_color_s* noundef %284, %struct.gs_state_s* noundef %285)
  br label %287

287:                                              ; preds = %275, %263
  %288 = load i32, i32* %31, align 4
  store i32 %288, i32* %42, align 4
  %289 = load i32, i32* %36, align 4
  store i32 %289, i32* %43, align 4
  %290 = load i32, i32* %41, align 4
  store i32 %290, i32* %44, align 4
  br label %291

291:                                              ; preds = %287, %256
  %292 = load i32, i32* %35, align 4
  %293 = load i32, i32* %32, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %32, align 4
  %295 = load i32, i32* %29, align 4
  %296 = icmp sge i32 %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %291
  %298 = load i32, i32* %29, align 4
  %299 = load i32, i32* %32, align 4
  %300 = sub nsw i32 %299, %298
  store i32 %300, i32* %32, align 4
  %301 = load i32, i32* %34, align 4
  %302 = load i32, i32* %31, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %31, align 4
  br label %308

304:                                              ; preds = %291
  %305 = load i32, i32* %33, align 4
  %306 = load i32, i32* %31, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %31, align 4
  br label %308

308:                                              ; preds = %304, %297
  %309 = load i32, i32* %40, align 4
  %310 = load i32, i32* %37, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %37, align 4
  %312 = load i32, i32* %29, align 4
  %313 = icmp sge i32 %311, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %308
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %37, align 4
  %317 = sub nsw i32 %316, %315
  store i32 %317, i32* %37, align 4
  %318 = load i32, i32* %39, align 4
  %319 = load i32, i32* %36, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %36, align 4
  br label %325

321:                                              ; preds = %308
  %322 = load i32, i32* %38, align 4
  %323 = load i32, i32* %36, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %36, align 4
  br label %325

325:                                              ; preds = %321, %314
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %41, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %41, align 4
  %329 = load i32, i32* %28, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %252, label %331, !llvm.loop !7

331:                                              ; preds = %326
  %332 = load i32, i32* %41, align 4
  %333 = load i32, i32* %44, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %363

335:                                              ; preds = %331
  %336 = load i32, i32* %17, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %335
  %339 = load i32, i32* %44, align 4
  %340 = load i32, i32* %42, align 4
  %341 = load i32, i32* %41, align 4
  %342 = load i32, i32* %44, align 4
  %343 = sub nsw i32 %341, %342
  %344 = load i32, i32* %43, align 4
  %345 = load i32, i32* %42, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %348 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %349 = call i32 @gz_fill_rectangle(i32 noundef %339, i32 noundef %340, i32 noundef %343, i32 noundef %346, %struct.gx_device_color_s* noundef %347, %struct.gs_state_s* noundef %348)
  br label %362

350:                                              ; preds = %335
  %351 = load i32, i32* %42, align 4
  %352 = load i32, i32* %44, align 4
  %353 = load i32, i32* %43, align 4
  %354 = load i32, i32* %42, align 4
  %355 = sub nsw i32 %353, %354
  %356 = load i32, i32* %41, align 4
  %357 = load i32, i32* %44, align 4
  %358 = sub nsw i32 %356, %357
  %359 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %18, align 8
  %360 = load %struct.gs_state_s*, %struct.gs_state_s** %19, align 8
  %361 = call i32 @gz_fill_rectangle(i32 noundef %351, i32 noundef %352, i32 noundef %355, i32 noundef %358, %struct.gx_device_color_s* noundef %359, %struct.gs_state_s* noundef %360)
  br label %362

362:                                              ; preds = %350, %338
  br label %363

363:                                              ; preds = %362, %331
  store i32 0, i32* %10, align 4
  br label %364

364:                                              ; preds = %363, %218, %122, %90
  %365 = load i32, i32* %10, align 4
  ret i32 %365
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_draw_line_fixed(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gx_device_color_s*, align 8
  %13 = alloca %struct.gs_state_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gx_device_s*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.gx_device_color_s* %4, %struct.gx_device_color_s** %12, align 8
  store %struct.gs_state_s* %5, %struct.gs_state_s** %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = ashr i64 %22, 12
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %9, align 8
  %26 = ashr i64 %25, 12
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load i64, i64* %10, align 8
  %29 = ashr i64 %28, 12
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i64, i64* %11, align 8
  %32 = ashr i64 %31, 12
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %6
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, 4095
  %46 = ashr i64 %45, 12
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %52 = call i32 @gz_fill_rectangle(i32 noundef %42, i32 noundef %43, i32 noundef %49, i32 noundef 1, %struct.gx_device_color_s* noundef %50, %struct.gs_state_s* noundef %51)
  br label %65

53:                                               ; preds = %37
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, 4095
  %58 = ashr i64 %57, 12
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %64 = call i32 @gz_fill_rectangle(i32 noundef %54, i32 noundef %55, i32 noundef %61, i32 noundef 1, %struct.gx_device_color_s* noundef %62, %struct.gs_state_s* noundef %63)
  br label %65

65:                                               ; preds = %53, %41
  br label %160

66:                                               ; preds = %6
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 22
  %69 = load %struct.device_s*, %struct.device_s** %68, align 8
  %70 = getelementptr inbounds %struct.device_s, %struct.device_s* %69, i32 0, i32 0
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %70, align 8
  store %struct.gx_device_s* %71, %struct.gx_device_s** %18, align 8
  %72 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %73 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %66
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %18, align 8
  %78 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 1
  %79 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %78, align 8
  %80 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %79, i32 0, i32 11
  %81 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %80, align 8
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %18, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %88 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 %81(%struct.gx_device_s* noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %86, i64 noundef %89)
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %161

93:                                               ; preds = %76, %66
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub nsw i64 %97, %98
  store i64 %99, i64* %20, align 8
  %100 = load i64, i64* %20, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i64, i64* %20, align 8
  %104 = sub nsw i64 0, %103
  br label %107

105:                                              ; preds = %93
  %106 = load i64, i64* %20, align 8
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i64 [ %104, %102 ], [ %106, %105 ]
  %109 = load i64, i64* %19, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i64, i64* %19, align 8
  %113 = sub nsw i64 0, %112
  br label %116

114:                                              ; preds = %107
  %115 = load i64, i64* %19, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i64 [ %113, %111 ], [ %115, %114 ]
  %118 = icmp sle i64 %108, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load i64, i64* %19, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %21, align 8
  %124 = load i64, i64* %10, align 8
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %21, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  store i64 %126, i64* %21, align 8
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %21, align 8
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %19, align 8
  %130 = sub nsw i64 0, %129
  store i64 %130, i64* %19, align 8
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %137 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %138 = call i32 @gz_fill_trapezoid_fixed(i64 noundef %132, i64 noundef 1, i64 noundef %133, i64 noundef %134, i64 noundef 1, i64 noundef %135, i32 noundef 0, %struct.gx_device_color_s* noundef %136, %struct.gs_state_s* noundef %137)
  br label %159

139:                                              ; preds = %116
  %140 = load i64, i64* %20, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %21, align 8
  %144 = load i64, i64* %10, align 8
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %21, align 8
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %9, align 8
  store i64 %146, i64* %21, align 8
  %147 = load i64, i64* %11, align 8
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %21, align 8
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %20, align 8
  %150 = sub nsw i64 0, %149
  store i64 %150, i64* %20, align 8
  br label %151

151:                                              ; preds = %142, %139
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %12, align 8
  %157 = load %struct.gs_state_s*, %struct.gs_state_s** %13, align 8
  %158 = call i32 @gz_fill_trapezoid_fixed(i64 noundef %152, i64 noundef 1, i64 noundef %153, i64 noundef %154, i64 noundef 1, i64 noundef %155, i32 noundef 1, %struct.gx_device_color_s* noundef %156, %struct.gs_state_s* noundef %157)
  br label %159

159:                                              ; preds = %151, %131
  br label %160

160:                                              ; preds = %159, %65
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %92
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_draw_line(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
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
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_fill_trapezoid(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) #0 {
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
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_tile_trapezoid(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
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
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_tile_trapezoid_color(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca %struct.gx_bitmap_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store %struct.gx_bitmap_s* %1, %struct.gx_bitmap_s** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  ret i32 -1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
