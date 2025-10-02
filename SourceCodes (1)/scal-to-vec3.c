; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca <4 x float>, align 16
  %7 = alloca <4 x float>, align 16
  %8 = alloca <4 x float>, align 16
  %9 = alloca <2 x double>, align 16
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca i32, align 4
  %14 = alloca <4 x float>, align 16
  %15 = alloca i32, align 4
  %16 = alloca <4 x float>, align 16
  %17 = alloca i32, align 4
  %18 = alloca <4 x float>, align 16
  %19 = alloca i32, align 4
  %20 = alloca <4 x float>, align 16
  %21 = alloca i32, align 4
  %22 = alloca <4 x float>, align 16
  %23 = alloca i32, align 4
  %24 = alloca <4 x float>, align 16
  %25 = alloca i32, align 4
  %26 = alloca <4 x float>, align 16
  %27 = alloca i32, align 4
  %28 = alloca <2 x double>, align 16
  %29 = alloca i32, align 4
  %30 = alloca <2 x double>, align 16
  %31 = alloca i32, align 4
  %32 = alloca <2 x double>, align 16
  %33 = alloca i32, align 4
  %34 = alloca <2 x double>, align 16
  %35 = alloca i32, align 4
  %36 = alloca <2 x double>, align 16
  %37 = alloca i32, align 4
  %38 = alloca <2 x double>, align 16
  %39 = alloca i32, align 4
  %40 = alloca <2 x double>, align 16
  %41 = alloca i32, align 4
  %42 = alloca <2 x double>, align 16
  %43 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float>* %6, align 16
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, <2 x double>* %9, align 16
  %44 = load <4 x float>, <4 x float>* %6, align 16
  %45 = fadd <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %44
  store <4 x float> %45, <4 x float>* %7, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %12, align 16
  %46 = load <4 x float>, <4 x float>* %12, align 16
  %47 = load <4 x float>, <4 x float>* %6, align 16
  %48 = fadd <4 x float> %46, %47
  store <4 x float> %48, <4 x float>* %8, align 16
  br label %49

49:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = bitcast <4 x float>* %7 to float*
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = bitcast <4 x float>* %8 to float*
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fcmp une float %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  call void @abort() #2
  unreachable

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %50, !llvm.loop !4

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load <4 x float>, <4 x float>* %6, align 16
  %73 = fsub <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %72
  store <4 x float> %73, <4 x float>* %7, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %14, align 16
  %74 = load <4 x float>, <4 x float>* %14, align 16
  %75 = load <4 x float>, <4 x float>* %6, align 16
  %76 = fsub <4 x float> %74, %75
  store <4 x float> %76, <4 x float>* %8, align 16
  br label %77

77:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = bitcast <4 x float>* %7 to float*
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = bitcast <4 x float>* %8 to float*
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fcmp une float %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  call void @abort() #2
  unreachable

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %78, !llvm.loop !6

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load <4 x float>, <4 x float>* %6, align 16
  %101 = fmul <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %100
  store <4 x float> %101, <4 x float>* %7, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %16, align 16
  %102 = load <4 x float>, <4 x float>* %16, align 16
  %103 = load <4 x float>, <4 x float>* %6, align 16
  %104 = fmul <4 x float> %102, %103
  store <4 x float> %104, <4 x float>* %8, align 16
  br label %105

105:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = bitcast <4 x float>* %7 to float*
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  %114 = load float, float* %113, align 4
  %115 = bitcast <4 x float>* %8 to float*
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fcmp une float %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  call void @abort() #2
  unreachable

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %106, !llvm.loop !7

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %126
  %128 = load <4 x float>, <4 x float>* %6, align 16
  %129 = fdiv <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %128
  store <4 x float> %129, <4 x float>* %7, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %18, align 16
  %130 = load <4 x float>, <4 x float>* %18, align 16
  %131 = load <4 x float>, <4 x float>* %6, align 16
  %132 = fdiv <4 x float> %130, %131
  store <4 x float> %132, <4 x float>* %8, align 16
  br label %133

