; ModuleID = './xs_kernel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/RSBench/xs_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.CalcDataPtrs = type { i32*, i32*, %struct.Materials, %struct.Pole**, %struct.Window**, double** }
%struct.Materials = type { i32*, i32**, double** }
%struct.Pole = type { { double, double }, { double, double }, { double, double }, { double, double }, i16 }
%struct.Window = type { double, double, double, i32, i32 }

@__const.fast_nuclear_W.an = private unnamed_addr constant [10 x double] [double 0x3FD1A75DA77B03AC, double 2.245740e-01, double 0x3FC467B51AFF5FC7, double 0x3FB94228EF6278F1, double 0x3FAB42D0E001DDD1, double 0x3F99A74553C72771, double 0x3F850C5AAC48F3BA, double 0x3F6E1D7984F391AA, double 0x3F52C8BE8F0B3A0A, double 3.117570e-04], align 16
@__const.fast_nuclear_W.neg_1n = private unnamed_addr constant [10 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@__const.fast_nuclear_W.denominator_left = private unnamed_addr constant [10 x double] [double 0x4023BD3CBC48F10B, double 0x4043BD3CDDD6E04C, double 0x405634E4649906CD, double 0x4063BD3D07C84B5E, double 0x406ED7AEE631F8A1, double 0x407634E48E8A71DE, double 0x407E39C504816F00, double 0x4083BD3CD35A8588, double 0x4088FB810624DD2F, double 0x408ED7AEE631F8A1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @fast_nuclear_W(double noundef %0, double noundef %1) #0 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = alloca { double, double }, align 8
  %7 = alloca { double, double }, align 8
  %8 = alloca { double, double }, align 8
  %9 = alloca { double, double }, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  store double %0, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  store double %1, double* %11, align 8
  %12 = call double @cabs(double noundef %0, double noundef %1) #4
  %13 = fcmp olt double %12, 6.000000e+00
  br i1 %13, label %14, label %213

14:                                               ; preds = %2
  %15 = getelementptr inbounds { double, double }, { double, double }* %5, i64 0, i32 0
  %16 = getelementptr inbounds { double, double }, { double, double }* %5, i64 0, i32 1
  store double 0.000000e+00, double* %15, align 8
  store double 8.124330e+01, double* %16, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %18, 0.000000e+00
  %22 = fmul double %20, 1.200000e+01
  %23 = fmul double %20, 0.000000e+00
  %24 = fmul double %18, 1.200000e+01
  %25 = fsub double %21, %22
  %26 = fadd double %23, %24
  %27 = fcmp uno double %25, 0.000000e+00
  br i1 %27, label %28, label %34, !prof !4

28:                                               ; preds = %14
  %29 = fcmp uno double %26, 0.000000e+00
  br i1 %29, label %30, label %34, !prof !4

30:                                               ; preds = %28
  %31 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %18, double noundef %20) #4
  %32 = extractvalue { double, double } %31, 0
  %33 = extractvalue { double, double } %31, 1
  br label %34

34:                                               ; preds = %30, %28, %14
  %35 = phi double [ %25, %14 ], [ %25, %28 ], [ %32, %30 ]
  %36 = phi double [ %26, %14 ], [ %26, %28 ], [ %33, %30 ]
  %37 = call { double, double } @cexp(double noundef %35, double noundef %36) #4
  %38 = extractvalue { double, double } %37, 0
  %39 = extractvalue { double, double } %37, 1
  %40 = fsub double 1.000000e+00, %38
  %41 = fsub double 0.000000e+00, %39
  %42 = fmul double %40, 0.000000e+00
  %43 = fmul double %41, 0.000000e+00
  %44 = fsub double %42, %41
  %45 = fadd double %43, %40
  %46 = fcmp uno double %44, 0.000000e+00
  br i1 %46, label %47, label %53, !prof !4

47:                                               ; preds = %34
  %48 = fcmp uno double %45, 0.000000e+00
  br i1 %48, label %49, label %53, !prof !4

49:                                               ; preds = %47
  %50 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %40, double noundef %41) #4
  %51 = extractvalue { double, double } %50, 0
  %52 = extractvalue { double, double } %50, 1
  br label %53

53:                                               ; preds = %49, %47, %34
  %54 = phi double [ %44, %34 ], [ %44, %47 ], [ %51, %49 ]
  %55 = phi double [ %45, %34 ], [ %45, %47 ], [ %52, %49 ]
  %56 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = fmul double %57, 1.200000e+01
  %61 = fmul double %59, 1.200000e+01
  %62 = call { double, double } @__divdc3(double noundef %54, double noundef %55, double noundef %60, double noundef %61) #4
  %63 = extractvalue { double, double } %62, 0
  %64 = extractvalue { double, double } %62, 1
  %65 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %66 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  store double %63, double* %65, align 8
  store double %64, double* %66, align 8
  %67 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 0
  %68 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 1
  store double 0.000000e+00, double* %67, align 8
  store double 0.000000e+00, double* %68, align 8
  br label %69

