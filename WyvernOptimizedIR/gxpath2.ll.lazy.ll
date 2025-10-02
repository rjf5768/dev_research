; ModuleID = './gxpath2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }

@scaled_flat = internal global i64 0, align 8
@scaled_flat_sq = internal global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gx_path_current_point(%struct.gx_path_s* nocapture noundef readonly %0, %struct.gs_fixed_point_s* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 10
  %4 = load i8, i8* %3, align 8
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i64 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i64 0, i32 1
  store i64 %11, i64* %12, align 8
  br label %13

13:                                               ; preds = %6, %5
  %.0 = phi i32 [ 0, %6 ], [ -14, %5 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @gx_path_bbox(%struct.gx_path_s* nocapture noundef %0, %struct.gs_fixed_rect_s* nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.gs_fixed_rect_s, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %5 = load %struct.subpath*, %struct.subpath** %4, align 8
  %6 = icmp eq %struct.subpath* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 0
  %9 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %0, %struct.gs_fixed_point_s* noundef %8)
  %10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 1
  %11 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %0, %struct.gs_fixed_point_s* noundef nonnull %10)
  br label %214

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 2
  %14 = load %struct.segment_s*, %struct.segment_s** %13, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %16 = load %struct.subpath*, %struct.subpath** %15, align 8
  %17 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i64 0, i32 4
  %18 = load %struct.segment_s*, %struct.segment_s** %17, align 8
  %19 = icmp eq %struct.segment_s* %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1
  %22 = bitcast %struct.gs_fixed_rect_s* %1 to i8*
  %23 = bitcast %struct.gs_fixed_rect_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %22, i8* noundef nonnull align 8 dereferenceable(32) %23, i64 32, i1 false)
  br label %213

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 2
  %26 = load %struct.segment_s*, %struct.segment_s** %25, align 8
  %27 = icmp eq %struct.segment_s* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %30 = bitcast %struct.subpath** %29 to %struct.segment_s**
  %31 = load %struct.segment_s*, %struct.segment_s** %30, align 8
  %32 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i64 0, i32 3, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i64 0, i32 3, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %46

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1
  %42 = bitcast %struct.gs_fixed_rect_s* %3 to i8*
  %43 = bitcast %struct.gs_fixed_rect_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %42, i8* noundef nonnull align 8 dereferenceable(32) %43, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %26, i64 0, i32 1
  %45 = load %struct.segment_s*, %struct.segment_s** %44, align 8
  br label %46

46:                                               ; preds = %40, %28
  %.01 = phi %struct.segment_s* [ %31, %28 ], [ %45, %40 ]
  br label %47

47:                                               ; preds = %199, %46
  %.1 = phi %struct.segment_s* [ %.01, %46 ], [ %201, %199 ]
  %.not = icmp eq %struct.segment_s* %.1, null
  br i1 %.not, label %202, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 2
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %156 [
    i32 3, label %51
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1
  %53 = bitcast %struct.segment_s* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1
  %60 = bitcast %struct.segment_s* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  br label %76

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1
  %65 = bitcast %struct.segment_s* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1
  %72 = bitcast %struct.segment_s* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75, %58
  %77 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 1
  %78 = bitcast %struct.segment_s** %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 1
  %85 = bitcast %struct.segment_s** %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  br label %101

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 1
  %90 = bitcast %struct.segment_s** %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 1
  %97 = bitcast %struct.segment_s** %96 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %83
  %102 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %103 = bitcast i32* %102 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %110 = bitcast i32* %109 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  br label %126

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %115 = bitcast i32* %114 to i64*
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %116, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %122 = bitcast i32* %121 to i64*
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %113
  br label %126

126:                                              ; preds = %125, %108
  %127 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = bitcast i32* %128 to i64*
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = bitcast i32* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  store i64 %138, i64* %139, align 8
  br label %155

140:                                              ; preds = %126
  %141 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = bitcast i32* %142 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %144, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 1, i32 2
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = bitcast i32* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %140
  br label %155

155:                                              ; preds = %154, %134
  br label %156

156:                                              ; preds = %155, %48
  %157 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  store i64 %164, i64* %165, align 8
  br label %177

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  store i64 %174, i64* %175, align 8
  br label %176

176:                                              ; preds = %172, %166
  br label %177

177:                                              ; preds = %176, %162
  %178 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  br label %198

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %189, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 3, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  store i64 %195, i64* %196, align 8
  br label %197

197:                                              ; preds = %193, %187
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.1, i64 0, i32 1
  %201 = load %struct.segment_s*, %struct.segment_s** %200, align 8
  br label %47, !llvm.loop !4

202:                                              ; preds = %47
  %203 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1
  %204 = bitcast %struct.gs_fixed_rect_s* %203 to i8*
  %205 = bitcast %struct.gs_fixed_rect_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %204, i8* noundef nonnull align 8 dereferenceable(32) %205, i64 32, i1 false)
  %206 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %207 = load %struct.subpath*, %struct.subpath** %206, align 8
  %208 = getelementptr inbounds %struct.subpath, %struct.subpath* %207, i64 0, i32 4
  %209 = load %struct.segment_s*, %struct.segment_s** %208, align 8
  %210 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 2
  store %struct.segment_s* %209, %struct.segment_s** %210, align 8
  %211 = bitcast %struct.gs_fixed_rect_s* %1 to i8*
  %212 = bitcast %struct.gs_fixed_rect_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %211, i8* noundef nonnull align 8 dereferenceable(32) %212, i64 32, i1 false)
  br label %213

