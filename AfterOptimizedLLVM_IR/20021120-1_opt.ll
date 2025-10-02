; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021120-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gd = dso_local global [32 x double] zeroinitializer, align 16
@gf = dso_local global [32 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca float, align 4
  %61 = alloca float, align 4
  %62 = alloca float, align 4
  %63 = alloca float, align 4
  %64 = alloca float, align 4
  %65 = alloca float, align 4
  %66 = alloca float, align 4
  %67 = alloca double*, align 8
  %68 = alloca float*, align 8
  %69 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), double** %67, align 8
  %70 = load double*, double** %67, align 8
  %71 = getelementptr inbounds double, double* %70, i32 1
  store double* %71, double** %67, align 8
  %72 = load volatile double, double* %70, align 8
  store double %72, double* %3, align 8
  %73 = load double*, double** %67, align 8
  %74 = getelementptr inbounds double, double* %73, i32 1
  store double* %74, double** %67, align 8
  %75 = load volatile double, double* %73, align 8
  store double %75, double* %4, align 8
  %76 = load double*, double** %67, align 8
  %77 = getelementptr inbounds double, double* %76, i32 1
  store double* %77, double** %67, align 8
  %78 = load volatile double, double* %76, align 8
  store double %78, double* %5, align 8
  %79 = load double*, double** %67, align 8
  %80 = getelementptr inbounds double, double* %79, i32 1
  store double* %80, double** %67, align 8
  %81 = load volatile double, double* %79, align 8
  store double %81, double* %6, align 8
  %82 = load double*, double** %67, align 8
  %83 = getelementptr inbounds double, double* %82, i32 1
  store double* %83, double** %67, align 8
  %84 = load volatile double, double* %82, align 8
  store double %84, double* %7, align 8
  %85 = load double*, double** %67, align 8
  %86 = getelementptr inbounds double, double* %85, i32 1
  store double* %86, double** %67, align 8
  %87 = load volatile double, double* %85, align 8
  store double %87, double* %8, align 8
  %88 = load double*, double** %67, align 8
  %89 = getelementptr inbounds double, double* %88, i32 1
  store double* %89, double** %67, align 8
  %90 = load volatile double, double* %88, align 8
  store double %90, double* %9, align 8
  %91 = load double*, double** %67, align 8
  %92 = getelementptr inbounds double, double* %91, i32 1
  store double* %92, double** %67, align 8
  %93 = load volatile double, double* %91, align 8
  store double %93, double* %10, align 8
  %94 = load double*, double** %67, align 8
  %95 = getelementptr inbounds double, double* %94, i32 1
  store double* %95, double** %67, align 8
  %96 = load volatile double, double* %94, align 8
  store double %96, double* %11, align 8
  %97 = load double*, double** %67, align 8
  %98 = getelementptr inbounds double, double* %97, i32 1
  store double* %98, double** %67, align 8
  %99 = load volatile double, double* %97, align 8
  store double %99, double* %12, align 8
  %100 = load double*, double** %67, align 8
  %101 = getelementptr inbounds double, double* %100, i32 1
  store double* %101, double** %67, align 8
  %102 = load volatile double, double* %100, align 8
  store double %102, double* %13, align 8
  %103 = load double*, double** %67, align 8
  %104 = getelementptr inbounds double, double* %103, i32 1
  store double* %104, double** %67, align 8
  %105 = load volatile double, double* %103, align 8
  store double %105, double* %14, align 8
  %106 = load double*, double** %67, align 8
  %107 = getelementptr inbounds double, double* %106, i32 1
  store double* %107, double** %67, align 8
  %108 = load volatile double, double* %106, align 8
  store double %108, double* %15, align 8
  %109 = load double*, double** %67, align 8
  %110 = getelementptr inbounds double, double* %109, i32 1
  store double* %110, double** %67, align 8
  %111 = load volatile double, double* %109, align 8
  store double %111, double* %16, align 8
  %112 = load double*, double** %67, align 8
  %113 = getelementptr inbounds double, double* %112, i32 1
  store double* %113, double** %67, align 8
  %114 = load volatile double, double* %112, align 8
  store double %114, double* %17, align 8
  %115 = load double*, double** %67, align 8
  %116 = getelementptr inbounds double, double* %115, i32 1
  store double* %116, double** %67, align 8
  %117 = load volatile double, double* %115, align 8
  store double %117, double* %18, align 8
  %118 = load double*, double** %67, align 8
  %119 = getelementptr inbounds double, double* %118, i32 1
  store double* %119, double** %67, align 8
  %120 = load volatile double, double* %118, align 8
  store double %120, double* %19, align 8
  %121 = load double*, double** %67, align 8
  %122 = getelementptr inbounds double, double* %121, i32 1
  store double* %122, double** %67, align 8
  %123 = load volatile double, double* %121, align 8
  store double %123, double* %20, align 8
  %124 = load double*, double** %67, align 8
  %125 = getelementptr inbounds double, double* %124, i32 1
  store double* %125, double** %67, align 8
  %126 = load volatile double, double* %124, align 8
  store double %126, double* %21, align 8
  %127 = load double*, double** %67, align 8
  %128 = getelementptr inbounds double, double* %127, i32 1
  store double* %128, double** %67, align 8
  %129 = load volatile double, double* %127, align 8
  store double %129, double* %22, align 8
  %130 = load double*, double** %67, align 8
  %131 = getelementptr inbounds double, double* %130, i32 1
  store double* %131, double** %67, align 8
  %132 = load volatile double, double* %130, align 8
  store double %132, double* %23, align 8
  %133 = load double*, double** %67, align 8
  %134 = getelementptr inbounds double, double* %133, i32 1
  store double* %134, double** %67, align 8
  %135 = load volatile double, double* %133, align 8
  store double %135, double* %24, align 8
  %136 = load double*, double** %67, align 8
  %137 = getelementptr inbounds double, double* %136, i32 1
  store double* %137, double** %67, align 8
  %138 = load volatile double, double* %136, align 8
  store double %138, double* %25, align 8
  %139 = load double*, double** %67, align 8
  %140 = getelementptr inbounds double, double* %139, i32 1
  store double* %140, double** %67, align 8
  %141 = load volatile double, double* %139, align 8
  store double %141, double* %26, align 8
  %142 = load double*, double** %67, align 8
  %143 = getelementptr inbounds double, double* %142, i32 1
  store double* %143, double** %67, align 8
  %144 = load volatile double, double* %142, align 8
  store double %144, double* %27, align 8
  %145 = load double*, double** %67, align 8
  %146 = getelementptr inbounds double, double* %145, i32 1
  store double* %146, double** %67, align 8
  %147 = load volatile double, double* %145, align 8
  store double %147, double* %28, align 8
  %148 = load double*, double** %67, align 8
  %149 = getelementptr inbounds double, double* %148, i32 1
  store double* %149, double** %67, align 8
  %150 = load volatile double, double* %148, align 8
  store double %150, double* %29, align 8
  %151 = load double*, double** %67, align 8
  %152 = getelementptr inbounds double, double* %151, i32 1
  store double* %152, double** %67, align 8
  %153 = load volatile double, double* %151, align 8
  store double %153, double* %30, align 8
  %154 = load double*, double** %67, align 8
  %155 = getelementptr inbounds double, double* %154, i32 1
  store double* %155, double** %67, align 8
  %156 = load volatile double, double* %154, align 8
  store double %156, double* %31, align 8
  %157 = load double*, double** %67, align 8
  %158 = getelementptr inbounds double, double* %157, i32 1
  store double* %158, double** %67, align 8
  %159 = load volatile double, double* %157, align 8
  store double %159, double* %32, align 8
  %160 = load double*, double** %67, align 8
  %161 = getelementptr inbounds double, double* %160, i32 1
  store double* %161, double** %67, align 8
  %162 = load volatile double, double* %160, align 8
  store double %162, double* %33, align 8
  %163 = load double*, double** %67, align 8
  %164 = getelementptr inbounds double, double* %163, i32 1
  store double* %164, double** %67, align 8
  %165 = load volatile double, double* %163, align 8
  store double %165, double* %34, align 8
  store i32 0, i32* %69, align 4
  br label %166

