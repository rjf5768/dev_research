; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/RSBench/xs_kernel.c'
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
  %7 = alloca [10 x double], align 16
  %8 = alloca [10 x double], align 16
  %9 = alloca [10 x double], align 16
  %10 = alloca { double, double }, align 8
  %11 = alloca { double, double }, align 8
  %12 = alloca { double, double }, align 8
  %13 = alloca i32, align 4
  %14 = alloca { double, double }, align 8
  %15 = alloca { double, double }, align 8
  %16 = alloca { double, double }, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca { double, double }, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %23, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %25, double* %28, align 8
  store double %27, double* %29, align 8
  %30 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = call double @cabs(double noundef %31, double noundef %33) #4
  %35 = fcmp olt double %34, 6.000000e+00
  br i1 %35, label %36, label %265

36:                                               ; preds = %2
  %37 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %38 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double 0.000000e+00, double* %37, align 8
  store double 8.124330e+01, double* %38, align 8
  %39 = bitcast [10 x double]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.an to i8*), i64 80, i1 false)
  %40 = bitcast [10 x double]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.neg_1n to i8*), i64 80, i1 false)
  %41 = bitcast [10 x double]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.denominator_left to i8*), i64 80, i1 false)
  %42 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fmul double 0.000000e+00, %43
  %47 = fmul double 1.200000e+01, %45
  %48 = fmul double 0.000000e+00, %45
  %49 = fmul double 1.200000e+01, %43
  %50 = fsub double %46, %47
  %51 = fadd double %48, %49
  %52 = fcmp uno double %50, %50
  br i1 %52, label %53, label %59, !prof !4

53:                                               ; preds = %36
  %54 = fcmp uno double %51, %51
  br i1 %54, label %55, label %59, !prof !4

55:                                               ; preds = %53
  %56 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %43, double noundef %45) #4
  %57 = extractvalue { double, double } %56, 0
  %58 = extractvalue { double, double } %56, 1
  br label %59

59:                                               ; preds = %55, %53, %36
  %60 = phi double [ %50, %36 ], [ %50, %53 ], [ %57, %55 ]
  %61 = phi double [ %51, %36 ], [ %51, %53 ], [ %58, %55 ]
  %62 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %63 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  store double %60, double* %62, align 8
  store double %61, double* %63, align 8
  %64 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = call { double, double } @cexp(double noundef %65, double noundef %67) #4
  %69 = extractvalue { double, double } %68, 0
  %70 = extractvalue { double, double } %68, 1
  %71 = fsub double 1.000000e+00, %69
  %72 = fsub double 0.000000e+00, %70
  %73 = fmul double 0.000000e+00, %71
  %74 = fmul double 1.000000e+00, %72
  %75 = fmul double 0.000000e+00, %72
  %76 = fmul double 1.000000e+00, %71
  %77 = fsub double %73, %74
  %78 = fadd double %75, %76
  %79 = fcmp uno double %77, %77
  br i1 %79, label %80, label %86, !prof !4

80:                                               ; preds = %59
  %81 = fcmp uno double %78, %78
  br i1 %81, label %82, label %86, !prof !4

82:                                               ; preds = %80
  %83 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %71, double noundef %72) #4
  %84 = extractvalue { double, double } %83, 0
  %85 = extractvalue { double, double } %83, 1
  br label %86

86:                                               ; preds = %82, %80, %59
  %87 = phi double [ %77, %59 ], [ %77, %80 ], [ %84, %82 ]
  %88 = phi double [ %78, %59 ], [ %78, %80 ], [ %85, %82 ]
  %89 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fmul double 1.200000e+01, %90
  %94 = fmul double 1.200000e+01, %92
  %95 = call { double, double } @__divdc3(double noundef %87, double noundef %88, double noundef %93, double noundef %94) #4
  %96 = extractvalue { double, double } %95, 0
  %97 = extractvalue { double, double } %95, 1
  %98 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %99 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %96, double* %98, align 8
  store double %97, double* %99, align 8
  %100 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %101 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double 0.000000e+00, double* %100, align 8
  store double 0.000000e+00, double* %101, align 8
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %203, %86
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %206

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x double], [10 x double]* %8, i64 0, i64 %107
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %111 = load double, double* %110, align 8
  %112 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fmul double 0.000000e+00, %111
  %115 = fmul double 1.200000e+01, %113
  %116 = fmul double 0.000000e+00, %113
  %117 = fmul double 1.200000e+01, %111
  %118 = fsub double %114, %115
  %119 = fadd double %116, %117
  %120 = fcmp uno double %118, %118
  br i1 %120, label %121, label %127, !prof !4

121:                                              ; preds = %105
  %122 = fcmp uno double %119, %119
  br i1 %122, label %123, label %127, !prof !4

123:                                              ; preds = %121
  %124 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %111, double noundef %113) #4
  %125 = extractvalue { double, double } %124, 0
  %126 = extractvalue { double, double } %124, 1
  br label %127

