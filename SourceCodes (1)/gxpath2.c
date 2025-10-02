; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@scaled_flat = internal global i64 0, align 8
@scaled_flat_sq = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_current_point(%struct.gx_path_s* noundef %0, %struct.gs_fixed_point_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store %struct.gs_fixed_point_s* %1, %struct.gs_fixed_point_s** %5, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 10
  %8 = load i8, i8* %7, align 8
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -14, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %5, align 8
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %5, align 8
  %23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_bbox(%struct.gx_path_s* noundef %0, %struct.gs_fixed_rect_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca %struct.gs_fixed_rect_s*, align 8
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  %7 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store %struct.gs_fixed_rect_s* %1, %struct.gs_fixed_rect_s** %5, align 8
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 4
  %10 = load %struct.subpath*, %struct.subpath** %9, align 8
  %11 = icmp eq %struct.subpath* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %16 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %13, %struct.gs_fixed_point_s* noundef %15)
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %18 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %18, i32 0, i32 1
  %20 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %17, %struct.gs_fixed_point_s* noundef %19)
  store i32 %20, i32* %3, align 4
  br label %316

21:                                               ; preds = %2
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 2
  %24 = load %struct.segment_s*, %struct.segment_s** %23, align 8
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 5
  %27 = load %struct.subpath*, %struct.subpath** %26, align 8
  %28 = getelementptr inbounds %struct.subpath, %struct.subpath* %27, i32 0, i32 4
  %29 = load %struct.segment_s*, %struct.segment_s** %28, align 8
  %30 = icmp eq %struct.segment_s* %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %34 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 1
  %35 = bitcast %struct.gs_fixed_rect_s* %32 to i8*
  %36 = bitcast %struct.gs_fixed_rect_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 32, i1 false)
  br label %315

37:                                               ; preds = %21
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %39 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 2
  %40 = load %struct.segment_s*, %struct.segment_s** %39, align 8
  store %struct.segment_s* %40, %struct.segment_s** %7, align 8
  %41 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %42 = icmp eq %struct.segment_s* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %45 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %44, i32 0, i32 4
  %46 = load %struct.subpath*, %struct.subpath** %45, align 8
  %47 = bitcast %struct.subpath* %46 to %struct.segment_s*
  store %struct.segment_s* %47, %struct.segment_s** %7, align 8
  %48 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  br label %72

64:                                               ; preds = %37
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %66 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %65, i32 0, i32 1
  %67 = bitcast %struct.gs_fixed_rect_s* %6 to i8*
  %68 = bitcast %struct.gs_fixed_rect_s* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %70 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %69, i32 0, i32 1
  %71 = load %struct.segment_s*, %struct.segment_s** %70, align 8
  store %struct.segment_s* %71, %struct.segment_s** %7, align 8
  br label %72

72:                                               ; preds = %64, %43
  br label %73

73:                                               ; preds = %296, %72
  %74 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %75 = icmp ne %struct.segment_s* %74, null
  br i1 %75, label %76, label %300

76:                                               ; preds = %73
  %77 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %78 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %229 [
    i32 3, label %80
  ]

80:                                               ; preds = %76
  %81 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %82 = bitcast %struct.segment_s* %81 to %struct.curve_segment*
  %83 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %92 = bitcast %struct.segment_s* %91 to %struct.curve_segment*
  %93 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %117

98:                                               ; preds = %80
  %99 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %100 = bitcast %struct.segment_s* %99 to %struct.curve_segment*
  %101 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %110 = bitcast %struct.segment_s* %109 to %struct.curve_segment*
  %111 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %116, %90
  %118 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %119 = bitcast %struct.segment_s* %118 to %struct.curve_segment*
  %120 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %129 = bitcast %struct.segment_s* %128 to %struct.curve_segment*
  %130 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %154

