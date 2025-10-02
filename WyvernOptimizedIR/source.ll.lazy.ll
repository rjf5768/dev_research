; ModuleID = './source.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Source = type { float**, float**, float, float*, float**, float** }
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Beginning XS Allocation...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Beginning Source and Flux Parameter Allocation...\0A\00", align 1
@str = private unnamed_addr constant [50 x i8] c"Beginning Source and Flux Parameter Allocation...\00", align 1
@str.1 = private unnamed_addr constant [27 x i8] c"Beginning XS Allocation...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Source* @initialize_sources(%struct.Input* noundef readonly byval(%struct.Input) align 8 %0, i64* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %4 = load i64, i64* %3, align 8
  %5 = mul i64 %4, 48
  %6 = call noalias i8* @malloc(i64 noundef %5) #4
  %7 = bitcast i8* %6 to %struct.Source*
  %8 = mul i64 %4, 48
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %12 = load i64, i64* %11, align 8
  %13 = sdiv i64 %12, 8
  %14 = shl nsw i64 %13, 3
  %15 = call noalias i8* @malloc(i64 noundef %14) #4
  %16 = bitcast i8* %15 to float***
  %17 = shl nsw i64 %13, 3
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %1, align 8
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %13, %22
  %24 = shl i64 %23, 3
  %25 = call noalias i8* @malloc(i64 noundef %24) #4
  %26 = bitcast i8* %25 to float**
  %27 = shl nsw i64 %13, 3
  %28 = load i64, i64* %1, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %1, align 8
  %30 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %13, %32
  %34 = sext i32 %31 to i64
  %35 = mul nsw i64 %33, %34
  %36 = shl i64 %35, 2
  %37 = call noalias i8* @malloc(i64 noundef %36) #4
  %38 = bitcast i8* %37 to float*
  %39 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %13, %41
  %43 = sext i32 %40 to i64
  %44 = mul nsw i64 %42, %43
  %45 = shl i64 %44, 2
  %46 = load i64, i64* %1, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %1, align 8
  br label %48

48:                                               ; preds = %57, %2
  %.06 = phi i64 [ 0, %2 ], [ %58, %57 ]
  %49 = icmp slt i64 %.06, %13
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %.06, %53
  %55 = getelementptr inbounds float*, float** %26, i64 %54
  %56 = getelementptr inbounds float**, float*** %16, i64 %.06
  store float** %55, float*** %56, align 8
  br label %57

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %.06, 1
  br label %48, !llvm.loop !4

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %85, %59
  %.07 = phi i64 [ 0, %59 ], [ %86, %85 ]
  %61 = icmp slt i64 %.07, %13
  br i1 %61, label %62, label %87

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %82, %62
  %.08 = phi i64 [ 0, %62 ], [ %83, %82 ]
  %64 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %.08, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %.07, %71
  %73 = sext i32 %70 to i64
  %74 = mul nsw i64 %72, %73
  %75 = sext i32 %70 to i64
  %76 = mul nsw i64 %.08, %75
  %77 = add nsw i64 %74, %76
  %78 = getelementptr inbounds float, float* %38, i64 %77
  %79 = getelementptr inbounds float**, float*** %16, i64 %.07
  %80 = load float**, float*** %79, align 8
  %81 = getelementptr inbounds float*, float** %80, i64 %.08
  store float* %78, float** %81, align 8
  br label %82

82:                                               ; preds = %68
  %83 = add nuw nsw i64 %.08, 1
  br label %63, !llvm.loop !6

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84
  %86 = add nuw nsw i64 %.07, 1
  br label %60, !llvm.loop !7

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %115, %87
  %.09 = phi i64 [ 0, %87 ], [ %116, %115 ]
  %89 = icmp slt i64 %.09, %13
  br i1 %89, label %90, label %117

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %112, %90
  %.010 = phi i64 [ 0, %90 ], [ %113, %112 ]
  %92 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %.010, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %109, %96
  %.011 = phi i64 [ 0, %96 ], [ %110, %109 ]
  %98 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %.011, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = call float @urand() #4
  %104 = getelementptr inbounds float**, float*** %16, i64 %.09
  %105 = load float**, float*** %104, align 8
  %106 = getelementptr inbounds float*, float** %105, i64 %.010
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 %.011
  store float %103, float* %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = add nuw nsw i64 %.011, 1
  br label %97, !llvm.loop !8

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i64 %.010, 1
  br label %91, !llvm.loop !9

