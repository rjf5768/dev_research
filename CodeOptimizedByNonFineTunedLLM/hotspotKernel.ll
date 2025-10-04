; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/hotspot/hotspotKernel.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/hotspot/hotspotKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @hotspotKernel([512 x double]* noundef %0, [512 x double]* noundef %1, [512 x double]* noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) #0 {
  %10 = alloca [512 x double]*, align 8
  %11 = alloca [512 x double]*, align 8
  %12 = alloca [512 x double]*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store [512 x double]* %0, [512 x double]** %10, align 8
  store [512 x double]* %1, [512 x double]** %11, align 8
  store [512 x double]* %2, [512 x double]** %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  store double %8, double* %18, align 8
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %697, %9
  %24 = load i32, i32* %19, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %700

26:                                               ; preds = %23
  store i32 1, i32* %21, align 4
  br label %27

27:                                               ; preds = %143, %26
  %28 = load i32, i32* %21, align 4
  %29 = icmp slt i32 %28, 511
  br i1 %29, label %30, label %146

30:                                               ; preds = %27
  store i32 1, i32* %22, align 4
  br label %31

31:                                               ; preds = %139, %30
  %32 = load i32, i32* %22, align 4
  %33 = icmp slt i32 %32, 511
  br i1 %33, label %34, label %142

34:                                               ; preds = %31
  %35 = load double, double* %17, align 8
  %36 = load double, double* %13, align 8
  %37 = fdiv double %35, %36
  %38 = load [512 x double]*, [512 x double]** %12, align 8
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x double], [512 x double]* %38, i64 %40
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x double], [512 x double]* %41, i64 0, i64 %43
  %45 = load double, double* %44, align 8
  %46 = load [512 x double]*, [512 x double]** %11, align 8
  %47 = load i32, i32* %21, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x double], [512 x double]* %46, i64 %49
  %51 = load i32, i32* %22, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x double], [512 x double]* %50, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load [512 x double]*, [512 x double]** %11, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [512 x double], [512 x double]* %55, i64 %58
  %60 = load i32, i32* %22, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [512 x double], [512 x double]* %59, i64 0, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fadd double %54, %63
  %65 = load [512 x double]*, [512 x double]** %11, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x double], [512 x double]* %65, i64 %67
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [512 x double], [512 x double]* %68, i64 0, i64 %70
  %72 = load double, double* %71, align 8
  %73 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %72, double %64)
  %74 = load double, double* %15, align 8
  %75 = fdiv double %73, %74
  %76 = fadd double %45, %75
  %77 = load [512 x double]*, [512 x double]** %11, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [512 x double], [512 x double]* %77, i64 %79
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x double], [512 x double]* %80, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load [512 x double]*, [512 x double]** %11, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x double], [512 x double]* %86, i64 %88
  %90 = load i32, i32* %22, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x double], [512 x double]* %89, i64 0, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fadd double %85, %94
  %96 = load [512 x double]*, [512 x double]** %11, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [512 x double], [512 x double]* %96, i64 %98
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [512 x double], [512 x double]* %99, i64 0, i64 %101
  %103 = load double, double* %102, align 8
  %104 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %103, double %95)
  %105 = load double, double* %14, align 8
  %106 = fdiv double %104, %105
  %107 = fadd double %76, %106
  %108 = load double, double* %18, align 8
  %109 = load [512 x double]*, [512 x double]** %11, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x double], [512 x double]* %109, i64 %111
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x double], [512 x double]* %112, i64 0, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fsub double %108, %116
  %118 = load double, double* %16, align 8
  %119 = fdiv double %117, %118
  %120 = fadd double %107, %119
  %121 = fmul double %37, %120
  store double %121, double* %20, align 8
  %122 = load [512 x double]*, [512 x double]** %11, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x double], [512 x double]* %122, i64 %124
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [512 x double], [512 x double]* %125, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = load double, double* %20, align 8
  %131 = fadd double %129, %130
  %132 = load [512 x double]*, [512 x double]** %10, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [512 x double], [512 x double]* %132, i64 %134
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [512 x double], [512 x double]* %135, i64 0, i64 %137
  store double %131, double* %138, align 8
  br label %139

139:                                              ; preds = %34
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %22, align 4
  br label %31, !llvm.loop !4

142:                                              ; preds = %31
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %27, !llvm.loop !6