133:                                              ; preds = %127
  store i32 0, i32* %19, align 4
  br label %134

134:                                              ; preds = %151, %133
  %135 = load i32, i32* %19, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = bitcast <4 x float>* %7 to float*
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  %143 = bitcast <4 x float>* %8 to float*
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = fcmp une float %142, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  call void @abort() #2
  unreachable

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %134, !llvm.loop !8

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154
  %156 = load <4 x float>, <4 x float>* %6, align 16
  %157 = fadd <4 x float> %156, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %157, <4 x float>* %7, align 16
  %158 = load <4 x float>, <4 x float>* %6, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %20, align 16
  %159 = load <4 x float>, <4 x float>* %20, align 16
  %160 = fadd <4 x float> %158, %159
  store <4 x float> %160, <4 x float>* %8, align 16
  br label %161

161:                                              ; preds = %155
  store i32 0, i32* %21, align 4
  br label %162

162:                                              ; preds = %179, %161
  %163 = load i32, i32* %21, align 4
  %164 = icmp slt i32 %163, 4
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = bitcast <4 x float>* %7 to float*
  %167 = load i32, i32* %21, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  %170 = load float, float* %169, align 4
  %171 = bitcast <4 x float>* %8 to float*
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fcmp une float %170, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  call void @abort() #2
  unreachable

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %21, align 4
  br label %162, !llvm.loop !9

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182
  %184 = load <4 x float>, <4 x float>* %6, align 16
  %185 = fsub <4 x float> %184, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %185, <4 x float>* %7, align 16
  %186 = load <4 x float>, <4 x float>* %6, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %22, align 16
  %187 = load <4 x float>, <4 x float>* %22, align 16
  %188 = fsub <4 x float> %186, %187
  store <4 x float> %188, <4 x float>* %8, align 16
  br label %189

189:                                              ; preds = %183
  store i32 0, i32* %23, align 4
  br label %190

190:                                              ; preds = %207, %189
  %191 = load i32, i32* %23, align 4
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = bitcast <4 x float>* %7 to float*
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load float, float* %197, align 4
  %199 = bitcast <4 x float>* %8 to float*
  %200 = load i32, i32* %23, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fcmp une float %198, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  call void @abort() #2
  unreachable

206:                                              ; preds = %193
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %23, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %23, align 4
  br label %190, !llvm.loop !10

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210
  %212 = load <4 x float>, <4 x float>* %6, align 16
  %213 = fmul <4 x float> %212, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %213, <4 x float>* %7, align 16
  %214 = load <4 x float>, <4 x float>* %6, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %24, align 16
  %215 = load <4 x float>, <4 x float>* %24, align 16
  %216 = fmul <4 x float> %214, %215
  store <4 x float> %216, <4 x float>* %8, align 16
  br label %217

217:                                              ; preds = %211
  store i32 0, i32* %25, align 4
  br label %218

218:                                              ; preds = %235, %217
  %219 = load i32, i32* %25, align 4
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %238

221:                                              ; preds = %218
  %222 = bitcast <4 x float>* %7 to float*
  %223 = load i32, i32* %25, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  %226 = load float, float* %225, align 4
  %227 = bitcast <4 x float>* %8 to float*
  %228 = load i32, i32* %25, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fcmp une float %226, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  call void @abort() #2
  unreachable

234:                                              ; preds = %221
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %25, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %25, align 4
  br label %218, !llvm.loop !11

238:                                              ; preds = %218
  br label %239

239:                                              ; preds = %238
  %240 = load <4 x float>, <4 x float>* %6, align 16
  %241 = fdiv <4 x float> %240, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %241, <4 x float>* %7, align 16
  %242 = load <4 x float>, <4 x float>* %6, align 16
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %26, align 16
  %243 = load <4 x float>, <4 x float>* %26, align 16
  %244 = fdiv <4 x float> %242, %243
  store <4 x float> %244, <4 x float>* %8, align 16
  br label %245