166:                                              ; preds = %843, %1
  %167 = load i32, i32* %69, align 4
  %168 = load i32, i32* %2, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %846

170:                                              ; preds = %166
  store float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 0), float** %68, align 8
  %171 = load float*, float** %68, align 8
  %172 = getelementptr inbounds float, float* %171, i32 1
  store float* %172, float** %68, align 8
  %173 = load volatile float, float* %171, align 4
  store float %173, float* %35, align 4
  %174 = load float*, float** %68, align 8
  %175 = getelementptr inbounds float, float* %174, i32 1
  store float* %175, float** %68, align 8
  %176 = load volatile float, float* %174, align 4
  store float %176, float* %36, align 4
  %177 = load float*, float** %68, align 8
  %178 = getelementptr inbounds float, float* %177, i32 1
  store float* %178, float** %68, align 8
  %179 = load volatile float, float* %177, align 4
  store float %179, float* %37, align 4
  %180 = load float*, float** %68, align 8
  %181 = getelementptr inbounds float, float* %180, i32 1
  store float* %181, float** %68, align 8
  %182 = load volatile float, float* %180, align 4
  store float %182, float* %38, align 4
  %183 = load float*, float** %68, align 8
  %184 = getelementptr inbounds float, float* %183, i32 1
  store float* %184, float** %68, align 8
  %185 = load volatile float, float* %183, align 4
  store float %185, float* %39, align 4
  %186 = load float*, float** %68, align 8
  %187 = getelementptr inbounds float, float* %186, i32 1
  store float* %187, float** %68, align 8
  %188 = load volatile float, float* %186, align 4
  store float %188, float* %40, align 4
  %189 = load float*, float** %68, align 8
  %190 = getelementptr inbounds float, float* %189, i32 1
  store float* %190, float** %68, align 8
  %191 = load volatile float, float* %189, align 4
  store float %191, float* %41, align 4
  %192 = load float*, float** %68, align 8
  %193 = getelementptr inbounds float, float* %192, i32 1
  store float* %193, float** %68, align 8
  %194 = load volatile float, float* %192, align 4
  store float %194, float* %42, align 4
  %195 = load float*, float** %68, align 8
  %196 = getelementptr inbounds float, float* %195, i32 1
  store float* %196, float** %68, align 8
  %197 = load volatile float, float* %195, align 4
  store float %197, float* %43, align 4
  %198 = load float*, float** %68, align 8
  %199 = getelementptr inbounds float, float* %198, i32 1
  store float* %199, float** %68, align 8
  %200 = load volatile float, float* %198, align 4
  store float %200, float* %44, align 4
  %201 = load float*, float** %68, align 8
  %202 = getelementptr inbounds float, float* %201, i32 1
  store float* %202, float** %68, align 8
  %203 = load volatile float, float* %201, align 4
  store float %203, float* %45, align 4
  %204 = load float*, float** %68, align 8
  %205 = getelementptr inbounds float, float* %204, i32 1
  store float* %205, float** %68, align 8
  %206 = load volatile float, float* %204, align 4
  store float %206, float* %46, align 4
  %207 = load float*, float** %68, align 8
  %208 = getelementptr inbounds float, float* %207, i32 1
  store float* %208, float** %68, align 8
  %209 = load volatile float, float* %207, align 4
  store float %209, float* %47, align 4
  %210 = load float*, float** %68, align 8
  %211 = getelementptr inbounds float, float* %210, i32 1
  store float* %211, float** %68, align 8
  %212 = load volatile float, float* %210, align 4
  store float %212, float* %48, align 4
  %213 = load float*, float** %68, align 8
  %214 = getelementptr inbounds float, float* %213, i32 1
  store float* %214, float** %68, align 8
  %215 = load volatile float, float* %213, align 4
  store float %215, float* %49, align 4
  %216 = load float*, float** %68, align 8
  %217 = getelementptr inbounds float, float* %216, i32 1
  store float* %217, float** %68, align 8
  %218 = load volatile float, float* %216, align 4
  store float %218, float* %50, align 4
  %219 = load float*, float** %68, align 8
  %220 = getelementptr inbounds float, float* %219, i32 1
  store float* %220, float** %68, align 8
  %221 = load volatile float, float* %219, align 4
  store float %221, float* %51, align 4
  %222 = load float*, float** %68, align 8
  %223 = getelementptr inbounds float, float* %222, i32 1
  store float* %223, float** %68, align 8
  %224 = load volatile float, float* %222, align 4
  store float %224, float* %52, align 4
  %225 = load float*, float** %68, align 8
  %226 = getelementptr inbounds float, float* %225, i32 1
  store float* %226, float** %68, align 8
  %227 = load volatile float, float* %225, align 4
  store float %227, float* %53, align 4
  %228 = load float*, float** %68, align 8
  %229 = getelementptr inbounds float, float* %228, i32 1
  store float* %229, float** %68, align 8
  %230 = load volatile float, float* %228, align 4
  store float %230, float* %54, align 4
  %231 = load float*, float** %68, align 8
  %232 = getelementptr inbounds float, float* %231, i32 1
  store float* %232, float** %68, align 8
  %233 = load volatile float, float* %231, align 4
  store float %233, float* %55, align 4
  %234 = load float*, float** %68, align 8
  %235 = getelementptr inbounds float, float* %234, i32 1
  store float* %235, float** %68, align 8
  %236 = load volatile float, float* %234, align 4
  store float %236, float* %56, align 4
  %237 = load float*, float** %68, align 8
  %238 = getelementptr inbounds float, float* %237, i32 1
  store float* %238, float** %68, align 8
  %239 = load volatile float, float* %237, align 4
  store float %239, float* %57, align 4
  %240 = load float*, float** %68, align 8
  %241 = getelementptr inbounds float, float* %240, i32 1
  store float* %241, float** %68, align 8
  %242 = load volatile float, float* %240, align 4
  store float %242, float* %58, align 4
  %243 = load float*, float** %68, align 8
  %244 = getelementptr inbounds float, float* %243, i32 1
  store float* %244, float** %68, align 8
  %245 = load volatile float, float* %243, align 4
  store float %245, float* %59, align 4
  %246 = load float*, float** %68, align 8
  %247 = getelementptr inbounds float, float* %246, i32 1
  store float* %247, float** %68, align 8
  %248 = load volatile float, float* %246, align 4
  store float %248, float* %60, align 4
  %249 = load float*, float** %68, align 8
  %250 = getelementptr inbounds float, float* %249, i32 1
  store float* %250, float** %68, align 8
  %251 = load volatile float, float* %249, align 4
  store float %251, float* %61, align 4
  %252 = load float*, float** %68, align 8
  %253 = getelementptr inbounds float, float* %252, i32 1
  store float* %253, float** %68, align 8
  %254 = load volatile float, float* %252, align 4
  store float %254, float* %62, align 4
  %255 = load float*, float** %68, align 8
  %256 = getelementptr inbounds float, float* %255, i32 1
  store float* %256, float** %68, align 8
  %257 = load volatile float, float* %255, align 4
  store float %257, float* %63, align 4
  %258 = load float*, float** %68, align 8
  %259 = getelementptr inbounds float, float* %258, i32 1
  store float* %259, float** %68, align 8
  %260 = load volatile float, float* %258, align 4
  store float %260, float* %64, align 4
  %261 = load float*, float** %68, align 8
  %262 = getelementptr inbounds float, float* %261, i32 1
  store float* %262, float** %68, align 8
  %263 = load volatile float, float* %261, align 4
  store float %263, float* %65, align 4
  %264 = load float*, float** %68, align 8
  %265 = getelementptr inbounds float, float* %264, i32 1
  store float* %265, float** %68, align 8
  %266 = load volatile float, float* %264, align 4
  store float %266, float* %66, align 4
  store double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), double** %67, align 8
  %267 = load double*, double** %67, align 8
  %268 = getelementptr inbounds double, double* %267, i32 1
  store double* %268, double** %67, align 8
  %269 = load volatile double, double* %267, align 8
  %270 = load double, double* %3, align 8
  %271 = fadd double %270, %269
  store double %271, double* %3, align 8
  %272 = load double*, double** %67, align 8
  %273 = getelementptr inbounds double, double* %272, i32 1
  store double* %273, double** %67, align 8
  %274 = load volatile double, double* %272, align 8
  %275 = load double, double* %4, align 8
  %276 = fadd double %275, %274
  store double %276, double* %4, align 8
  %277 = load double*, double** %67, align 8
  %278 = getelementptr inbounds double, double* %277, i32 1
  store double* %278, double** %67, align 8
  %279 = load volatile double, double* %277, align 8
  %280 = load double, double* %5, align 8
  %281 = fadd double %280, %279
  store double %281, double* %5, align 8
  %282 = load double*, double** %67, align 8
  %283 = getelementptr inbounds double, double* %282, i32 1
  store double* %283, double** %67, align 8
  %284 = load volatile double, double* %282, align 8
  %285 = load double, double* %6, align 8
  %286 = fadd double %285, %284
  store double %286, double* %6, align 8
  %287 = load double*, double** %67, align 8
  %288 = getelementptr inbounds double, double* %287, i32 1
  store double* %288, double** %67, align 8
  %289 = load volatile double, double* %287, align 8
  %290 = load double, double* %7, align 8
  %291 = fadd double %290, %289
  store double %291, double* %7, align 8
  %292 = load double*, double** %67, align 8
  %293 = getelementptr inbounds double, double* %292, i32 1
  store double* %293, double** %67, align 8
  %294 = load volatile double, double* %292, align 8
  %295 = load double, double* %8, align 8
  %296 = fadd double %295, %294
  store double %296, double* %8, align 8
  %297 = load double*, double** %67, align 8
  %298 = getelementptr inbounds double, double* %297, i32 1
  store double* %298, double** %67, align 8
  %299 = load volatile double, double* %297, align 8
  %300 = load double, double* %9, align 8
  %301 = fadd double %300, %299
  store double %301, double* %9, align 8
  %302 = load double*, double** %67, align 8
  %303 = getelementptr inbounds double, double* %302, i32 1
  store double* %303, double** %67, align 8
  %304 = load volatile double, double* %302, align 8
  %305 = load double, double* %10, align 8
  %306 = fadd double %305, %304
  store double %306, double* %10, align 8
  %307 = load double*, double** %67, align 8
  %308 = getelementptr inbounds double, double* %307, i32 1
  store double* %308, double** %67, align 8
  %309 = load volatile double, double* %307, align 8
  %310 = load double, double* %11, align 8
  %311 = fadd double %310, %309
  store double %311, double* %11, align 8
  %312 = load double*, double** %67, align 8
  %313 = getelementptr inbounds double, double* %312, i32 1
  store double* %313, double** %67, align 8
  %314 = load volatile double, double* %312, align 8
  %315 = load double, double* %12, align 8
  %316 = fadd double %315, %314
  store double %316, double* %12, align 8
  %317 = load double*, double** %67, align 8
  %318 = getelementptr inbounds double, double* %317, i32 1
  store double* %318, double** %67, align 8
  %319 = load volatile double, double* %317, align 8
  %320 = load double, double* %13, align 8
  %321 = fadd double %320, %319
  store double %321, double* %13, align 8
  %322 = load double*, double** %67, align 8
  %323 = getelementptr inbounds double, double* %322, i32 1
  store double* %323, double** %67, align 8
  %324 = load volatile double, double* %322, align 8
  %325 = load double, double* %14, align 8
  %326 = fadd double %325, %324
  store double %326, double* %14, align 8
  %327 = load double*, double** %67, align 8
  %328 = getelementptr inbounds double, double* %327, i32 1
  store double* %328, double** %67, align 8
  %329 = load volatile double, double* %327, align 8
  %330 = load double, double* %15, align 8
  %331 = fadd double %330, %329
  store double %331, double* %15, align 8
  %332 = load double*, double** %67, align 8
  %333 = getelementptr inbounds double, double* %332, i32 1
  store double* %333, double** %67, align 8
  %334 = load volatile double, double* %332, align 8
  %335 = load double, double* %16, align 8
  %336 = fadd double %335, %334
  store double %336, double* %16, align 8
  %337 = load double*, double** %67, align 8
  %338 = getelementptr inbounds double, double* %337, i32 1
  store double* %338, double** %67, align 8
  %339 = load volatile double, double* %337, align 8
  %340 = load double, double* %17, align 8
  %341 = fadd double %340, %339
  store double %341, double* %17, align 8
  %342 = load double*, double** %67, align 8
  %343 = getelementptr inbounds double, double* %342, i32 1
  store double* %343, double** %67, align 8
  %344 = load volatile double, double* %342, align 8
  %345 = load double, double* %18, align 8
  %346 = fadd double %345, %344
  store double %346, double* %18, align 8
  %347 = load double*, double** %67, align 8
  %348 = getelementptr inbounds double, double* %347, i32 1
  store double* %348, double** %67, align 8
  %349 = load volatile double, double* %347, align 8
  %350 = load double, double* %19, align 8
  %351 = fadd double %350, %349
  store double %351, double* %19, align 8
  %352 = load double*, double** %67, align 8
  %353 = getelementptr inbounds double, double* %352, i32 1
  store double* %353, double** %67, align 8
  %354 = load volatile double, double* %352, align 8
  %355 = load double, double* %20, align 8
  %356 = fadd double %355, %354
  store double %356, double* %20, align 8
  %357 = load double*, double** %67, align 8
  %358 = getelementptr inbounds double, double* %357, i32 1
  store double* %358, double** %67, align 8
  %359 = load volatile double, double* %357, align 8
  %360 = load double, double* %21, align 8
  %361 = fadd double %360, %359
  store double %361, double* %21, align 8
  %362 = load double*, double** %67, align 8
  %363 = getelementptr inbounds double, double* %362, i32 1
  store double* %363, double** %67, align 8
  %364 = load volatile double, double* %362, align 8
  %365 = load double, double* %22, align 8
  %366 = fadd double %365, %364
  store double %366, double* %22, align 8
  %367 = load double*, double** %67, align 8
  %368 = getelementptr inbounds double, double* %367, i32 1
  store double* %368, double** %67, align 8
  %369 = load volatile double, double* %367, align 8
  %370 = load double, double* %23, align 8
  %371 = fadd double %370, %369
  store double %371, double* %23, align 8
  %372 = load double*, double** %67, align 8
  %373 = getelementptr inbounds double, double* %372, i32 1
  store double* %373, double** %67, align 8
  %374 = load volatile double, double* %372, align 8
  %375 = load double, double* %24, align 8
  %376 = fadd double %375, %374
  store double %376, double* %24, align 8
  %377 = load double*, double** %67, align 8
  %378 = getelementptr inbounds double, double* %377, i32 1
  store double* %378, double** %67, align 8
  %379 = load volatile double, double* %377, align 8
  %380 = load double, double* %25, align 8
  %381 = fadd double %380, %379
  store double %381, double* %25, align 8
  %382 = load double*, double** %67, align 8
  %383 = getelementptr inbounds double, double* %382, i32 1
  store double* %383, double** %67, align 8
  %384 = load volatile double, double* %382, align 8
  %385 = load double, double* %26, align 8
  %386 = fadd double %385, %384
  store double %386, double* %26, align 8
  %387 = load double*, double** %67, align 8
  %388 = getelementptr inbounds double, double* %387, i32 1
  store double* %388, double** %67, align 8
  %389 = load volatile double, double* %387, align 8
  %390 = load double, double* %27, align 8
  %391 = fadd double %390, %389
  store double %391, double* %27, align 8
  %392 = load double*, double** %67, align 8
  %393 = getelementptr inbounds double, double* %392, i32 1
  store double* %393, double** %67, align 8
  %394 = load volatile double, double* %392, align 8
  %395 = load double, double* %28, align 8
  %396 = fadd double %395, %394
  store double %396, double* %28, align 8
  %397 = load double*, double** %67, align 8
  %398 = getelementptr inbounds double, double* %397, i32 1
  store double* %398, double** %67, align 8
  %399 = load volatile double, double* %397, align 8
  %400 = load double, double* %29, align 8
  %401 = fadd double %400, %399
  store double %401, double* %29, align 8
  %402 = load double*, double** %67, align 8
  %403 = getelementptr inbounds double, double* %402, i32 1
  store double* %403, double** %67, align 8
  %404 = load volatile double, double* %402, align 8
  %405 = load double, double* %30, align 8
  %406 = fadd double %405, %404
  store double %406, double* %30, align 8
  %407 = load double*, double** %67, align 8
  %408 = getelementptr inbounds double, double* %407, i32 1
  store double* %408, double** %67, align 8
  %409 = load volatile double, double* %407, align 8
  %410 = load double, double* %31, align 8
  %411 = fadd double %410, %409
  store double %411, double* %31, align 8
  %412 = load double*, double** %67, align 8
  %413 = getelementptr inbounds double, double* %412, i32 1
  store double* %413, double** %67, align 8
  %414 = load volatile double, double* %412, align 8
  %415 = load double, double* %32, align 8
  %416 = fadd double %415, %414
  store double %416, double* %32, align 8
  %417 = load double*, double** %67, align 8
  %418 = getelementptr inbounds double, double* %417, i32 1
  store double* %418, double** %67, align 8
  %419 = load volatile double, double* %417, align 8
  %420 = load double, double* %33, align 8
  %421 = fadd double %420, %419
  store double %421, double* %33, align 8
  %422 = load double*, double** %67, align 8
  %423 = getelementptr inbounds double, double* %422, i32 1
  store double* %423, double** %67, align 8
  %424 = load volatile double, double* %422, align 8
  %425 = load double, double* %34, align 8
  %426 = fadd double %425, %424
  store double %426, double* %34, align 8
  store double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), double** %67, align 8
  %427 = load double*, double** %67, align 8
  %428 = getelementptr inbounds double, double* %427, i32 1
  store double* %428, double** %67, align 8
  %429 = load volatile double, double* %427, align 8
  %430 = load double, double* %3, align 8
  %431 = fadd double %430, %429
  store double %431, double* %3, align 8
  %432 = load double*, double** %67, align 8
  %433 = getelementptr inbounds double, double* %432, i32 1
  store double* %433, double** %67, align 8
  %434 = load volatile double, double* %432, align 8
  %435 = load double, double* %4, align 8
  %436 = fadd double %435, %434
  store double %436, double* %4, align 8
  %437 = load double*, double** %67, align 8
  %438 = getelementptr inbounds double, double* %437, i32 1
  store double* %438, double** %67, align 8
  %439 = load volatile double, double* %437, align 8
  %440 = load double, double* %5, align 8
  %441 = fadd double %440, %439
  store double %441, double* %5, align 8
  %442 = load double*, double** %67, align 8
  %443 = getelementptr inbounds double, double* %442, i32 1
  store double* %443, double** %67, align 8
  %444 = load volatile double, double* %442, align 8
  %445 = load double, double* %6, align 8
  %446 = fadd double %445, %444
  store double %446, double* %6, align 8
  %447 = load double*, double** %67, align 8
  %448 = getelementptr inbounds double, double* %447, i32 1
  store double* %448, double** %67, align 8
  %449 = load volatile double, double* %447, align 8
  %450 = load double, double* %7, align 8
  %451 = fadd double %450, %449
  store double %451, double* %7, align 8
  %452 = load double*, double** %67, align 8
  %453 = getelementptr inbounds double, double* %452, i32 1
  store double* %453, double** %67, align 8
  %454 = load volatile double, double* %452, align 8
  %455 = load double, double* %8, align 8
  %456 = fadd double %455, %454
  store double %456, double* %8, align 8
  %457 = load double*, double** %67, align 8
  %458 = getelementptr inbounds double, double* %457, i32 1
  store double* %458, double** %67, align 8
  %459 = load volatile double, double* %457, align 8
  %460 = load double, double* %9, align 8
  %461 = fadd double %460, %459
  store double %461, double* %9, align 8
  %462 = load double*, double** %67, align 8
  %463 = getelementptr inbounds double, double* %462, i32 1
  store double* %463, double** %67, align 8
  %464 = load volatile double, double* %462, align 8
  %465 = load double, double* %10, align 8
  %466 = fadd double %465, %464
  store double %466, double* %10, align 8
  %467 = load double*, double** %67, align 8
  %468 = getelementptr inbounds double, double* %467, i32 1
  store double* %468, double** %67, align 8
  %469 = load volatile double, double* %467, align 8
  %470 = load double, double* %11, align 8
  %471 = fadd double %470, %469
  store double %471, double* %11, align 8
  %472 = load double*, double** %67, align 8
  %473 = getelementptr inbounds double, double* %472, i32 1
  store double* %473, double** %67, align 8
  %474 = load volatile double, double* %472, align 8
  %475 = load double, double* %12, align 8
  %476 = fadd double %475, %474
  store double %476, double* %12, align 8
  %477 = load double*, double** %67, align 8
  %478 = getelementptr inbounds double, double* %477, i32 1
  store double* %478, double** %67, align 8
  %479 = load volatile double, double* %477, align 8
  %480 = load double, double* %13, align 8
  %481 = fadd double %480, %479
  store double %481, double* %13, align 8
  %482 = load double*, double** %67, align 8
  %483 = getelementptr inbounds double, double* %482, i32 1
  store double* %483, double** %67, align 8
  %484 = load volatile double, double* %482, align 8
  %485 = load double, double* %14, align 8
  %486 = fadd double %485, %484
  store double %486, double* %14, align 8
  %487 = load double*, double** %67, align 8
  %488 = getelementptr inbounds double, double* %487, i32 1
  store double* %488, double** %67, align 8
  %489 = load volatile double, double* %487, align 8
  %490 = load double, double* %15, align 8
  %491 = fadd double %490, %489
  store double %491, double* %15, align 8
  %492 = load double*, double** %67, align 8
  %493 = getelementptr inbounds double, double* %492, i32 1
  store double* %493, double** %67, align 8
  %494 = load volatile double, double* %492, align 8
  %495 = load double, double* %16, align 8
  %496 = fadd double %495, %494
  store double %496, double* %16, align 8
  %497 = load double*, double** %67, align 8
  %498 = getelementptr inbounds double, double* %497, i32 1
  store double* %498, double** %67, align 8
  %499 = load volatile double, double* %497, align 8
  %500 = load double, double* %17, align 8
  %501 = fadd double %500, %499
  store double %501, double* %17, align 8
  %502 = load double*, double** %67, align 8
  %503 = getelementptr inbounds double, double* %502, i32 1
  store double* %503, double** %67, align 8
  %504 = load volatile double, double* %502, align 8
  %505 = load double, double* %18, align 8
  %506 = fadd double %505, %504
  store double %506, double* %18, align 8
  %507 = load double*, double** %67, align 8
  %508 = getelementptr inbounds double, double* %507, i32 1
  store double* %508, double** %67, align 8
  %509 = load volatile double, double* %507, align 8
  %510 = load double, double* %19, align 8
  %511 = fadd double %510, %509
  store double %511, double* %19, align 8
  %512 = load double*, double** %67, align 8
  %513 = getelementptr inbounds double, double* %512, i32 1
  store double* %513, double** %67, align 8
  %514 = load volatile double, double* %512, align 8
  %515 = load double, double* %20, align 8
  %516 = fadd double %515, %514
  store double %516, double* %20, align 8
  %517 = load double*, double** %67, align 8
  %518 = getelementptr inbounds double, double* %517, i32 1
  store double* %518, double** %67, align 8
  %519 = load volatile double, double* %517, align 8
  %520 = load double, double* %21, align 8
  %521 = fadd double %520, %519
  store double %521, double* %21, align 8
  %522 = load double*, double** %67, align 8
  %523 = getelementptr inbounds double, double* %522, i32 1
  store double* %523, double** %67, align 8
  %524 = load volatile double, double* %522, align 8
  %525 = load double, double* %22, align 8
  %526 = fadd double %525, %524
  store double %526, double* %22, align 8
  %527 = load double*, double** %67, align 8
  %528 = getelementptr inbounds double, double* %527, i32 1
  store double* %528, double** %67, align 8
  %529 = load volatile double, double* %527, align 8
  %530 = load double, double* %23, align 8
  %531 = fadd double %530, %529
  store double %531, double* %23, align 8
  %532 = load double*, double** %67, align 8
  %533 = getelementptr inbounds double, double* %532, i32 1
  store double* %533, double** %67, align 8
  %534 = load volatile double, double* %532, align 8
  %535 = load double, double* %24, align 8
  %536 = fadd double %535, %534
  store double %536, double* %24, align 8
  %537 = load double*, double** %67, align 8
  %538 = getelementptr inbounds double, double* %537, i32 1
  store double* %538, double** %67, align 8
  %539 = load volatile double, double* %537, align 8
  %540 = load double, double* %25, align 8
  %541 = fadd double %540, %539
  store double %541, double* %25, align 8
  %542 = load double*, double** %67, align 8
  %543 = getelementptr inbounds double, double* %542, i32 1
  store double* %543, double** %67, align 8
  %544 = load volatile double, double* %542, align 8
  %545 = load double, double* %26, align 8
  %546 = fadd double %545, %544
  store double %546, double* %26, align 8
  %547 = load double*, double** %67, align 8
  %548 = getelementptr inbounds double, double* %547, i32 1
  store double* %548, double** %67, align 8
  %549 = load volatile double, double* %547, align 8
  %550 = load double, double* %27, align 8
  %551 = fadd double %550, %549
  store double %551, double* %27, align 8
  %552 = load double*, double** %67, align 8
  %553 = getelementptr inbounds double, double* %552, i32 1
  store double* %553, double** %67, align 8
  %554 = load volatile double, double* %552, align 8
  %555 = load double, double* %28, align 8
  %556 = fadd double %555, %554
  store double %556, double* %28, align 8
  %557 = load double*, double** %67, align 8
  %558 = getelementptr inbounds double, double* %557, i32 1
  store double* %558, double** %67, align 8
  %559 = load volatile double, double* %557, align 8
  %560 = load double, double* %29, align 8
  %561 = fadd double %560, %559
  store double %561, double* %29, align 8
  %562 = load double*, double** %67, align 8
  %563 = getelementptr inbounds double, double* %562, i32 1
  store double* %563, double** %67, align 8
  %564 = load volatile double, double* %562, align 8
  %565 = load double, double* %30, align 8
  %566 = fadd double %565, %564
  store double %566, double* %30, align 8
  %567 = load double*, double** %67, align 8
  %568 = getelementptr inbounds double, double* %567, i32 1
  store double* %568, double** %67, align 8
  %569 = load volatile double, double* %567, align 8
  %570 = load double, double* %31, align 8
  %571 = fadd double %570, %569
  store double %571, double* %31, align 8
  %572 = load double*, double** %67, align 8
  %573 = getelementptr inbounds double, double* %572, i32 1
  store double* %573, double** %67, align 8
  %574 = load volatile double, double* %572, align 8
  %575 = load double, double* %32, align 8
  %576 = fadd double %575, %574
  store double %576, double* %32, align 8
  %577 = load double*, double** %67, align 8
  %578 = getelementptr inbounds double, double* %577, i32 1
  store double* %578, double** %67, align 8
  %579 = load volatile double, double* %577, align 8
  %580 = load double, double* %33, align 8
  %581 = fadd double %580, %579
  store double %581, double* %33, align 8
  %582 = load double*, double** %67, align 8
  %583 = getelementptr inbounds double, double* %582, i32 1
  store double* %583, double** %67, align 8
  %584 = load volatile double, double* %582, align 8
  %585 = load double, double* %34, align 8
  %586 = fadd double %585, %584
  store double %586, double* %34, align 8
  store double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), double** %67, align 8
  %587 = load double*, double** %67, align 8
  %588 = getelementptr inbounds double, double* %587, i32 1
  store double* %588, double** %67, align 8
  %589 = load volatile double, double* %587, align 8
  %590 = load double, double* %3, align 8
  %591 = fadd double %590, %589
  store double %591, double* %3, align 8
  %592 = load double*, double** %67, align 8
  %593 = getelementptr inbounds double, double* %592, i32 1
  store double* %593, double** %67, align 8
  %594 = load volatile double, double* %592, align 8
  %595 = load double, double* %4, align 8
  %596 = fadd double %595, %594
  store double %596, double* %4, align 8
  %597 = load double*, double** %67, align 8
  %598 = getelementptr inbounds double, double* %597, i32 1
  store double* %598, double** %67, align 8
  %599 = load volatile double, double* %597, align 8
  %600 = load double, double* %5, align 8
  %601 = fadd double %600, %599
  store double %601, double* %5, align 8
  %602 = load double*, double** %67, align 8
  %603 = getelementptr inbounds double, double* %602, i32 1
  store double* %603, double** %67, align 8
  %604 = load volatile double, double* %602, align 8
  %605 = load double, double* %6, align 8
  %606 = fadd double %605, %604
  store double %606, double* %6, align 8
  %607 = load double*, double** %67, align 8
  %608 = getelementptr inbounds double, double* %607, i32 1
  store double* %608, double** %67, align 8
  %609 = load volatile double, double* %607, align 8
  %610 = load double, double* %7, align 8
  %611 = fadd double %610, %609
  store double %611, double* %7, align 8
  %612 = load double*, double** %67, align 8
  %613 = getelementptr inbounds double, double* %612, i32 1
  store double* %613, double** %67, align 8
  %614 = load volatile double, double* %612, align 8
  %615 = load double, double* %8, align 8
  %616 = fadd double %615, %614
  store double %616, double* %8, align 8
  %617 = load double*, double** %67, align 8
  %618 = getelementptr inbounds double, double* %617, i32 1
  store double* %618, double** %67, align 8
  %619 = load volatile double, double* %617, align 8
  %620 = load double, double* %9, align 8
  %621 = fadd double %620, %619
  store double %621, double* %9, align 8
  %622 = load double*, double** %67, align 8
  %623 = getelementptr inbounds double, double* %622, i32 1
  store double* %623, double** %67, align 8
  %624 = load volatile double, double* %622, align 8
  %625 = load double, double* %10, align 8
  %626 = fadd double %625, %624
  store double %626, double* %10, align 8
  %627 = load double*, double** %67, align 8
  %628 = getelementptr inbounds double, double* %627, i32 1
  store double* %628, double** %67, align 8
  %629 = load volatile double, double* %627, align 8
  %630 = load double, double* %11, align 8
  %631 = fadd double %630, %629
  store double %631, double* %11, align 8
  %632 = load double*, double** %67, align 8
  %633 = getelementptr inbounds double, double* %632, i32 1
  store double* %633, double** %67, align 8
  %634 = load volatile double, double* %632, align 8
  %635 = load double, double* %12, align 8
  %636 = fadd double %635, %634
  store double %636, double* %12, align 8
  %637 = load double*, double** %67, align 8
  %638 = getelementptr inbounds double, double* %637, i32 1
  store double* %638, double** %67, align 8
  %639 = load volatile double, double* %637, align 8
  %640 = load double, double* %13, align 8
  %641 = fadd double %640, %639
  store double %641, double* %13, align 8
  %642 = load double*, double** %67, align 8
  %643 = getelementptr inbounds double, double* %642, i32 1
  store double* %643, double** %67, align 8
  %644 = load volatile double, double* %642, align 8
  %645 = load double, double* %14, align 8
  %646 = fadd double %645, %644
  store double %646, double* %14, align 8
  %647 = load double*, double** %67, align 8
  %648 = getelementptr inbounds double, double* %647, i32 1
  store double* %648, double** %67, align 8
  %649 = load volatile double, double* %647, align 8
  %650 = load double, double* %15, align 8
  %651 = fadd double %650, %649
  store double %651, double* %15, align 8
  %652 = load double*, double** %67, align 8
  %653 = getelementptr inbounds double, double* %652, i32 1
  store double* %653, double** %67, align 8
  %654 = load volatile double, double* %652, align 8
  %655 = load double, double* %16, align 8
  %656 = fadd double %655, %654
  store double %656, double* %16, align 8
  %657 = load double*, double** %67, align 8
  %658 = getelementptr inbounds double, double* %657, i32 1
  store double* %658, double** %67, align 8
  %659 = load volatile double, double* %657, align 8
  %660 = load double, double* %17, align 8
  %661 = fadd double %660, %659
  store double %661, double* %17, align 8
  %662 = load double*, double** %67, align 8
  %663 = getelementptr inbounds double, double* %662, i32 1
  store double* %663, double** %67, align 8
  %664 = load volatile double, double* %662, align 8
  %665 = load double, double* %18, align 8
  %666 = fadd double %665, %664
  store double %666, double* %18, align 8
  %667 = load double*, double** %67, align 8
  %668 = getelementptr inbounds double, double* %667, i32 1
  store double* %668, double** %67, align 8
  %669 = load volatile double, double* %667, align 8
  %670 = load double, double* %19, align 8
  %671 = fadd double %670, %669
  store double %671, double* %19, align 8
  %672 = load double*, double** %67, align 8
  %673 = getelementptr inbounds double, double* %672, i32 1
  store double* %673, double** %67, align 8
  %674 = load volatile double, double* %672, align 8
  %675 = load double, double* %20, align 8
  %676 = fadd double %675, %674
  store double %676, double* %20, align 8
  %677 = load double*, double** %67, align 8
  %678 = getelementptr inbounds double, double* %677, i32 1
  store double* %678, double** %67, align 8
  %679 = load volatile double, double* %677, align 8
  %680 = load double, double* %21, align 8
  %681 = fadd double %680, %679
  store double %681, double* %21, align 8
  %682 = load double*, double** %67, align 8
  %683 = getelementptr inbounds double, double* %682, i32 1
  store double* %683, double** %67, align 8
  %684 = load volatile double, double* %682, align 8
  %685 = load double, double* %22, align 8
  %686 = fadd double %685, %684
  store double %686, double* %22, align 8
  %687 = load double*, double** %67, align 8
  %688 = getelementptr inbounds double, double* %687, i32 1
  store double* %688, double** %67, align 8
  %689 = load volatile double, double* %687, align 8
  %690 = load double, double* %23, align 8
  %691 = fadd double %690, %689
  store double %691, double* %23, align 8
  %692 = load double*, double** %67, align 8
  %693 = getelementptr inbounds double, double* %692, i32 1
  store double* %693, double** %67, align 8
  %694 = load volatile double, double* %692, align 8
  %695 = load double, double* %24, align 8
  %696 = fadd double %695, %694
  store double %696, double* %24, align 8
  %697 = load double*, double** %67, align 8
  %698 = getelementptr inbounds double, double* %697, i32 1
  store double* %698, double** %67, align 8
  %699 = load volatile double, double* %697, align 8
  %700 = load double, double* %25, align 8
  %701 = fadd double %700, %699
  store double %701, double* %25, align 8
  %702 = load double*, double** %67, align 8
  %703 = getelementptr inbounds double, double* %702, i32 1
  store double* %703, double** %67, align 8
  %704 = load volatile double, double* %702, align 8
  %705 = load double, double* %26, align 8
  %706 = fadd double %705, %704
  store double %706, double* %26, align 8
  %707 = load double*, double** %67, align 8
  %708 = getelementptr inbounds double, double* %707, i32 1
  store double* %708, double** %67, align 8
  %709 = load volatile double, double* %707, align 8
  %710 = load double, double* %27, align 8
  %711 = fadd double %710, %709
  store double %711, double* %27, align 8
  %712 = load double*, double** %67, align 8
  %713 = getelementptr inbounds double, double* %712, i32 1
  store double* %713, double** %67, align 8
  %714 = load volatile double, double* %712, align 8
  %715 = load double, double* %28, align 8
  %716 = fadd double %715, %714
  store double %716, double* %28, align 8
  %717 = load double*, double** %67, align 8
  %718 = getelementptr inbounds double, double* %717, i32 1
  store double* %718, double** %67, align 8
  %719 = load volatile double, double* %717, align 8
  %720 = load double, double* %29, align 8
  %721 = fadd double %720, %719
  store double %721, double* %29, align 8
  %722 = load double*, double** %67, align 8
  %723 = getelementptr inbounds double, double* %722, i32 1
  store double* %723, double** %67, align 8
  %724 = load volatile double, double* %722, align 8
  %725 = load double, double* %30, align 8
  %726 = fadd double %725, %724
  store double %726, double* %30, align 8
  %727 = load double*, double** %67, align 8
  %728 = getelementptr inbounds double, double* %727, i32 1
  store double* %728, double** %67, align 8
  %729 = load volatile double, double* %727, align 8
  %730 = load double, double* %31, align 8
  %731 = fadd double %730, %729
  store double %731, double* %31, align 8
  %732 = load double*, double** %67, align 8
  %733 = getelementptr inbounds double, double* %732, i32 1
  store double* %733, double** %67, align 8
  %734 = load volatile double, double* %732, align 8
  %735 = load double, double* %32, align 8
  %736 = fadd double %735, %734
  store double %736, double* %32, align 8
  %737 = load double*, double** %67, align 8
  %738 = getelementptr inbounds double, double* %737, i32 1
  store double* %738, double** %67, align 8
  %739 = load volatile double, double* %737, align 8
  %740 = load double, double* %33, align 8
  %741 = fadd double %740, %739
  store double %741, double* %33, align 8
  %742 = load double*, double** %67, align 8
  %743 = getelementptr inbounds double, double* %742, i32 1
  store double* %743, double** %67, align 8
  %744 = load volatile double, double* %742, align 8
  %745 = load double, double* %34, align 8
  %746 = fadd double %745, %744
  store double %746, double* %34, align 8
  store float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 0), float** %68, align 8
  %747 = load float, float* %35, align 4
  %748 = load float*, float** %68, align 8
  %749 = getelementptr inbounds float, float* %748, i32 1
  store float* %749, float** %68, align 8
  store volatile float %747, float* %748, align 4
  %750 = load float, float* %36, align 4
  %751 = load float*, float** %68, align 8
  %752 = getelementptr inbounds float, float* %751, i32 1
  store float* %752, float** %68, align 8
  store volatile float %750, float* %751, align 4
  %753 = load float, float* %37, align 4
  %754 = load float*, float** %68, align 8
  %755 = getelementptr inbounds float, float* %754, i32 1
  store float* %755, float** %68, align 8
  store volatile float %753, float* %754, align 4
  %756 = load float, float* %38, align 4
  %757 = load float*, float** %68, align 8
  %758 = getelementptr inbounds float, float* %757, i32 1
  store float* %758, float** %68, align 8
  store volatile float %756, float* %757, align 4
  %759 = load float, float* %39, align 4
  %760 = load float*, float** %68, align 8
  %761 = getelementptr inbounds float, float* %760, i32 1
  store float* %761, float** %68, align 8
  store volatile float %759, float* %760, align 4
  %762 = load float, float* %40, align 4
  %763 = load float*, float** %68, align 8
  %764 = getelementptr inbounds float, float* %763, i32 1
  store float* %764, float** %68, align 8
  store volatile float %762, float* %763, align 4
  %765 = load float, float* %41, align 4
  %766 = load float*, float** %68, align 8
  %767 = getelementptr inbounds float, float* %766, i32 1
  store float* %767, float** %68, align 8
  store volatile float %765, float* %766, align 4
  %768 = load float, float* %42, align 4
  %769 = load float*, float** %68, align 8
  %770 = getelementptr inbounds float, float* %769, i32 1
  store float* %770, float** %68, align 8
  store volatile float %768, float* %769, align 4
  %771 = load float, float* %43, align 4
  %772 = load float*, float** %68, align 8
  %773 = getelementptr inbounds float, float* %772, i32 1
  store float* %773, float** %68, align 8
  store volatile float %771, float* %772, align 4
  %774 = load float, float* %44, align 4
  %775 = load float*, float** %68, align 8
  %776 = getelementptr inbounds float, float* %775, i32 1
  store float* %776, float** %68, align 8
  store volatile float %774, float* %775, align 4
  %777 = load float, float* %45, align 4
  %778 = load float*, float** %68, align 8
  %779 = getelementptr inbounds float, float* %778, i32 1
  store float* %779, float** %68, align 8
  store volatile float %777, float* %778, align 4
  %780 = load float, float* %46, align 4
  %781 = load float*, float** %68, align 8
  %782 = getelementptr inbounds float, float* %781, i32 1
  store float* %782, float** %68, align 8
  store volatile float %780, float* %781, align 4
  %783 = load float, float* %47, align 4
  %784 = load float*, float** %68, align 8
  %785 = getelementptr inbounds float, float* %784, i32 1
  store float* %785, float** %68, align 8
  store volatile float %783, float* %784, align 4
  %786 = load float, float* %48, align 4
  %787 = load float*, float** %68, align 8
  %788 = getelementptr inbounds float, float* %787, i32 1
  store float* %788, float** %68, align 8
  store volatile float %786, float* %787, align 4
  %789 = load float, float* %49, align 4
  %790 = load float*, float** %68, align 8
  %791 = getelementptr inbounds float, float* %790, i32 1
  store float* %791, float** %68, align 8
  store volatile float %789, float* %790, align 4
  %792 = load float, float* %50, align 4
  %793 = load float*, float** %68, align 8
  %794 = getelementptr inbounds float, float* %793, i32 1
  store float* %794, float** %68, align 8
  store volatile float %792, float* %793, align 4
  %795 = load float, float* %51, align 4
  %796 = load float*, float** %68, align 8
  %797 = getelementptr inbounds float, float* %796, i32 1
  store float* %797, float** %68, align 8
  store volatile float %795, float* %796, align 4
  %798 = load float, float* %52, align 4
  %799 = load float*, float** %68, align 8
  %800 = getelementptr inbounds float, float* %799, i32 1
  store float* %800, float** %68, align 8
  store volatile float %798, float* %799, align 4
  %801 = load float, float* %53, align 4
  %802 = load float*, float** %68, align 8
  %803 = getelementptr inbounds float, float* %802, i32 1
  store float* %803, float** %68, align 8
  store volatile float %801, float* %802, align 4
  %804 = load float, float* %54, align 4
  %805 = load float*, float** %68, align 8
  %806 = getelementptr inbounds float, float* %805, i32 1
  store float* %806, float** %68, align 8
  store volatile float %804, float* %805, align 4
  %807 = load float, float* %55, align 4
  %808 = load float*, float** %68, align 8
  %809 = getelementptr inbounds float, float* %808, i32 1
  store float* %809, float** %68, align 8
  store volatile float %807, float* %808, align 4
  %810 = load float, float* %56, align 4
  %811 = load float*, float** %68, align 8
  %812 = getelementptr inbounds float, float* %811, i32 1
  store float* %812, float** %68, align 8
  store volatile float %810, float* %811, align 4
  %813 = load float, float* %57, align 4
  %814 = load float*, float** %68, align 8
  %815 = getelementptr inbounds float, float* %814, i32 1
  store float* %815, float** %68, align 8
  store volatile float %813, float* %814, align 4
  %816 = load float, float* %58, align 4
  %817 = load float*, float** %68, align 8
  %818 = getelementptr inbounds float, float* %817, i32 1
  store float* %818, float** %68, align 8
  store volatile float %816, float* %817, align 4
  %819 = load float, float* %59, align 4
  %820 = load float*, float** %68, align 8
  %821 = getelementptr inbounds float, float* %820, i32 1
  store float* %821, float** %68, align 8
  store volatile float %819, float* %820, align 4
  %822 = load float, float* %60, align 4
  %823 = load float*, float** %68, align 8
  %824 = getelementptr inbounds float, float* %823, i32 1
  store float* %824, float** %68, align 8
  store volatile float %822, float* %823, align 4
  %825 = load float, float* %61, align 4
  %826 = load float*, float** %68, align 8
  %827 = getelementptr inbounds float, float* %826, i32 1
  store float* %827, float** %68, align 8
  store volatile float %825, float* %826, align 4
  %828 = load float, float* %62, align 4
  %829 = load float*, float** %68, align 8
  %830 = getelementptr inbounds float, float* %829, i32 1
  store float* %830, float** %68, align 8
  store volatile float %828, float* %829, align 4
  %831 = load float, float* %63, align 4
  %832 = load float*, float** %68, align 8
  %833 = getelementptr inbounds float, float* %832, i32 1
  store float* %833, float** %68, align 8
  store volatile float %831, float* %832, align 4
  %834 = load float, float* %64, align 4
  %835 = load float*, float** %68, align 8
  %836 = getelementptr inbounds float, float* %835, i32 1
  store float* %836, float** %68, align 8
  store volatile float %834, float* %835, align 4
  %837 = load float, float* %65, align 4
  %838 = load float*, float** %68, align 8
  %839 = getelementptr inbounds float, float* %838, i32 1
  store float* %839, float** %68, align 8
  store volatile float %837, float* %838, align 4
  %840 = load float, float* %66, align 4
  %841 = load float*, float** %68, align 8
  %842 = getelementptr inbounds float, float* %841, i32 1
  store float* %842, float** %68, align 8
  store volatile float %840, float* %841, align 4
  br label %843