146:                                              ; preds = %27
  %147 = load double, double* %17, align 8
  %148 = load double, double* %13, align 8
  %149 = fdiv double %147, %148
  %150 = load [512 x double]*, [512 x double]** %12, align 8
  %151 = getelementptr inbounds [512 x double], [512 x double]* %150, i64 0
  %152 = getelementptr inbounds [512 x double], [512 x double]* %151, i64 0, i64 0
  %153 = load double, double* %152, align 8
  %154 = load [512 x double]*, [512 x double]** %11, align 8
  %155 = getelementptr inbounds [512 x double], [512 x double]* %154, i64 0
  %156 = getelementptr inbounds [512 x double], [512 x double]* %155, i64 0, i64 1
  %157 = load double, double* %156, align 8
  %158 = load [512 x double]*, [512 x double]** %11, align 8
  %159 = getelementptr inbounds [512 x double], [512 x double]* %158, i64 0
  %160 = getelementptr inbounds [512 x double], [512 x double]* %159, i64 0, i64 0
  %161 = load double, double* %160, align 8
  %162 = fsub double %157, %161
  %163 = load double, double* %14, align 8
  %164 = fdiv double %162, %163
  %165 = fadd double %153, %164
  %166 = load [512 x double]*, [512 x double]** %11, align 8
  %167 = getelementptr inbounds [512 x double], [512 x double]* %166, i64 1
  %168 = getelementptr inbounds [512 x double], [512 x double]* %167, i64 0, i64 0
  %169 = load double, double* %168, align 8
  %170 = load [512 x double]*, [512 x double]** %11, align 8
  %171 = getelementptr inbounds [512 x double], [512 x double]* %170, i64 0
  %172 = getelementptr inbounds [512 x double], [512 x double]* %171, i64 0, i64 0
  %173 = load double, double* %172, align 8
  %174 = fsub double %169, %173
  %175 = load double, double* %15, align 8
  %176 = fdiv double %174, %175
  %177 = fadd double %165, %176
  %178 = load double, double* %18, align 8
  %179 = load [512 x double]*, [512 x double]** %11, align 8
  %180 = getelementptr inbounds [512 x double], [512 x double]* %179, i64 0
  %181 = getelementptr inbounds [512 x double], [512 x double]* %180, i64 0, i64 0
  %182 = load double, double* %181, align 8
  %183 = fsub double %178, %182
  %184 = load double, double* %16, align 8
  %185 = fdiv double %183, %184
  %186 = fadd double %177, %185
  %187 = fmul double %149, %186
  store double %187, double* %20, align 8
  %188 = load [512 x double]*, [512 x double]** %11, align 8
  %189 = getelementptr inbounds [512 x double], [512 x double]* %188, i64 0
  %190 = getelementptr inbounds [512 x double], [512 x double]* %189, i64 0, i64 0
  %191 = load double, double* %190, align 8
  %192 = load double, double* %20, align 8
  %193 = fadd double %191, %192
  %194 = load [512 x double]*, [512 x double]** %10, align 8
  %195 = getelementptr inbounds [512 x double], [512 x double]* %194, i64 0
  %196 = getelementptr inbounds [512 x double], [512 x double]* %195, i64 0, i64 0
  store double %193, double* %196, align 8
  %197 = load double, double* %17, align 8
  %198 = load double, double* %13, align 8
  %199 = fdiv double %197, %198
  %200 = load [512 x double]*, [512 x double]** %12, align 8
  %201 = getelementptr inbounds [512 x double], [512 x double]* %200, i64 0
  %202 = getelementptr inbounds [512 x double], [512 x double]* %201, i64 0, i64 511
  %203 = load double, double* %202, align 8
  %204 = load [512 x double]*, [512 x double]** %11, align 8
  %205 = getelementptr inbounds [512 x double], [512 x double]* %204, i64 0
  %206 = load i32, i32* %22, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [512 x double], [512 x double]* %205, i64 0, i64 %208
  %210 = load double, double* %209, align 8
  %211 = load [512 x double]*, [512 x double]** %11, align 8
  %212 = getelementptr inbounds [512 x double], [512 x double]* %211, i64 0
  %213 = getelementptr inbounds [512 x double], [512 x double]* %212, i64 0, i64 511
  %214 = load double, double* %213, align 8
  %215 = fsub double %210, %214
  %216 = load double, double* %14, align 8
  %217 = fdiv double %215, %216
  %218 = fadd double %203, %217
  %219 = load [512 x double]*, [512 x double]** %11, align 8
  %220 = getelementptr inbounds [512 x double], [512 x double]* %219, i64 1
  %221 = getelementptr inbounds [512 x double], [512 x double]* %220, i64 0, i64 511
  %222 = load double, double* %221, align 8
  %223 = load [512 x double]*, [512 x double]** %11, align 8
  %224 = getelementptr inbounds [512 x double], [512 x double]* %223, i64 0
  %225 = getelementptr inbounds [512 x double], [512 x double]* %224, i64 0, i64 511
  %226 = load double, double* %225, align 8
  %227 = fsub double %222, %226
  %228 = load double, double* %15, align 8
  %229 = fdiv double %227, %228
  %230 = fadd double %218, %229
  %231 = load double, double* %18, align 8
  %232 = load [512 x double]*, [512 x double]** %11, align 8
  %233 = getelementptr inbounds [512 x double], [512 x double]* %232, i64 0
  %234 = getelementptr inbounds [512 x double], [512 x double]* %233, i64 0, i64 511
  %235 = load double, double* %234, align 8
  %236 = fsub double %231, %235
  %237 = load double, double* %16, align 8
  %238 = fdiv double %236, %237
  %239 = fadd double %230, %238
  %240 = fmul double %199, %239
  store double %240, double* %20, align 8
  %241 = load [512 x double]*, [512 x double]** %11, align 8
  %242 = getelementptr inbounds [512 x double], [512 x double]* %241, i64 0
  %243 = getelementptr inbounds [512 x double], [512 x double]* %242, i64 0, i64 511
  %244 = load double, double* %243, align 8
  %245 = load double, double* %20, align 8
  %246 = fadd double %244, %245
  %247 = load [512 x double]*, [512 x double]** %10, align 8
  %248 = getelementptr inbounds [512 x double], [512 x double]* %247, i64 0
  %249 = getelementptr inbounds [512 x double], [512 x double]* %248, i64 0, i64 511
  store double %246, double* %249, align 8
  %250 = load double, double* %17, align 8
  %251 = load double, double* %13, align 8
  %252 = fdiv double %250, %251
  %253 = load [512 x double]*, [512 x double]** %12, align 8
  %254 = getelementptr inbounds [512 x double], [512 x double]* %253, i64 511
  %255 = getelementptr inbounds [512 x double], [512 x double]* %254, i64 0, i64 511
  %256 = load double, double* %255, align 8
  %257 = load [512 x double]*, [512 x double]** %11, align 8
  %258 = getelementptr inbounds [512 x double], [512 x double]* %257, i64 511
  %259 = getelementptr inbounds [512 x double], [512 x double]* %258, i64 0, i64 510
  %260 = load double, double* %259, align 8
  %261 = load [512 x double]*, [512 x double]** %11, align 8
  %262 = getelementptr inbounds [512 x double], [512 x double]* %261, i64 511
  %263 = getelementptr inbounds [512 x double], [512 x double]* %262, i64 0, i64 511
  %264 = load double, double* %263, align 8
  %265 = fsub double %260, %264
  %266 = load double, double* %14, align 8
  %267 = fdiv double %265, %266
  %268 = fadd double %256, %267
  %269 = load [512 x double]*, [512 x double]** %11, align 8
  %270 = getelementptr inbounds [512 x double], [512 x double]* %269, i64 510
  %271 = getelementptr inbounds [512 x double], [512 x double]* %270, i64 0, i64 511
  %272 = load double, double* %271, align 8
  %273 = load [512 x double]*, [512 x double]** %11, align 8
  %274 = getelementptr inbounds [512 x double], [512 x double]* %273, i64 511
  %275 = getelementptr inbounds [512 x double], [512 x double]* %274, i64 0, i64 511
  %276 = load double, double* %275, align 8
  %277 = fsub double %272, %276
  %278 = load double, double* %15, align 8
  %279 = fdiv double %277, %278
  %280 = fadd double %268, %279
  %281 = load double, double* %18, align 8
  %282 = load [512 x double]*, [512 x double]** %11, align 8
  %283 = getelementptr inbounds [512 x double], [512 x double]* %282, i64 511
  %284 = getelementptr inbounds [512 x double], [512 x double]* %283, i64 0, i64 511
  %285 = load double, double* %284, align 8
  %286 = fsub double %281, %285
  %287 = load double, double* %16, align 8
  %288 = fdiv double %286, %287
  %289 = fadd double %280, %288
  %290 = fmul double %252, %289
  store double %290, double* %20, align 8
  %291 = load [512 x double]*, [512 x double]** %11, align 8
  %292 = getelementptr inbounds [512 x double], [512 x double]* %291, i64 511
  %293 = getelementptr inbounds [512 x double], [512 x double]* %292, i64 0, i64 511
  %294 = load double, double* %293, align 8
  %295 = load double, double* %20, align 8
  %296 = fadd double %294, %295
  %297 = load [512 x double]*, [512 x double]** %10, align 8
  %298 = getelementptr inbounds [512 x double], [512 x double]* %297, i64 511
  %299 = getelementptr inbounds [512 x double], [512 x double]* %298, i64 0, i64 511
  store double %296, double* %299, align 8
  %300 = load double, double* %17, align 8
  %301 = load double, double* %13, align 8
  %302 = fdiv double %300, %301
  %303 = load [512 x double]*, [512 x double]** %12, align 8
  %304 = getelementptr inbounds [512 x double], [512 x double]* %303, i64 511
  %305 = getelementptr inbounds [512 x double], [512 x double]* %304, i64 0, i64 0
  %306 = load double, double* %305, align 8
  %307 = load [512 x double]*, [512 x double]** %11, align 8
  %308 = getelementptr inbounds [512 x double], [512 x double]* %307, i64 511
  %309 = getelementptr inbounds [512 x double], [512 x double]* %308, i64 0, i64 1
  %310 = load double, double* %309, align 8
  %311 = load [512 x double]*, [512 x double]** %11, align 8
  %312 = getelementptr inbounds [512 x double], [512 x double]* %311, i64 511
  %313 = getelementptr inbounds [512 x double], [512 x double]* %312, i64 0, i64 0
  %314 = load double, double* %313, align 8
  %315 = fsub double %310, %314
  %316 = load double, double* %14, align 8
  %317 = fdiv double %315, %316
  %318 = fadd double %306, %317
  %319 = load [512 x double]*, [512 x double]** %11, align 8
  %320 = getelementptr inbounds [512 x double], [512 x double]* %319, i64 510
  %321 = getelementptr inbounds [512 x double], [512 x double]* %320, i64 0, i64 0
  %322 = load double, double* %321, align 8
  %323 = load [512 x double]*, [512 x double]** %11, align 8
  %324 = getelementptr inbounds [512 x double], [512 x double]* %323, i64 511
  %325 = getelementptr inbounds [512 x double], [512 x double]* %324, i64 0, i64 0
  %326 = load double, double* %325, align 8
  %327 = fsub double %322, %326
  %328 = load double, double* %15, align 8
  %329 = fdiv double %327, %328
  %330 = fadd double %318, %329
  %331 = load double, double* %18, align 8
  %332 = load [512 x double]*, [512 x double]** %11, align 8
  %333 = getelementptr inbounds [512 x double], [512 x double]* %332, i64 511
  %334 = getelementptr inbounds [512 x double], [512 x double]* %333, i64 0, i64 0
  %335 = load double, double* %334, align 8
  %336 = fsub double %331, %335
  %337 = load double, double* %16, align 8
  %338 = fdiv double %336, %337
  %339 = fadd double %330, %338
  %340 = fmul double %302, %339
  store double %340, double* %20, align 8
  %341 = load [512 x double]*, [512 x double]** %11, align 8
  %342 = getelementptr inbounds [512 x double], [512 x double]* %341, i64 511
  %343 = getelementptr inbounds [512 x double], [512 x double]* %342, i64 0, i64 0
  %344 = load double, double* %343, align 8
  %345 = load double, double* %20, align 8
  %346 = fadd double %344, %345
  %347 = load [512 x double]*, [512 x double]** %10, align 8
  %348 = getelementptr inbounds [512 x double], [512 x double]* %347, i64 511
  %349 = getelementptr inbounds [512 x double], [512 x double]* %348, i64 0, i64 0
  store double %346, double* %349, align 8
  store i32 1, i32* %22, align 4
  br label %350