245:                                              ; preds = %239
  store i32 0, i32* %27, align 4
  br label %246

246:                                              ; preds = %263, %245
  %247 = load i32, i32* %27, align 4
  %248 = icmp slt i32 %247, 4
  br i1 %248, label %249, label %266

249:                                              ; preds = %246
  %250 = bitcast <4 x float>* %7 to float*
  %251 = load i32, i32* %27, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = bitcast <4 x float>* %8 to float*
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float, float* %258, align 4
  %260 = fcmp une float %254, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %249
  call void @abort() #2
  unreachable

262:                                              ; preds = %249
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %27, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %27, align 4
  br label %246, !llvm.loop !12

266:                                              ; preds = %246
  br label %267

267:                                              ; preds = %266
  %268 = load <2 x double>, <2 x double>* %9, align 16
  %269 = fadd <2 x double> <double 2.000000e+00, double 2.000000e+00>, %268
  store <2 x double> %269, <2 x double>* %10, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %28, align 16
  %270 = load <2 x double>, <2 x double>* %28, align 16
  %271 = load <2 x double>, <2 x double>* %9, align 16
  %272 = fadd <2 x double> %270, %271
  store <2 x double> %272, <2 x double>* %11, align 16
  br label %273

273:                                              ; preds = %267
  store i32 0, i32* %29, align 4
  br label %274

274:                                              ; preds = %291, %273
  %275 = load i32, i32* %29, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %277, label %294

277:                                              ; preds = %274
  %278 = bitcast <2 x double>* %10 to double*
  %279 = load i32, i32* %29, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, double* %278, i64 %280
  %282 = load double, double* %281, align 8
  %283 = bitcast <2 x double>* %11 to double*
  %284 = load i32, i32* %29, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %283, i64 %285
  %287 = load double, double* %286, align 8
  %288 = fcmp une double %282, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %277
  call void @abort() #2
  unreachable

290:                                              ; preds = %277
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %29, align 4
  br label %274, !llvm.loop !13

294:                                              ; preds = %274
  br label %295

295:                                              ; preds = %294
  %296 = load <2 x double>, <2 x double>* %9, align 16
  %297 = fsub <2 x double> <double 2.000000e+00, double 2.000000e+00>, %296
  store <2 x double> %297, <2 x double>* %10, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %30, align 16
  %298 = load <2 x double>, <2 x double>* %30, align 16
  %299 = load <2 x double>, <2 x double>* %9, align 16
  %300 = fsub <2 x double> %298, %299
  store <2 x double> %300, <2 x double>* %11, align 16
  br label %301

301:                                              ; preds = %295
  store i32 0, i32* %31, align 4
  br label %302

302:                                              ; preds = %319, %301
  %303 = load i32, i32* %31, align 4
  %304 = icmp slt i32 %303, 2
  br i1 %304, label %305, label %322

305:                                              ; preds = %302
  %306 = bitcast <2 x double>* %10 to double*
  %307 = load i32, i32* %31, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %306, i64 %308
  %310 = load double, double* %309, align 8
  %311 = bitcast <2 x double>* %11 to double*
  %312 = load i32, i32* %31, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  %316 = fcmp une double %310, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %305
  call void @abort() #2
  unreachable

318:                                              ; preds = %305
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %31, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %31, align 4
  br label %302, !llvm.loop !14

322:                                              ; preds = %302
  br label %323

323:                                              ; preds = %322
  %324 = load <2 x double>, <2 x double>* %9, align 16
  %325 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %324
  store <2 x double> %325, <2 x double>* %10, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %32, align 16
  %326 = load <2 x double>, <2 x double>* %32, align 16
  %327 = load <2 x double>, <2 x double>* %9, align 16
  %328 = fmul <2 x double> %326, %327
  store <2 x double> %328, <2 x double>* %11, align 16
  br label %329

