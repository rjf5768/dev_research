; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982a.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incs = dso_local global [20 x i32] zeroinitializer, align 16
@ptrs = dso_local global [20 x float*] zeroinitializer, align 16
@results = dso_local global [20 x float] zeroinitializer, align 16
@input = dso_local global [80 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca float*, align 8
  %30 = alloca float, align 4
  %31 = alloca float*, align 8
  %32 = alloca float, align 4
  %33 = alloca float*, align 8
  %34 = alloca float, align 4
  %35 = alloca float*, align 8
  %36 = alloca float, align 4
  %37 = alloca float*, align 8
  %38 = alloca float, align 4
  %39 = alloca float*, align 8
  %40 = alloca float, align 4
  %41 = alloca float*, align 8
  %42 = alloca float, align 4
  %43 = alloca float*, align 8
  %44 = alloca float, align 4
  %45 = alloca float*, align 8
  %46 = alloca float, align 4
  %47 = alloca float*, align 8
  %48 = alloca float, align 4
  %49 = alloca float*, align 8
  %50 = alloca float, align 4
  %51 = alloca float*, align 8
  %52 = alloca float, align 4
  %53 = alloca float*, align 8
  %54 = alloca float, align 4
  %55 = alloca float*, align 8
  %56 = alloca float, align 4
  %57 = alloca float*, align 8
  %58 = alloca float, align 4
  %59 = alloca float*, align 8
  %60 = alloca float, align 4
  %61 = alloca float*, align 8
  %62 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %63 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 1), align 4
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 2), align 8
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 3), align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 4), align 16
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 5), align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 6), align 8
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 7), align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 8), align 16
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 9), align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 10), align 8
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 11), align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 12), align 16
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 13), align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 14), align 8
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 15), align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 16), align 16
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 17), align 4
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 18), align 8
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 19), align 4
  store i32 %82, i32* %22, align 4
  %83 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 0), align 16
  store float* %83, float** %23, align 8
  store float 0.000000e+00, float* %24, align 4
  %84 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 1), align 8
  store float* %84, float** %25, align 8
  store float 0.000000e+00, float* %26, align 4
  %85 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 2), align 16
  store float* %85, float** %27, align 8
  store float 0.000000e+00, float* %28, align 4
  %86 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 3), align 8
  store float* %86, float** %29, align 8
  store float 0.000000e+00, float* %30, align 4
  %87 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 4), align 16
  store float* %87, float** %31, align 8
  store float 0.000000e+00, float* %32, align 4
  %88 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 5), align 8
  store float* %88, float** %33, align 8
  store float 0.000000e+00, float* %34, align 4
  %89 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 6), align 16
  store float* %89, float** %35, align 8
  store float 0.000000e+00, float* %36, align 4
  %90 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 7), align 8
  store float* %90, float** %37, align 8
  store float 0.000000e+00, float* %38, align 4
  %91 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 8), align 16
  store float* %91, float** %39, align 8
  store float 0.000000e+00, float* %40, align 4
  %92 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 9), align 8
  store float* %92, float** %41, align 8
  store float 0.000000e+00, float* %42, align 4
  %93 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 10), align 16
  store float* %93, float** %43, align 8
  store float 0.000000e+00, float* %44, align 4
  %94 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 11), align 8
  store float* %94, float** %45, align 8
  store float 0.000000e+00, float* %46, align 4
  %95 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 12), align 16
  store float* %95, float** %47, align 8
  store float 0.000000e+00, float* %48, align 4
  %96 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 13), align 8
  store float* %96, float** %49, align 8
  store float 0.000000e+00, float* %50, align 4
  %97 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 14), align 16
  store float* %97, float** %51, align 8
  store float 0.000000e+00, float* %52, align 4
  %98 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 15), align 8
  store float* %98, float** %53, align 8
  store float 0.000000e+00, float* %54, align 4
  %99 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 16), align 16
  store float* %99, float** %55, align 8
  store float 0.000000e+00, float* %56, align 4
  %100 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 17), align 8
  store float* %100, float** %57, align 8
  store float 0.000000e+00, float* %58, align 4
  %101 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 18), align 16
  store float* %101, float** %59, align 8
  store float 0.000000e+00, float* %60, align 4
  %102 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 19), align 8
  store float* %102, float** %61, align 8
  store float 0.000000e+00, float* %62, align 4
  br label %103

103:                                              ; preds = %107, %1
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %2, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %268