69:                                               ; preds = %156, %53
  %.0 = phi i32 [ 0, %53 ], [ %157, %156 ]
  %70 = icmp ult i32 %.0, 10
  br i1 %70, label %71, label %158

71:                                               ; preds = %69
  %72 = zext i32 %.0 to i64
  %73 = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.neg_1n, i64 0, i64 %72
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = fmul double %76, 0.000000e+00
  %80 = fmul double %78, 1.200000e+01
  %81 = fmul double %78, 0.000000e+00
  %82 = fmul double %76, 1.200000e+01
  %83 = fsub double %79, %80
  %84 = fadd double %81, %82
  %85 = fcmp uno double %83, 0.000000e+00
  br i1 %85, label %86, label %92, !prof !4

86:                                               ; preds = %71
  %87 = fcmp uno double %84, 0.000000e+00
  br i1 %87, label %88, label %92, !prof !4

88:                                               ; preds = %86
  %89 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %76, double noundef %78) #4
  %90 = extractvalue { double, double } %89, 0
  %91 = extractvalue { double, double } %89, 1
  br label %92

92:                                               ; preds = %88, %86, %71
  %93 = phi double [ %83, %71 ], [ %83, %86 ], [ %90, %88 ]
  %94 = phi double [ %84, %71 ], [ %84, %86 ], [ %91, %88 ]
  %95 = call { double, double } @cexp(double noundef %93, double noundef %94) #4
  %96 = extractvalue { double, double } %95, 0
  %97 = extractvalue { double, double } %95, 1
  %98 = fmul double %74, %96
  %99 = fmul double %74, %97
  %100 = fadd double %98, -1.000000e+00
  %101 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %102 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  store double %100, double* %101, align 8
  store double %99, double* %102, align 8
  %103 = zext i32 %.0 to i64
  %104 = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.denominator_left, i64 0, i64 %103
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fmul double %107, 1.440000e+02
  %111 = fmul double %109, 1.440000e+02
  %112 = fmul double %110, %107
  %113 = fmul double %111, %109
  %114 = fmul double %110, %109
  %115 = fmul double %111, %107
  %116 = fsub double %112, %113
  %117 = fadd double %114, %115
  %118 = fcmp uno double %116, 0.000000e+00
  br i1 %118, label %119, label %125, !prof !4

119:                                              ; preds = %92
  %120 = fcmp uno double %117, 0.000000e+00
  br i1 %120, label %121, label %125, !prof !4

121:                                              ; preds = %119
  %122 = call { double, double } @__muldc3(double noundef %110, double noundef %111, double noundef %107, double noundef %109) #4
  %123 = extractvalue { double, double } %122, 0
  %124 = extractvalue { double, double } %122, 1
  br label %125

125:                                              ; preds = %121, %119, %92
  %126 = phi double [ %116, %92 ], [ %116, %119 ], [ %123, %121 ]
  %127 = phi double [ %117, %92 ], [ %117, %119 ], [ %124, %121 ]
  %128 = fsub double %105, %126
  %129 = fneg double %127
  %130 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 0
  %131 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 1
  store double %128, double* %130, align 8
  store double %129, double* %131, align 8
  %132 = zext i32 %.0 to i64
  %133 = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.an, i64 0, i64 %132
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %136 = load double, double* %135, align 8
  %137 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 0
  %140 = load double, double* %139, align 8
  %141 = getelementptr inbounds { double, double }, { double, double }* %9, i64 0, i32 1
  %142 = load double, double* %141, align 8
  %143 = call { double, double } @__divdc3(double noundef %136, double noundef %138, double noundef %140, double noundef %142) #4
  %144 = extractvalue { double, double } %143, 0
  %145 = extractvalue { double, double } %143, 1
  %146 = fmul double %134, %144
  %147 = fmul double %134, %145
  %148 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 0
  %149 = load double, double* %148, align 8
  %150 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fadd double %149, %146
  %153 = fadd double %151, %147
  %154 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 0
  %155 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 1
  store double %152, double* %154, align 8
  store double %153, double* %155, align 8
  br label %156

156:                                              ; preds = %125
  %157 = add nuw nsw i32 %.0, 1
  br label %69, !llvm.loop !5

158:                                              ; preds = %69
  %159 = getelementptr inbounds { double, double }, { double, double }* %5, i64 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = getelementptr inbounds { double, double }, { double, double }* %5, i64 0, i32 1
  %162 = load double, double* %161, align 8
  %163 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %164 = load double, double* %163, align 8
  %165 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %166 = load double, double* %165, align 8
  %167 = fmul double %160, %164
  %168 = fmul double %162, %166
  %169 = fmul double %160, %166
  %170 = fmul double %162, %164
  %171 = fsub double %167, %168
  %172 = fadd double %169, %170
  %173 = fcmp uno double %171, 0.000000e+00
  br i1 %173, label %174, label %180, !prof !4

174:                                              ; preds = %158
  %175 = fcmp uno double %172, 0.000000e+00
  br i1 %175, label %176, label %180, !prof !4