329:                                              ; preds = %323
  store i32 0, i32* %33, align 4
  br label %330

330:                                              ; preds = %347, %329
  %331 = load i32, i32* %33, align 4
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %350

333:                                              ; preds = %330
  %334 = bitcast <2 x double>* %10 to double*
  %335 = load i32, i32* %33, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %334, i64 %336
  %338 = load double, double* %337, align 8
  %339 = bitcast <2 x double>* %11 to double*
  %340 = load i32, i32* %33, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %339, i64 %341
  %343 = load double, double* %342, align 8
  %344 = fcmp une double %338, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %333
  call void @abort() #2
  unreachable

346:                                              ; preds = %333
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %33, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %33, align 4
  br label %330, !llvm.loop !15

350:                                              ; preds = %330
  br label %351

351:                                              ; preds = %350
  %352 = load <2 x double>, <2 x double>* %9, align 16
  %353 = fdiv <2 x double> <double 2.000000e+00, double 2.000000e+00>, %352
  store <2 x double> %353, <2 x double>* %10, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %34, align 16
  %354 = load <2 x double>, <2 x double>* %34, align 16
  %355 = load <2 x double>, <2 x double>* %9, align 16
  %356 = fdiv <2 x double> %354, %355
  store <2 x double> %356, <2 x double>* %11, align 16
  br label %357

357:                                              ; preds = %351
  store i32 0, i32* %35, align 4
  br label %358

358:                                              ; preds = %375, %357
  %359 = load i32, i32* %35, align 4
  %360 = icmp slt i32 %359, 2
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = bitcast <2 x double>* %10 to double*
  %363 = load i32, i32* %35, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %362, i64 %364
  %366 = load double, double* %365, align 8
  %367 = bitcast <2 x double>* %11 to double*
  %368 = load i32, i32* %35, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds double, double* %367, i64 %369
  %371 = load double, double* %370, align 8
  %372 = fcmp une double %366, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %361
  call void @abort() #2
  unreachable

374:                                              ; preds = %361
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %35, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %35, align 4
  br label %358, !llvm.loop !16

378:                                              ; preds = %358
  br label %379

379:                                              ; preds = %378
  %380 = load <2 x double>, <2 x double>* %9, align 16
  %381 = fadd <2 x double> %380, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %381, <2 x double>* %10, align 16
  %382 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %36, align 16
  %383 = load <2 x double>, <2 x double>* %36, align 16
  %384 = fadd <2 x double> %382, %383
  store <2 x double> %384, <2 x double>* %11, align 16
  br label %385

385:                                              ; preds = %379
  store i32 0, i32* %37, align 4
  br label %386

386:                                              ; preds = %403, %385
  %387 = load i32, i32* %37, align 4
  %388 = icmp slt i32 %387, 2
  br i1 %388, label %389, label %406

389:                                              ; preds = %386
  %390 = bitcast <2 x double>* %10 to double*
  %391 = load i32, i32* %37, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %390, i64 %392
  %394 = load double, double* %393, align 8
  %395 = bitcast <2 x double>* %11 to double*
  %396 = load i32, i32* %37, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %395, i64 %397
  %399 = load double, double* %398, align 8
  %400 = fcmp une double %394, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %389
  call void @abort() #2
  unreachable

402:                                              ; preds = %389
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %37, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %37, align 4
  br label %386, !llvm.loop !17

406:                                              ; preds = %386
  br label %407

407:                                              ; preds = %406
  %408 = load <2 x double>, <2 x double>* %9, align 16
  %409 = fsub <2 x double> %408, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %409, <2 x double>* %10, align 16
  %410 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %38, align 16
  %411 = load <2 x double>, <2 x double>* %38, align 16
  %412 = fsub <2 x double> %410, %411
  store <2 x double> %412, <2 x double>* %11, align 16
  br label %413