127:                                              ; preds = %123, %121, %105
  %128 = phi double [ %118, %105 ], [ %118, %121 ], [ %125, %123 ]
  %129 = phi double [ %119, %105 ], [ %119, %121 ], [ %126, %123 ]
  %130 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %131 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  store double %128, double* %130, align 8
  store double %129, double* %131, align 8
  %132 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = call { double, double } @cexp(double noundef %133, double noundef %135) #4
  %137 = extractvalue { double, double } %136, 0
  %138 = extractvalue { double, double } %136, 1
  %139 = fmul double %109, %137
  %140 = fmul double %109, %138
  %141 = fsub double %139, 1.000000e+00
  %142 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %143 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  store double %141, double* %142, align 8
  store double %140, double* %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 %145
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %149 = load double, double* %148, align 8
  %150 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fmul double 1.440000e+02, %149
  %153 = fmul double 1.440000e+02, %151
  %154 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %155 = load double, double* %154, align 8
  %156 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %152, %155
  %159 = fmul double %153, %157
  %160 = fmul double %152, %157
  %161 = fmul double %153, %155
  %162 = fsub double %158, %159
  %163 = fadd double %160, %161
  %164 = fcmp uno double %162, %162
  br i1 %164, label %165, label %171, !prof !4

165:                                              ; preds = %127
  %166 = fcmp uno double %163, %163
  br i1 %166, label %167, label %171, !prof !4

167:                                              ; preds = %165
  %168 = call { double, double } @__muldc3(double noundef %152, double noundef %153, double noundef %155, double noundef %157) #4
  %169 = extractvalue { double, double } %168, 0
  %170 = extractvalue { double, double } %168, 1
  br label %171

171:                                              ; preds = %167, %165, %127
  %172 = phi double [ %162, %127 ], [ %162, %165 ], [ %169, %167 ]
  %173 = phi double [ %163, %127 ], [ %163, %165 ], [ %170, %167 ]
  %174 = fsub double %147, %172
  %175 = fneg double %173
  %176 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 0
  %177 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 1
  store double %174, double* %176, align 8
  store double %175, double* %177, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 %179
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %183 = load double, double* %182, align 8
  %184 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %185 = load double, double* %184, align 8
  %186 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 1
  %189 = load double, double* %188, align 8
  %190 = call { double, double } @__divdc3(double noundef %183, double noundef %185, double noundef %187, double noundef %189) #4
  %191 = extractvalue { double, double } %190, 0
  %192 = extractvalue { double, double } %190, 1
  %193 = fmul double %181, %191
  %194 = fmul double %181, %192
  %195 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %196 = load double, double* %195, align 8
  %197 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %198 = load double, double* %197, align 8
  %199 = fadd double %196, %193
  %200 = fadd double %198, %194
  %201 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %202 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %199, double* %201, align 8
  store double %200, double* %202, align 8
  br label %203

203:                                              ; preds = %171
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %102, !llvm.loop !5

206:                                              ; preds = %102
  %207 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %208 = load double, double* %207, align 8
  %209 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %210 = load double, double* %209, align 8
  %211 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %214 = load double, double* %213, align 8
  %215 = fmul double %208, %212
  %216 = fmul double %210, %214
  %217 = fmul double %208, %214
  %218 = fmul double %210, %212
  %219 = fsub double %215, %216
  %220 = fadd double %217, %218
  %221 = fcmp uno double %219, %219
  br i1 %221, label %222, label %228, !prof !4

222:                                              ; preds = %206
  %223 = fcmp uno double %220, %220
  br i1 %223, label %224, label %228, !prof !4

224:                                              ; preds = %222
  %225 = call { double, double } @__muldc3(double noundef %208, double noundef %210, double noundef %212, double noundef %214) #4
  %226 = extractvalue { double, double } %225, 0
  %227 = extractvalue { double, double } %225, 1
  br label %228

228:                                              ; preds = %224, %222, %206
  %229 = phi double [ %219, %206 ], [ %219, %222 ], [ %226, %224 ]
  %230 = phi double [ %220, %206 ], [ %220, %222 ], [ %227, %224 ]
  %231 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %232 = load double, double* %231, align 8
  %233 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %234 = load double, double* %233, align 8
  %235 = fmul double %229, %232
  %236 = fmul double %230, %234
  %237 = fmul double %229, %234
  %238 = fmul double %230, %232
  %239 = fsub double %235, %236
  %240 = fadd double %237, %238
  %241 = fcmp uno double %239, %239
  br i1 %241, label %242, label %248, !prof !4

242:                                              ; preds = %228
  %243 = fcmp uno double %240, %240
  br i1 %243, label %244, label %248, !prof !4

244:                                              ; preds = %242
  %245 = call { double, double } @__muldc3(double noundef %229, double noundef %230, double noundef %232, double noundef %234) #4
  %246 = extractvalue { double, double } %245, 0
  %247 = extractvalue { double, double } %245, 1
  br label %248