176:                                              ; preds = %174
  %177 = call { double, double } @__muldc3(double noundef %160, double noundef %162, double noundef %164, double noundef %166) #4
  %178 = extractvalue { double, double } %177, 0
  %179 = extractvalue { double, double } %177, 1
  br label %180

180:                                              ; preds = %176, %174, %158
  %181 = phi double [ %171, %158 ], [ %171, %174 ], [ %178, %176 ]
  %182 = phi double [ %172, %158 ], [ %172, %174 ], [ %179, %176 ]
  %183 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 0
  %184 = load double, double* %183, align 8
  %185 = getelementptr inbounds { double, double }, { double, double }* %7, i64 0, i32 1
  %186 = load double, double* %185, align 8
  %187 = fmul double %181, %184
  %188 = fmul double %182, %186
  %189 = fmul double %181, %186
  %190 = fmul double %182, %184
  %191 = fsub double %187, %188
  %192 = fadd double %189, %190
  %193 = fcmp uno double %191, 0.000000e+00
  br i1 %193, label %194, label %200, !prof !4

194:                                              ; preds = %180
  %195 = fcmp uno double %192, 0.000000e+00
  br i1 %195, label %196, label %200, !prof !4

196:                                              ; preds = %194
  %197 = call { double, double } @__muldc3(double noundef %181, double noundef %182, double noundef %184, double noundef %186) #4
  %198 = extractvalue { double, double } %197, 0
  %199 = extractvalue { double, double } %197, 1
  br label %200

200:                                              ; preds = %196, %194, %180
  %201 = phi double [ %191, %180 ], [ %191, %194 ], [ %198, %196 ]
  %202 = phi double [ %192, %180 ], [ %192, %194 ], [ %199, %196 ]
  %203 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %204 = load double, double* %203, align 8
  %205 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  %206 = load double, double* %205, align 8
  %207 = fadd double %204, %201
  %208 = fadd double %206, %202
  %209 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %210 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  store double %207, double* %209, align 8
  store double %208, double* %210, align 8
  %211 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %212 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %207, double* %211, align 8
  store double %208, double* %212, align 8
  br label %300

213:                                              ; preds = %2
  %214 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %215 = load double, double* %214, align 8
  %216 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %217 = load double, double* %216, align 8
  %218 = fmul double %215, 0.000000e+00
  %219 = fmul double %217, 0.000000e+00
  %220 = fsub double %218, %217
  %221 = fadd double %219, %215
  %222 = fcmp uno double %220, 0.000000e+00
  br i1 %222, label %223, label %229, !prof !4

223:                                              ; preds = %213
  %224 = fcmp uno double %221, 0.000000e+00
  br i1 %224, label %225, label %229, !prof !4

225:                                              ; preds = %223
  %226 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %215, double noundef %217) #4
  %227 = extractvalue { double, double } %226, 0
  %228 = extractvalue { double, double } %226, 1
  br label %229

229:                                              ; preds = %225, %223, %213
  %230 = phi double [ %220, %213 ], [ %220, %223 ], [ %227, %225 ]
  %231 = phi double [ %221, %213 ], [ %221, %223 ], [ %228, %225 ]
  %232 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %233 = load double, double* %232, align 8
  %234 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %235 = load double, double* %234, align 8
  %236 = fmul double %233, %233
  %237 = fmul double %235, %235
  %238 = fmul double %233, %235
  %239 = fmul double %235, %233
  %240 = fsub double %236, %237
  %241 = fadd double %238, %239
  %242 = fcmp uno double %240, 0.000000e+00
  br i1 %242, label %243, label %249, !prof !4

243:                                              ; preds = %229
  %244 = fcmp uno double %241, 0.000000e+00
  br i1 %244, label %245, label %249, !prof !4

245:                                              ; preds = %243
  %246 = call { double, double } @__muldc3(double noundef %233, double noundef %235, double noundef %233, double noundef %235) #4
  %247 = extractvalue { double, double } %246, 0
  %248 = extractvalue { double, double } %246, 1
  br label %249

249:                                              ; preds = %245, %243, %229
  %250 = phi double [ %240, %229 ], [ %240, %243 ], [ %247, %245 ]
  %251 = phi double [ %241, %229 ], [ %241, %243 ], [ %248, %245 ]
  %252 = fadd double %250, 0xBFD19DC7AFDB7B46
  %253 = call { double, double } @__divdc3(double noundef 0x3FE065C77CDFFF0D, double noundef 0.000000e+00, double noundef %252, double noundef %251) #4
  %254 = extractvalue { double, double } %253, 0
  %255 = extractvalue { double, double } %253, 1
  %256 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %257 = load double, double* %256, align 8
  %258 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  %259 = load double, double* %258, align 8
  %260 = fmul double %257, %257
  %261 = fmul double %259, %259
  %262 = fmul double %257, %259
  %263 = fmul double %259, %257
  %264 = fsub double %260, %261
  %265 = fadd double %262, %263
  %266 = fcmp uno double %264, 0.000000e+00
  br i1 %266, label %267, label %273, !prof !4