114:                                              ; preds = %91
  br label %115

115:                                              ; preds = %114
  %116 = add nuw nsw i64 %.09, 1
  br label %88, !llvm.loop !10

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 17
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  %puts29 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %121, %117
  %123 = shl nsw i64 %13, 3
  %124 = call noalias i8* @malloc(i64 noundef %123) #4
  %125 = bitcast i8* %124 to float***
  %126 = shl nsw i64 %13, 3
  %127 = load i64, i64* %1, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %1, align 8
  %129 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %13, %131
  %133 = shl i64 %132, 3
  %134 = call noalias i8* @malloc(i64 noundef %133) #4
  %135 = bitcast i8* %134 to float**
  %136 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %13, %138
  %140 = shl i64 %139, 3
  %141 = load i64, i64* %1, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %1, align 8
  %143 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %13, %145
  %147 = mul i64 %146, 12
  %148 = call noalias i8* @malloc(i64 noundef %147) #4
  %149 = bitcast i8* %148 to float*
  %150 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %13, %152
  %154 = mul i64 %153, 12
  %155 = load i64, i64* %1, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %1, align 8
  br label %157

157:                                              ; preds = %166, %122
  %.015 = phi i64 [ 0, %122 ], [ %167, %166 ]
  %158 = icmp slt i64 %.015, %13
  br i1 %158, label %159, label %168

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %.015, %162
  %164 = getelementptr inbounds float*, float** %135, i64 %163
  %165 = getelementptr inbounds float**, float*** %125, i64 %.015
  store float** %164, float*** %165, align 8
  br label %166

166:                                              ; preds = %159
  %167 = add nuw nsw i64 %.015, 1
  br label %157, !llvm.loop !11

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %191, %168
  %.016 = phi i64 [ 0, %168 ], [ %192, %191 ]
  %170 = icmp slt i64 %.016, %13
  br i1 %170, label %171, label %193

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %188, %171
  %.017 = phi i64 [ 0, %171 ], [ %189, %188 ]
  %173 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %.017, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %.016, %180
  %182 = add i64 %181, %.017
  %183 = mul i64 %182, 3
  %184 = getelementptr inbounds float, float* %149, i64 %183
  %185 = getelementptr inbounds float**, float*** %125, i64 %.016
  %186 = load float**, float*** %185, align 8
  %187 = getelementptr inbounds float*, float** %186, i64 %.017
  store float* %184, float** %187, align 8
  br label %188

188:                                              ; preds = %177
  %189 = add nuw nsw i64 %.017, 1
  br label %172, !llvm.loop !12

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190
  %192 = add nuw nsw i64 %.016, 1
  br label %169, !llvm.loop !13

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %219, %193
  %.018 = phi i64 [ 0, %193 ], [ %220, %219 ]
  %195 = icmp slt i64 %.018, %13
  br i1 %195, label %196, label %221

196:                                              ; preds = %194
  br label %197

197:                                              ; preds = %216, %196
  %.019 = phi i32 [ 0, %196 ], [ %217, %216 ]
  %198 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %.019, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  br label %202

202:                                              ; preds = %213, %201
  %.020 = phi i32 [ 0, %201 ], [ %214, %213 ]
  %203 = icmp ult i32 %.020, 3
  br i1 %203, label %204, label %215

204:                                              ; preds = %202
  %205 = call float @urand() #4
  %206 = getelementptr inbounds float**, float*** %125, i64 %.018
  %207 = load float**, float*** %206, align 8
  %208 = zext i32 %.019 to i64
  %209 = getelementptr inbounds float*, float** %207, i64 %208
  %210 = load float*, float** %209, align 8
  %211 = zext i32 %.020 to i64
  %212 = getelementptr inbounds float, float* %210, i64 %211
  store float %205, float* %212, align 4
  br label %213