248:                                              ; preds = %244, %242, %228
  %249 = phi double [ %239, %228 ], [ %239, %242 ], [ %246, %244 ]
  %250 = phi double [ %240, %228 ], [ %240, %242 ], [ %247, %244 ]
  %251 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %252 = load double, double* %251, align 8
  %253 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %254 = load double, double* %253, align 8
  %255 = fadd double %252, %249
  %256 = fadd double %254, %250
  %257 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %258 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %255, double* %257, align 8
  store double %256, double* %258, align 8
  %259 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %262 = load double, double* %261, align 8
  %263 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %264 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %260, double* %263, align 8
  store double %262, double* %264, align 8
  br label %372

265:                                              ; preds = %2
  store double 0x3FE065C77CDFFF0D, double* %17, align 8
  store double 0x3FD19DC7AFDB7B46, double* %18, align 8
  store double 0x3FAA80FD3629C600, double* %19, align 8
  store double 0x4005CC470A049097, double* %20, align 8
  %266 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %267 = load double, double* %266, align 8
  %268 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %269 = load double, double* %268, align 8
  %270 = fmul double 0.000000e+00, %267
  %271 = fmul double 1.000000e+00, %269
  %272 = fmul double 0.000000e+00, %269
  %273 = fmul double 1.000000e+00, %267
  %274 = fsub double %270, %271
  %275 = fadd double %272, %273
  %276 = fcmp uno double %274, %274
  br i1 %276, label %277, label %283, !prof !4

277:                                              ; preds = %265
  %278 = fcmp uno double %275, %275
  br i1 %278, label %279, label %283, !prof !4

279:                                              ; preds = %277
  %280 = call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %267, double noundef %269) #4
  %281 = extractvalue { double, double } %280, 0
  %282 = extractvalue { double, double } %280, 1
  br label %283

283:                                              ; preds = %279, %277, %265
  %284 = phi double [ %274, %265 ], [ %274, %277 ], [ %281, %279 ]
  %285 = phi double [ %275, %265 ], [ %275, %277 ], [ %282, %279 ]
  %286 = load double, double* %17, align 8
  %287 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %288 = load double, double* %287, align 8
  %289 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %290 = load double, double* %289, align 8
  %291 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %292 = load double, double* %291, align 8
  %293 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %294 = load double, double* %293, align 8
  %295 = fmul double %288, %292
  %296 = fmul double %290, %294
  %297 = fmul double %288, %294
  %298 = fmul double %290, %292
  %299 = fsub double %295, %296
  %300 = fadd double %297, %298
  %301 = fcmp uno double %299, %299
  br i1 %301, label %302, label %308, !prof !4

302:                                              ; preds = %283
  %303 = fcmp uno double %300, %300
  br i1 %303, label %304, label %308, !prof !4

304:                                              ; preds = %302
  %305 = call { double, double } @__muldc3(double noundef %288, double noundef %290, double noundef %292, double noundef %294) #4
  %306 = extractvalue { double, double } %305, 0
  %307 = extractvalue { double, double } %305, 1
  br label %308

308:                                              ; preds = %304, %302, %283
  %309 = phi double [ %299, %283 ], [ %299, %302 ], [ %306, %304 ]
  %310 = phi double [ %300, %283 ], [ %300, %302 ], [ %307, %304 ]
  %311 = load double, double* %18, align 8
  %312 = fsub double %309, %311
  %313 = call { double, double } @__divdc3(double noundef %286, double noundef 0.000000e+00, double noundef %312, double noundef %310) #4
  %314 = extractvalue { double, double } %313, 0
  %315 = extractvalue { double, double } %313, 1
  %316 = load double, double* %19, align 8
  %317 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %318 = load double, double* %317, align 8
  %319 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %320 = load double, double* %319, align 8
  %321 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %322 = load double, double* %321, align 8
  %323 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %324 = load double, double* %323, align 8
  %325 = fmul double %318, %322
  %326 = fmul double %320, %324
  %327 = fmul double %318, %324
  %328 = fmul double %320, %322
  %329 = fsub double %325, %326
  %330 = fadd double %327, %328
  %331 = fcmp uno double %329, %329
  br i1 %331, label %332, label %338, !prof !4

332:                                              ; preds = %308
  %333 = fcmp uno double %330, %330
  br i1 %333, label %334, label %338, !prof !4

334:                                              ; preds = %332
  %335 = call { double, double } @__muldc3(double noundef %318, double noundef %320, double noundef %322, double noundef %324) #4
  %336 = extractvalue { double, double } %335, 0
  %337 = extractvalue { double, double } %335, 1
  br label %338

338:                                              ; preds = %334, %332, %308
  %339 = phi double [ %329, %308 ], [ %329, %332 ], [ %336, %334 ]
  %340 = phi double [ %330, %308 ], [ %330, %332 ], [ %337, %334 ]
  %341 = load double, double* %20, align 8
  %342 = fsub double %339, %341
  %343 = call { double, double } @__divdc3(double noundef %316, double noundef 0.000000e+00, double noundef %342, double noundef %340) #4
  %344 = extractvalue { double, double } %343, 0
  %345 = extractvalue { double, double } %343, 1
  %346 = fadd double %314, %344
  %347 = fadd double %315, %345
  %348 = fmul double %284, %346
  %349 = fmul double %285, %347
  %350 = fmul double %284, %347
  %351 = fmul double %285, %346
  %352 = fsub double %348, %349
  %353 = fadd double %350, %351
  %354 = fcmp uno double %352, %352
  br i1 %354, label %355, label %361, !prof !4