267:                                              ; preds = %249
  %268 = fcmp uno double %265, 0.000000e+00
  br i1 %268, label %269, label %273, !prof !4

269:                                              ; preds = %267
  %270 = call { double, double } @__muldc3(double noundef %257, double noundef %259, double noundef %257, double noundef %259) #4
  %271 = extractvalue { double, double } %270, 0
  %272 = extractvalue { double, double } %270, 1
  br label %273

273:                                              ; preds = %269, %267, %249
  %274 = phi double [ %264, %249 ], [ %264, %267 ], [ %271, %269 ]
  %275 = phi double [ %265, %249 ], [ %265, %267 ], [ %272, %269 ]
  %276 = fadd double %274, 0xC005CC470A049097
  %277 = call { double, double } @__divdc3(double noundef 0x3FAA80FD3629C600, double noundef 0.000000e+00, double noundef %276, double noundef %275) #4
  %278 = extractvalue { double, double } %277, 0
  %279 = extractvalue { double, double } %277, 1
  %280 = fadd double %254, %278
  %281 = fadd double %255, %279
  %282 = fmul double %230, %280
  %283 = fmul double %231, %281
  %284 = fmul double %230, %281
  %285 = fmul double %231, %280
  %286 = fsub double %282, %283
  %287 = fadd double %284, %285
  %288 = fcmp uno double %286, 0.000000e+00
  br i1 %288, label %289, label %295, !prof !4

289:                                              ; preds = %273
  %290 = fcmp uno double %287, 0.000000e+00
  br i1 %290, label %291, label %295, !prof !4

291:                                              ; preds = %289
  %292 = call { double, double } @__muldc3(double noundef %230, double noundef %231, double noundef %280, double noundef %281) #4
  %293 = extractvalue { double, double } %292, 0
  %294 = extractvalue { double, double } %292, 1
  br label %295

295:                                              ; preds = %291, %289, %273
  %296 = phi double [ %286, %273 ], [ %286, %289 ], [ %293, %291 ]
  %297 = phi double [ %287, %273 ], [ %287, %289 ], [ %294, %291 ]
  %298 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %299 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %296, double* %298, align 8
  store double %297, double* %299, align 8
  br label %300

300:                                              ; preds = %295, %200
  %.elt = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %301 = insertvalue { double, double } undef, double %.unpack, 0
  %.elt1 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %.unpack2 = load double, double* %.elt1, align 8
  %302 = insertvalue { double, double } %301, double %.unpack2, 1
  ret { double, double } %302
}

; Function Attrs: nounwind
declare dso_local double @cabs(double noundef, double noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local { double, double } @cexp(double noundef, double noundef) #1

declare dso_local { double, double } @__muldc3(double, double, double, double)

declare dso_local { double, double } @__divdc3(double, double, double, double)

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_macro_xs(double* nocapture noundef %0, i32 noundef %1, double noundef %2, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* nocapture noundef %5, i64* nocapture noundef %6, i64* nocapture noundef %7) #0 {
  %9 = alloca [4 x double], align 16
  br label %10

10:                                               ; preds = %15, %8
  %.02 = phi i32 [ 0, %8 ], [ %16, %15 ]
  %11 = icmp ult i32 %.02, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds double, double* %0, i64 %13
  store double 0.000000e+00, double* %14, align 8
  br label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %.02, 1
  br label %10, !llvm.loop !7

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %63, %17
  %.01 = phi i32 [ 0, %17 ], [ %64, %63 ]
  %19 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 2, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %.01, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 2, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %3, i64 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  call void @calculate_micro_xs_doppler(double* noundef nonnull %38, i32 noundef %33, double noundef %2, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5, i64* noundef %6, i64* noundef %7)
  br label %41

39:                                               ; preds = %25
  %40 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 0
  call void @calculate_micro_xs(double* noundef nonnull %40, i32 noundef %33, double noundef %2, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5)
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %60, %41
  %.0 = phi i32 [ 0, %41 ], [ %61, %60 ]
  %43 = icmp ult i32 %.0, 4
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 2, i32 2
  %49 = load double**, double*** %48, align 8
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds double*, double** %49, i64 %50
  %52 = load double*, double** %51, align 8
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds double, double* %52, i64 %53
  %55 = load double, double* %54, align 8
  %56 = zext i32 %.0 to i64
  %57 = getelementptr inbounds double, double* %0, i64 %56
  %58 = load double, double* %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %47, double %55, double %58)
  store double %59, double* %57, align 8
  br label %60

60:                                               ; preds = %44
  %61 = add nuw nsw i32 %.0, 1
  br label %42, !llvm.loop !8

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = add nuw nsw i32 %.01, 1
  br label %18, !llvm.loop !9

65:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs_doppler(double* nocapture noundef writeonly %0, i32 noundef %1, double noundef %2, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* nocapture noundef %5, i64* nocapture noundef %6, i64* nocapture noundef %7) #0 {
  %9 = alloca %struct.Window, align 8
  %10 = alloca %struct.Pole, align 8
  %11 = alloca { double, double }, align 8
  %12 = alloca { double, double }, align 8
  %13 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double 1.000000e+00, %18
  %20 = fdiv double %2, %19
  %21 = fptosi double %20 to i32
  %22 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, %21
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = add nsw i32 %21, -1
  br label %30

30:                                               ; preds = %28, %8
  %.01 = phi i32 [ %29, %28 ], [ %21, %8 ]
  call void @calculate_sig_T(i32 noundef %1, double noundef %2, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5)
  %31 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 4
  %32 = load %struct.Window**, %struct.Window*** %31, align 8
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.Window*, %struct.Window** %32, i64 %33
  %35 = load %struct.Window*, %struct.Window** %34, align 8
  %36 = sext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.Window, %struct.Window* %35, i64 %36
  %38 = bitcast %struct.Window* %9 to i8*
  %39 = bitcast %struct.Window* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %38, i8* noundef nonnull align 8 dereferenceable(32) %39, i64 32, i1 false)
  %40 = getelementptr inbounds %struct.Window, %struct.Window* %9, i64 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, %2
  %43 = getelementptr inbounds %struct.Window, %struct.Window* %9, i64 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, %2
  %46 = getelementptr inbounds %struct.Window, %struct.Window* %9, i64 0, i32 2
  %47 = load double, double* %46, align 8
  %48 = fmul double %47, %2
  %49 = getelementptr inbounds %struct.Window, %struct.Window* %9, i64 0, i32 3
  %50 = load i32, i32* %49, align 8
  br label %51

51:                                               ; preds = %182, %30
  %.04 = phi double [ %42, %30 ], [ %136, %182 ]
  %.03 = phi double [ %45, %30 ], [ %159, %182 ]
  %.02 = phi double [ %48, %30 ], [ %183, %182 ]
  %.0 = phi i32 [ %50, %30 ], [ %184, %182 ]
  %52 = getelementptr inbounds %struct.Window, %struct.Window* %9, i64 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %.0, %53
  br i1 %54, label %55, label %185

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 3
  %57 = load %struct.Pole**, %struct.Pole*** %56, align 8
  %58 = sext i32 %1 to i64
  %59 = getelementptr inbounds %struct.Pole*, %struct.Pole** %57, i64 %58
  %60 = load %struct.Pole*, %struct.Pole** %59, align 8
  %61 = sext i32 %.0 to i64
  %62 = getelementptr inbounds %struct.Pole, %struct.Pole* %60, i64 %61
  %63 = bitcast %struct.Pole* %10 to i8*
  %64 = bitcast %struct.Pole* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %63, i8* noundef nonnull align 8 dereferenceable(72) %64, i64 72, i1 false)
  %65 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = fsub double %2, %66
  %70 = fmul double %69, 5.000000e-01
  %71 = fmul double %68, -5.000000e-01
  %72 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 0
  %73 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 1
  store double %70, double* %72, align 8
  store double %71, double* %73, align 8
  %74 = call double @cabs(double noundef %70, double noundef %71) #4
  %75 = fcmp olt double %74, 6.000000e+00
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %76, %55
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %7, align 8
  %82 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 0
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds { double, double }, { double, double }* %11, i64 0, i32 1
  %85 = load double, double* %84, align 8
  %86 = call { double, double } @fast_nuclear_W(double noundef %83, double noundef %85)
  %87 = extractvalue { double, double } %86, 0
  %88 = extractvalue { double, double } %86, 1
  %89 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  %90 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  store double %87, double* %89, align 8
  store double %88, double* %90, align 8
  %91 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 1, i32 0
  %92 = load double, double* %91, align 8
  %93 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 1, i32 1
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  %98 = load double, double* %97, align 8
  %99 = fmul double %92, %96
  %100 = fmul double %94, %98
  %101 = fmul double %92, %98
  %102 = fmul double %94, %96
  %103 = fsub double %99, %100
  %104 = fadd double %101, %102
  %105 = fcmp uno double %103, 0.000000e+00
  br i1 %105, label %106, label %112, !prof !4

106:                                              ; preds = %79
  %107 = fcmp uno double %104, 0.000000e+00
  br i1 %107, label %108, label %112, !prof !4

108:                                              ; preds = %106
  %109 = call { double, double } @__muldc3(double noundef %92, double noundef %94, double noundef %96, double noundef %98) #4
  %110 = extractvalue { double, double } %109, 0
  %111 = extractvalue { double, double } %109, 1
  br label %112

112:                                              ; preds = %108, %106, %79
  %113 = phi double [ %103, %79 ], [ %103, %106 ], [ %110, %108 ]
  %114 = phi double [ %104, %79 ], [ %104, %106 ], [ %111, %108 ]
  %115 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 4
  %116 = load i16, i16* %115, align 8
  %117 = sext i16 %116 to i64
  %118 = getelementptr inbounds { double, double }, { double, double }* %5, i64 %117, i32 0
  %119 = load double, double* %118, align 8
  %120 = getelementptr inbounds { double, double }, { double, double }* %5, i64 %117, i32 1
  %121 = load double, double* %120, align 8
  %122 = fmul double %113, %119
  %123 = fmul double %114, %121
  %124 = fsub double %122, %123
  %125 = fcmp uno double %124, 0.000000e+00
  br i1 %125, label %126, label %134, !prof !4

