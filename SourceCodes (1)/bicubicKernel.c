; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bicubicKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bicubicKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bicubicKernel(i32 noundef %0, i32 noundef %1, [256 x i32]* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x [4 x double]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [4 x double], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [256 x i32]* %2, [256 x i32]** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 4, %20
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 4, %23
  %25 = zext i32 %24 to i64
  store i32 4, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %352, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 3, %35
  %37 = sub nsw i32 %34, %36
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %355

39:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %348, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 3, %43
  %45 = sub nsw i32 %42, %44
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %351

47:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %83, %47
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load [256 x i32]*, [256 x i32]** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %56, i64 %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* %63, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to double
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 %74
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x double], [4 x double]* %75, i64 0, i64 %77
  store double %72, double* %78, align 8
  br label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %52, !llvm.loop !4

82:                                               ; preds = %52
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %48, !llvm.loop !6

86:                                               ; preds = %48
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = srem i32 %87, %88
  %90 = sitofp i32 %89 to double
  %91 = load i32, i32* %9, align 4
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %90, %92
  store double %93, double* %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %9, align 4
  %96 = srem i32 %94, %95
  %97 = sitofp i32 %96 to double
  %98 = load i32, i32* %9, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %97, %99
  store double %100, double* %18, align 8
  %101 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %102 = getelementptr inbounds [4 x double], [4 x double]* %101, i64 0, i64 1
  %103 = load double, double* %102, align 8
  %104 = load double, double* %18, align 8
  %105 = fmul double 5.000000e-01, %104
  %106 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %107 = getelementptr inbounds [4 x double], [4 x double]* %106, i64 0, i64 2
  %108 = load double, double* %107, align 16
  %109 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %110 = getelementptr inbounds [4 x double], [4 x double]* %109, i64 0, i64 0
  %111 = load double, double* %110, align 16
  %112 = fsub double %108, %111
  %113 = load double, double* %18, align 8
  %114 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %115 = getelementptr inbounds [4 x double], [4 x double]* %114, i64 0, i64 0
  %116 = load double, double* %115, align 16
  %117 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %118 = getelementptr inbounds [4 x double], [4 x double]* %117, i64 0, i64 1
  %119 = load double, double* %118, align 8
  %120 = fmul double 5.000000e+00, %119
  %121 = fneg double %120
  %122 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %116, double %121)
  %123 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %124 = getelementptr inbounds [4 x double], [4 x double]* %123, i64 0, i64 2
  %125 = load double, double* %124, align 16
  %126 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %125, double %122)
  %127 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %128 = getelementptr inbounds [4 x double], [4 x double]* %127, i64 0, i64 3
  %129 = load double, double* %128, align 8
  %130 = fsub double %126, %129
  %131 = load double, double* %18, align 8
  %132 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %133 = getelementptr inbounds [4 x double], [4 x double]* %132, i64 0, i64 1
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %136 = getelementptr inbounds [4 x double], [4 x double]* %135, i64 0, i64 2
  %137 = load double, double* %136, align 16
  %138 = fsub double %134, %137
  %139 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %140 = getelementptr inbounds [4 x double], [4 x double]* %139, i64 0, i64 3
  %141 = load double, double* %140, align 8
  %142 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %138, double %141)
  %143 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 0
  %144 = getelementptr inbounds [4 x double], [4 x double]* %143, i64 0, i64 0
  %145 = load double, double* %144, align 16
  %146 = fsub double %142, %145
  %147 = call double @llvm.fmuladd.f64(double %131, double %146, double %130)
  %148 = call double @llvm.fmuladd.f64(double %113, double %147, double %112)
  %149 = call double @llvm.fmuladd.f64(double %105, double %148, double %103)
  %150 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  store double %149, double* %150, align 16
  %151 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %152 = getelementptr inbounds [4 x double], [4 x double]* %151, i64 0, i64 1
  %153 = load double, double* %152, align 8
  %154 = load double, double* %18, align 8
  %155 = fmul double 5.000000e-01, %154
  %156 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %157 = getelementptr inbounds [4 x double], [4 x double]* %156, i64 0, i64 2
  %158 = load double, double* %157, align 16
  %159 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %160 = getelementptr inbounds [4 x double], [4 x double]* %159, i64 0, i64 0
  %161 = load double, double* %160, align 16
  %162 = fsub double %158, %161
  %163 = load double, double* %18, align 8
  %164 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %165 = getelementptr inbounds [4 x double], [4 x double]* %164, i64 0, i64 0
  %166 = load double, double* %165, align 16
  %167 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %168 = getelementptr inbounds [4 x double], [4 x double]* %167, i64 0, i64 1
  %169 = load double, double* %168, align 8
  %170 = fmul double 5.000000e+00, %169
  %171 = fneg double %170
  %172 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %166, double %171)
  %173 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %174 = getelementptr inbounds [4 x double], [4 x double]* %173, i64 0, i64 2
  %175 = load double, double* %174, align 16
  %176 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %175, double %172)
  %177 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %178 = getelementptr inbounds [4 x double], [4 x double]* %177, i64 0, i64 3
  %179 = load double, double* %178, align 8
  %180 = fsub double %176, %179
  %181 = load double, double* %18, align 8
  %182 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %183 = getelementptr inbounds [4 x double], [4 x double]* %182, i64 0, i64 1
  %184 = load double, double* %183, align 8
  %185 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %186 = getelementptr inbounds [4 x double], [4 x double]* %185, i64 0, i64 2
  %187 = load double, double* %186, align 16
  %188 = fsub double %184, %187
  %189 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %190 = getelementptr inbounds [4 x double], [4 x double]* %189, i64 0, i64 3
  %191 = load double, double* %190, align 8
  %192 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %188, double %191)
  %193 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 1
  %194 = getelementptr inbounds [4 x double], [4 x double]* %193, i64 0, i64 0
  %195 = load double, double* %194, align 16
  %196 = fsub double %192, %195
  %197 = call double @llvm.fmuladd.f64(double %181, double %196, double %180)
  %198 = call double @llvm.fmuladd.f64(double %163, double %197, double %162)
  %199 = call double @llvm.fmuladd.f64(double %155, double %198, double %153)
  %200 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 1
  store double %199, double* %200, align 8
  %201 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %202 = getelementptr inbounds [4 x double], [4 x double]* %201, i64 0, i64 1
  %203 = load double, double* %202, align 8
  %204 = load double, double* %18, align 8
  %205 = fmul double 5.000000e-01, %204
  %206 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %207 = getelementptr inbounds [4 x double], [4 x double]* %206, i64 0, i64 2
  %208 = load double, double* %207, align 16
  %209 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %210 = getelementptr inbounds [4 x double], [4 x double]* %209, i64 0, i64 0
  %211 = load double, double* %210, align 16
  %212 = fsub double %208, %211
  %213 = load double, double* %18, align 8
  %214 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %215 = getelementptr inbounds [4 x double], [4 x double]* %214, i64 0, i64 0
  %216 = load double, double* %215, align 16
  %217 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %218 = getelementptr inbounds [4 x double], [4 x double]* %217, i64 0, i64 1
  %219 = load double, double* %218, align 8
  %220 = fmul double 5.000000e+00, %219
  %221 = fneg double %220
  %222 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %216, double %221)
  %223 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %224 = getelementptr inbounds [4 x double], [4 x double]* %223, i64 0, i64 2
  %225 = load double, double* %224, align 16
  %226 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %225, double %222)
  %227 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %228 = getelementptr inbounds [4 x double], [4 x double]* %227, i64 0, i64 3
  %229 = load double, double* %228, align 8
  %230 = fsub double %226, %229
  %231 = load double, double* %18, align 8
  %232 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %233 = getelementptr inbounds [4 x double], [4 x double]* %232, i64 0, i64 1
  %234 = load double, double* %233, align 8
  %235 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %236 = getelementptr inbounds [4 x double], [4 x double]* %235, i64 0, i64 2
  %237 = load double, double* %236, align 16
  %238 = fsub double %234, %237
  %239 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %240 = getelementptr inbounds [4 x double], [4 x double]* %239, i64 0, i64 3
  %241 = load double, double* %240, align 8
  %242 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %238, double %241)
  %243 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 2
  %244 = getelementptr inbounds [4 x double], [4 x double]* %243, i64 0, i64 0
  %245 = load double, double* %244, align 16
  %246 = fsub double %242, %245
  %247 = call double @llvm.fmuladd.f64(double %231, double %246, double %230)
  %248 = call double @llvm.fmuladd.f64(double %213, double %247, double %212)
  %249 = call double @llvm.fmuladd.f64(double %205, double %248, double %203)
  %250 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  store double %249, double* %250, align 16
  %251 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %252 = getelementptr inbounds [4 x double], [4 x double]* %251, i64 0, i64 1
  %253 = load double, double* %252, align 8
  %254 = load double, double* %18, align 8
  %255 = fmul double 5.000000e-01, %254
  %256 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %257 = getelementptr inbounds [4 x double], [4 x double]* %256, i64 0, i64 2
  %258 = load double, double* %257, align 16
  %259 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %260 = getelementptr inbounds [4 x double], [4 x double]* %259, i64 0, i64 0
  %261 = load double, double* %260, align 16
  %262 = fsub double %258, %261
  %263 = load double, double* %18, align 8
  %264 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %265 = getelementptr inbounds [4 x double], [4 x double]* %264, i64 0, i64 0
  %266 = load double, double* %265, align 16
  %267 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %268 = getelementptr inbounds [4 x double], [4 x double]* %267, i64 0, i64 1
  %269 = load double, double* %268, align 8
  %270 = fmul double 5.000000e+00, %269
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %266, double %271)
  %273 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %274 = getelementptr inbounds [4 x double], [4 x double]* %273, i64 0, i64 2
  %275 = load double, double* %274, align 16
  %276 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %275, double %272)
  %277 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %278 = getelementptr inbounds [4 x double], [4 x double]* %277, i64 0, i64 3
  %279 = load double, double* %278, align 8
  %280 = fsub double %276, %279
  %281 = load double, double* %18, align 8
  %282 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %283 = getelementptr inbounds [4 x double], [4 x double]* %282, i64 0, i64 1
  %284 = load double, double* %283, align 8
  %285 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %286 = getelementptr inbounds [4 x double], [4 x double]* %285, i64 0, i64 2
  %287 = load double, double* %286, align 16
  %288 = fsub double %284, %287
  %289 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %290 = getelementptr inbounds [4 x double], [4 x double]* %289, i64 0, i64 3
  %291 = load double, double* %290, align 8
  %292 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %288, double %291)
  %293 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i64 0, i64 3
  %294 = getelementptr inbounds [4 x double], [4 x double]* %293, i64 0, i64 0
  %295 = load double, double* %294, align 16
  %296 = fsub double %292, %295
  %297 = call double @llvm.fmuladd.f64(double %281, double %296, double %280)
  %298 = call double @llvm.fmuladd.f64(double %263, double %297, double %262)
  %299 = call double @llvm.fmuladd.f64(double %255, double %298, double %253)
  %300 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  store double %299, double* %300, align 8
  %301 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 1
  %302 = load double, double* %301, align 8
  %303 = load double, double* %17, align 8
  %304 = fmul double 5.000000e-01, %303
  %305 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  %306 = load double, double* %305, align 16
  %307 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  %308 = load double, double* %307, align 16
  %309 = fsub double %306, %308
  %310 = load double, double* %17, align 8
  %311 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  %312 = load double, double* %311, align 16
  %313 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 1
  %314 = load double, double* %313, align 8
  %315 = fmul double 5.000000e+00, %314
  %316 = fneg double %315
  %317 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %312, double %316)
  %318 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  %319 = load double, double* %318, align 16
  %320 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %319, double %317)
  %321 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  %322 = load double, double* %321, align 8
  %323 = fsub double %320, %322
  %324 = load double, double* %17, align 8
  %325 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 1
  %326 = load double, double* %325, align 8
  %327 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  %328 = load double, double* %327, align 16
  %329 = fsub double %326, %328
  %330 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  %331 = load double, double* %330, align 8
  %332 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %329, double %331)
  %333 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 0
  %334 = load double, double* %333, align 16
  %335 = fsub double %332, %334
  %336 = call double @llvm.fmuladd.f64(double %324, double %335, double %323)
  %337 = call double @llvm.fmuladd.f64(double %310, double %336, double %309)
  %338 = call double @llvm.fmuladd.f64(double %304, double %337, double %302)
  %339 = fptosi double %338 to i32
  %340 = load i32*, i32** %8, align 8
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, %25
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %14, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  store i32 %339, i32* %347, align 4
  br label %348

348:                                              ; preds = %86
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %14, align 4
  br label %40, !llvm.loop !7

351:                                              ; preds = %40
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %13, align 4
  br label %32, !llvm.loop !8

355:                                              ; preds = %32
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