350:                                              ; preds = %504, %146
  %351 = load i32, i32* %22, align 4
  %352 = icmp slt i32 %351, 511
  br i1 %352, label %353, label %507

353:                                              ; preds = %350
  %354 = load double, double* %17, align 8
  %355 = load double, double* %13, align 8
  %356 = fdiv double %354, %355
  %357 = load [512 x double]*, [512 x double]** %12, align 8
  %358 = getelementptr inbounds [512 x double], [512 x double]* %357, i64 0
  %359 = load i32, i32* %22, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [512 x double], [512 x double]* %358, i64 0, i64 %360
  %362 = load double, double* %361, align 8
  %363 = load [512 x double]*, [512 x double]** %11, align 8
  %364 = getelementptr inbounds [512 x double], [512 x double]* %363, i64 0
  %365 = load i32, i32* %22, align 4
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [512 x double], [512 x double]* %364, i64 0, i64 %367
  %369 = load double, double* %368, align 8
  %370 = load [512 x double]*, [512 x double]** %11, align 8
  %371 = getelementptr inbounds [512 x double], [512 x double]* %370, i64 0
  %372 = load i32, i32* %22, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [512 x double], [512 x double]* %371, i64 0, i64 %374
  %376 = load double, double* %375, align 8
  %377 = fadd double %369, %376
  %378 = load [512 x double]*, [512 x double]** %11, align 8
  %379 = getelementptr inbounds [512 x double], [512 x double]* %378, i64 0
  %380 = load i32, i32* %22, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [512 x double], [512 x double]* %379, i64 0, i64 %381
  %383 = load double, double* %382, align 8
  %384 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %383, double %377)
  %385 = load double, double* %14, align 8
  %386 = fdiv double %384, %385
  %387 = fadd double %362, %386
  %388 = load [512 x double]*, [512 x double]** %11, align 8
  %389 = getelementptr inbounds [512 x double], [512 x double]* %388, i64 1
  %390 = load i32, i32* %22, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [512 x double], [512 x double]* %389, i64 0, i64 %391
  %393 = load double, double* %392, align 8
  %394 = load [512 x double]*, [512 x double]** %11, align 8
  %395 = getelementptr inbounds [512 x double], [512 x double]* %394, i64 0
  %396 = load i32, i32* %22, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [512 x double], [512 x double]* %395, i64 0, i64 %397
  %399 = load double, double* %398, align 8
  %400 = fsub double %393, %399
  %401 = load double, double* %15, align 8
  %402 = fdiv double %400, %401
  %403 = fadd double %387, %402
  %404 = load double, double* %18, align 8
  %405 = load [512 x double]*, [512 x double]** %11, align 8
  %406 = getelementptr inbounds [512 x double], [512 x double]* %405, i64 0
  %407 = load i32, i32* %22, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [512 x double], [512 x double]* %406, i64 0, i64 %408
  %410 = load double, double* %409, align 8
  %411 = fsub double %404, %410
  %412 = load double, double* %16, align 8
  %413 = fdiv double %411, %412
  %414 = fadd double %403, %413
  %415 = fmul double %356, %414
  store double %415, double* %20, align 8
  %416 = load [512 x double]*, [512 x double]** %11, align 8
  %417 = getelementptr inbounds [512 x double], [512 x double]* %416, i64 0
  %418 = load i32, i32* %22, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [512 x double], [512 x double]* %417, i64 0, i64 %419
  %421 = load double, double* %420, align 8
  %422 = load double, double* %20, align 8
  %423 = fadd double %421, %422
  %424 = load [512 x double]*, [512 x double]** %10, align 8
  %425 = getelementptr inbounds [512 x double], [512 x double]* %424, i64 0
  %426 = load i32, i32* %22, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [512 x double], [512 x double]* %425, i64 0, i64 %427
  store double %423, double* %428, align 8
  %429 = load double, double* %17, align 8
  %430 = load double, double* %13, align 8
  %431 = fdiv double %429, %430
  %432 = load [512 x double]*, [512 x double]** %12, align 8
  %433 = getelementptr inbounds [512 x double], [512 x double]* %432, i64 511
  %434 = load i32, i32* %22, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [512 x double], [512 x double]* %433, i64 0, i64 %435
  %437 = load double, double* %436, align 8
  %438 = load [512 x double]*, [512 x double]** %11, align 8
  %439 = getelementptr inbounds [512 x double], [512 x double]* %438, i64 511
  %440 = load i32, i32* %22, align 4
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [512 x double], [512 x double]* %439, i64 0, i64 %442
  %444 = load double, double* %443, align 8
  %445 = load [512 x double]*, [512 x double]** %11, align 8
  %446 = getelementptr inbounds [512 x double], [512 x double]* %445, i64 511
  %447 = load i32, i32* %22, align 4
  %448 = sub nsw i32 %447, 1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [512 x double], [512 x double]* %446, i64 0, i64 %449
  %451 = load double, double* %450, align 8
  %452 = fadd double %444, %451
  %453 = load [512 x double]*, [512 x double]** %11, align 8
  %454 = getelementptr inbounds [512 x double], [512 x double]* %453, i64 511
  %455 = load i32, i32* %22, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [512 x double], [512 x double]* %454, i64 0, i64 %456
  %458 = load double, double* %457, align 8
  %459 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %458, double %452)
  %460 = load double, double* %14, align 8
  %461 = fdiv double %459, %460
  %462 = fadd double %437, %461
  %463 = load [512 x double]*, [512 x double]** %11, align 8
  %464 = getelementptr inbounds [512 x double], [512 x double]* %463, i64 510
  %465 = load i32, i32* %22, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [512 x double], [512 x double]* %464, i64 0, i64 %466
  %468 = load double, double* %467, align 8
  %469 = load [512 x double]*, [512 x double]** %11, align 8
  %470 = getelementptr inbounds [512 x double], [512 x double]* %469, i64 511
  %471 = load i32, i32* %22, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [512 x double], [512 x double]* %470, i64 0, i64 %472
  %474 = load double, double* %473, align 8
  %475 = fsub double %468, %474
  %476 = load double, double* %15, align 8
  %477 = fdiv double %475, %476
  %478 = fadd double %462, %477
  %479 = load double, double* %18, align 8
  %480 = load [512 x double]*, [512 x double]** %11, align 8
  %481 = getelementptr inbounds [512 x double], [512 x double]* %480, i64 511
  %482 = load i32, i32* %22, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [512 x double], [512 x double]* %481, i64 0, i64 %483
  %485 = load double, double* %484, align 8
  %486 = fsub double %479, %485
  %487 = load double, double* %16, align 8
  %488 = fdiv double %486, %487
  %489 = fadd double %478, %488
  %490 = fmul double %431, %489
  store double %490, double* %20, align 8
  %491 = load [512 x double]*, [512 x double]** %11, align 8
  %492 = getelementptr inbounds [512 x double], [512 x double]* %491, i64 511
  %493 = load i32, i32* %22, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [512 x double], [512 x double]* %492, i64 0, i64 %494
  %496 = load double, double* %495, align 8
  %497 = load double, double* %20, align 8
  %498 = fadd double %496, %497
  %499 = load [512 x double]*, [512 x double]** %10, align 8
  %500 = getelementptr inbounds [512 x double], [512 x double]* %499, i64 511
  %501 = load i32, i32* %22, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [512 x double], [512 x double]* %500, i64 0, i64 %502
  store double %498, double* %503, align 8
  br label %504

