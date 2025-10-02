; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/selectpin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/selectpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@randVar = external dso_local global i32, align 4
@flips = external dso_local global i32, align 4
@flipp = external dso_local global i32, align 4
@attp = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @selectpin(%struct.cellbox* noundef %0) #0 {
  %2 = alloca %struct.cellbox*, align 8
  %3 = alloca %struct.contentbox*, align 8
  %4 = alloca %struct.uncombox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %2, align 8
  %19 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 20
  %21 = load %struct.uncombox*, %struct.uncombox** %20, align 8
  store %struct.uncombox* %21, %struct.uncombox** %4, align 8
  br label %22

22:                                               ; preds = %36, %1
  %23 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 18
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* @randVar, align 4
  %28 = mul nsw i32 %27, 1103515245
  %29 = add nsw i32 %28, 12345
  store i32 %29, i32* @randVar, align 4
  %30 = and i32 %29, 2147483647
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 0x41DFFFFFFFC00000
  %33 = fmul double %26, %32
  %34 = fptosi double %33 to i32
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 18
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %22, label %43, !llvm.loop !4

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %52, %43
  %45 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %45, i64 %47
  %49 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %44, !llvm.loop !6

55:                                               ; preds = %44
  %56 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %56, i64 %58
  %60 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %92

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %81, %63
  %65 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %65, i64 %67
  %69 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to double
  %72 = load i32, i32* @randVar, align 4
  %73 = mul nsw i32 %72, 1103515245
  %74 = add nsw i32 %73, 12345
  store i32 %74, i32* @randVar, align 4
  %75 = and i32 %74, 2147483647
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 0x41DFFFFFFFC00000
  %78 = fmul double %71, %77
  %79 = fptosi double %78 to i32
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %83, i64 %85
  %87 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = icmp eq i32 %82, %89
  br i1 %90, label %64, label %91, !llvm.loop !7

91:                                               ; preds = %81
  br label %164

92:                                               ; preds = %55
  %93 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %93, i64 %95
  %97 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %146

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %118, %100
  %102 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %102, i64 %104
  %106 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sitofp i32 %107 to double
  %109 = load i32, i32* @randVar, align 4
  %110 = mul nsw i32 %109, 1103515245
  %111 = add nsw i32 %110, 12345
  store i32 %111, i32* @randVar, align 4
  %112 = and i32 %111, 2147483647
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %113, 0x41DFFFFFFFC00000
  %115 = fmul double %108, %114
  %116 = fptosi double %115 to i32
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %101
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %120, i64 %122
  %124 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = icmp eq i32 %119, %126
  br i1 %127, label %101, label %128, !llvm.loop !8

128:                                              ; preds = %118
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %132, i64 %134
  %136 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %16, align 4
  br label %145

138:                                              ; preds = %128
  %139 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %139, i64 %141
  %143 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %138, %131
  br label %163

146:                                              ; preds = %92
  %147 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %147, i64 %149
  %151 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %155, i64 %157
  %159 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %16, align 4
  br label %162

161:                                              ; preds = %146
  br label %364

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %145
  br label %164

164:                                              ; preds = %163, %91
  %165 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %166 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 22
  %167 = load %struct.sidebox*, %struct.sidebox** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %167, i64 %169
  %171 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %6, align 4
  %173 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i32 0, i32 22
  %175 = load %struct.sidebox*, %struct.sidebox** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %175, i64 %177
  %179 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %181, %182
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  %185 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %185, i64 %187
  %189 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %191 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 19
  %193 = load %struct.contentbox*, %struct.contentbox** %192, align 8
  store %struct.contentbox* %193, %struct.contentbox** %3, align 8
  br label %194

194:                                              ; preds = %232, %164
  store i32 0, i32* %10, align 4
  %195 = load i32, i32* %15, align 4
  %196 = sitofp i32 %195 to double
  %197 = load i32, i32* @randVar, align 4
  %198 = mul nsw i32 %197, 1103515245
  %199 = add nsw i32 %198, 12345
  store i32 %199, i32* @randVar, align 4
  %200 = and i32 %199, 2147483647
  %201 = sitofp i32 %200 to double
  %202 = fdiv double %201, 0x41DFFFFFFFC00000
  %203 = fmul double %196, %202
  %204 = fptosi double %203 to i32
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %228, %194
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load %struct.contentbox*, %struct.contentbox** %3, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %214, i64 %216
  %218 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %213
  store i32 1, i32* %13, align 4
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %9, align 4
  br label %231

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %209, !llvm.loop !9