355:                                              ; preds = %338
  %356 = fcmp uno double %353, %353
  br i1 %356, label %357, label %361, !prof !4

357:                                              ; preds = %355
  %358 = call { double, double } @__muldc3(double noundef %284, double noundef %285, double noundef %346, double noundef %347) #4
  %359 = extractvalue { double, double } %358, 0
  %360 = extractvalue { double, double } %358, 1
  br label %361

361:                                              ; preds = %357, %355, %338
  %362 = phi double [ %352, %338 ], [ %352, %355 ], [ %359, %357 ]
  %363 = phi double [ %353, %338 ], [ %353, %355 ], [ %360, %357 ]
  %364 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 0
  %365 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 1
  store double %362, double* %364, align 8
  store double %363, double* %365, align 8
  %366 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 0
  %367 = load double, double* %366, align 8
  %368 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 1
  %369 = load double, double* %368, align 8
  %370 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %371 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %367, double* %370, align 8
  store double %369, double* %371, align 8
  br label %372

372:                                              ; preds = %361, %248
  %373 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %373
}

; Function Attrs: nounwind
declare dso_local double @cabs(double noundef, double noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local { double, double } @cexp(double noundef, double noundef) #1

declare dso_local { double, double } @__muldc3(double, double, double, double)

declare dso_local { double, double } @__divdc3(double, double, double, double)

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_macro_xs(double* noundef %0, i32 noundef %1, double noundef %2, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5, i64* noundef %6, i64* noundef %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca { double, double }*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x double], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store double %2, double* %11, align 8
  store { double, double }* %5, { double, double }** %12, align 8
  store i64* %6, i64** %13, align 8
  store i64* %7, i64** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %28, %8
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load double*, double** %9, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  store double 0.000000e+00, double* %27, align 8
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  br label %20, !llvm.loop !7

31:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %99, %31
  %33 = load i32, i32* %16, align 4
  %34 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.Materials, %struct.Materials* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %33, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %44 = getelementptr inbounds %struct.Materials, %struct.Materials* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %18, align 4
  %54 = getelementptr inbounds %struct.Input, %struct.Input* %3, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %59 = load i32, i32* %18, align 4
  %60 = load double, double* %11, align 8
  %61 = load { double, double }*, { double, double }** %12, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64*, i64** %14, align 8
  call void @calculate_micro_xs_doppler(double* noundef %58, i32 noundef %59, double noundef %60, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %61, i64* noundef %62, i64* noundef %63)
  br label %69

64:                                               ; preds = %42
  %65 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %66 = load i32, i32* %18, align 4
  %67 = load double, double* %11, align 8
  %68 = load { double, double }*, { double, double }** %12, align 8
  call void @calculate_micro_xs(double* noundef %65, i32 noundef %66, double noundef %67, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %68)
  br label %69

69:                                               ; preds = %64, %57
  store i32 0, i32* %19, align 4
  br label %70

70:                                               ; preds = %95, %69
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %79 = getelementptr inbounds %struct.Materials, %struct.Materials* %78, i32 0, i32 2
  %80 = load double**, double*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double*, double** %80, i64 %82
  %84 = load double*, double** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = load double*, double** %9, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %77, double %88, double %93)
  store double %94, double* %92, align 8
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  br label %70, !llvm.loop !8

98:                                               ; preds = %70
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %32, !llvm.loop !9

102:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs_doppler(double* noundef %0, i32 noundef %1, double noundef %2, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5, i64* noundef %6, i64* noundef %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca { double, double }*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.Window, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.Pole, align 8
  %25 = alloca { double, double }, align 8
  %26 = alloca { double, double }, align 8
  %27 = alloca { double, double }, align 8
  %28 = alloca { double, double }, align 8
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store double %2, double* %11, align 8
  store { double, double }* %5, { double, double }** %12, align 8
  store i64* %6, i64** %13, align 8
  store i64* %7, i64** %14, align 8
  %29 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double 1.000000e+00, %35
  store double %36, double* %19, align 8
  %37 = load double, double* %11, align 8
  %38 = load double, double* %19, align 8
  %39 = fdiv double %37, %38
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %8
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %49, %8
  %53 = load i32, i32* %10, align 4
  %54 = load double, double* %11, align 8
  %55 = load { double, double }*, { double, double }** %12, align 8
  call void @calculate_sig_T(i32 noundef %53, double noundef %54, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %55)
  %56 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 4
  %57 = load %struct.Window**, %struct.Window*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Window*, %struct.Window** %57, i64 %59
  %61 = load %struct.Window*, %struct.Window** %60, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Window, %struct.Window* %61, i64 %63
  %65 = bitcast %struct.Window* %21 to i8*
  %66 = bitcast %struct.Window* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 32, i1 false)
  %67 = load double, double* %11, align 8
  %68 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fmul double %67, %69
  store double %70, double* %15, align 8
  %71 = load double, double* %11, align 8
  %72 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fmul double %71, %73
  store double %74, double* %16, align 8
  %75 = load double, double* %11, align 8
  %76 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = fmul double %75, %77
  store double %78, double* %17, align 8
  store double 5.000000e-01, double* %22, align 8
  %79 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %23, align 4
  br label %81