504:                                              ; preds = %353
  %505 = load i32, i32* %22, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %22, align 4
  br label %350, !llvm.loop !7

507:                                              ; preds = %350
  store i32 1, i32* %21, align 4
  br label %508

508:                                              ; preds = %662, %507
  %509 = load i32, i32* %21, align 4
  %510 = icmp slt i32 %509, 511
  br i1 %510, label %511, label %665

511:                                              ; preds = %508
  %512 = load double, double* %17, align 8
  %513 = load double, double* %13, align 8
  %514 = fdiv double %512, %513
  %515 = load [512 x double]*, [512 x double]** %12, align 8
  %516 = load i32, i32* %21, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [512 x double], [512 x double]* %515, i64 %517
  %519 = getelementptr inbounds [512 x double], [512 x double]* %518, i64 0, i64 511
  %520 = load double, double* %519, align 8
  %521 = load [512 x double]*, [512 x double]** %11, align 8
  %522 = load i32, i32* %21, align 4
  %523 = add nsw i32 %522, 1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [512 x double], [512 x double]* %521, i64 %524
  %526 = getelementptr inbounds [512 x double], [512 x double]* %525, i64 0, i64 511
  %527 = load double, double* %526, align 8
  %528 = load [512 x double]*, [512 x double]** %11, align 8
  %529 = load i32, i32* %21, align 4
  %530 = sub nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [512 x double], [512 x double]* %528, i64 %531
  %533 = getelementptr inbounds [512 x double], [512 x double]* %532, i64 0, i64 511
  %534 = load double, double* %533, align 8
  %535 = fadd double %527, %534
  %536 = load [512 x double]*, [512 x double]** %11, align 8
  %537 = load i32, i32* %21, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [512 x double], [512 x double]* %536, i64 %538
  %540 = getelementptr inbounds [512 x double], [512 x double]* %539, i64 0, i64 511
  %541 = load double, double* %540, align 8
  %542 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %541, double %535)
  %543 = load double, double* %15, align 8
  %544 = fdiv double %542, %543
  %545 = fadd double %520, %544
  %546 = load [512 x double]*, [512 x double]** %11, align 8
  %547 = load i32, i32* %21, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [512 x double], [512 x double]* %546, i64 %548
  %550 = getelementptr inbounds [512 x double], [512 x double]* %549, i64 0, i64 510
  %551 = load double, double* %550, align 8
  %552 = load [512 x double]*, [512 x double]** %11, align 8
  %553 = load i32, i32* %21, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [512 x double], [512 x double]* %552, i64 %554
  %556 = getelementptr inbounds [512 x double], [512 x double]* %555, i64 0, i64 511
  %557 = load double, double* %556, align 8
  %558 = fsub double %551, %557
  %559 = load double, double* %14, align 8
  %560 = fdiv double %558, %559
  %561 = fadd double %545, %560
  %562 = load double, double* %18, align 8
  %563 = load [512 x double]*, [512 x double]** %11, align 8
  %564 = load i32, i32* %21, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [512 x double], [512 x double]* %563, i64 %565
  %567 = getelementptr inbounds [512 x double], [512 x double]* %566, i64 0, i64 511
  %568 = load double, double* %567, align 8
  %569 = fsub double %562, %568
  %570 = load double, double* %16, align 8
  %571 = fdiv double %569, %570
  %572 = fadd double %561, %571
  %573 = fmul double %514, %572
  store double %573, double* %20, align 8
  %574 = load [512 x double]*, [512 x double]** %11, align 8
  %575 = load i32, i32* %21, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [512 x double], [512 x double]* %574, i64 %576
  %578 = getelementptr inbounds [512 x double], [512 x double]* %577, i64 0, i64 511
  %579 = load double, double* %578, align 8
  %580 = load double, double* %20, align 8
  %581 = fadd double %579, %580
  %582 = load [512 x double]*, [512 x double]** %10, align 8
  %583 = load i32, i32* %21, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [512 x double], [512 x double]* %582, i64 %584
  %586 = getelementptr inbounds [512 x double], [512 x double]* %585, i64 0, i64 511
  store double %581, double* %586, align 8
  %587 = load double, double* %17, align 8
  %588 = load double, double* %13, align 8
  %589 = fdiv double %587, %588
  %590 = load [512 x double]*, [512 x double]** %12, align 8
  %591 = load i32, i32* %21, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [512 x double], [512 x double]* %590, i64 %592
  %594 = getelementptr inbounds [512 x double], [512 x double]* %593, i64 0, i64 0
  %595 = load double, double* %594, align 8
  %596 = load [512 x double]*, [512 x double]** %11, align 8
  %597 = load i32, i32* %21, align 4
  %598 = add nsw i32 %597, 1
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [512 x double], [512 x double]* %596, i64 %599
  %601 = getelementptr inbounds [512 x double], [512 x double]* %600, i64 0, i64 0
  %602 = load double, double* %601, align 8
  %603 = load [512 x double]*, [512 x double]** %11, align 8
  %604 = load i32, i32* %21, align 4
  %605 = sub nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [512 x double], [512 x double]* %603, i64 %606
  %608 = getelementptr inbounds [512 x double], [512 x double]* %607, i64 0, i64 0
  %609 = load double, double* %608, align 8
  %610 = fadd double %602, %609
  %611 = load [512 x double]*, [512 x double]** %11, align 8
  %612 = load i32, i32* %21, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [512 x double], [512 x double]* %611, i64 %613
  %615 = getelementptr inbounds [512 x double], [512 x double]* %614, i64 0, i64 0
  %616 = load double, double* %615, align 8
  %617 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %616, double %610)
  %618 = load double, double* %15, align 8
  %619 = fdiv double %617, %618
  %620 = fadd double %595, %619
  %621 = load [512 x double]*, [512 x double]** %11, align 8
  %622 = load i32, i32* %21, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [512 x double], [512 x double]* %621, i64 %623
  %625 = getelementptr inbounds [512 x double], [512 x double]* %624, i64 0, i64 1
  %626 = load double, double* %625, align 8
  %627 = load [512 x double]*, [512 x double]** %11, align 8
  %628 = load i32, i32* %21, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [512 x double], [512 x double]* %627, i64 %629
  %631 = getelementptr inbounds [512 x double], [512 x double]* %630, i64 0, i64 0
  %632 = load double, double* %631, align 8
  %633 = fsub double %626, %632
  %634 = load double, double* %14, align 8
  %635 = fdiv double %633, %634
  %636 = fadd double %620, %635
  %637 = load double, double* %18, align 8
  %638 = load [512 x double]*, [512 x double]** %11, align 8
  %639 = load i32, i32* %21, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [512 x double], [512 x double]* %638, i64 %640
  %642 = getelementptr inbounds [512 x double], [512 x double]* %641, i64 0, i64 0
  %643 = load double, double* %642, align 8
  %644 = fsub double %637, %643
  %645 = load double, double* %16, align 8
  %646 = fdiv double %644, %645
  %647 = fadd double %636, %646
  %648 = fmul double %589, %647
  store double %648, double* %20, align 8
  %649 = load [512 x double]*, [512 x double]** %11, align 8
  %650 = load i32, i32* %21, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [512 x double], [512 x double]* %649, i64 %651
  %653 = getelementptr inbounds [512 x double], [512 x double]* %652, i64 0, i64 0
  %654 = load double, double* %653, align 8
  %655 = load double, double* %20, align 8
  %656 = fadd double %654, %655
  %657 = load [512 x double]*, [512 x double]** %10, align 8
  %658 = load i32, i32* %21, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [512 x double], [512 x double]* %657, i64 %659
  %661 = getelementptr inbounds [512 x double], [512 x double]* %660, i64 0, i64 0
  store double %656, double* %661, align 8
  br label %662