843:                                              ; preds = %170
  %844 = load i32, i32* %69, align 4
  %845 = add nsw i32 %844, 1
  store i32 %845, i32* %69, align 4
  br label %166, !llvm.loop !4

846:                                              ; preds = %166
  store double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), double** %67, align 8
  %847 = load double, double* %3, align 8
  %848 = load double*, double** %67, align 8
  %849 = getelementptr inbounds double, double* %848, i32 1
  store double* %849, double** %67, align 8
  store volatile double %847, double* %848, align 8
  %850 = load double, double* %4, align 8
  %851 = load double*, double** %67, align 8
  %852 = getelementptr inbounds double, double* %851, i32 1
  store double* %852, double** %67, align 8
  store volatile double %850, double* %851, align 8
  %853 = load double, double* %5, align 8
  %854 = load double*, double** %67, align 8
  %855 = getelementptr inbounds double, double* %854, i32 1
  store double* %855, double** %67, align 8
  store volatile double %853, double* %854, align 8
  %856 = load double, double* %6, align 8
  %857 = load double*, double** %67, align 8
  %858 = getelementptr inbounds double, double* %857, i32 1
  store double* %858, double** %67, align 8
  store volatile double %856, double* %857, align 8
  %859 = load double, double* %7, align 8
  %860 = load double*, double** %67, align 8
  %861 = getelementptr inbounds double, double* %860, i32 1
  store double* %861, double** %67, align 8
  store volatile double %859, double* %860, align 8
  %862 = load double, double* %8, align 8
  %863 = load double*, double** %67, align 8
  %864 = getelementptr inbounds double, double* %863, i32 1
  store double* %864, double** %67, align 8
  store volatile double %862, double* %863, align 8
  %865 = load double, double* %9, align 8
  %866 = load double*, double** %67, align 8
  %867 = getelementptr inbounds double, double* %866, i32 1
  store double* %867, double** %67, align 8
  store volatile double %865, double* %866, align 8
  %868 = load double, double* %10, align 8
  %869 = load double*, double** %67, align 8
  %870 = getelementptr inbounds double, double* %869, i32 1
  store double* %870, double** %67, align 8
  store volatile double %868, double* %869, align 8
  %871 = load double, double* %11, align 8
  %872 = load double*, double** %67, align 8
  %873 = getelementptr inbounds double, double* %872, i32 1
  store double* %873, double** %67, align 8
  store volatile double %871, double* %872, align 8
  %874 = load double, double* %12, align 8
  %875 = load double*, double** %67, align 8
  %876 = getelementptr inbounds double, double* %875, i32 1
  store double* %876, double** %67, align 8
  store volatile double %874, double* %875, align 8
  %877 = load double, double* %13, align 8
  %878 = load double*, double** %67, align 8
  %879 = getelementptr inbounds double, double* %878, i32 1
  store double* %879, double** %67, align 8
  store volatile double %877, double* %878, align 8
  %880 = load double, double* %14, align 8
  %881 = load double*, double** %67, align 8
  %882 = getelementptr inbounds double, double* %881, i32 1
  store double* %882, double** %67, align 8
  store volatile double %880, double* %881, align 8
  %883 = load double, double* %15, align 8
  %884 = load double*, double** %67, align 8
  %885 = getelementptr inbounds double, double* %884, i32 1
  store double* %885, double** %67, align 8
  store volatile double %883, double* %884, align 8
  %886 = load double, double* %16, align 8
  %887 = load double*, double** %67, align 8
  %888 = getelementptr inbounds double, double* %887, i32 1
  store double* %888, double** %67, align 8
  store volatile double %886, double* %887, align 8
  %889 = load double, double* %17, align 8
  %890 = load double*, double** %67, align 8
  %891 = getelementptr inbounds double, double* %890, i32 1
  store double* %891, double** %67, align 8
  store volatile double %889, double* %890, align 8
  %892 = load double, double* %18, align 8
  %893 = load double*, double** %67, align 8
  %894 = getelementptr inbounds double, double* %893, i32 1
  store double* %894, double** %67, align 8
  store volatile double %892, double* %893, align 8
  %895 = load double, double* %19, align 8
  %896 = load double*, double** %67, align 8
  %897 = getelementptr inbounds double, double* %896, i32 1
  store double* %897, double** %67, align 8
  store volatile double %895, double* %896, align 8
  %898 = load double, double* %20, align 8
  %899 = load double*, double** %67, align 8
  %900 = getelementptr inbounds double, double* %899, i32 1
  store double* %900, double** %67, align 8
  store volatile double %898, double* %899, align 8
  %901 = load double, double* %21, align 8
  %902 = load double*, double** %67, align 8
  %903 = getelementptr inbounds double, double* %902, i32 1
  store double* %903, double** %67, align 8
  store volatile double %901, double* %902, align 8
  %904 = load double, double* %22, align 8
  %905 = load double*, double** %67, align 8
  %906 = getelementptr inbounds double, double* %905, i32 1
  store double* %906, double** %67, align 8
  store volatile double %904, double* %905, align 8
  %907 = load double, double* %23, align 8
  %908 = load double*, double** %67, align 8
  %909 = getelementptr inbounds double, double* %908, i32 1
  store double* %909, double** %67, align 8
  store volatile double %907, double* %908, align 8
  %910 = load double, double* %24, align 8
  %911 = load double*, double** %67, align 8
  %912 = getelementptr inbounds double, double* %911, i32 1
  store double* %912, double** %67, align 8
  store volatile double %910, double* %911, align 8
  %913 = load double, double* %25, align 8
  %914 = load double*, double** %67, align 8
  %915 = getelementptr inbounds double, double* %914, i32 1
  store double* %915, double** %67, align 8
  store volatile double %913, double* %914, align 8
  %916 = load double, double* %26, align 8
  %917 = load double*, double** %67, align 8
  %918 = getelementptr inbounds double, double* %917, i32 1
  store double* %918, double** %67, align 8
  store volatile double %916, double* %917, align 8
  %919 = load double, double* %27, align 8
  %920 = load double*, double** %67, align 8
  %921 = getelementptr inbounds double, double* %920, i32 1
  store double* %921, double** %67, align 8
  store volatile double %919, double* %920, align 8
  %922 = load double, double* %28, align 8
  %923 = load double*, double** %67, align 8
  %924 = getelementptr inbounds double, double* %923, i32 1
  store double* %924, double** %67, align 8
  store volatile double %922, double* %923, align 8
  %925 = load double, double* %29, align 8
  %926 = load double*, double** %67, align 8
  %927 = getelementptr inbounds double, double* %926, i32 1
  store double* %927, double** %67, align 8
  store volatile double %925, double* %926, align 8
  %928 = load double, double* %30, align 8
  %929 = load double*, double** %67, align 8
  %930 = getelementptr inbounds double, double* %929, i32 1
  store double* %930, double** %67, align 8
  store volatile double %928, double* %929, align 8
  %931 = load double, double* %31, align 8
  %932 = load double*, double** %67, align 8
  %933 = getelementptr inbounds double, double* %932, i32 1
  store double* %933, double** %67, align 8
  store volatile double %931, double* %932, align 8
  %934 = load double, double* %32, align 8
  %935 = load double*, double** %67, align 8
  %936 = getelementptr inbounds double, double* %935, i32 1
  store double* %936, double** %67, align 8
  store volatile double %934, double* %935, align 8
  %937 = load double, double* %33, align 8
  %938 = load double*, double** %67, align 8
  %939 = getelementptr inbounds double, double* %938, i32 1
  store double* %939, double** %67, align 8
  store volatile double %937, double* %938, align 8
  %940 = load double, double* %34, align 8
  %941 = load double*, double** %67, align 8
  %942 = getelementptr inbounds double, double* %941, i32 1
  store double* %942, double** %67, align 8
  store volatile double %940, double* %941, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %17, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sitofp i32 %7 to double
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x double], [32 x double]* @gd, i64 0, i64 %10
  store volatile double %8, double* %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x float], [32 x float]* @gf, i64 0, i64 %15
  store volatile float %13, float* %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %3, !llvm.loop !6

20:                                               ; preds = %3
  call void @foo(i32 noundef 1)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32 x double], [32 x double]* @gd, i64 0, i64 %26
  %28 = load volatile double, double* %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sitofp i32 %30 to double
  %32 = fcmp une double %28, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32 x float], [32 x float]* @gf, i64 0, i64 %35
  %37 = load volatile float, float* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sitofp i32 %38 to float
  %40 = fcmp une float %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %24
  call void @abort() #2
  unreachable

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %21, !llvm.loop !7

46:                                               ; preds = %21
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