413:                                              ; preds = %407
  store i32 0, i32* %39, align 4
  br label %414

414:                                              ; preds = %431, %413
  %415 = load i32, i32* %39, align 4
  %416 = icmp slt i32 %415, 2
  br i1 %416, label %417, label %434

417:                                              ; preds = %414
  %418 = bitcast <2 x double>* %10 to double*
  %419 = load i32, i32* %39, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds double, double* %418, i64 %420
  %422 = load double, double* %421, align 8
  %423 = bitcast <2 x double>* %11 to double*
  %424 = load i32, i32* %39, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds double, double* %423, i64 %425
  %427 = load double, double* %426, align 8
  %428 = fcmp une double %422, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %417
  call void @abort() #2
  unreachable

430:                                              ; preds = %417
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %39, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %39, align 4
  br label %414, !llvm.loop !18

434:                                              ; preds = %414
  br label %435

435:                                              ; preds = %434
  %436 = load <2 x double>, <2 x double>* %9, align 16
  %437 = fmul <2 x double> %436, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %437, <2 x double>* %10, align 16
  %438 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %40, align 16
  %439 = load <2 x double>, <2 x double>* %40, align 16
  %440 = fmul <2 x double> %438, %439
  store <2 x double> %440, <2 x double>* %11, align 16
  br label %441

441:                                              ; preds = %435
  store i32 0, i32* %41, align 4
  br label %442

442:                                              ; preds = %459, %441
  %443 = load i32, i32* %41, align 4
  %444 = icmp slt i32 %443, 2
  br i1 %444, label %445, label %462

445:                                              ; preds = %442
  %446 = bitcast <2 x double>* %10 to double*
  %447 = load i32, i32* %41, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double, double* %446, i64 %448
  %450 = load double, double* %449, align 8
  %451 = bitcast <2 x double>* %11 to double*
  %452 = load i32, i32* %41, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double, double* %451, i64 %453
  %455 = load double, double* %454, align 8
  %456 = fcmp une double %450, %455
  br i1 %456, label %457, label %458

457:                                              ; preds = %445
  call void @abort() #2
  unreachable

458:                                              ; preds = %445
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %41, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %41, align 4
  br label %442, !llvm.loop !19

462:                                              ; preds = %442
  br label %463

463:                                              ; preds = %462
  %464 = load <2 x double>, <2 x double>* %9, align 16
  %465 = fdiv <2 x double> %464, <double 2.000000e+00, double 2.000000e+00>
  store <2 x double> %465, <2 x double>* %10, align 16
  %466 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %42, align 16
  %467 = load <2 x double>, <2 x double>* %42, align 16
  %468 = fdiv <2 x double> %466, %467
  store <2 x double> %468, <2 x double>* %11, align 16
  br label %469

469:                                              ; preds = %463
  store i32 0, i32* %43, align 4
  br label %470

470:                                              ; preds = %487, %469
  %471 = load i32, i32* %43, align 4
  %472 = icmp slt i32 %471, 2
  br i1 %472, label %473, label %490

473:                                              ; preds = %470
  %474 = bitcast <2 x double>* %10 to double*
  %475 = load i32, i32* %43, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds double, double* %474, i64 %476
  %478 = load double, double* %477, align 8
  %479 = bitcast <2 x double>* %11 to double*
  %480 = load i32, i32* %43, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds double, double* %479, i64 %481
  %483 = load double, double* %482, align 8
  %484 = fcmp une double %478, %483
  br i1 %484, label %485, label %486

485:                                              ; preds = %473
  call void @abort() #2
  unreachable

486:                                              ; preds = %473
  br label %487

487:                                              ; preds = %486
  %488 = load i32, i32* %43, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %43, align 4
  br label %470, !llvm.loop !20

490:                                              ; preds = %470
  br label %491

491:                                              ; preds = %490
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
