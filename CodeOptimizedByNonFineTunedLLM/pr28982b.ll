; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982b.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [65536 x i32] }

@incs = dso_local global [20 x i32] zeroinitializer, align 16
@ptrs = dso_local global [20 x float*] zeroinitializer, align 16
@results = dso_local global [20 x float] zeroinitializer, align 16
@input = dso_local global [80 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.big* noundef byval(%struct.big) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.big, %struct.big* %0, i32 0, i32 0
  %3 = getelementptr inbounds [65536 x i32], [65536 x i32]* %2, i64 0, i64 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.big, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca float, align 4
  %26 = alloca float*, align 8
  %27 = alloca float, align 4
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  %30 = alloca float*, align 8
  %31 = alloca float, align 4
  %32 = alloca float*, align 8
  %33 = alloca float, align 4
  %34 = alloca float*, align 8
  %35 = alloca float, align 4
  %36 = alloca float*, align 8
  %37 = alloca float, align 4
  %38 = alloca float*, align 8
  %39 = alloca float, align 4
  %40 = alloca float*, align 8
  %41 = alloca float, align 4
  %42 = alloca float*, align 8
  %43 = alloca float, align 4
  %44 = alloca float*, align 8
  %45 = alloca float, align 4
  %46 = alloca float*, align 8
  %47 = alloca float, align 4
  %48 = alloca float*, align 8
  %49 = alloca float, align 4
  %50 = alloca float*, align 8
  %51 = alloca float, align 4
  %52 = alloca float*, align 8
  %53 = alloca float, align 4
  %54 = alloca float*, align 8
  %55 = alloca float, align 4
  %56 = alloca float*, align 8
  %57 = alloca float, align 4
  %58 = alloca float*, align 8
  %59 = alloca float, align 4
  %60 = alloca float*, align 8
  %61 = alloca float, align 4
  %62 = alloca float*, align 8
  %63 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %64 = bitcast %struct.big* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %64, i8 0, i64 262144, i1 false)
  %65 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 1), align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 2), align 8
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 3), align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 4), align 16
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 5), align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 6), align 8
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 7), align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 8), align 16
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 9), align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 10), align 8
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 11), align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 12), align 16
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 13), align 4
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 14), align 8
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 15), align 4
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 16), align 16
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 17), align 4
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 18), align 8
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 19), align 4
  store i32 %84, i32* %23, align 4
  %85 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 0), align 16
  store float* %85, float** %24, align 8
  store float 0.000000e+00, float* %25, align 4
  %86 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 1), align 8
  store float* %86, float** %26, align 8
  store float 0.000000e+00, float* %27, align 4
  %87 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 2), align 16
  store float* %87, float** %28, align 8
  store float 0.000000e+00, float* %29, align 4
  %88 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 3), align 8
  store float* %88, float** %30, align 8
  store float 0.000000e+00, float* %31, align 4
  %89 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 4), align 16
  store float* %89, float** %32, align 8
  store float 0.000000e+00, float* %33, align 4
  %90 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 5), align 8
  store float* %90, float** %34, align 8
  store float 0.000000e+00, float* %35, align 4
  %91 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 6), align 16
  store float* %91, float** %36, align 8
  store float 0.000000e+00, float* %37, align 4
  %92 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 7), align 8
  store float* %92, float** %38, align 8
  store float 0.000000e+00, float* %39, align 4
  %93 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 8), align 16
  store float* %93, float** %40, align 8
  store float 0.000000e+00, float* %41, align 4
  %94 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 9), align 8
  store float* %94, float** %42, align 8
  store float 0.000000e+00, float* %43, align 4
  %95 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 10), align 16
  store float* %95, float** %44, align 8
  store float 0.000000e+00, float* %45, align 4
  %96 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 11), align 8
  store float* %96, float** %46, align 8
  store float 0.000000e+00, float* %47, align 4
  %97 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 12), align 16
  store float* %97, float** %48, align 8
  store float 0.000000e+00, float* %49, align 4
  %98 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 13), align 8
  store float* %98, float** %50, align 8
  store float 0.000000e+00, float* %51, align 4
  %99 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 14), align 16
  store float* %99, float** %52, align 8
  store float 0.000000e+00, float* %53, align 4
  %100 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 15), align 8
  store float* %100, float** %54, align 8
  store float 0.000000e+00, float* %55, align 4
  %101 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 16), align 16
  store float* %101, float** %56, align 8
  store float 0.000000e+00, float* %57, align 4
  %102 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 17), align 8
  store float* %102, float** %58, align 8
  store float 0.000000e+00, float* %59, align 4
  %103 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 18), align 16
  store float* %103, float** %60, align 8
  store float 0.000000e+00, float* %61, align 4
  %104 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 19), align 8
  store float* %104, float** %62, align 8
  store float 0.000000e+00, float* %63, align 4
  br label %105

