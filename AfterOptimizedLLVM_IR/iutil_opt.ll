; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iutil.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.dict_s = type opaque
%struct.file_entry_s = type opaque
%struct.gs_font_s = type opaque
%struct.name_s = type opaque
%struct.vm_save_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local void @refcpy(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.ref_s* %1, %struct.ref_s** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %13, %struct.ref_s** %4, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 1
  store %struct.ref_s* %15, %struct.ref_s** %5, align 8
  %16 = bitcast %struct.ref_s* %12 to i8*
  %17 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  br label %7, !llvm.loop !4

18:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @obj_eq(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.gs_color_s*, align 8
  %8 = alloca %struct.gs_color_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.ref_s* %1, %struct.ref_s** %5, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, 2
  br label %24

24:                                               ; preds = %17, %16
  %25 = phi i32 [ 9, %16 ], [ %23, %17 ]
  %26 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = ashr i32 %30, 2
  %32 = icmp sge i32 %31, 16
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 8
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 255
  %40 = ashr i32 %39, 2
  br label %41

41:                                               ; preds = %34, %33
  %42 = phi i32 [ 9, %33 ], [ %40, %34 ]
  %43 = icmp ne i32 %25, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %41
  %45 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 8
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 255
  %50 = ashr i32 %49, 2
  switch i32 %50, label %119 [
    i32 5, label %51
    i32 11, label %73
    i32 7, label %95
    i32 13, label %107
  ]

51:                                               ; preds = %44
  %52 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 255
  %57 = ashr i32 %56, 2
  %58 = icmp eq i32 %57, 11
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %62 = bitcast %union.v* %61 to float*
  %63 = load float, float* %62, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to float
  %69 = fcmp oeq float %63, %68
  br label %70

70:                                               ; preds = %59, %51
  %71 = phi i1 [ false, %51 ], [ %69, %59 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %340

73:                                               ; preds = %44
  %74 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %76 = load i16, i16* %75, align 8
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 255
  %79 = ashr i32 %78, 2
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %84 = bitcast %union.v* %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to float
  %87 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 0
  %89 = bitcast %union.v* %88 to float*
  %90 = load float, float* %89, align 8
  %91 = fcmp oeq float %86, %90
  br label %92

92:                                               ; preds = %81, %73
  %93 = phi i1 [ false, %73 ], [ %91, %81 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %340

95:                                               ; preds = %44
  %96 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = zext i16 %98 to i32
  %100 = and i32 %99, 255
  %101 = ashr i32 %100, 2
  %102 = icmp ne i32 %101, 13
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %340

104:                                              ; preds = %95
  %105 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %106 = call %struct.ref_s* @name_string_ref(%struct.ref_s* noundef %105, %struct.ref_s* noundef %6)
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  br label %120

107:                                              ; preds = %44
  %108 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 1
  %110 = load i16, i16* %109, align 8
  %111 = zext i16 %110 to i32
  %112 = and i32 %111, 255
  %113 = ashr i32 %112, 2
  %114 = icmp ne i32 %113, 7
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %340

116:                                              ; preds = %107
  %117 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %118 = call %struct.ref_s* @name_string_ref(%struct.ref_s* noundef %117, %struct.ref_s* noundef %6)
  store %struct.ref_s* %6, %struct.ref_s** %5, align 8
  br label %120

119:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %340

120:                                              ; preds = %116, %104
  br label %121

121:                                              ; preds = %120, %41
  %122 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 1
  %124 = load i16, i16* %123, align 8
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 255
  %127 = ashr i32 %126, 2
  %128 = icmp sge i32 %127, 16
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %137

130:                                              ; preds = %121
  %131 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i32 0, i32 1
  %133 = load i16, i16* %132, align 8
  %134 = zext i16 %133 to i32
  %135 = and i32 %134, 255
  %136 = ashr i32 %135, 2
  br label %137

137:                                              ; preds = %130, %129
  %138 = phi i32 [ 9, %129 ], [ %136, %130 ]
  switch i32 %138, label %339 [
    i32 0, label %139
    i32 10, label %139
    i32 1, label %162
    i32 2, label %175
    i32 3, label %186
    i32 4, label %197
    i32 5, label %208
    i32 6, label %219
    i32 8, label %219
    i32 7, label %220
    i32 9, label %231
    i32 11, label %244
    i32 12, label %255
    i32 13, label %266
    i32 14, label %287
    i32 15, label %328
  ]

139:                                              ; preds = %137, %137
  %140 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i32 0, i32 0
  %142 = bitcast %union.v* %141 to %struct.ref_s**
  %143 = load %struct.ref_s*, %struct.ref_s** %142, align 8
  %144 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i32 0, i32 0
  %146 = bitcast %union.v* %145 to %struct.ref_s**
  %147 = load %struct.ref_s*, %struct.ref_s** %146, align 8
  %148 = icmp eq %struct.ref_s* %143, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %139
  %150 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %150, i32 0, i32 2
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i32 0, i32 2
  %156 = load i16, i16* %155, align 2
  %157 = zext i16 %156 to i32
  %158 = icmp eq i32 %153, %157
  br label %159

159:                                              ; preds = %149, %139
  %160 = phi i1 [ false, %139 ], [ %158, %149 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %3, align 4
  br label %340

162:                                              ; preds = %137
  %163 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 0, i32 0
  %165 = bitcast %union.v* %164 to i16*
  %166 = load i16, i16* %165, align 8
  %167 = zext i16 %166 to i32
  %168 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 0
  %170 = bitcast %union.v* %169 to i16*
  %171 = load i16, i16* %170, align 8
  %172 = zext i16 %171 to i32
  %173 = icmp eq i32 %167, %172
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %3, align 4
  br label %340

175:                                              ; preds = %137
  %176 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %176, i32 0, i32 0
  %178 = bitcast %union.v* %177 to %struct.dict_s**
  %179 = load %struct.dict_s*, %struct.dict_s** %178, align 8
  %180 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i32 0, i32 0
  %182 = bitcast %union.v* %181 to %struct.dict_s**
  %183 = load %struct.dict_s*, %struct.dict_s** %182, align 8
  %184 = icmp eq %struct.dict_s* %179, %183
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %3, align 4
  br label %340

186:                                              ; preds = %137
  %187 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i32 0, i32 0
  %189 = bitcast %union.v* %188 to %struct.file_entry_s**
  %190 = load %struct.file_entry_s*, %struct.file_entry_s** %189, align 8
  %191 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i32 0, i32 0
  %193 = bitcast %union.v* %192 to %struct.file_entry_s**
  %194 = load %struct.file_entry_s*, %struct.file_entry_s** %193, align 8
  %195 = icmp eq %struct.file_entry_s* %190, %194
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %3, align 4
  br label %340

197:                                              ; preds = %137
  %198 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %199 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %198, i32 0, i32 0
  %200 = bitcast %union.v* %199 to %struct.gs_font_s**
  %201 = load %struct.gs_font_s*, %struct.gs_font_s** %200, align 8
  %202 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %202, i32 0, i32 0
  %204 = bitcast %union.v* %203 to %struct.gs_font_s**
  %205 = load %struct.gs_font_s*, %struct.gs_font_s** %204, align 8
  %206 = icmp eq %struct.gs_font_s* %201, %205
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %3, align 4
  br label %340

208:                                              ; preds = %137
  %209 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %209, i32 0, i32 0
  %211 = bitcast %union.v* %210 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %214 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %213, i32 0, i32 0
  %215 = bitcast %union.v* %214 to i64*
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %212, %216
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %3, align 4
  br label %340

219:                                              ; preds = %137, %137
  store i32 1, i32* %3, align 4
  br label %340

220:                                              ; preds = %137
  %221 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %222 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %221, i32 0, i32 0
  %223 = bitcast %union.v* %222 to %struct.name_s**
  %224 = load %struct.name_s*, %struct.name_s** %223, align 8
  %225 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %225, i32 0, i32 0
  %227 = bitcast %union.v* %226 to %struct.name_s**
  %228 = load %struct.name_s*, %struct.name_s** %227, align 8
  %229 = icmp eq %struct.name_s* %224, %228
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %3, align 4
  br label %340

231:                                              ; preds = %137
  %232 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %233 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %232, i32 0, i32 0
  %234 = bitcast %union.v* %233 to i32 (%struct.ref_s*)**
  %235 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %234, align 8
  %236 = ptrtoint i32 (%struct.ref_s*)* %235 to i64
  %237 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %237, i32 0, i32 0
  %239 = bitcast %union.v* %238 to i32 (%struct.ref_s*)**
  %240 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %239, align 8
  %241 = ptrtoint i32 (%struct.ref_s*)* %240 to i64
  %242 = icmp eq i64 %236, %241
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %3, align 4
  br label %340

244:                                              ; preds = %137
  %245 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %246 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %245, i32 0, i32 0
  %247 = bitcast %union.v* %246 to float*
  %248 = load float, float* %247, align 8
  %249 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %250 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %249, i32 0, i32 0
  %251 = bitcast %union.v* %250 to float*
  %252 = load float, float* %251, align 8
  %253 = fcmp oeq float %248, %252
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %3, align 4
  br label %340

255:                                              ; preds = %137
  %256 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %257 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %256, i32 0, i32 0
  %258 = bitcast %union.v* %257 to %struct.vm_save_s**
  %259 = load %struct.vm_save_s*, %struct.vm_save_s** %258, align 8
  %260 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %260, i32 0, i32 0
  %262 = bitcast %union.v* %261 to %struct.vm_save_s**
  %263 = load %struct.vm_save_s*, %struct.vm_save_s** %262, align 8
  %264 = icmp eq %struct.vm_save_s* %259, %263
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %3, align 4
  br label %340

266:                                              ; preds = %137
  %267 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %268 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %267, i32 0, i32 0
  %269 = bitcast %union.v* %268 to i8**
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %272 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %271, i32 0, i32 2
  %273 = load i16, i16* %272, align 2
  %274 = zext i16 %273 to i32
  %275 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %275, i32 0, i32 0
  %277 = bitcast %union.v* %276 to i8**
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %279, i32 0, i32 2
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = call i32 @bytes_compare(i8* noundef %270, i32 noundef %274, i8* noundef %278, i32 noundef %282)
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  store i32 %286, i32* %3, align 4
  br label %340

287:                                              ; preds = %137
  %288 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %289 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %288, i32 0, i32 0
  %290 = bitcast %union.v* %289 to %struct.gs_color_s**
  %291 = load %struct.gs_color_s*, %struct.gs_color_s** %290, align 8
  store %struct.gs_color_s* %291, %struct.gs_color_s** %7, align 8
  %292 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %293 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %292, i32 0, i32 0
  %294 = bitcast %union.v* %293 to %struct.gs_color_s**
  %295 = load %struct.gs_color_s*, %struct.gs_color_s** %294, align 8
  store %struct.gs_color_s* %295, %struct.gs_color_s** %8, align 8
  %296 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %297 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %296, i32 0, i32 0
  %298 = load i16, i16* %297, align 2
  %299 = zext i16 %298 to i32
  %300 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %301 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %300, i32 0, i32 0
  %302 = load i16, i16* %301, align 2
  %303 = zext i16 %302 to i32
  %304 = icmp eq i32 %299, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %287
  %306 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %307 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %306, i32 0, i32 1
  %308 = load i16, i16* %307, align 2
  %309 = zext i16 %308 to i32
  %310 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %311 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %310, i32 0, i32 1
  %312 = load i16, i16* %311, align 2
  %313 = zext i16 %312 to i32
  %314 = icmp eq i32 %309, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %305
  %316 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %317 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %316, i32 0, i32 2
  %318 = load i16, i16* %317, align 2
  %319 = zext i16 %318 to i32
  %320 = load %struct.gs_color_s*, %struct.gs_color_s** %8, align 8
  %321 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %320, i32 0, i32 2
  %322 = load i16, i16* %321, align 2
  %323 = zext i16 %322 to i32
  %324 = icmp eq i32 %319, %323
  br label %325

325:                                              ; preds = %315, %305, %287
  %326 = phi i1 [ false, %305 ], [ false, %287 ], [ %324, %315 ]
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %3, align 4
  br label %340

328:                                              ; preds = %137
  %329 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %330 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %329, i32 0, i32 0
  %331 = bitcast %union.v* %330 to %struct.gx_device_s**
  %332 = load %struct.gx_device_s*, %struct.gx_device_s** %331, align 8
  %333 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %334 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %333, i32 0, i32 0
  %335 = bitcast %union.v* %334 to %struct.gx_device_s**
  %336 = load %struct.gx_device_s*, %struct.gx_device_s** %335, align 8
  %337 = icmp eq %struct.gx_device_s* %332, %336
  %338 = zext i1 %337 to i32
  store i32 %338, i32* %3, align 4
  br label %340

339:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %340

340:                                              ; preds = %339, %328, %325, %266, %255, %244, %231, %220, %219, %208, %197, %186, %175, %162, %159, %119, %115, %103, %92, %70
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.ref_s* @name_string_ref(%struct.ref_s* noundef, %struct.ref_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bytes_compare(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %12, align 8
  br label %22

22:                                               ; preds = %48, %19
  %23 = load i32, i32* %10, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %11, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %40, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 -1, i32 1
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %26
  br label %22, !llvm.loop !6

49:                                               ; preds = %22
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 -1, i32 1
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i32 [ 0, %53 ], [ %59, %54 ]
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @string_hash(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i32, i32* %7, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = mul i32 %15, 19
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  %21 = add i32 %16, %20
  store i32 %21, i32* %6, align 4
  br label %10, !llvm.loop !7

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @string_to_ref(i8* noundef %0, %struct.ref_s* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ref_s* %1, %struct.ref_s** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* noundef %10) #4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @alloc(i32 noundef %13, i32 noundef 1, i8* noundef %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -25, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %23, i1 false)
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to i8**
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  store i16 822, i16* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = trunc i32 %30 to i16
  %32 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  store i16 %31, i16* %33, align 2
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ref_to_string(%struct.ref_s* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, 1
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @alloc(i32 noundef %13, i32 noundef 1, i8* noundef %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %32

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %24, i64 %26, i1 false)
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @num_params(%struct.ref_s* noundef %0, i32 noundef %1, float* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %52, %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 2
  switch i32 %21, label %51 [
    i32 11, label %22
    i32 5, label %35
  ]

22:                                               ; preds = %13
  %23 = load float*, float** %7, align 8
  %24 = icmp ne float* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to float*
  %29 = load float, float* %28, align 8
  %30 = load float*, float** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float %29, float* %33, align 4
  br label %34

34:                                               ; preds = %25, %22
  br label %52

35:                                               ; preds = %13
  %36 = load float*, float** %7, align 8
  %37 = icmp ne float* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %38, %35
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %52

51:                                               ; preds = %13
  store i32 -20, i32* %4, align 4
  br label %57

52:                                               ; preds = %48, %34
  %53 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 -1
  store %struct.ref_s* %54, %struct.ref_s** %5, align 8
  br label %9, !llvm.loop !8

55:                                               ; preds = %9
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @real_param(%struct.ref_s* noundef %0, float* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %26 [
    i32 5, label %15
    i32 11, label %21
  ]

15:                                               ; preds = %3
  %16 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to float
  store float %20, float* %8, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  %25 = load float, float* %24, align 8
  store float %25, float* %8, align 4
  br label %27

26:                                               ; preds = %3
  store i32 -20, i32* %4, align 4
  br label %55

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load float, float* %8, align 4
  %32 = fpext float %31 to double
  %33 = fcmp olt double %32, 0.000000e+00
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load float, float* %8, align 4
  %36 = fpext float %35 to double
  %37 = fcmp olt double %36, -1.000000e-05
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -15, i32* %4, align 4
  br label %55

39:                                               ; preds = %34
  store float 0.000000e+00, float* %8, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load float, float* %8, align 4
  %42 = fpext float %41 to double
  %43 = fcmp ogt double %42, 1.000000e+00
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load float, float* %8, align 4
  %46 = fpext float %45 to double
  %47 = fcmp ogt double %46, 1.000010e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -15, i32* %4, align 4
  br label %55

49:                                               ; preds = %44
  store float 1.000000e+00, float* %8, align 4
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %27
  %53 = load float, float* %8, align 4
  %54 = load float*, float** %6, align 8
  store float %53, float* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %48, %38, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_matrix(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.gs_matrix_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = ashr i32 %12, 2
  switch i32 %13, label %14 [
    i32 0, label %15
    i32 10, label %15
  ]

14:                                               ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %72

15:                                               ; preds = %2, %2
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -15, i32* %3, align 4
  br label %72

23:                                               ; preds = %16
  %24 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 512
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 -7, i32* %3, align 4
  br label %72

31:                                               ; preds = %23
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to %struct.ref_s**
  %36 = load %struct.ref_s*, %struct.ref_s** %35, align 8
  %37 = bitcast %struct.ref_s* %36 to %struct.gs_matrix_s*
  %38 = bitcast %struct.gs_matrix_s* %32 to i8*
  %39 = bitcast %struct.gs_matrix_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 96, i1 false)
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %41 = bitcast %struct.gs_matrix_s* %40 to %struct.ref_s*
  store %struct.ref_s* %41, %struct.ref_s** %6, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %68, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %48 = load i16, i16* %47, align 8
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 255
  %51 = ashr i32 %50, 2
  switch i32 %51, label %52 [
    i32 5, label %53
    i32 11, label %64
  ]

52:                                               ; preds = %45
  store i32 -20, i32* %3, align 4
  br label %72

53:                                               ; preds = %45
  %54 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %56 = bitcast %union.v* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  %59 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %61 = bitcast %union.v* %60 to float*
  store float %58, float* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  store i16 44, i16* %63, align 8
  br label %64

64:                                               ; preds = %45, %53
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 1
  store %struct.ref_s* %67, %struct.ref_s** %6, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %42, !llvm.loop !9

71:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %52, %30, %22, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_matrix(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 255
  %11 = ashr i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 2
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -15, i32* %2, align 4
  br label %58

21:                                               ; preds = %14
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 256
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 -7, i32* %2, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %32, align 8
  store %struct.ref_s* %33, %struct.ref_s** %4, align 8
  store i32 5, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = ashr i32 %42, 2
  switch i32 %43, label %44 [
    i32 11, label %50
    i32 5, label %50
  ]

44:                                               ; preds = %37
  %45 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  store i16 20, i16* %49, align 8
  br label %50

50:                                               ; preds = %37, %37, %44
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 1
  store %struct.ref_s* %56, %struct.ref_s** %4, align 8
  br label %34, !llvm.loop !10

57:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %28, %20, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