213:                                              ; preds = %202, %20
  br label %214

214:                                              ; preds = %213, %7
  %.0 = phi i32 [ %11, %7 ], [ 0, %213 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gx_path_has_curves(%struct.gx_path_s* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 8
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gx_path_is_void(%struct.gx_path_s* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gx_path_is_rectangle(%struct.gx_path_s* nocapture noundef readonly %0, %struct.gs_fixed_rect_s* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %86

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %86

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %16 = load %struct.subpath*, %struct.subpath** %15, align 8
  %17 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i64 0, i32 4
  %18 = load %struct.segment_s*, %struct.segment_s** %17, align 8
  %19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %18, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %86

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i64 0, i32 3, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i64 0, i32 3, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i64 0, i32 1
  %28 = load %struct.segment_s*, %struct.segment_s** %27, align 8
  %29 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i64 0, i32 1
  %30 = load %struct.segment_s*, %struct.segment_s** %29, align 8
  %31 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i64 0, i32 3, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i64 0, i32 3, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i64 0, i32 1
  %36 = load %struct.segment_s*, %struct.segment_s** %35, align 8
  %37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i64 0, i32 3, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %24, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i64 0, i32 3, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, %34
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i64 0, i32 3, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %32, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i64 0, i32 3, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, %26
  br i1 %51, label %68, label %52

52:                                               ; preds = %48, %44, %40, %22
  %53 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i64 0, i32 3, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %24, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %36, i64 0, i32 3, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, %34
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i64 0, i32 3, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %32, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i64 0, i32 3, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, %26
  br i1 %67, label %68, label %85

68:                                               ; preds = %64, %48
  %69 = icmp slt i64 %24, %32
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 0, i32 0
  store i64 %24, i64* %71, align 8
  %72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 1, i32 0
  store i64 %32, i64* %72, align 8
  br label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 0, i32 0
  store i64 %32, i64* %74, align 8
  %75 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 1, i32 0
  store i64 %24, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = icmp slt i64 %26, %34
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 0, i32 1
  store i64 %26, i64* %79, align 8
  %80 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 1, i32 1
  store i64 %34, i64* %80, align 8
  br label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 0, i32 1
  store i64 %34, i64* %82, align 8
  %83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i64 0, i32 1, i32 1
  store i64 %26, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  br label %87

85:                                               ; preds = %64, %60, %56, %52
  br label %86

86:                                               ; preds = %85, %14, %10, %6, %2
  br label %87

87:                                               ; preds = %86, %84
  %.0 = phi i32 [ 1, %84 ], [ 0, %86 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gx_cpath_box_for_check(%struct.gx_path_s* nocapture noundef readonly %0, %struct.gs_fixed_rect_s* nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3
  %4 = bitcast %struct.gs_fixed_rect_s* %1 to i8*
  %5 = bitcast %struct.gs_fixed_rect_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gx_cpath_includes_rectangle(%struct.gx_path_s* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #3 {
  %.not = icmp sgt i64 %1, %3
  br i1 %.not, label %12, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %.not7 = icmp sgt i64 %8, %1
  br i1 %.not7, label %39, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 1, i32 0
  %11 = load i64, i64* %10, align 8
  %.not8 = icmp slt i64 %11, %3
  br i1 %.not8, label %39, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %.not1 = icmp sgt i64 %14, %3
  br i1 %.not1, label %39, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 1, i32 0
  %17 = load i64, i64* %16, align 8
  %.not2 = icmp slt i64 %17, %1
  br i1 %.not2, label %39, label %18

18:                                               ; preds = %15, %9
  %.not3 = icmp sgt i64 %2, %4
  br i1 %.not3, label %28, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %.not5 = icmp sgt i64 %21, %2
  br i1 %.not5, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 1, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, %4
  %phi.cast6 = zext i1 %25 to i32
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ 0, %19 ], [ %phi.cast6, %22 ]
  br label %37

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %.not4 = icmp sgt i64 %30, %4
  br i1 %.not4, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 3, i32 1, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, %2
  %phi.cast = zext i1 %34 to i32
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ 0, %28 ], [ %phi.cast, %31 ]
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i32 [ %27, %26 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %15, %12, %9, %6
  %40 = phi i32 [ 0, %15 ], [ 0, %12 ], [ 0, %9 ], [ 0, %6 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1) #5 {
  %3 = call i32 @copy_path(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* noundef nonnull @gx_path_add_curve)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @copy_path(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* nocapture noundef readonly %2) #5 {
  %4 = alloca %struct.gx_path_s, align 8
  %5 = bitcast %struct.gx_path_s* %4 to i8*
  %6 = bitcast %struct.gx_path_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %5, i8* noundef nonnull align 8 dereferenceable(144) %6, i64 144, i1 false)
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 0
  call void @gx_path_init(%struct.gx_path_s* noundef %1, %struct.gs_memory_procs* noundef %7) #8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i64 0, i32 4
  %9 = bitcast %struct.subpath** %8 to %struct.segment_s**
  br label %10

10:                                               ; preds = %54, %3
  %.02.in = phi %struct.segment_s** [ %9, %3 ], [ %55, %54 ]
  %.01 = phi i32 [ undef, %3 ], [ %.1, %54 ]
  %.02 = load %struct.segment_s*, %struct.segment_s** %.02.in, align 8
  %.not = icmp eq %struct.segment_s* %.02, null
  br i1 %.not, label %56, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %47 [
    i32 0, label %14
    i32 3, label %20
    i32 1, label %39
    i32 2, label %45
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %1, i64 noundef %16, i64 noundef %18) #8
  br label %47

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 1
  %22 = bitcast %struct.segment_s* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 1, i32 1
  %25 = bitcast %struct.segment_s** %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 1, i32 2
  %28 = bitcast i32* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 1, i32 2
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = bitcast i32* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 %2(%struct.gx_path_s* noundef %1, i64 noundef %23, i64 noundef %26, i64 noundef %29, i64 noundef %33, i64 noundef %35, i64 noundef %37) #8
  br label %47

39:                                               ; preds = %11
  %40 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 3, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %1, i64 noundef %41, i64 noundef %43) #8
  br label %47

45:                                               ; preds = %11
  %46 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %1) #8
  br label %47

47:                                               ; preds = %45, %39, %20, %14, %11
  %.1 = phi i32 [ %.01, %11 ], [ %46, %45 ], [ %44, %39 ], [ %38, %20 ], [ %19, %14 ]
  %.not3 = icmp eq i32 %.1, 0
  br i1 %.not3, label %54, label %48

48:                                               ; preds = %47
  call void @gx_path_release(%struct.gx_path_s* noundef %1) #8
  %49 = icmp eq %struct.gx_path_s* %1, %0
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = bitcast %struct.gx_path_s* %0 to i8*
  %52 = bitcast %struct.gx_path_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %51, i8* noundef nonnull align 8 dereferenceable(144) %52, i64 144, i1 false)
  br label %53

53:                                               ; preds = %50, %48
  br label %61

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.02, i64 0, i32 1
  br label %10, !llvm.loop !6

56:                                               ; preds = %10
  %57 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 9
  %58 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i64 0, i32 9
  %59 = bitcast %struct.gs_fixed_point_s* %57 to i8*
  %60 = bitcast %struct.gs_fixed_point_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %59, i8* noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false)
  br label %61

61:                                               ; preds = %56, %53
  %.0 = phi i32 [ %.1, %53 ], [ 0, %56 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_merge(%struct.gx_path_s* nocapture noundef %0, %struct.gx_path_s* noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 5
  %4 = load %struct.subpath*, %struct.subpath** %3, align 8
  %.not = icmp eq %struct.subpath* %4, null
  br i1 %.not, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 5
  %7 = load %struct.subpath*, %struct.subpath** %6, align 8
  %8 = getelementptr inbounds %struct.subpath, %struct.subpath* %7, i64 0, i32 4
  %9 = load %struct.segment_s*, %struct.segment_s** %8, align 8
  %10 = getelementptr inbounds %struct.subpath, %struct.subpath* %4, i64 0, i32 4
  %11 = load %struct.segment_s*, %struct.segment_s** %10, align 8
  %.not1 = icmp eq %struct.segment_s* %9, %11
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %5
  call void @gx_path_release(%struct.gx_path_s* noundef %1) #8
  br label %13

13:                                               ; preds = %12, %5, %2
  %14 = bitcast %struct.gx_path_s* %1 to i8*
  %15 = bitcast %struct.gx_path_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %14, i8* noundef nonnull align 8 dereferenceable(144) %15, i64 144, i1 false)
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 12
  store i8 1, i8* %16, align 2
  ret i32 0
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @gx_path_translate(%struct.gx_path_s* nocapture noundef %0, i64 noundef %1, i64 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, %1
  store i64 %6, i64* %4, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, %2
  store i64 %9, i64* %7, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1, i32 1, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, %1
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 1, i32 1, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %2
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %2
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 4
  %23 = bitcast %struct.subpath** %22 to %struct.segment_s**
  br label %24

24:                                               ; preds = %53, %3
  %.0.in = phi %struct.segment_s** [ %23, %3 ], [ %54, %53 ]
  %.0 = load %struct.segment_s*, %struct.segment_s** %.0.in, align 8
  %.not = icmp eq %struct.segment_s* %.0, null
  br i1 %.not, label %55, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 0, i32 2
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %46 [
    i32 3, label %28
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 1
  %30 = bitcast %struct.segment_s* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 1, i32 1
  %34 = bitcast %struct.segment_s** %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %2
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 1, i32 2
  %38 = bitcast i32* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %1
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 1, i32 2
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %2
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %28, %25
  %47 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 0, i32 3, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 0, i32 3, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %2
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %.0, i64 0, i32 1
  br label %24, !llvm.loop !7

55:                                               ; preds = %24
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_flatten(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, double noundef %2) #5 {
  %4 = fmul double %2, 4.096000e+03
  %5 = fptrunc double %4 to float
  %6 = fptosi float %5 to i64
  store i64 %6, i64* @scaled_flat, align 8
  %7 = fpext float %5 to double
  %8 = fmul double %7, 4.500000e-01
  %9 = fptrunc double %8 to float
  store float %9, float* @scaled_flat_sq, align 4
  %10 = call i32 @copy_path(%struct.gx_path_s* noundef %0, %struct.gx_path_s* noundef %1, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* noundef nonnull @flatten_curve)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flatten_curve(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #5 {
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i64 0, i32 9, i32 1
  %11 = load i64, i64* %10, align 8
  br label %12

12:                                               ; preds = %134, %7
  %.06 = phi i64 [ %11, %7 ], [ %130, %134 ]
  %.05 = phi i64 [ %9, %7 ], [ %128, %134 ]
  %.04 = phi i64 [ %4, %7 ], [ %122, %134 ]
  %.03 = phi i64 [ %3, %7 ], [ %120, %134 ]
  %.02 = phi i64 [ %2, %7 ], [ %126, %134 ]
  %.01 = phi i64 [ %1, %7 ], [ %124, %134 ]
  %13 = sub nsw i64 %5, %.05
  %14 = sub nsw i64 %6, %.06
  %15 = icmp slt i64 %13, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = sub nsw i64 0, %13
  br label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ %13, %18 ]
  %21 = icmp slt i64 %14, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = sub nsw i64 0, %14
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ %14, %24 ]
  %.not = icmp slt i64 %20, %26
  br i1 %.not, label %68, label %27

27:                                               ; preds = %25
  %28 = icmp eq i64 %13, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %135

30:                                               ; preds = %27
  %31 = sitofp i64 %14 to float
  %32 = sitofp i64 %13 to float
  %33 = fdiv float %31, %32
  %34 = fmul float %33, %33
  %35 = load float, float* @scaled_flat_sq, align 4
  %36 = fmul float %34, %35
  %37 = fptosi float %36 to i64
  %38 = load i64, i64* @scaled_flat, align 8
  %39 = add nsw i64 %38, %37
  %40 = sub nsw i64 %.01, %.05
  %41 = sitofp i64 %40 to float
  %42 = fmul float %33, %41
  %43 = fptosi float %42 to i64
  %44 = sub nsw i64 %43, %.02
  %45 = add nsw i64 %44, %.06
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = sub nsw i64 0, %45
  br label %50

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ %45, %49 ]
  %.not9 = icmp sgt i64 %51, %39
  br i1 %.not9, label %67, label %52

52:                                               ; preds = %50
  %53 = sub nsw i64 %.03, %.05
  %54 = sitofp i64 %53 to float
  %55 = fmul float %33, %54
  %56 = fptosi float %55 to i64
  %57 = sub nsw i64 %56, %.04
  %58 = add nsw i64 %57, %.06
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = sub nsw i64 0, %58
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i64 [ %61, %60 ], [ %58, %62 ]
  %.not10 = icmp sgt i64 %64, %39
  br i1 %.not10, label %67, label %65

65:                                               ; preds = %63
  %66 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %5, i64 noundef %6) #8
  br label %135

67:                                               ; preds = %63, %50
  br label %106

68:                                               ; preds = %25
  %69 = sitofp i64 %13 to float
  %70 = sitofp i64 %14 to float
  %71 = fdiv float %69, %70
  %72 = fmul float %71, %71
  %73 = load float, float* @scaled_flat_sq, align 4
  %74 = fmul float %72, %73
  %75 = fptosi float %74 to i64
  %76 = load i64, i64* @scaled_flat, align 8
  %77 = add nsw i64 %76, %75
  %78 = sub nsw i64 %.02, %.06
  %79 = sitofp i64 %78 to float
  %80 = fmul float %71, %79
  %81 = fptosi float %80 to i64
  %82 = sub nsw i64 %81, %.01
  %83 = add nsw i64 %82, %.05
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = sub nsw i64 0, %83
  br label %88

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i64 [ %86, %85 ], [ %83, %87 ]
  %.not7 = icmp sgt i64 %89, %77
  br i1 %.not7, label %105, label %90

90:                                               ; preds = %88
  %91 = sub nsw i64 %.04, %.06
  %92 = sitofp i64 %91 to float
  %93 = fmul float %71, %92
  %94 = fptosi float %93 to i64
  %95 = sub nsw i64 %94, %.03
  %96 = add nsw i64 %95, %.05
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = sub nsw i64 0, %96
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i64 [ %99, %98 ], [ %96, %100 ]
  %.not8 = icmp sgt i64 %102, %77
  br i1 %.not8, label %105, label %103

103:                                              ; preds = %101
  %104 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %5, i64 noundef %6) #8
  br label %135