105:                                              ; preds = %109, %1
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %2, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %270

109:                                              ; preds = %105
  %110 = load float*, float** %24, align 8
  %111 = load float, float* %110, align 4
  %112 = load float, float* %25, align 4
  %113 = fadd float %112, %111
  store float %113, float* %25, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load float*, float** %24, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds float, float* %115, i64 %116
  store float* %117, float** %24, align 8
  %118 = load float*, float** %26, align 8
  %119 = load float, float* %118, align 4
  %120 = load float, float* %27, align 4
  %121 = fadd float %120, %119
  store float %121, float* %27, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load float*, float** %26, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds float, float* %123, i64 %124
  store float* %125, float** %26, align 8
  %126 = load float*, float** %28, align 8
  %127 = load float, float* %126, align 4
  %128 = load float, float* %29, align 4
  %129 = fadd float %128, %127
  store float %129, float* %29, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load float*, float** %28, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds float, float* %131, i64 %132
  store float* %133, float** %28, align 8
  %134 = load float*, float** %30, align 8
  %135 = load float, float* %134, align 4
  %136 = load float, float* %31, align 4
  %137 = fadd float %136, %135
  store float %137, float* %31, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load float*, float** %30, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds float, float* %139, i64 %140
  store float* %141, float** %30, align 8
  %142 = load float*, float** %32, align 8
  %143 = load float, float* %142, align 4
  %144 = load float, float* %33, align 4
  %145 = fadd float %144, %143
  store float %145, float* %33, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load float*, float** %32, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds float, float* %147, i64 %148
  store float* %149, float** %32, align 8
  %150 = load float*, float** %34, align 8
  %151 = load float, float* %150, align 4
  %152 = load float, float* %35, align 4
  %153 = fadd float %152, %151
  store float %153, float* %35, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load float*, float** %34, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds float, float* %155, i64 %156
  store float* %157, float** %34, align 8
  %158 = load float*, float** %36, align 8
  %159 = load float, float* %158, align 4
  %160 = load float, float* %37, align 4
  %161 = fadd float %160, %159
  store float %161, float* %37, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load float*, float** %36, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds float, float* %163, i64 %164
  store float* %165, float** %36, align 8
  %166 = load float*, float** %38, align 8
  %167 = load float, float* %166, align 4
  %168 = load float, float* %39, align 4
  %169 = fadd float %168, %167
  store float %169, float* %39, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load float*, float** %38, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds float, float* %171, i64 %172
  store float* %173, float** %38, align 8
  %174 = load float*, float** %40, align 8
  %175 = load float, float* %174, align 4
  %176 = load float, float* %41, align 4
  %177 = fadd float %176, %175
  store float %177, float* %41, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load float*, float** %40, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds float, float* %179, i64 %180
  store float* %181, float** %40, align 8
  %182 = load float*, float** %42, align 8
  %183 = load float, float* %182, align 4
  %184 = load float, float* %43, align 4
  %185 = fadd float %184, %183
  store float %185, float* %43, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load float*, float** %42, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds float, float* %187, i64 %188
  store float* %189, float** %42, align 8
  %190 = load float*, float** %44, align 8
  %191 = load float, float* %190, align 4
  %192 = load float, float* %45, align 4
  %193 = fadd float %192, %191
  store float %193, float* %45, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load float*, float** %44, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds float, float* %195, i64 %196
  store float* %197, float** %44, align 8
  %198 = load float*, float** %46, align 8
  %199 = load float, float* %198, align 4
  %200 = load float, float* %47, align 4
  %201 = fadd float %200, %199
  store float %201, float* %47, align 4
  %202 = load i32, i32* %15, align 4
  %203 = load float*, float** %46, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds float, float* %203, i64 %204
  store float* %205, float** %46, align 8
  %206 = load float*, float** %48, align 8
  %207 = load float, float* %206, align 4
  %208 = load float, float* %49, align 4
  %209 = fadd float %208, %207
  store float %209, float* %49, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load float*, float** %48, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds float, float* %211, i64 %212
  store float* %213, float** %48, align 8
  %214 = load float*, float** %50, align 8
  %215 = load float, float* %214, align 4
  %216 = load float, float* %51, align 4
  %217 = fadd float %216, %215
  store float %217, float* %51, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load float*, float** %50, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds float, float* %219, i64 %220
  store float* %221, float** %50, align 8
  %222 = load float*, float** %52, align 8
  %223 = load float, float* %222, align 4
  %224 = load float, float* %53, align 4
  %225 = fadd float %224, %223
  store float %225, float* %53, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load float*, float** %52, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds float, float* %227, i64 %228
  store float* %229, float** %52, align 8
  %230 = load float*, float** %54, align 8
  %231 = load float, float* %230, align 4
  %232 = load float, float* %55, align 4
  %233 = fadd float %232, %231
  store float %233, float* %55, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load float*, float** %54, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds float, float* %235, i64 %236
  store float* %237, float** %54, align 8
  %238 = load float*, float** %56, align 8
  %239 = load float, float* %238, align 4
  %240 = load float, float* %57, align 4
  %241 = fadd float %240, %239
  store float %241, float* %57, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load float*, float** %56, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds float, float* %243, i64 %244
  store float* %245, float** %56, align 8
  %246 = load float*, float** %58, align 8
  %247 = load float, float* %246, align 4
  %248 = load float, float* %59, align 4
  %249 = fadd float %248, %247
  store float %249, float* %59, align 4
  %250 = load i32, i32* %21, align 4
  %251 = load float*, float** %58, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds float, float* %251, i64 %252
  store float* %253, float** %58, align 8
  %254 = load float*, float** %60, align 8
  %255 = load float, float* %254, align 4
  %256 = load float, float* %61, align 4
  %257 = fadd float %256, %255
  store float %257, float* %61, align 4
  %258 = load i32, i32* %22, align 4
  %259 = load float*, float** %60, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds float, float* %259, i64 %260
  store float* %261, float** %60, align 8
  %262 = load float*, float** %62, align 8
  %263 = load float, float* %262, align 4
  %264 = load float, float* %63, align 4
  %265 = fadd float %264, %263
  store float %265, float* %63, align 4
  %266 = load i32, i32* %23, align 4
  %267 = load float*, float** %62, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds float, float* %267, i64 %268
  store float* %269, float** %62, align 8
  br label %105, !llvm.loop !4