213:                                              ; preds = %204
  %214 = add nuw nsw i32 %.020, 1
  br label %202, !llvm.loop !14

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215
  %217 = add nuw nsw i32 %.019, 1
  br label %197, !llvm.loop !15

218:                                              ; preds = %197
  br label %219

219:                                              ; preds = %218
  %220 = add nuw nsw i64 %.018, 1
  br label %194, !llvm.loop !16

221:                                              ; preds = %194
  %222 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 17
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str, i64 0, i64 0))
  br label %226

226:                                              ; preds = %225, %221
  %227 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %228 = load i64, i64* %227, align 8
  %229 = shl i64 %228, 3
  %230 = call noalias i8* @malloc(i64 noundef %229) #4
  %231 = bitcast i8* %230 to float***
  %232 = shl i64 %228, 3
  %233 = load i64, i64* %1, align 8
  %234 = add i64 %233, %232
  store i64 %234, i64* %1, align 8
  %235 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = mul nsw i64 %236, %239
  %241 = shl i64 %240, 3
  %242 = call noalias i8* @malloc(i64 noundef %241) #4
  %243 = bitcast i8* %242 to float**
  %244 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %245, %248
  %250 = shl i64 %249, 3
  %251 = load i64, i64* %1, align 8
  %252 = add i64 %251, %250
  store i64 %252, i64* %1, align 8
  %253 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %254 = load i64, i64* %253, align 8
  %255 = shl i64 %254, 3
  %256 = call noalias i8* @malloc(i64 noundef %255) #4
  %257 = bitcast i8* %256 to float***
  %258 = shl i64 %254, 3
  %259 = load i64, i64* %1, align 8
  %260 = add i64 %259, %258
  store i64 %260, i64* %1, align 8
  %261 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %262, %265
  %267 = shl i64 %266, 3
  %268 = call noalias i8* @malloc(i64 noundef %267) #4
  %269 = bitcast i8* %268 to float**
  %270 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %271, %274
  %276 = shl i64 %275, 3
  %277 = load i64, i64* %1, align 8
  %278 = add i64 %277, %276
  store i64 %278, i64* %1, align 8
  %279 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %280 = load i64, i64* %279, align 8
  %281 = shl i64 %280, 3
  %282 = call noalias i8* @malloc(i64 noundef %281) #4
  %283 = bitcast i8* %282 to float**
  %284 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = shl nsw i32 %285, 1
  %287 = or i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %290 = load i64, i64* %289, align 8
  %291 = mul nsw i64 %290, %288
  %292 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = mul nsw i64 %291, %294
  %296 = shl i64 %295, 2
  %297 = call noalias i8* @malloc(i64 noundef %296) #4
  %298 = bitcast i8* %297 to float*
  %299 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = mul nsw i64 %300, %303
  %305 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = mul nsw i64 %304, %307
  %309 = shl i64 %308, 2
  %310 = load i64, i64* %1, align 8
  %311 = add i64 %310, %309
  store i64 %311, i64* %1, align 8
  br label %312

312:                                              ; preds = %323, %226
  %.027 = phi i64 [ 0, %226 ], [ %324, %323 ]
  %313 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %314 = load i64, i64* %313, align 8
  %315 = icmp slt i64 %.027, %314
  br i1 %315, label %316, label %325

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = mul nsw i64 %.027, %319
  %321 = getelementptr inbounds float*, float** %243, i64 %320
  %322 = getelementptr inbounds float**, float*** %231, i64 %.027
  store float** %321, float*** %322, align 8
  br label %323

323:                                              ; preds = %316
  %324 = add nuw nsw i64 %.027, 1
  br label %312, !llvm.loop !17

325:                                              ; preds = %312
  br label %326

326:                                              ; preds = %355, %325
  %.028 = phi i64 [ 0, %325 ], [ %356, %355 ]
  %327 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %.028, %328
  br i1 %329, label %330, label %357

330:                                              ; preds = %326
  br label %331