135:                                              ; preds = %117
  %136 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %137 = bitcast %struct.segment_s* %136 to %struct.curve_segment*
  %138 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %135
  %146 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %147 = bitcast %struct.segment_s* %146 to %struct.curve_segment*
  %148 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %145, %135
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %156 = bitcast %struct.segment_s* %155 to %struct.curve_segment*
  %157 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %154
  %165 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %166 = bitcast %struct.segment_s* %165 to %struct.curve_segment*
  %167 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  br label %191

172:                                              ; preds = %154
  %173 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %174 = bitcast %struct.segment_s* %173 to %struct.curve_segment*
  %175 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %172
  %183 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %184 = bitcast %struct.segment_s* %183 to %struct.curve_segment*
  %185 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %182, %172
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %193 = bitcast %struct.segment_s* %192 to %struct.curve_segment*
  %194 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %191
  %202 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %203 = bitcast %struct.segment_s* %202 to %struct.curve_segment*
  %204 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %208 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  br label %228

209:                                              ; preds = %191
  %210 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %211 = bitcast %struct.segment_s* %210 to %struct.curve_segment*
  %212 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %216 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %214, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %209
  %220 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %221 = bitcast %struct.segment_s* %220 to %struct.curve_segment*
  %222 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %226 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %219, %209
  br label %228

228:                                              ; preds = %227, %201
  br label %229

229:                                              ; preds = %76, %228
  %230 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %231 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %235 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %240 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %262

245:                                              ; preds = %229
  %246 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %247 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %251 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %249, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %245
  %255 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %256 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %260 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  br label %261

261:                                              ; preds = %254, %245
  br label %262

262:                                              ; preds = %261, %238
  %263 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %264 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %268 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp slt i64 %266, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %262
  %272 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %273 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %276, i32 0, i32 1
  store i64 %275, i64* %277, align 8
  br label %295

278:                                              ; preds = %262
  %279 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %280 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %284 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp sgt i64 %282, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %278
  %288 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %289 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 1
  %293 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %292, i32 0, i32 1
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %287, %278
  br label %295

295:                                              ; preds = %294, %271
  br label %296

296:                                              ; preds = %295
  %297 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %298 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %297, i32 0, i32 1
  %299 = load %struct.segment_s*, %struct.segment_s** %298, align 8
  store %struct.segment_s* %299, %struct.segment_s** %7, align 8
  br label %73, !llvm.loop !4

300:                                              ; preds = %73
  %301 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %302 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %301, i32 0, i32 1
  %303 = bitcast %struct.gs_fixed_rect_s* %302 to i8*
  %304 = bitcast %struct.gs_fixed_rect_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 32, i1 false)
  %305 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %306 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %305, i32 0, i32 5
  %307 = load %struct.subpath*, %struct.subpath** %306, align 8
  %308 = getelementptr inbounds %struct.subpath, %struct.subpath* %307, i32 0, i32 4
  %309 = load %struct.segment_s*, %struct.segment_s** %308, align 8
  %310 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %311 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %310, i32 0, i32 2
  store %struct.segment_s* %309, %struct.segment_s** %311, align 8
  %312 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %313 = bitcast %struct.gs_fixed_rect_s* %312 to i8*
  %314 = bitcast %struct.gs_fixed_rect_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %313, i8* align 8 %314, i64 32, i1 false)
  br label %315

315:                                              ; preds = %300, %31
  store i32 0, i32* %3, align 4
  br label %316