126:                                              ; preds = %112
  %127 = fmul double %113, %121
  %128 = fmul double %114, %119
  %129 = fadd double %127, %128
  %130 = fcmp uno double %129, 0.000000e+00
  br i1 %130, label %131, label %134, !prof !4

131:                                              ; preds = %126
  %132 = call { double, double } @__muldc3(double noundef %113, double noundef %114, double noundef %119, double noundef %121) #4
  %133 = extractvalue { double, double } %132, 0
  br label %134

134:                                              ; preds = %131, %126, %112
  %135 = phi double [ %124, %112 ], [ %124, %126 ], [ %133, %131 ]
  %136 = fadd double %.04, %135
  %137 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 2, i32 0
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 2, i32 1
  %140 = load double, double* %139, align 8
  %141 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  %144 = load double, double* %143, align 8
  %145 = fmul double %138, %142
  %146 = fmul double %140, %144
  %147 = fsub double %145, %146
  %148 = fcmp uno double %147, 0.000000e+00
  br i1 %148, label %149, label %157, !prof !4

149:                                              ; preds = %134
  %150 = fmul double %138, %144
  %151 = fmul double %140, %142
  %152 = fadd double %150, %151
  %153 = fcmp uno double %152, 0.000000e+00
  br i1 %153, label %154, label %157, !prof !4

154:                                              ; preds = %149
  %155 = call { double, double } @__muldc3(double noundef %138, double noundef %140, double noundef %142, double noundef %144) #4
  %156 = extractvalue { double, double } %155, 0
  br label %157

157:                                              ; preds = %154, %149, %134
  %158 = phi double [ %147, %134 ], [ %147, %149 ], [ %156, %154 ]
  %159 = fadd double %.03, %158
  %160 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 3, i32 0
  %161 = load double, double* %160, align 8
  %162 = getelementptr inbounds %struct.Pole, %struct.Pole* %10, i64 0, i32 3, i32 1
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = getelementptr inbounds { double, double }, { double, double }* %12, i64 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = fmul double %161, %165
  %169 = fmul double %163, %167
  %170 = fsub double %168, %169
  %171 = fcmp uno double %170, 0.000000e+00
  br i1 %171, label %172, label %180, !prof !4

172:                                              ; preds = %157
  %173 = fmul double %161, %167
  %174 = fmul double %163, %165
  %175 = fadd double %173, %174
  %176 = fcmp uno double %175, 0.000000e+00
  br i1 %176, label %177, label %180, !prof !4

177:                                              ; preds = %172
  %178 = call { double, double } @__muldc3(double noundef %161, double noundef %163, double noundef %165, double noundef %167) #4
  %179 = extractvalue { double, double } %178, 0
  br label %180

180:                                              ; preds = %177, %172, %157
  %181 = phi double [ %170, %157 ], [ %170, %172 ], [ %179, %177 ]
  br label %182

182:                                              ; preds = %180
  %183 = fadd double %.02, %181
  %184 = add nsw i32 %.0, 1
  br label %51, !llvm.loop !10

185:                                              ; preds = %51
  %186 = fsub double %.04, %.03
  store double %.04, double* %0, align 8
  %187 = getelementptr inbounds double, double* %0, i64 1
  store double %.03, double* %187, align 8
  %188 = getelementptr inbounds double, double* %0, i64 2
  store double %.02, double* %188, align 8
  %189 = getelementptr inbounds double, double* %0, i64 3
  store double %186, double* %189, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs(double* nocapture noundef writeonly %0, i32 noundef %1, double noundef %2, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* nocapture noundef %5) #0 {
  %7 = alloca %struct.Window, align 8
  %8 = alloca { double, double }, align 8
  %9 = alloca %struct.Pole, align 8
  %10 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 1.000000e+00, %15
  %17 = fdiv double %2, %16
  %18 = fptosi double %17 to i32
  %19 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = add nsw i32 %18, -1
  br label %27