331:                                              ; preds = %352, %330
  %.026 = phi i64 [ 0, %330 ], [ %353, %352 ]
  %332 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp slt i64 %.026, %334
  br i1 %335, label %336, label %354

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = mul nsw i64 %.028, %339
  %341 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = mul nsw i64 %340, %343
  %345 = sext i32 %342 to i64
  %346 = mul nsw i64 %.026, %345
  %347 = add nsw i64 %344, %346
  %348 = getelementptr inbounds float, float* %298, i64 %347
  %349 = getelementptr inbounds float**, float*** %231, i64 %.028
  %350 = load float**, float*** %349, align 8
  %351 = getelementptr inbounds float*, float** %350, i64 %.026
  store float* %348, float** %351, align 8
  br label %352

352:                                              ; preds = %336
  %353 = add nuw nsw i64 %.026, 1
  br label %331, !llvm.loop !18

354:                                              ; preds = %331
  br label %355

355:                                              ; preds = %354
  %356 = add nuw nsw i64 %.028, 1
  br label %326, !llvm.loop !19

357:                                              ; preds = %326
  br label %358

358:                                              ; preds = %369, %357
  %.025 = phi i64 [ 0, %357 ], [ %370, %369 ]
  %359 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %360 = load i64, i64* %359, align 8
  %361 = icmp slt i64 %.025, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = mul nsw i64 %.025, %365
  %367 = getelementptr inbounds float*, float** %269, i64 %366
  %368 = getelementptr inbounds float**, float*** %257, i64 %.025
  store float** %367, float*** %368, align 8
  br label %369

369:                                              ; preds = %362
  %370 = add nuw nsw i64 %.025, 1
  br label %358, !llvm.loop !20

371:                                              ; preds = %358
  br label %372

372:                                              ; preds = %405, %371
  %.024 = phi i64 [ 0, %371 ], [ %406, %405 ]
  %373 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %374 = load i64, i64* %373, align 8
  %375 = icmp slt i64 %.024, %374
  br i1 %375, label %376, label %407

376:                                              ; preds = %372
  br label %377

377:                                              ; preds = %402, %376
  %.023 = phi i32 [ 0, %376 ], [ %403, %402 ]
  %378 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %.023, %379
  br i1 %380, label %381, label %404

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = mul nsw i32 %383, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, %.024
  %391 = mul nsw i64 %390, %387
  %392 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %393 = load i32, i32* %392, align 4
  %394 = mul nsw i32 %.023, %393
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %391, %395
  %397 = getelementptr inbounds float, float* %298, i64 %396
  %398 = getelementptr inbounds float**, float*** %257, i64 %.024
  %399 = load float**, float*** %398, align 8
  %400 = zext i32 %.023 to i64
  %401 = getelementptr inbounds float*, float** %399, i64 %400
  store float* %397, float** %401, align 8
  br label %402

402:                                              ; preds = %381
  %403 = add nuw nsw i32 %.023, 1
  br label %377, !llvm.loop !21

404:                                              ; preds = %377
  br label %405

405:                                              ; preds = %404
  %406 = add nuw nsw i64 %.024, 1
  br label %372, !llvm.loop !22

407:                                              ; preds = %372
  br label %408

408:                                              ; preds = %429, %407
  %.022 = phi i64 [ 0, %407 ], [ %430, %429 ]
  %409 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %410 = load i64, i64* %409, align 8
  %411 = icmp slt i64 %.022, %410
  br i1 %411, label %412, label %431

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %414 = load i64, i64* %413, align 8
  %415 = shl nsw i64 %414, 1
  %416 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = mul nsw i64 %415, %418
  %420 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %419, %422
  %424 = sext i32 %421 to i64
  %425 = mul nsw i64 %.022, %424
  %426 = add nsw i64 %423, %425
  %427 = getelementptr inbounds float, float* %298, i64 %426
  %428 = getelementptr inbounds float*, float** %283, i64 %.022
  store float* %427, float** %428, align 8
  br label %429

429:                                              ; preds = %412
  %430 = add nuw nsw i64 %.022, 1
  br label %408, !llvm.loop !23

431:                                              ; preds = %408
  br label %432