316:                                              ; preds = %315, %12
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_has_curves(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %2, align 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_is_void(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %2, align 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_is_rectangle(%struct.gx_path_s* noundef %0, %struct.gs_fixed_rect_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca %struct.gs_fixed_rect_s*, align 8
  %6 = alloca %struct.subpath*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.segment_s*, align 8
  %10 = alloca %struct.segment_s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store %struct.gs_fixed_rect_s* %1, %struct.gs_fixed_rect_s** %5, align 8
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %164

18:                                               ; preds = %2
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %164

23:                                               ; preds = %18
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %164

28:                                               ; preds = %23
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %29, i32 0, i32 4
  %31 = load %struct.subpath*, %struct.subpath** %30, align 8
  store %struct.subpath* %31, %struct.subpath** %6, align 8
  %32 = getelementptr inbounds %struct.subpath, %struct.subpath* %31, i32 0, i32 4
  %33 = load %struct.segment_s*, %struct.segment_s** %32, align 8
  %34 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %164

37:                                               ; preds = %28
  %38 = load %struct.subpath*, %struct.subpath** %6, align 8
  %39 = getelementptr inbounds %struct.subpath, %struct.subpath* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.subpath*, %struct.subpath** %6, align 8
  %43 = getelementptr inbounds %struct.subpath, %struct.subpath* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.subpath*, %struct.subpath** %6, align 8
  %47 = getelementptr inbounds %struct.subpath, %struct.subpath* %46, i32 0, i32 1
  %48 = load %struct.segment_s*, %struct.segment_s** %47, align 8
  store %struct.segment_s* %48, %struct.segment_s** %9, align 8
  %49 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %50 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %49, i32 0, i32 1
  %51 = load %struct.segment_s*, %struct.segment_s** %50, align 8
  store %struct.segment_s* %51, %struct.segment_s** %10, align 8
  %52 = load %struct.segment_s*, %struct.segment_s** %10, align 8
  %53 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %11, align 8
  %56 = load %struct.segment_s*, %struct.segment_s** %10, align 8
  %57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  %60 = load %struct.segment_s*, %struct.segment_s** %10, align 8
  %61 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %60, i32 0, i32 1
  %62 = load %struct.segment_s*, %struct.segment_s** %61, align 8
  store %struct.segment_s* %62, %struct.segment_s** %13, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %65 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %37
  %70 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %71 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  %79 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  %85 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %118, label %90

90:                                               ; preds = %83, %76, %69, %37
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  %93 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %163

97:                                               ; preds = %90
  %98 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  %99 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %97
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %107 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %163

111:                                              ; preds = %104
  %112 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %113 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %111, %83
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %125 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  br label %140

131:                                              ; preds = %118
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %134 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %138 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %131, %122
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %12, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %147 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %151, i32 0, i32 1
  store i64 %149, i64* %152, align 8
  br label %162

153:                                              ; preds = %140
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %156 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %156, i32 0, i32 1
  store i64 %154, i64* %157, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %5, align 8
  %160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %144
  store i32 1, i32* %3, align 4
  br label %165

163:                                              ; preds = %111, %104, %97, %90
  br label %164

164:                                              ; preds = %163, %28, %23, %18, %2
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %162
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_cpath_box_for_check(%struct.gx_path_s* noundef %0, %struct.gs_fixed_rect_s* noundef %1) #0 {
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  store %struct.gs_fixed_rect_s* %1, %struct.gs_fixed_rect_s** %4, align 8
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %4, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 3
  %8 = bitcast %struct.gs_fixed_rect_s* %5 to i8*
  %9 = bitcast %struct.gs_fixed_rect_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_cpath_includes_rectangle(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.gx_path_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %14
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %23, %28
  br i1 %29, label %46, label %91

30:                                               ; preds = %5
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %41 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %39, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %38, %22
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %52 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %61 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %59, %64
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i1 [ false, %50 ], [ %65, %58 ]
  %68 = zext i1 %67 to i32
  br label %88

69:                                               ; preds = %46
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %71 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %80 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %78, %83
  br label %85

85:                                               ; preds = %77, %69
  %86 = phi i1 [ false, %69 ], [ %84, %77 ]
  %87 = zext i1 %86 to i32
  br label %88

88:                                               ; preds = %85, %66
  %89 = phi i32 [ %68, %66 ], [ %87, %85 ]
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %88, %38, %30, %22, %14
  %92 = phi i1 [ false, %38 ], [ false, %30 ], [ false, %22 ], [ false, %14 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  ret i32 %93
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1) #0 {
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %4, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %7 = call i32 @copy_path(%struct.gx_path_s* noundef %5, %struct.gx_path_s* noundef %6, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* noundef @gx_path_add_curve)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @copy_path(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_path_s*, align 8
  %6 = alloca %struct.gx_path_s*, align 8
  %7 = alloca i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)*, align 8
  %8 = alloca %struct.gx_path_s, align 8
  %9 = alloca %struct.segment_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.curve_segment*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %5, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %6, align 8
  store i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* %2, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)** %7, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %13 = bitcast %struct.gx_path_s* %8 to i8*
  %14 = bitcast %struct.gx_path_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 144, i1 false)
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 0
  call void @gx_path_init(%struct.gx_path_s* noundef %15, %struct.gs_memory_procs* noundef %17)
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 4
  %19 = load %struct.subpath*, %struct.subpath** %18, align 8
  %20 = bitcast %struct.subpath* %19 to %struct.segment_s*
  store %struct.segment_s* %20, %struct.segment_s** %9, align 8
  br label %21

21:                                               ; preds = %97, %3
  %22 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %23 = icmp ne %struct.segment_s* %22, null
  br i1 %23, label %24, label %101

24:                                               ; preds = %21
  %25 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %83 [
    i32 0, label %28
    i32 3, label %39
    i32 1, label %69
    i32 2, label %80
  ]

28:                                               ; preds = %24
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %30 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %31 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %35 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %29, i64 noundef %33, i64 noundef %37)
  store i32 %38, i32* %10, align 4
  br label %83

39:                                               ; preds = %24
  %40 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %41 = bitcast %struct.segment_s* %40 to %struct.curve_segment*
  store %struct.curve_segment* %41, %struct.curve_segment** %11, align 8
  %42 = load i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)** %7, align 8
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %44 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %45 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %49 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %53 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %57 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %61 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.curve_segment*, %struct.curve_segment** %11, align 8
  %65 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 %42(%struct.gx_path_s* noundef %43, i64 noundef %47, i64 noundef %51, i64 noundef %55, i64 noundef %59, i64 noundef %63, i64 noundef %67)
  store i32 %68, i32* %10, align 4
  br label %83