270:                                              ; preds = %105
  %271 = load float, float* %25, align 4
  store float %271, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 0), align 16
  %272 = load float, float* %27, align 4
  store float %272, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 1), align 4
  %273 = load float, float* %29, align 4
  store float %273, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 2), align 8
  %274 = load float, float* %31, align 4
  store float %274, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 3), align 4
  %275 = load float, float* %33, align 4
  store float %275, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 4), align 16
  %276 = load float, float* %35, align 4
  store float %276, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 5), align 4
  %277 = load float, float* %37, align 4
  store float %277, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 6), align 8
  %278 = load float, float* %39, align 4
  store float %278, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 7), align 4
  %279 = load float, float* %41, align 4
  store float %279, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 8), align 16
  %280 = load float, float* %43, align 4
  store float %280, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 9), align 4
  %281 = load float, float* %45, align 4
  store float %281, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 10), align 8
  %282 = load float, float* %47, align 4
  store float %282, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 11), align 4
  %283 = load float, float* %49, align 4
  store float %283, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 12), align 16
  %284 = load float, float* %51, align 4
  store float %284, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 13), align 4
  %285 = load float, float* %53, align 4
  store float %285, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 14), align 8
  %286 = load float, float* %55, align 4
  store float %286, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 15), align 4
  %287 = load float, float* %57, align 4
  store float %287, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 16), align 16
  %288 = load float, float* %59, align 4
  store float %288, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 17), align 4
  %289 = load float, float* %61, align 4
  store float %289, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 18), align 8
  %290 = load float, float* %63, align 4
  store float %290, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 19), align 4
  call void @bar(%struct.big* noundef byval(%struct.big) align 8 %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