107:                                              ; preds = %103
  %108 = load float*, float** %23, align 8
  %109 = load float, float* %108, align 4
  %110 = load float, float* %24, align 4
  %111 = fadd float %110, %109
  store float %111, float* %24, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load float*, float** %23, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds float, float* %113, i64 %114
  store float* %115, float** %23, align 8
  %116 = load float*, float** %25, align 8
  %117 = load float, float* %116, align 4
  %118 = load float, float* %26, align 4
  %119 = fadd float %118, %117
  store float %119, float* %26, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load float*, float** %25, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds float, float* %121, i64 %122
  store float* %123, float** %25, align 8
  %124 = load float*, float** %27, align 8
  %125 = load float, float* %124, align 4
  %126 = load float, float* %28, align 4
  %127 = fadd float %126, %125
  store float %127, float* %28, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load float*, float** %27, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds float, float* %129, i64 %130
  store float* %131, float** %27, align 8
  %132 = load float*, float** %29, align 8
  %133 = load float, float* %132, align 4
  %134 = load float, float* %30, align 4
  %135 = fadd float %134, %133
  store float %135, float* %30, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load float*, float** %29, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds float, float* %137, i64 %138
  store float* %139, float** %29, align 8
  %140 = load float*, float** %31, align 8
  %141 = load float, float* %140, align 4
  %142 = load float, float* %32, align 4
  %143 = fadd float %142, %141
  store float %143, float* %32, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load float*, float** %31, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds float, float* %145, i64 %146
  store float* %147, float** %31, align 8
  %148 = load float*, float** %33, align 8
  %149 = load float, float* %148, align 4
  %150 = load float, float* %34, align 4
  %151 = fadd float %150, %149
  store float %151, float* %34, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load float*, float** %33, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds float, float* %153, i64 %154
  store float* %155, float** %33, align 8
  %156 = load float*, float** %35, align 8
  %157 = load float, float* %156, align 4
  %158 = load float, float* %36, align 4
  %159 = fadd float %158, %157
  store float %159, float* %36, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load float*, float** %35, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds float, float* %161, i64 %162
  store float* %163, float** %35, align 8
  %164 = load float*, float** %37, align 8
  %165 = load float, float* %164, align 4
  %166 = load float, float* %38, align 4
  %167 = fadd float %166, %165
  store float %167, float* %38, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load float*, float** %37, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds float, float* %169, i64 %170
  store float* %171, float** %37, align 8
  %172 = load float*, float** %39, align 8
  %173 = load float, float* %172, align 4
  %174 = load float, float* %40, align 4
  %175 = fadd float %174, %173
  store float %175, float* %40, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load float*, float** %39, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds float, float* %177, i64 %178
  store float* %179, float** %39, align 8
  %180 = load float*, float** %41, align 8
  %181 = load float, float* %180, align 4
  %182 = load float, float* %42, align 4
  %183 = fadd float %182, %181
  store float %183, float* %42, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load float*, float** %41, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds float, float* %185, i64 %186
  store float* %187, float** %41, align 8
  %188 = load float*, float** %43, align 8
  %189 = load float, float* %188, align 4
  %190 = load float, float* %44, align 4
  %191 = fadd float %190, %189
  store float %191, float* %44, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load float*, float** %43, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds float, float* %193, i64 %194
  store float* %195, float** %43, align 8
  %196 = load float*, float** %45, align 8
  %197 = load float, float* %196, align 4
  %198 = load float, float* %46, align 4
  %199 = fadd float %198, %197
  store float %199, float* %46, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load float*, float** %45, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds float, float* %201, i64 %202
  store float* %203, float** %45, align 8
  %204 = load float*, float** %47, align 8
  %205 = load float, float* %204, align 4
  %206 = load float, float* %48, align 4
  %207 = fadd float %206, %205
  store float %207, float* %48, align 4
  %208 = load i32, i32* %15, align 4
  %209 = load float*, float** %47, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds float, float* %209, i64 %210
  store float* %211, float** %47, align 8
  %212 = load float*, float** %49, align 8
  %213 = load float, float* %212, align 4
  %214 = load float, float* %50, align 4
  %215 = fadd float %214, %213
  store float %215, float* %50, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load float*, float** %49, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds float, float* %217, i64 %218
  store float* %219, float** %49, align 8
  %220 = load float*, float** %51, align 8
  %221 = load float, float* %220, align 4
  %222 = load float, float* %52, align 4
  %223 = fadd float %222, %221
  store float %223, float* %52, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load float*, float** %51, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds float, float* %225, i64 %226
  store float* %227, float** %51, align 8
  %228 = load float*, float** %53, align 8
  %229 = load float, float* %228, align 4
  %230 = load float, float* %54, align 4
  %231 = fadd float %230, %229
  store float %231, float* %54, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load float*, float** %53, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds float, float* %233, i64 %234
  store float* %235, float** %53, align 8
  %236 = load float*, float** %55, align 8
  %237 = load float, float* %236, align 4
  %238 = load float, float* %56, align 4
  %239 = fadd float %238, %237
  store float %239, float* %56, align 4
  %240 = load i32, i32* %19, align 4
  %241 = load float*, float** %55, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds float, float* %241, i64 %242
  store float* %243, float** %55, align 8
  %244 = load float*, float** %57, align 8
  %245 = load float, float* %244, align 4
  %246 = load float, float* %58, align 4
  %247 = fadd float %246, %245
  store float %247, float* %58, align 4
  %248 = load i32, i32* %20, align 4
  %249 = load float*, float** %57, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds float, float* %249, i64 %250
  store float* %251, float** %57, align 8
  %252 = load float*, float** %59, align 8
  %253 = load float, float* %252, align 4
  %254 = load float, float* %60, align 4
  %255 = fadd float %254, %253
  store float %255, float* %60, align 4
  %256 = load i32, i32* %21, align 4
  %257 = load float*, float** %59, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds float, float* %257, i64 %258
  store float* %259, float** %59, align 8
  %260 = load float*, float** %61, align 8
  %261 = load float, float* %260, align 4
  %262 = load float, float* %62, align 4
  %263 = fadd float %262, %261
  store float %263, float* %62, align 4
  %264 = load i32, i32* %22, align 4
  %265 = load float*, float** %61, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds float, float* %265, i64 %266
  store float* %267, float** %61, align 8
  br label %103, !llvm.loop !4