432:                                              ; preds = %461, %431
  %.021 = phi i64 [ 0, %431 ], [ %462, %461 ]
  %433 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %434 = load i64, i64* %433, align 8
  %435 = icmp slt i64 %.021, %434
  br i1 %435, label %436, label %463

436:                                              ; preds = %432
  br label %437

437:                                              ; preds = %458, %436
  %.014 = phi i32 [ 0, %436 ], [ %459, %458 ]
  %438 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = icmp slt i32 %.014, %439
  br i1 %440, label %441, label %460

441:                                              ; preds = %437
  br label %442

442:                                              ; preds = %455, %441
  %.013 = phi i32 [ 0, %441 ], [ %456, %455 ]
  %443 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %.013, %444
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = call float @urand() #4
  %448 = getelementptr inbounds float**, float*** %231, i64 %.021
  %449 = load float**, float*** %448, align 8
  %450 = zext i32 %.014 to i64
  %451 = getelementptr inbounds float*, float** %449, i64 %450
  %452 = load float*, float** %451, align 8
  %453 = zext i32 %.013 to i64
  %454 = getelementptr inbounds float, float* %452, i64 %453
  store float %447, float* %454, align 4
  br label %455

455:                                              ; preds = %446
  %456 = add nuw nsw i32 %.013, 1
  br label %442, !llvm.loop !24

457:                                              ; preds = %442
  br label %458

458:                                              ; preds = %457
  %459 = add nuw nsw i32 %.014, 1
  br label %437, !llvm.loop !25

460:                                              ; preds = %437
  br label %461

461:                                              ; preds = %460
  %462 = add nuw nsw i64 %.021, 1
  br label %432, !llvm.loop !26

463:                                              ; preds = %432
  br label %464

464:                                              ; preds = %492, %463
  %.012 = phi i64 [ 0, %463 ], [ %493, %492 ]
  %465 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %466 = load i64, i64* %465, align 8
  %467 = icmp slt i64 %.012, %466
  br i1 %467, label %468, label %494

468:                                              ; preds = %464
  br label %469

469:                                              ; preds = %489, %468
  %.05 = phi i32 [ 0, %468 ], [ %490, %489 ]
  %470 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = icmp slt i32 %.05, %471
  br i1 %472, label %473, label %491

473:                                              ; preds = %469
  br label %474

474:                                              ; preds = %486, %473
  %.04 = phi i32 [ 0, %473 ], [ %487, %486 ]
  %475 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = icmp slt i32 %.04, %476
  br i1 %477, label %478, label %488

478:                                              ; preds = %474
  %479 = getelementptr inbounds float**, float*** %257, i64 %.012
  %480 = load float**, float*** %479, align 8
  %481 = zext i32 %.05 to i64
  %482 = getelementptr inbounds float*, float** %480, i64 %481
  %483 = load float*, float** %482, align 8
  %484 = zext i32 %.04 to i64
  %485 = getelementptr inbounds float, float* %483, i64 %484
  store float 0.000000e+00, float* %485, align 4
  br label %486

486:                                              ; preds = %478
  %487 = add nuw nsw i32 %.04, 1
  br label %474, !llvm.loop !27

488:                                              ; preds = %474
  br label %489

489:                                              ; preds = %488
  %490 = add nuw nsw i32 %.05, 1
  br label %469, !llvm.loop !28

491:                                              ; preds = %469
  br label %492

492:                                              ; preds = %491
  %493 = add nuw nsw i64 %.012, 1
  br label %464, !llvm.loop !29

494:                                              ; preds = %464
  br label %495

495:                                              ; preds = %513, %494
  %.03 = phi i64 [ 0, %494 ], [ %514, %513 ]
  %496 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %497 = load i64, i64* %496, align 8
  %498 = icmp slt i64 %.03, %497
  br i1 %498, label %499, label %515

499:                                              ; preds = %495
  br label %500

500:                                              ; preds = %510, %499
  %.02 = phi i32 [ 0, %499 ], [ %511, %510 ]
  %501 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %502 = load i32, i32* %501, align 4
  %503 = icmp slt i32 %.02, %502
  br i1 %503, label %504, label %512