81:                                               ; preds = %252, %52
  %82 = load i32, i32* %23, align 4
  %83 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %255

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 3
  %88 = load %struct.Pole**, %struct.Pole*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Pole*, %struct.Pole** %88, i64 %90
  %92 = load %struct.Pole*, %struct.Pole** %91, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Pole, %struct.Pole* %92, i64 %94
  %96 = bitcast %struct.Pole* %24 to i8*
  %97 = bitcast %struct.Pole* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 72, i1 false)
  %98 = load double, double* %11, align 8
  %99 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 0
  %100 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = fsub double %98, %101
  %105 = fneg double %103
  %106 = load double, double* %22, align 8
  %107 = fmul double %104, %106
  %108 = fmul double %105, %106
  %109 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %110 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  store double %107, double* %109, align 8
  store double %108, double* %110, align 8
  %111 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %116 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  store double %112, double* %115, align 8
  store double %114, double* %116, align 8
  %117 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = call double @cabs(double noundef %118, double noundef %120) #4
  %122 = fcmp olt double %121, 6.000000e+00
  br i1 %122, label %123, label %127

123:                                              ; preds = %86
  %124 = load i64*, i64** %13, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %123, %86
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 0
  %136 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 1
  store double %132, double* %135, align 8
  store double %134, double* %136, align 8
  %137 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = call { double, double } @fast_nuclear_W(double noundef %138, double noundef %140)
  %142 = extractvalue { double, double } %141, 0
  %143 = extractvalue { double, double } %141, 1
  %144 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %145 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  store double %142, double* %144, align 8
  store double %143, double* %145, align 8
  %146 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 1
  %147 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 1
  %150 = load double, double* %149, align 8
  %151 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %154 = load double, double* %153, align 8
  %155 = fmul double %148, %152
  %156 = fmul double %150, %154
  %157 = fmul double %148, %154
  %158 = fmul double %150, %152
  %159 = fsub double %155, %156
  %160 = fadd double %157, %158
  %161 = fcmp uno double %159, %159
  br i1 %161, label %162, label %168, !prof !4

162:                                              ; preds = %127
  %163 = fcmp uno double %160, %160
  br i1 %163, label %164, label %168, !prof !4

164:                                              ; preds = %162
  %165 = call { double, double } @__muldc3(double noundef %148, double noundef %150, double noundef %152, double noundef %154) #4
  %166 = extractvalue { double, double } %165, 0
  %167 = extractvalue { double, double } %165, 1
  br label %168