69:                                               ; preds = %24
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %71 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %72 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %76 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %70, i64 noundef %74, i64 noundef %78)
  store i32 %79, i32* %10, align 4
  br label %83

80:                                               ; preds = %24
  %81 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %82 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %24, %80, %69, %39, %28
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %87)
  %88 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %89 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %90 = icmp eq %struct.gx_path_s* %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %93 = bitcast %struct.gx_path_s* %92 to i8*
  %94 = bitcast %struct.gx_path_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 144, i1 false)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %107

97:                                               ; preds = %83
  %98 = load %struct.segment_s*, %struct.segment_s** %9, align 8
  %99 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %98, i32 0, i32 1
  %100 = load %struct.segment_s*, %struct.segment_s** %99, align 8
  store %struct.segment_s* %100, %struct.segment_s** %9, align 8
  br label %21, !llvm.loop !6

101:                                              ; preds = %21
  %102 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %103 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 9
  %105 = bitcast %struct.gs_fixed_point_s* %103 to i8*
  %106 = bitcast %struct.gs_fixed_point_s* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_merge(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1) #0 {
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca %struct.subpath*, align 8
  %6 = alloca %struct.subpath*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %4, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %9 = load %struct.subpath*, %struct.subpath** %8, align 8
  store %struct.subpath* %9, %struct.subpath** %5, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 5
  %12 = load %struct.subpath*, %struct.subpath** %11, align 8
  store %struct.subpath* %12, %struct.subpath** %6, align 8
  %13 = load %struct.subpath*, %struct.subpath** %6, align 8
  %14 = icmp ne %struct.subpath* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.subpath*, %struct.subpath** %5, align 8
  %17 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i32 0, i32 4
  %18 = load %struct.segment_s*, %struct.segment_s** %17, align 8
  %19 = load %struct.subpath*, %struct.subpath** %6, align 8
  %20 = getelementptr inbounds %struct.subpath, %struct.subpath* %19, i32 0, i32 4
  %21 = load %struct.segment_s*, %struct.segment_s** %20, align 8
  %22 = icmp ne %struct.segment_s* %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %24)
  br label %25