105:                                              ; preds = %101, %88
  br label %106

106:                                              ; preds = %105, %67
  %107 = add nsw i64 %.05, %.01
  %108 = ashr i64 %107, 1
  %109 = add nsw i64 %.06, %.02
  %110 = ashr i64 %109, 1
  %111 = add nsw i64 %.01, %.03
  %112 = ashr i64 %111, 1
  %113 = add nsw i64 %.02, %.04
  %114 = ashr i64 %113, 1
  %115 = add nsw i64 %108, %112
  %116 = ashr i64 %115, 1
  %117 = add nsw i64 %110, %114
  %118 = ashr i64 %117, 1
  %119 = add nsw i64 %.03, %5
  %120 = ashr i64 %119, 1
  %121 = add nsw i64 %.04, %6
  %122 = ashr i64 %121, 1
  %123 = add nsw i64 %112, %120
  %124 = ashr i64 %123, 1
  %125 = add nsw i64 %114, %122
  %126 = ashr i64 %125, 1
  %127 = add nsw i64 %116, %124
  %128 = ashr i64 %127, 1
  %129 = add nsw i64 %118, %126
  %130 = ashr i64 %129, 1
  %131 = call i32 @flatten_curve(%struct.gx_path_s* noundef %0, i64 noundef %108, i64 noundef %110, i64 noundef %116, i64 noundef %118, i64 noundef %128, i64 noundef %130)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %106
  br label %135

134:                                              ; preds = %106
  br label %12

135:                                              ; preds = %133, %103, %65, %29
  %.0 = phi i32 [ 0, %29 ], [ %66, %65 ], [ %131, %133 ], [ %104, %103 ]
  ret i32 %.0
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #6

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #6

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #6

declare dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