268:                                              ; preds = %103
  %269 = load float, float* %24, align 4
  store float %269, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 0), align 16
  %270 = load float, float* %26, align 4
  store float %270, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 1), align 4
  %271 = load float, float* %28, align 4
  store float %271, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 2), align 8
  %272 = load float, float* %30, align 4
  store float %272, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 3), align 4
  %273 = load float, float* %32, align 4
  store float %273, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 4), align 16
  %274 = load float, float* %34, align 4
  store float %274, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 5), align 4
  %275 = load float, float* %36, align 4
  store float %275, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 6), align 8
  %276 = load float, float* %38, align 4
  store float %276, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 7), align 4
  %277 = load float, float* %40, align 4
  store float %277, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 8), align 16
  %278 = load float, float* %42, align 4
  store float %278, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 9), align 4
  %279 = load float, float* %44, align 4
  store float %279, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 10), align 8
  %280 = load float, float* %46, align 4
  store float %280, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 11), align 4
  %281 = load float, float* %48, align 4
  store float %281, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 12), align 16
  %282 = load float, float* %50, align 4
  store float %282, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 13), align 4
  %283 = load float, float* %52, align 4
  store float %283, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 14), align 8
  %284 = load float, float* %54, align 4
  store float %284, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 15), align 4
  %285 = load float, float* %56, align 4
  store float %285, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 16), align 16
  %286 = load float, float* %58, align 4
  store float %286, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 17), align 4
  %287 = load float, float* %60, align 4
  store float %287, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 18), align 8
  %288 = load float, float* %62, align 4
  store float %288, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 19), align 4
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
  %5 = icmp slt i32 %4, 20
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, float* getelementptr inbounds ([80 x float], [80 x float]* @input, i64 0, i64 0), i64 %8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [20 x float*], [20 x float*]* @ptrs, i64 0, i64 %11
  store float* %9, float** %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* @incs, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %3, !llvm.loop !6

20:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 80
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = sitofp i32 %25 to float
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [80 x float], [80 x float]* @input, i64 0, i64 %28
  store float %26, float* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %21, !llvm.loop !7

33:                                               ; preds = %21
  call void @foo(i32 noundef 4)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x float], [20 x float]* @results, i64 0, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load i32, i32* %2, align 4
  %43 = mul nsw i32 %42, 4
  %44 = mul nsw i32 %43, 5
  %45 = sdiv i32 %44, 2
  %46 = sitofp i32 %45 to float
  %47 = fcmp une float %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %54

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %34, !llvm.loop !8

53:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