25:                                               ; preds = %23, %15, %2
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %28 = bitcast %struct.gx_path_s* %26 to i8*
  %29 = bitcast %struct.gx_path_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 144, i1 false)
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %31 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %30, i32 0, i32 12
  store i8 1, i8* %31, align 2
  ret i32 0
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_translate(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.segment_s*, align 8
  %8 = alloca %struct.curve_segment*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %9
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %16
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %23
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %30
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %39 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %45 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %43
  store i64 %48, i64* %46, align 8
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %50 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %49, i32 0, i32 4
  %51 = load %struct.subpath*, %struct.subpath** %50, align 8
  %52 = bitcast %struct.subpath* %51 to %struct.segment_s*
  store %struct.segment_s* %52, %struct.segment_s** %7, align 8
  br label %53

53:                                               ; preds = %100, %3
  %54 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %55 = icmp ne %struct.segment_s* %54, null
  br i1 %55, label %56, label %104

56:                                               ; preds = %53
  %57 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %58 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %87 [
    i32 3, label %60
  ]

60:                                               ; preds = %56
  %61 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %62 = bitcast %struct.segment_s* %61 to %struct.curve_segment*
  store %struct.curve_segment* %62, %struct.curve_segment** %8, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.curve_segment*, %struct.curve_segment** %8, align 8
  %65 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.curve_segment*, %struct.curve_segment** %8, align 8
  %71 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %69
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.curve_segment*, %struct.curve_segment** %8, align 8
  %77 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %75
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.curve_segment*, %struct.curve_segment** %8, align 8
  %83 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %81
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %56, %60
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %90 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %88
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %96 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %94
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load %struct.segment_s*, %struct.segment_s** %7, align 8
  %102 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %101, i32 0, i32 1
  %103 = load %struct.segment_s*, %struct.segment_s** %102, align 8
  store %struct.segment_s* %103, %struct.segment_s** %7, align 8
  br label %53, !llvm.loop !7

104:                                              ; preds = %53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_flatten(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca %struct.gx_path_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store %struct.gx_path_s* %1, %struct.gx_path_s** %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = fmul double %8, 4.096000e+03
  %10 = fptrunc double %9 to float
  store float %10, float* %7, align 4
  %11 = load float, float* %7, align 4
  %12 = fptosi float %11 to i64
  store i64 %12, i64* @scaled_flat, align 8
  %13 = load float, float* %7, align 4
  %14 = fpext float %13 to double
  %15 = fmul double %14, 4.500000e-01
  %16 = fptrunc double %15 to float
  store float %16, float* @scaled_flat_sq, align 4
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %19 = call i32 @copy_path(%struct.gx_path_s* noundef %17, %struct.gx_path_s* noundef %18, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* noundef @flatten_curve)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flatten_curve(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gx_path_s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.gx_path_s* %0, %struct.gx_path_s** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %31 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %35 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %17, align 8
  br label %38

38:                                               ; preds = %253, %7
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %16, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %17, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %19, align 8
  %45 = load i64, i64* %18, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i64, i64* %18, align 8
  %49 = sub nsw i64 0, %48
  br label %52

50:                                               ; preds = %38
  %51 = load i64, i64* %18, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  %54 = load i64, i64* %19, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %19, align 8
  %58 = sub nsw i64 0, %57
  br label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %19, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i64 [ %58, %56 ], [ %60, %59 ]
  %63 = icmp sge i64 %53, %62
  br i1 %63, label %64, label %131

64:                                               ; preds = %61
  %65 = load i64, i64* %18, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %254

68:                                               ; preds = %64
  %69 = load i64, i64* %19, align 8
  %70 = sitofp i64 %69 to float
  %71 = load i64, i64* %18, align 8
  %72 = sitofp i64 %71 to float
  %73 = fdiv float %70, %72
  store float %73, float* %20, align 4
  %74 = load float, float* %20, align 4
  %75 = load float, float* %20, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* @scaled_flat_sq, align 4
  %78 = fmul float %76, %77
  %79 = fptosi float %78 to i64
  %80 = load i64, i64* @scaled_flat, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %21, align 8
  %82 = load float, float* %20, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %16, align 8
  %85 = sub nsw i64 %83, %84
  %86 = sitofp i64 %85 to float
  %87 = fmul float %82, %86
  %88 = fptosi float %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* %17, align 8
  %92 = add nsw i64 %90, %91
  store i64 %92, i64* %22, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %68
  %95 = load i64, i64* %22, align 8
  %96 = sub nsw i64 0, %95
  br label %99

97:                                               ; preds = %68
  %98 = load i64, i64* %22, align 8
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %96, %94 ], [ %98, %97 ]
  %101 = load i64, i64* %21, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load float, float* %20, align 4
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %16, align 8
  %107 = sub nsw i64 %105, %106
  %108 = sitofp i64 %107 to float
  %109 = fmul float %104, %108
  %110 = fptosi float %109 to i64
  %111 = load i64, i64* %13, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load i64, i64* %17, align 8
  %114 = add nsw i64 %112, %113
  store i64 %114, i64* %22, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load i64, i64* %22, align 8
  %118 = sub nsw i64 0, %117
  br label %121

119:                                              ; preds = %103
  %120 = load i64, i64* %22, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i64 [ %118, %116 ], [ %120, %119 ]
  %123 = load i64, i64* %21, align 8
  %124 = icmp sle i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %126, i64 noundef %127, i64 noundef %128)
  store i32 %129, i32* %8, align 4
  br label %254

130:                                              ; preds = %121, %99
  br label %194

131:                                              ; preds = %61
  %132 = load i64, i64* %18, align 8
  %133 = sitofp i64 %132 to float
  %134 = load i64, i64* %19, align 8
  %135 = sitofp i64 %134 to float
  %136 = fdiv float %133, %135
  store float %136, float* %20, align 4
  %137 = load float, float* %20, align 4
  %138 = load float, float* %20, align 4
  %139 = fmul float %137, %138
  %140 = load float, float* @scaled_flat_sq, align 4
  %141 = fmul float %139, %140
  %142 = fptosi float %141 to i64
  %143 = load i64, i64* @scaled_flat, align 8
  %144 = add nsw i64 %142, %143
  store i64 %144, i64* %21, align 8
  %145 = load float, float* %20, align 4
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %17, align 8
  %148 = sub nsw i64 %146, %147
  %149 = sitofp i64 %148 to float
  %150 = fmul float %145, %149
  %151 = fptosi float %150 to i64
  %152 = load i64, i64* %10, align 8
  %153 = sub nsw i64 %151, %152
  %154 = load i64, i64* %16, align 8
  %155 = add nsw i64 %153, %154
  store i64 %155, i64* %22, align 8
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %131
  %158 = load i64, i64* %22, align 8
  %159 = sub nsw i64 0, %158
  br label %162

160:                                              ; preds = %131
  %161 = load i64, i64* %22, align 8
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi i64 [ %159, %157 ], [ %161, %160 ]
  %164 = load i64, i64* %21, align 8
  %165 = icmp sle i64 %163, %164
  br i1 %165, label %166, label %193

166:                                              ; preds = %162
  %167 = load float, float* %20, align 4
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %17, align 8
  %170 = sub nsw i64 %168, %169
  %171 = sitofp i64 %170 to float
  %172 = fmul float %167, %171
  %173 = fptosi float %172 to i64
  %174 = load i64, i64* %12, align 8
  %175 = sub nsw i64 %173, %174
  %176 = load i64, i64* %16, align 8
  %177 = add nsw i64 %175, %176
  store i64 %177, i64* %22, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %166
  %180 = load i64, i64* %22, align 8
  %181 = sub nsw i64 0, %180
  br label %184

182:                                              ; preds = %166
  %183 = load i64, i64* %22, align 8
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i64 [ %181, %179 ], [ %183, %182 ]
  %186 = load i64, i64* %21, align 8
  %187 = icmp sle i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %189, i64 noundef %190, i64 noundef %191)
  store i32 %192, i32* %8, align 4
  br label %254