662:                                              ; preds = %511
  %663 = load i32, i32* %21, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %21, align 4
  br label %508, !llvm.loop !8

665:                                              ; preds = %508
  store i32 0, i32* %21, align 4
  br label %666

666:                                              ; preds = %693, %665
  %667 = load i32, i32* %21, align 4
  %668 = icmp slt i32 %667, 512
  br i1 %668, label %669, label %696

669:                                              ; preds = %666
  store i32 0, i32* %22, align 4
  br label %670

670:                                              ; preds = %689, %669
  %671 = load i32, i32* %22, align 4
  %672 = icmp slt i32 %671, 512
  br i1 %672, label %673, label %692

673:                                              ; preds = %670
  %674 = load [512 x double]*, [512 x double]** %10, align 8
  %675 = load i32, i32* %21, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [512 x double], [512 x double]* %674, i64 %676
  %678 = load i32, i32* %22, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [512 x double], [512 x double]* %677, i64 0, i64 %679
  %681 = load double, double* %680, align 8
  %682 = load [512 x double]*, [512 x double]** %11, align 8
  %683 = load i32, i32* %21, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [512 x double], [512 x double]* %682, i64 %684
  %686 = load i32, i32* %22, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [512 x double], [512 x double]* %685, i64 0, i64 %687
  store double %681, double* %688, align 8
  br label %689

689:                                              ; preds = %673
  %690 = load i32, i32* %22, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %22, align 4
  br label %670, !llvm.loop !9

692:                                              ; preds = %670
  br label %693

693:                                              ; preds = %692
  %694 = load i32, i32* %21, align 4
  %695 = add nsw i32 %694, 1
  store i32 %695, i32* %21, align 4
  br label %666, !llvm.loop !10

696:                                              ; preds = %666
  br label %697

697:                                              ; preds = %696
  %698 = load i32, i32* %19, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %19, align 4
  br label %23, !llvm.loop !11

700:                                              ; preds = %23
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