231:                                              ; preds = %225, %209
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  br i1 %235, label %194, label %236, !llvm.loop !10

236:                                              ; preds = %232
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %238, i64 %240
  %242 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %237, %243
  br i1 %244, label %245, label %261

245:                                              ; preds = %236
  %246 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @upin(%struct.cellbox* noundef %246, i32 noundef %247, i32 noundef %248, i32 noundef %249, i32 noundef %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %245
  %254 = load i32, i32* @flips, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @flips, align 4
  %256 = load i32, i32* @flipp, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* @flipp, align 4
  br label %258

258:                                              ; preds = %253, %245
  %259 = load i32, i32* @attp, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @attp, align 4
  br label %261

261:                                              ; preds = %258, %236
  %262 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %262, i64 %264
  %266 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %363

269:                                              ; preds = %261
  %270 = load i32, i32* %12, align 4
  %271 = icmp sge i32 %270, 2
  br i1 %271, label %272, label %363

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %284, %272
  %274 = load i32, i32* %12, align 4
  %275 = sitofp i32 %274 to double
  %276 = load i32, i32* @randVar, align 4
  %277 = mul nsw i32 %276, 1103515245
  %278 = add nsw i32 %277, 12345
  store i32 %278, i32* @randVar, align 4
  %279 = and i32 %278, 2147483647
  %280 = sitofp i32 %279 to double
  %281 = fdiv double %280, 0x41DFFFFFFFC00000
  %282 = fmul double %275, %281
  %283 = fptosi double %282 to i32
  store i32 %283, i32* %17, align 4
  br label %284

284:                                              ; preds = %273
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %12, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %273, label %288, !llvm.loop !11

288:                                              ; preds = %284
  br label %289

289:                                              ; preds = %308, %288
  %290 = load i32, i32* %12, align 4
  %291 = sitofp i32 %290 to double
  %292 = load i32, i32* @randVar, align 4
  %293 = mul nsw i32 %292, 1103515245
  %294 = add nsw i32 %293, 12345
  store i32 %294, i32* @randVar, align 4
  %295 = and i32 %294, 2147483647
  %296 = sitofp i32 %295 to double
  %297 = fdiv double %296, 0x41DFFFFFFFC00000
  %298 = fmul double %291, %297
  %299 = fptosi double %298 to i32
  store i32 %299, i32* %18, align 4
  br label %300

300:                                              ; preds = %289
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* %17, align 4
  %307 = icmp eq i32 %305, %306
  br label %308

308:                                              ; preds = %304, %300
  %309 = phi i1 [ true, %300 ], [ %307, %304 ]
  br i1 %309, label %289, label %310, !llvm.loop !12

310:                                              ; preds = %308
  %311 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* %17, align 4
  %314 = add nsw i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %311, i64 %315
  %317 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %320 = load i32, i32* %5, align 4
  %321 = load i32, i32* %18, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %319, i64 %323
  %325 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %318, %326
  br i1 %327, label %328, label %362

328:                                              ; preds = %310
  %329 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %330 = load i32, i32* %5, align 4
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %5, align 4
  %334 = load i32, i32* %18, align 4
  %335 = add nsw i32 %333, %334
  %336 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* %17, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %336, i64 %340
  %342 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.uncombox*, %struct.uncombox** %4, align 8
  %345 = load i32, i32* %5, align 4
  %346 = load i32, i32* %18, align 4
  %347 = add nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %344, i64 %348
  %350 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @upinswap(%struct.cellbox* noundef %329, i32 noundef %332, i32 noundef %335, i32 noundef %343, i32 noundef %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %328
  %355 = load i32, i32* @flips, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* @flips, align 4
  %357 = load i32, i32* @flipp, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* @flipp, align 4
  br label %359

359:                                              ; preds = %354, %328
  %360 = load i32, i32* @attp, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* @attp, align 4
  br label %362

362:                                              ; preds = %359, %310
  br label %363

363:                                              ; preds = %362, %269, %261
  br label %364

364:                                              ; preds = %363, %161
  ret void
}

declare dso_local i32 @upin(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @upinswap(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