193:                                              ; preds = %184, %162
  br label %194

194:                                              ; preds = %193, %130
  %195 = load i64, i64* %16, align 8
  %196 = load i64, i64* %10, align 8
  %197 = add nsw i64 %195, %196
  %198 = ashr i64 %197, 1
  store i64 %198, i64* %23, align 8
  %199 = load i64, i64* %17, align 8
  %200 = load i64, i64* %11, align 8
  %201 = add nsw i64 %199, %200
  %202 = ashr i64 %201, 1
  store i64 %202, i64* %24, align 8
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* %12, align 8
  %205 = add nsw i64 %203, %204
  %206 = ashr i64 %205, 1
  store i64 %206, i64* %25, align 8
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* %13, align 8
  %209 = add nsw i64 %207, %208
  %210 = ashr i64 %209, 1
  store i64 %210, i64* %26, align 8
  %211 = load i64, i64* %23, align 8
  %212 = load i64, i64* %25, align 8
  %213 = add nsw i64 %211, %212
  %214 = ashr i64 %213, 1
  store i64 %214, i64* %27, align 8
  %215 = load i64, i64* %24, align 8
  %216 = load i64, i64* %26, align 8
  %217 = add nsw i64 %215, %216
  %218 = ashr i64 %217, 1
  store i64 %218, i64* %28, align 8
  %219 = load i64, i64* %12, align 8
  %220 = load i64, i64* %14, align 8
  %221 = add nsw i64 %219, %220
  %222 = ashr i64 %221, 1
  store i64 %222, i64* %12, align 8
  %223 = load i64, i64* %13, align 8
  %224 = load i64, i64* %15, align 8
  %225 = add nsw i64 %223, %224
  %226 = ashr i64 %225, 1
  store i64 %226, i64* %13, align 8
  %227 = load i64, i64* %25, align 8
  %228 = load i64, i64* %12, align 8
  %229 = add nsw i64 %227, %228
  %230 = ashr i64 %229, 1
  store i64 %230, i64* %10, align 8
  %231 = load i64, i64* %26, align 8
  %232 = load i64, i64* %13, align 8
  %233 = add nsw i64 %231, %232
  %234 = ashr i64 %233, 1
  store i64 %234, i64* %11, align 8
  %235 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %236 = load i64, i64* %23, align 8
  %237 = load i64, i64* %24, align 8
  %238 = load i64, i64* %27, align 8
  %239 = load i64, i64* %28, align 8
  %240 = load i64, i64* %27, align 8
  %241 = load i64, i64* %10, align 8
  %242 = add nsw i64 %240, %241
  %243 = ashr i64 %242, 1
  store i64 %243, i64* %16, align 8
  %244 = load i64, i64* %28, align 8
  %245 = load i64, i64* %11, align 8
  %246 = add nsw i64 %244, %245
  %247 = ashr i64 %246, 1
  store i64 %247, i64* %17, align 8
  %248 = call i32 @flatten_curve(%struct.gx_path_s* noundef %235, i64 noundef %236, i64 noundef %237, i64 noundef %238, i64 noundef %239, i64 noundef %243, i64 noundef %247)
  store i32 %248, i32* %29, align 4
  %249 = load i32, i32* %29, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %194
  %252 = load i32, i32* %29, align 4
  store i32 %252, i32* %8, align 4
  br label %254

253:                                              ; preds = %194
  br label %38

254:                                              ; preds = %251, %188, %125, %67
  %255 = load i32, i32* %8, align 4
  ret i32 %255
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #2

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