504:                                              ; preds = %500
  %505 = call float @urand() #4
  %506 = getelementptr inbounds float*, float** %283, i64 %.03
  %507 = load float*, float** %506, align 8
  %508 = zext i32 %.02 to i64
  %509 = getelementptr inbounds float, float* %507, i64 %508
  store float %505, float* %509, align 4
  br label %510

510:                                              ; preds = %504
  %511 = add nuw nsw i32 %.02, 1
  br label %500, !llvm.loop !30

512:                                              ; preds = %500
  br label %513

513:                                              ; preds = %512
  %514 = add nuw nsw i64 %.03, 1
  br label %495, !llvm.loop !31

515:                                              ; preds = %495
  br label %516

516:                                              ; preds = %545, %515
  %.01 = phi i64 [ 0, %515 ], [ %546, %545 ]
  %517 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %518 = load i64, i64* %517, align 8
  %519 = icmp slt i64 %.01, %518
  br i1 %519, label %520, label %547

520:                                              ; preds = %516
  %521 = icmp eq i64 %.01, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %520
  br label %527

523:                                              ; preds = %520
  %524 = call i32 @glibc_compat_rand() #4
  %525 = sext i32 %524 to i64
  %526 = srem i64 %525, %13
  br label %527

527:                                              ; preds = %523, %522
  %.0 = phi i64 [ 0, %522 ], [ %526, %523 ]
  %528 = getelementptr inbounds float**, float*** %16, i64 %.0
  %529 = load float**, float*** %528, align 8
  %530 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 5
  store float** %529, float*** %530, align 8
  %531 = getelementptr inbounds float**, float*** %125, i64 %.0
  %532 = load float**, float*** %531, align 8
  %533 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 4
  store float** %532, float*** %533, align 8
  %534 = getelementptr inbounds float**, float*** %257, i64 %.01
  %535 = load float**, float*** %534, align 8
  %536 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 0
  store float** %535, float*** %536, align 8
  %537 = getelementptr inbounds float**, float*** %231, i64 %.01
  %538 = load float**, float*** %537, align 8
  %539 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 1
  store float** %538, float*** %539, align 8
  %540 = getelementptr inbounds float*, float** %283, i64 %.01
  %541 = load float*, float** %540, align 8
  %542 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 3
  store float* %541, float** %542, align 8
  %543 = call float @urand() #4
  %544 = getelementptr inbounds %struct.Source, %struct.Source* %7, i64 %.01, i32 2
  store float %543, float* %544, align 8
  br label %545

545:                                              ; preds = %527
  %546 = add nuw nsw i64 %.01, 1
  br label %516, !llvm.loop !32

547:                                              ; preds = %516
  call void @free(i8* noundef %15) #4
  call void @free(i8* noundef %124) #4
  call void @free(i8* noundef %256) #4
  call void @free(i8* noundef %230) #4
  call void @free(i8* noundef %282) #4
  ret %struct.Source* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local float @urand() #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @glibc_compat_rand() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_sources(%struct.Input* nocapture noundef readnone byval(%struct.Input) align 8 %0, %struct.Source* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 4
  %4 = bitcast float*** %3 to i8***
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #4
  %7 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 4
  %8 = bitcast float*** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #4
  %10 = bitcast %struct.Source* %1 to i8***
  %11 = load i8**, i8*** %10, align 8
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %12) #4
  %13 = bitcast %struct.Source* %1 to i8**
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %14) #4
  %15 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 5
  %16 = bitcast float*** %15 to i8***
  %17 = load i8**, i8*** %16, align 8
  %18 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %18) #4
  %19 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 5
  %20 = bitcast float*** %19 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @free(i8* noundef %21) #4
  %22 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 1
  %23 = bitcast float*** %22 to i8***
  %24 = load i8**, i8*** %23, align 8
  %25 = load i8*, i8** %24, align 8
  call void @free(i8* noundef %25) #4
  %26 = getelementptr inbounds %struct.Source, %struct.Source* %1, i64 0, i32 1
  %27 = bitcast float*** %26 to i8**
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