168:                                              ; preds = %164, %162, %127
  %169 = phi double [ %159, %127 ], [ %159, %162 ], [ %166, %164 ]
  %170 = phi double [ %160, %127 ], [ %160, %162 ], [ %167, %164 ]
  %171 = load { double, double }*, { double, double }** %12, align 8
  %172 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 4
  %173 = load i16, i16* %172, align 8
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds { double, double }, { double, double }* %171, i64 %174
  %176 = getelementptr inbounds { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = getelementptr inbounds { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = load double, double* %178, align 8
  %180 = fmul double %169, %177
  %181 = fmul double %170, %179
  %182 = fmul double %169, %179
  %183 = fmul double %170, %177
  %184 = fsub double %180, %181
  %185 = fadd double %182, %183
  %186 = fcmp uno double %184, %184
  br i1 %186, label %187, label %193, !prof !4

187:                                              ; preds = %168
  %188 = fcmp uno double %185, %185
  br i1 %188, label %189, label %193, !prof !4

189:                                              ; preds = %187
  %190 = call { double, double } @__muldc3(double noundef %169, double noundef %170, double noundef %177, double noundef %179) #4
  %191 = extractvalue { double, double } %190, 0
  %192 = extractvalue { double, double } %190, 1
  br label %193

193:                                              ; preds = %189, %187, %168
  %194 = phi double [ %184, %168 ], [ %184, %187 ], [ %191, %189 ]
  %195 = phi double [ %185, %168 ], [ %185, %187 ], [ %192, %189 ]
  %196 = load double, double* %15, align 8
  %197 = fadd double %196, %194
  store double %197, double* %15, align 8
  %198 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 2
  %199 = getelementptr inbounds { double, double }, { double, double }* %198, i32 0, i32 0
  %200 = load double, double* %199, align 8
  %201 = getelementptr inbounds { double, double }, { double, double }* %198, i32 0, i32 1
  %202 = load double, double* %201, align 8
  %203 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %204 = load double, double* %203, align 8
  %205 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %206 = load double, double* %205, align 8
  %207 = fmul double %200, %204
  %208 = fmul double %202, %206
  %209 = fmul double %200, %206
  %210 = fmul double %202, %204
  %211 = fsub double %207, %208
  %212 = fadd double %209, %210
  %213 = fcmp uno double %211, %211
  br i1 %213, label %214, label %220, !prof !4

214:                                              ; preds = %193
  %215 = fcmp uno double %212, %212
  br i1 %215, label %216, label %220, !prof !4

216:                                              ; preds = %214
  %217 = call { double, double } @__muldc3(double noundef %200, double noundef %202, double noundef %204, double noundef %206) #4
  %218 = extractvalue { double, double } %217, 0
  %219 = extractvalue { double, double } %217, 1
  br label %220

220:                                              ; preds = %216, %214, %193
  %221 = phi double [ %211, %193 ], [ %211, %214 ], [ %218, %216 ]
  %222 = phi double [ %212, %193 ], [ %212, %214 ], [ %219, %216 ]
  %223 = load double, double* %16, align 8
  %224 = fadd double %223, %221
  store double %224, double* %16, align 8
  %225 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 3
  %226 = getelementptr inbounds { double, double }, { double, double }* %225, i32 0, i32 0
  %227 = load double, double* %226, align 8
  %228 = getelementptr inbounds { double, double }, { double, double }* %225, i32 0, i32 1
  %229 = load double, double* %228, align 8
  %230 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %233 = load double, double* %232, align 8
  %234 = fmul double %227, %231
  %235 = fmul double %229, %233
  %236 = fmul double %227, %233
  %237 = fmul double %229, %231
  %238 = fsub double %234, %235
  %239 = fadd double %236, %237
  %240 = fcmp uno double %238, %238
  br i1 %240, label %241, label %247, !prof !4

241:                                              ; preds = %220
  %242 = fcmp uno double %239, %239
  br i1 %242, label %243, label %247, !prof !4

243:                                              ; preds = %241
  %244 = call { double, double } @__muldc3(double noundef %227, double noundef %229, double noundef %231, double noundef %233) #4
  %245 = extractvalue { double, double } %244, 0
  %246 = extractvalue { double, double } %244, 1
  br label %247

247:                                              ; preds = %243, %241, %220
  %248 = phi double [ %238, %220 ], [ %238, %241 ], [ %245, %243 ]
  %249 = phi double [ %239, %220 ], [ %239, %241 ], [ %246, %243 ]
  %250 = load double, double* %17, align 8
  %251 = fadd double %250, %248
  store double %251, double* %17, align 8
  br label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %23, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %23, align 4
  br label %81, !llvm.loop !10

255:                                              ; preds = %81
  %256 = load double, double* %15, align 8
  %257 = load double, double* %16, align 8
  %258 = fsub double %256, %257
  store double %258, double* %18, align 8
  %259 = load double, double* %15, align 8
  %260 = load double*, double** %9, align 8
  %261 = getelementptr inbounds double, double* %260, i64 0
  store double %259, double* %261, align 8
  %262 = load double, double* %16, align 8
  %263 = load double*, double** %9, align 8
  %264 = getelementptr inbounds double, double* %263, i64 1
  store double %262, double* %264, align 8
  %265 = load double, double* %17, align 8
  %266 = load double*, double** %9, align 8
  %267 = getelementptr inbounds double, double* %266, i64 2
  store double %265, double* %267, align 8
  %268 = load double, double* %18, align 8
  %269 = load double*, double** %9, align 8
  %270 = getelementptr inbounds double, double* %269, i64 3
  store double %268, double* %270, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs(double* noundef %0, i32 noundef %1, double noundef %2, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca { double, double }*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.Window, align 8
  %18 = alloca i32, align 4
  %19 = alloca { double, double }, align 8
  %20 = alloca { double, double }, align 8
  %21 = alloca %struct.Pole, align 8
  store double* %0, double** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store { double, double }* %5, { double, double }** %10, align 8
  %22 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double 1.000000e+00, %28
  store double %29, double* %15, align 8
  %30 = load double, double* %9, align 8
  %31 = load double, double* %15, align 8
  %32 = fdiv double %30, %31
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %6
  %46 = load i32, i32* %8, align 4
  %47 = load double, double* %9, align 8
  %48 = load { double, double }*, { double, double }** %10, align 8
  call void @calculate_sig_T(i32 noundef %46, double noundef %47, %struct.Input* noundef byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* noundef %48)
  %49 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 4
  %50 = load %struct.Window**, %struct.Window*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Window*, %struct.Window** %50, i64 %52
  %54 = load %struct.Window*, %struct.Window** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Window, %struct.Window* %54, i64 %56
  %58 = bitcast %struct.Window* %17 to i8*
  %59 = bitcast %struct.Window* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 32, i1 false)
  %60 = load double, double* %9, align 8
  %61 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fmul double %60, %62
  store double %63, double* %11, align 8
  %64 = load double, double* %9, align 8
  %65 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %64, %66
  store double %67, double* %12, align 8
  %68 = load double, double* %9, align 8
  %69 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 2
  %70 = load double, double* %69, align 8
  %71 = fmul double %68, %70
  store double %71, double* %13, align 8
  %72 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %219, %45
  %75 = load i32, i32* %18, align 4
  %76 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %222

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 3
  %81 = load %struct.Pole**, %struct.Pole*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Pole*, %struct.Pole** %81, i64 %83
  %85 = load %struct.Pole*, %struct.Pole** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Pole, %struct.Pole* %85, i64 %87
  %89 = bitcast %struct.Pole* %21 to i8*
  %90 = bitcast %struct.Pole* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 72, i1 false)
  %91 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 0
  %92 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load double, double* %9, align 8
  %97 = call double @sqrt(double noundef %96) #4
  %98 = fsub double %93, %97
  %99 = call { double, double } @__divdc3(double noundef -0.000000e+00, double noundef 1.000000e+00, double noundef %98, double noundef %95) #4
  %100 = extractvalue { double, double } %99, 0
  %101 = extractvalue { double, double } %99, 1
  %102 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  %103 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  store double %100, double* %102, align 8
  store double %101, double* %103, align 8
  %104 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = load double, double* %9, align 8
  %109 = fdiv double %105, %108
  %110 = fdiv double %107, %108
  %111 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %112 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  store double %109, double* %111, align 8
  store double %110, double* %112, align 8
  %113 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 1
  %114 = getelementptr inbounds { double, double }, { double, double }* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = getelementptr inbounds { double, double }, { double, double }* %113, i32 0, i32 1
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = fmul double %115, %119
  %123 = fmul double %117, %121
  %124 = fmul double %115, %121
  %125 = fmul double %117, %119
  %126 = fsub double %122, %123
  %127 = fadd double %124, %125
  %128 = fcmp uno double %126, %126
  br i1 %128, label %129, label %135, !prof !4

129:                                              ; preds = %79
  %130 = fcmp uno double %127, %127
  br i1 %130, label %131, label %135, !prof !4

131:                                              ; preds = %129
  %132 = call { double, double } @__muldc3(double noundef %115, double noundef %117, double noundef %119, double noundef %121) #4
  %133 = extractvalue { double, double } %132, 0
  %134 = extractvalue { double, double } %132, 1
  br label %135

135:                                              ; preds = %131, %129, %79
  %136 = phi double [ %126, %79 ], [ %126, %129 ], [ %133, %131 ]
  %137 = phi double [ %127, %79 ], [ %127, %129 ], [ %134, %131 ]
  %138 = load { double, double }*, { double, double }** %10, align 8
  %139 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 4
  %140 = load i16, i16* %139, align 8
  %141 = sext i16 %140 to i64
  %142 = getelementptr inbounds { double, double }, { double, double }* %138, i64 %141
  %143 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 0
  %144 = load double, double* %143, align 8
  %145 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 1
  %146 = load double, double* %145, align 8
  %147 = fmul double %136, %144
  %148 = fmul double %137, %146
  %149 = fmul double %136, %146
  %150 = fmul double %137, %144
  %151 = fsub double %147, %148
  %152 = fadd double %149, %150
  %153 = fcmp uno double %151, %151
  br i1 %153, label %154, label %160, !prof !4

154:                                              ; preds = %135
  %155 = fcmp uno double %152, %152
  br i1 %155, label %156, label %160, !prof !4

156:                                              ; preds = %154
  %157 = call { double, double } @__muldc3(double noundef %136, double noundef %137, double noundef %144, double noundef %146) #4
  %158 = extractvalue { double, double } %157, 0
  %159 = extractvalue { double, double } %157, 1
  br label %160

160:                                              ; preds = %156, %154, %135
  %161 = phi double [ %151, %135 ], [ %151, %154 ], [ %158, %156 ]
  %162 = phi double [ %152, %135 ], [ %152, %154 ], [ %159, %156 ]
  %163 = load double, double* %11, align 8
  %164 = fadd double %163, %161
  store double %164, double* %11, align 8
  %165 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 2
  %166 = getelementptr inbounds { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %173 = load double, double* %172, align 8
  %174 = fmul double %167, %171
  %175 = fmul double %169, %173
  %176 = fmul double %167, %173
  %177 = fmul double %169, %171
  %178 = fsub double %174, %175
  %179 = fadd double %176, %177
  %180 = fcmp uno double %178, %178
  br i1 %180, label %181, label %187, !prof !4

181:                                              ; preds = %160
  %182 = fcmp uno double %179, %179
  br i1 %182, label %183, label %187, !prof !4

183:                                              ; preds = %181
  %184 = call { double, double } @__muldc3(double noundef %167, double noundef %169, double noundef %171, double noundef %173) #4
  %185 = extractvalue { double, double } %184, 0
  %186 = extractvalue { double, double } %184, 1
  br label %187

187:                                              ; preds = %183, %181, %160
  %188 = phi double [ %178, %160 ], [ %178, %181 ], [ %185, %183 ]
  %189 = phi double [ %179, %160 ], [ %179, %181 ], [ %186, %183 ]
  %190 = load double, double* %12, align 8
  %191 = fadd double %190, %188
  store double %191, double* %12, align 8
  %192 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 3
  %193 = getelementptr inbounds { double, double }, { double, double }* %192, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = getelementptr inbounds { double, double }, { double, double }* %192, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %200 = load double, double* %199, align 8
  %201 = fmul double %194, %198
  %202 = fmul double %196, %200
  %203 = fmul double %194, %200
  %204 = fmul double %196, %198
  %205 = fsub double %201, %202
  %206 = fadd double %203, %204
  %207 = fcmp uno double %205, %205
  br i1 %207, label %208, label %214, !prof !4

208:                                              ; preds = %187
  %209 = fcmp uno double %206, %206
  br i1 %209, label %210, label %214, !prof !4

210:                                              ; preds = %208
  %211 = call { double, double } @__muldc3(double noundef %194, double noundef %196, double noundef %198, double noundef %200) #4
  %212 = extractvalue { double, double } %211, 0
  %213 = extractvalue { double, double } %211, 1
  br label %214

214:                                              ; preds = %210, %208, %187
  %215 = phi double [ %205, %187 ], [ %205, %208 ], [ %212, %210 ]
  %216 = phi double [ %206, %187 ], [ %206, %208 ], [ %213, %210 ]
  %217 = load double, double* %13, align 8
  %218 = fadd double %217, %215
  store double %218, double* %13, align 8
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %74, !llvm.loop !11

222:                                              ; preds = %74
  %223 = load double, double* %11, align 8
  %224 = load double, double* %12, align 8
  %225 = fsub double %223, %224
  store double %225, double* %14, align 8
  %226 = load double, double* %11, align 8
  %227 = load double*, double** %7, align 8
  %228 = getelementptr inbounds double, double* %227, i64 0
  store double %226, double* %228, align 8
  %229 = load double, double* %12, align 8
  %230 = load double*, double** %7, align 8
  %231 = getelementptr inbounds double, double* %230, i64 1
  store double %229, double* %231, align 8
  %232 = load double, double* %13, align 8
  %233 = load double*, double** %7, align 8
  %234 = getelementptr inbounds double, double* %233, i64 2
  store double %232, double* %234, align 8
  %235 = load double, double* %14, align 8
  %236 = load double*, double** %7, align 8
  %237 = getelementptr inbounds double, double* %236, i64 3
  store double %235, double* %237, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_sig_T(i32 noundef %0, double noundef %1, %struct.Input* noundef byval(%struct.Input) align 8 %2, %struct.CalcDataPtrs* noundef byval(%struct.CalcDataPtrs) align 8 %3, { double, double }* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca { double, double }*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store { double, double }* %4, { double, double }** %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %90, %5
  %12 = load i32, i32* %10, align 4
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %2, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %3, i32 0, i32 5
  %18 = load double**, double*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %7, align 8
  %28 = call double @sqrt(double noundef %27) #4
  %29 = fmul double %26, %28
  store double %29, double* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load double, double* %9, align 8
  %34 = call double @atan(double noundef %33) #4
  %35 = fneg double %34
  %36 = load double, double* %9, align 8
  %37 = fsub double %36, %35
  store double %37, double* %9, align 8
  br label %73

38:                                               ; preds = %16
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load double, double* %9, align 8
  %43 = fmul double 3.000000e+00, %42
  %44 = load double, double* %9, align 8
  %45 = load double, double* %9, align 8
  %46 = fneg double %44
  %47 = call double @llvm.fmuladd.f64(double %46, double %45, double 3.000000e+00)
  %48 = fdiv double %43, %47
  %49 = call double @atan(double noundef %48) #4
  %50 = load double, double* %9, align 8
  %51 = fsub double %50, %49
  store double %51, double* %9, align 8
  br label %72

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load double, double* %9, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %9, align 8
  %59 = fneg double %57
  %60 = call double @llvm.fmuladd.f64(double %59, double %58, double 1.500000e+01)
  %61 = fmul double %56, %60
  %62 = load double, double* %9, align 8
  %63 = fmul double 6.000000e+00, %62
  %64 = load double, double* %9, align 8
  %65 = fneg double %63
  %66 = call double @llvm.fmuladd.f64(double %65, double %64, double 1.500000e+01)
  %67 = fdiv double %61, %66
  %68 = call double @atan(double noundef %67) #4
  %69 = load double, double* %9, align 8
  %70 = fsub double %69, %68
  store double %70, double* %9, align 8
  br label %71

71:                                               ; preds = %55, %52
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %32
  %74 = load double, double* %9, align 8
  %75 = fmul double %74, 2.000000e+00
  store double %75, double* %9, align 8
  %76 = load double, double* %9, align 8
  %77 = call double @cos(double noundef %76) #4
  %78 = load double, double* %9, align 8
  %79 = call double @sin(double noundef %78) #4
  %80 = fmul double %79, 0.000000e+00
  %81 = fmul double %79, 1.000000e+00
  %82 = fsub double %77, %80
  %83 = fneg double %81
  %84 = load { double, double }*, { double, double }** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds { double, double }, { double, double }* %84, i64 %86
  %88 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 0
  %89 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 1
  store double %82, double* %88, align 8
  store double %83, double* %89, align 8
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %11, !llvm.loop !12

93:                                               ; preds = %11
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
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