27:                                               ; preds = %25, %6
  %.01 = phi i32 [ %26, %25 ], [ %18, %6 ]
  call void @calculate_sig_T(i32 noundef %1, double noundef %2, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5)
  %28 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 4
  %29 = load %struct.Window**, %struct.Window*** %28, align 8
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds %struct.Window*, %struct.Window** %29, i64 %30
  %32 = load %struct.Window*, %struct.Window** %31, align 8
  %33 = sext i32 %.01 to i64
  %34 = getelementptr inbounds %struct.Window, %struct.Window* %32, i64 %33
  %35 = bitcast %struct.Window* %7 to i8*
  %36 = bitcast %struct.Window* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %35, i8* noundef nonnull align 8 dereferenceable(32) %36, i64 32, i1 false)
  %37 = getelementptr inbounds %struct.Window, %struct.Window* %7, i64 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, %2
  %40 = getelementptr inbounds %struct.Window, %struct.Window* %7, i64 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, %2
  %43 = getelementptr inbounds %struct.Window, %struct.Window* %7, i64 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, %2
  %46 = getelementptr inbounds %struct.Window, %struct.Window* %7, i64 0, i32 3
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %166, %27
  %.04 = phi double [ %39, %27 ], [ %120, %166 ]
  %.03 = phi double [ %42, %27 ], [ %143, %166 ]
  %.02 = phi double [ %45, %27 ], [ %167, %166 ]
  %.0 = phi i32 [ %47, %27 ], [ %168, %166 ]
  %49 = getelementptr inbounds %struct.Window, %struct.Window* %7, i64 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %.0, %50
  br i1 %51, label %52, label %169

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i64 0, i32 3
  %54 = load %struct.Pole**, %struct.Pole*** %53, align 8
  %55 = sext i32 %1 to i64
  %56 = getelementptr inbounds %struct.Pole*, %struct.Pole** %54, i64 %55
  %57 = load %struct.Pole*, %struct.Pole** %56, align 8
  %58 = sext i32 %.0 to i64
  %59 = getelementptr inbounds %struct.Pole, %struct.Pole* %57, i64 %58
  %60 = bitcast %struct.Pole* %9 to i8*
  %61 = bitcast %struct.Pole* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %60, i8* noundef nonnull align 8 dereferenceable(72) %61, i64 72, i1 false)
  %62 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = call double @sqrt(double noundef %2) #4
  %67 = fsub double %63, %66
  %68 = call { double, double } @__divdc3(double noundef -0.000000e+00, double noundef 1.000000e+00, double noundef %67, double noundef %65) #4
  %69 = extractvalue { double, double } %68, 0
  %70 = extractvalue { double, double } %68, 1
  %71 = fdiv double %69, %2
  %72 = fdiv double %70, %2
  %73 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %74 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  store double %71, double* %73, align 8
  store double %72, double* %74, align 8
  %75 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 1, i32 0
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 1, i32 1
  %78 = load double, double* %77, align 8
  %79 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = fmul double %76, %80
  %84 = fmul double %78, %82
  %85 = fmul double %76, %82
  %86 = fmul double %78, %80
  %87 = fsub double %83, %84
  %88 = fadd double %85, %86
  %89 = fcmp uno double %87, 0.000000e+00
  br i1 %89, label %90, label %96, !prof !4

90:                                               ; preds = %52
  %91 = fcmp uno double %88, 0.000000e+00
  br i1 %91, label %92, label %96, !prof !4

92:                                               ; preds = %90
  %93 = call { double, double } @__muldc3(double noundef %76, double noundef %78, double noundef %80, double noundef %82) #4
  %94 = extractvalue { double, double } %93, 0
  %95 = extractvalue { double, double } %93, 1
  br label %96

96:                                               ; preds = %92, %90, %52
  %97 = phi double [ %87, %52 ], [ %87, %90 ], [ %94, %92 ]
  %98 = phi double [ %88, %52 ], [ %88, %90 ], [ %95, %92 ]
  %99 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 4
  %100 = load i16, i16* %99, align 8
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds { double, double }, { double, double }* %5, i64 %101, i32 0
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds { double, double }, { double, double }* %5, i64 %101, i32 1
  %105 = load double, double* %104, align 8
  %106 = fmul double %97, %103
  %107 = fmul double %98, %105
  %108 = fsub double %106, %107
  %109 = fcmp uno double %108, 0.000000e+00
  br i1 %109, label %110, label %118, !prof !4

110:                                              ; preds = %96
  %111 = fmul double %97, %105
  %112 = fmul double %98, %103
  %113 = fadd double %111, %112
  %114 = fcmp uno double %113, 0.000000e+00
  br i1 %114, label %115, label %118, !prof !4

115:                                              ; preds = %110
  %116 = call { double, double } @__muldc3(double noundef %97, double noundef %98, double noundef %103, double noundef %105) #4
  %117 = extractvalue { double, double } %116, 0
  br label %118

118:                                              ; preds = %115, %110, %96
  %119 = phi double [ %108, %96 ], [ %108, %110 ], [ %117, %115 ]
  %120 = fadd double %.04, %119
  %121 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 2, i32 0
  %122 = load double, double* %121, align 8
  %123 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 2, i32 1
  %124 = load double, double* %123, align 8
  %125 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %126 = load double, double* %125, align 8
  %127 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  %128 = load double, double* %127, align 8
  %129 = fmul double %122, %126
  %130 = fmul double %124, %128
  %131 = fsub double %129, %130
  %132 = fcmp uno double %131, 0.000000e+00
  br i1 %132, label %133, label %141, !prof !4

