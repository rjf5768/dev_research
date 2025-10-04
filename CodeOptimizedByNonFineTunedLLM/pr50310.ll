; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr50310.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr50310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local global [4 x double] zeroinitializer, align 16
@s2 = dso_local global [4 x double] zeroinitializer, align 16
@s3 = dso_local global [64 x double] zeroinitializer, align 16
@main.masks = internal global [8 x i32] [i32 2, i32 6, i32 1, i32 5, i32 3, i32 8, i32 2, i32 1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fcmp ogt double %9, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, double -1.000000e+00, double 0.000000e+00
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 0, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %19
  store double %16, double* %20, align 8
  br label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2, !llvm.loop !4

24:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fcmp ogt double %32, %36
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, double -1.000000e+00, double 0.000000e+00
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 4, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %43
  store double %40, double* %44, align 8
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %25, !llvm.loop !6

48:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fcmp oge double %56, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, double -1.000000e+00, double 0.000000e+00
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 8, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %66
  store double %63, double* %67, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %49, !llvm.loop !7

71:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, i32* %1, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %77
  %79 = load double, double* %78, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fcmp oge double %79, %83
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, double -1.000000e+00, double 0.000000e+00
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 12, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %90
  store double %87, double* %91, align 8
  br label %92

92:                                               ; preds = %75
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %72, !llvm.loop !8

95:                                               ; preds = %72
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %115, %95
  %97 = load i32, i32* %1, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %101
  %103 = load double, double* %102, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fcmp olt double %103, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, double -1.000000e+00, double 0.000000e+00
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 16, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %113
  store double %110, double* %114, align 8
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %96, !llvm.loop !9

118:                                              ; preds = %96
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %139, %118
  %120 = load i32, i32* %1, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %124
  %126 = load double, double* %125, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fcmp olt double %126, %130
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, double -1.000000e+00, double 0.000000e+00
  %135 = load i32, i32* %1, align 4
  %136 = add nsw i32 20, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %137
  store double %134, double* %138, align 8
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %119, !llvm.loop !10

142:                                              ; preds = %119
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %162, %142
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %148
  %150 = load double, double* %149, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %152
  %154 = load double, double* %153, align 8
  %155 = fcmp ole double %150, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, double -1.000000e+00, double 0.000000e+00
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 24, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %160
  store double %157, double* %161, align 8
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4
  br label %143, !llvm.loop !11

165:                                              ; preds = %143
  store i32 0, i32* %1, align 4
  br label %166

166:                                              ; preds = %186, %165
  %167 = load i32, i32* %1, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %171
  %173 = load double, double* %172, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %175
  %177 = load double, double* %176, align 8
  %178 = fcmp ole double %173, %177
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, double -1.000000e+00, double 0.000000e+00
  %182 = load i32, i32* %1, align 4
  %183 = add nsw i32 28, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %184
  store double %181, double* %185, align 8
  br label %186

186:                                              ; preds = %169
  %187 = load i32, i32* %1, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %1, align 4
  br label %166, !llvm.loop !12

189:                                              ; preds = %166
  store i32 0, i32* %1, align 4
  br label %190

190:                                              ; preds = %209, %189
  %191 = load i32, i32* %1, align 4
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  %194 = load i32, i32* %1, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %195
  %197 = load double, double* %196, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %199
  %201 = load double, double* %200, align 8
  %202 = fcmp one double %197, %201
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, double -1.000000e+00, double 0.000000e+00
  %205 = load i32, i32* %1, align 4
  %206 = add nsw i32 32, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %207
  store double %204, double* %208, align 8
  br label %209

209:                                              ; preds = %193
  %210 = load i32, i32* %1, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %1, align 4
  br label %190, !llvm.loop !13

212:                                              ; preds = %190
  store i32 0, i32* %1, align 4
  br label %213

213:                                              ; preds = %233, %212
  %214 = load i32, i32* %1, align 4
  %215 = icmp slt i32 %214, 4
  br i1 %215, label %216, label %236

216:                                              ; preds = %213
  %217 = load i32, i32* %1, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = load i32, i32* %1, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fcmp one double %220, %224
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, double -1.000000e+00, double 0.000000e+00
  %229 = load i32, i32* %1, align 4
  %230 = add nsw i32 36, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %231
  store double %228, double* %232, align 8
  br label %233

233:                                              ; preds = %216
  %234 = load i32, i32* %1, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %1, align 4
  br label %213, !llvm.loop !14

236:                                              ; preds = %213
  store i32 0, i32* %1, align 4
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i32, i32* %1, align 4
  %239 = icmp slt i32 %238, 4
  br i1 %239, label %240, label %259

240:                                              ; preds = %237
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %242
  %244 = load double, double* %243, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %246
  %248 = load double, double* %247, align 8
  %249 = fcmp uno double %244, %248
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, double -1.000000e+00, double 0.000000e+00
  %252 = load i32, i32* %1, align 4
  %253 = add nsw i32 40, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %254
  store double %251, double* %255, align 8
  br label %256

256:                                              ; preds = %240
  %257 = load i32, i32* %1, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %1, align 4
  br label %237, !llvm.loop !15

259:                                              ; preds = %237
  store i32 0, i32* %1, align 4
  br label %260

260:                                              ; preds = %280, %259
  %261 = load i32, i32* %1, align 4
  %262 = icmp slt i32 %261, 4
  br i1 %262, label %263, label %283

263:                                              ; preds = %260
  %264 = load i32, i32* %1, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %265
  %267 = load double, double* %266, align 8
  %268 = load i32, i32* %1, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %269
  %271 = load double, double* %270, align 8
  %272 = fcmp uno double %267, %271
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, double -1.000000e+00, double 0.000000e+00
  %276 = load i32, i32* %1, align 4
  %277 = add nsw i32 44, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %278
  store double %275, double* %279, align 8
  br label %280

280:                                              ; preds = %263
  %281 = load i32, i32* %1, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %1, align 4
  br label %260, !llvm.loop !16

283:                                              ; preds = %260
  store i32 0, i32* %1, align 4
  br label %284

284:                                              ; preds = %303, %283
  %285 = load i32, i32* %1, align 4
  %286 = icmp slt i32 %285, 4
  br i1 %286, label %287, label %306

287:                                              ; preds = %284
  %288 = load i32, i32* %1, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %289
  %291 = load double, double* %290, align 8
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %293
  %295 = load double, double* %294, align 8
  %296 = fcmp ogt double %291, %295
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, double -1.000000e+00, double 0.000000e+00
  %299 = load i32, i32* %1, align 4
  %300 = add nsw i32 48, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %301
  store double %298, double* %302, align 8
  br label %303

303:                                              ; preds = %287
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %1, align 4
  br label %284, !llvm.loop !17

306:                                              ; preds = %284
  store i32 0, i32* %1, align 4
  br label %307

307:                                              ; preds = %326, %306
  %308 = load i32, i32* %1, align 4
  %309 = icmp slt i32 %308, 4
  br i1 %309, label %310, label %329

310:                                              ; preds = %307
  %311 = load i32, i32* %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %312
  %314 = load double, double* %313, align 8
  %315 = load i32, i32* %1, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %316
  %318 = load double, double* %317, align 8
  %319 = fcmp ole double %314, %318
  %320 = zext i1 %319 to i64
  %321 = select i1 %319, double -1.000000e+00, double 0.000000e+00
  %322 = load i32, i32* %1, align 4
  %323 = add nsw i32 52, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %324
  store double %321, double* %325, align 8
  br label %326

326:                                              ; preds = %310
  %327 = load i32, i32* %1, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %1, align 4
  br label %307, !llvm.loop !18

329:                                              ; preds = %307
  store i32 0, i32* %1, align 4
  br label %330

330:                                              ; preds = %349, %329
  %331 = load i32, i32* %1, align 4
  %332 = icmp slt i32 %331, 4
  br i1 %332, label %333, label %352

333:                                              ; preds = %330
  %334 = load i32, i32* %1, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %335
  %337 = load double, double* %336, align 8
  %338 = load i32, i32* %1, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %339
  %341 = load double, double* %340, align 8
  %342 = fcmp olt double %337, %341
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, double -1.000000e+00, double 0.000000e+00
  %345 = load i32, i32* %1, align 4
  %346 = add nsw i32 56, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %347
  store double %344, double* %348, align 8
  br label %349

349:                                              ; preds = %333
  %350 = load i32, i32* %1, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %1, align 4
  br label %330, !llvm.loop !19

352:                                              ; preds = %330
  store i32 0, i32* %1, align 4
  br label %353

353:                                              ; preds = %372, %352
  %354 = load i32, i32* %1, align 4
  %355 = icmp slt i32 %354, 4
  br i1 %355, label %356, label %375

356:                                              ; preds = %353
  %357 = load i32, i32* %1, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %358
  %360 = load double, double* %359, align 8
  %361 = load i32, i32* %1, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %362
  %364 = load double, double* %363, align 8
  %365 = fcmp oge double %360, %364
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, double -1.000000e+00, double 0.000000e+00
  %368 = load i32, i32* %1, align 4
  %369 = add nsw i32 60, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %370
  store double %367, double* %371, align 8
  br label %372

372:                                              ; preds = %356
  %373 = load i32, i32* %1, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %1, align 4
  br label %353, !llvm.loop !20

375:                                              ; preds = %353
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 0), align 16
  store double 6.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 1), align 8
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 2), align 16
  store double 0x7FF8000000000000, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 3), align 8
  store double 6.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 0), align 16
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 1), align 8
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 2), align 16
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 3), align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !21
  call void @foo()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !22
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %55, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 64
  br i1 %5, label %6, label %58

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 48
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @abort() #3
  unreachable

20:                                               ; preds = %13
  br label %54

21:                                               ; preds = %9, %6
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 3
  %28 = shl i32 1, %27
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* @main.masks, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  br label %45

39:                                               ; preds = %21
  %40 = load i32, i32* %2, align 4
  %41 = sdiv i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* @main.masks, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i32 [ %38, %32 ], [ %44, %39 ]
  %47 = and i32 %28, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, double -1.000000e+00, double 0.000000e+00
  %51 = fcmp une double %25, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @abort() #3
  unreachable

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %3, !llvm.loop !23

58:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

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
!21 = !{i64 1767}
!22 = !{i64 1813}
!23 = distinct !{!23, !5}