133:                                              ; preds = %118
  %134 = fmul double %122, %128
  %135 = fmul double %124, %126
  %136 = fadd double %134, %135
  %137 = fcmp uno double %136, 0.000000e+00
  br i1 %137, label %138, label %141, !prof !4

138:                                              ; preds = %133
  %139 = call { double, double } @__muldc3(double noundef %122, double noundef %124, double noundef %126, double noundef %128) #4
  %140 = extractvalue { double, double } %139, 0
  br label %141

141:                                              ; preds = %138, %133, %118
  %142 = phi double [ %131, %118 ], [ %131, %133 ], [ %140, %138 ]
  %143 = fadd double %.03, %142
  %144 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 3, i32 0
  %145 = load double, double* %144, align 8
  %146 = getelementptr inbounds %struct.Pole, %struct.Pole* %9, i64 0, i32 3, i32 1
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 0
  %149 = load double, double* %148, align 8
  %150 = getelementptr inbounds { double, double }, { double, double }* %8, i64 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fmul double %145, %149
  %153 = fmul double %147, %151
  %154 = fsub double %152, %153
  %155 = fcmp uno double %154, 0.000000e+00
  br i1 %155, label %156, label %164, !prof !4

156:                                              ; preds = %141
  %157 = fmul double %145, %151
  %158 = fmul double %147, %149
  %159 = fadd double %157, %158
  %160 = fcmp uno double %159, 0.000000e+00
  br i1 %160, label %161, label %164, !prof !4

161:                                              ; preds = %156
  %162 = call { double, double } @__muldc3(double noundef %145, double noundef %147, double noundef %149, double noundef %151) #4
  %163 = extractvalue { double, double } %162, 0
  br label %164

164:                                              ; preds = %161, %156, %141
  %165 = phi double [ %154, %141 ], [ %154, %156 ], [ %163, %161 ]
  br label %166

166:                                              ; preds = %164
  %167 = fadd double %.02, %165
  %168 = add nsw i32 %.0, 1
  br label %48, !llvm.loop !11

169:                                              ; preds = %48
  %170 = fsub double %.04, %.03
  store double %.04, double* %0, align 8
  %171 = getelementptr inbounds double, double* %0, i64 1
  store double %.03, double* %171, align 8
  %172 = getelementptr inbounds double, double* %0, i64 2
  store double %.02, double* %172, align 8
  %173 = getelementptr inbounds double, double* %0, i64 3
  store double %170, double* %173, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_sig_T(i32 noundef %0, double noundef %1, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %2, %struct.CalcDataPtrs* nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %3, { double, double }* nocapture noundef writeonly %4) #0 {
  br label %6

6:                                                ; preds = %57, %5
  %.0 = phi i32 [ 0, %5 ], [ %58, %57 ]
  %7 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %3, i64 0, i32 5
  %12 = load double**, double*** %11, align 8
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds double*, double** %12, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @sqrt(double noundef %1) #4
  %20 = fmul double %18, %19
  %21 = icmp eq i32 %.0, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = call double @atan(double noundef %20) #4
  %24 = fadd double %20, %23
  br label %47

25:                                               ; preds = %10
  %26 = icmp eq i32 %.0, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = fmul double %20, 3.000000e+00
  %29 = fneg double %20
  %30 = call double @llvm.fmuladd.f64(double %29, double %20, double 3.000000e+00)
  %31 = fdiv double %28, %30
  %32 = call double @atan(double noundef %31) #4
  %33 = fsub double %20, %32
  br label %46

34:                                               ; preds = %25
  %35 = icmp eq i32 %.0, 3
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = fneg double %20
  %38 = call double @llvm.fmuladd.f64(double %37, double %20, double 1.500000e+01)
  %39 = fmul double %20, %38
  %40 = fmul double %20, -6.000000e+00
  %41 = call double @llvm.fmuladd.f64(double %40, double %20, double 1.500000e+01)
  %42 = fdiv double %39, %41
  %43 = call double @atan(double noundef %42) #4
  %44 = fsub double %20, %43
  br label %45

45:                                               ; preds = %36, %34
  %.01 = phi double [ %44, %36 ], [ %20, %34 ]
  br label %46

46:                                               ; preds = %45, %27
  %.1 = phi double [ %33, %27 ], [ %.01, %45 ]
  br label %47

47:                                               ; preds = %46, %22
  %.2 = phi double [ %24, %22 ], [ %.1, %46 ]
  %48 = fmul double %.2, 2.000000e+00
  %49 = call double @cos(double noundef %48) #4
  %50 = call double @sin(double noundef %48) #4
  %51 = fmul double %50, 0.000000e+00
  %52 = fsub double %49, %51
  %53 = fneg double %50
  %54 = zext i32 %.0 to i64
  %55 = getelementptr inbounds { double, double }, { double, double }* %4, i64 %54, i32 0
  %56 = getelementptr inbounds { double, double }, { double, double }* %4, i64 %54, i32 1
  store double %52, double* %55, align 8
  store double %53, double* %56, align 8
  br label %57

57:                                               ; preds = %47
  %58 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !12

59:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
