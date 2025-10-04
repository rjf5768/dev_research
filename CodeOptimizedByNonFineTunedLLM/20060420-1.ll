; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060420-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060420-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = dso_local global [64 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(float* noundef %0, float** noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca <4 x float>, align 16
  %15 = alloca <4 x float>, align 16
  %16 = alloca <4 x float>, align 16
  %17 = alloca <4 x float>, align 16
  %18 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float** %1, float*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %11, align 4
  store i32 15, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %68, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load float*, float** %5, align 8
  %25 = ptrtoint float* %24 to i64
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = and i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %23, %19
  %34 = phi i1 [ false, %19 ], [ %32, %23 ]
  br i1 %34, label %35, label %71

35:                                               ; preds = %33
  %36 = load float**, float*** %6, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 0
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %13, align 4
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %59, %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load float**, float*** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float*, float** %48, i64 %50
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float, float* %13, align 4
  %58 = fadd float %57, %56
  store float %58, float* %13, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %43, !llvm.loop !4

62:                                               ; preds = %43
  %63 = load float, float* %13, align 4
  %64 = load float*, float** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %19, !llvm.loop !6

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %242, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 4, %75
  %77 = sub nsw i32 %76, 1
  %78 = sub nsw i32 %74, %77
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %247

80:                                               ; preds = %72
  %81 = load float**, float*** %6, align 8
  %82 = getelementptr inbounds float*, float** %81, i64 0
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 0, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %86, i64 %89
  %91 = bitcast float* %90 to <4 x float>*
  %92 = load <4 x float>, <4 x float>* %91, align 16
  store <4 x float> %92, <4 x float>* %14, align 16
  %93 = load float**, float*** %6, align 8
  %94 = getelementptr inbounds float*, float** %93, i64 0
  %95 = load float*, float** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 1, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %98, i64 %101
  %103 = bitcast float* %102 to <4 x float>*
  %104 = load <4 x float>, <4 x float>* %103, align 16
  store <4 x float> %104, <4 x float>* %15, align 16
  %105 = load float**, float*** %6, align 8
  %106 = getelementptr inbounds float*, float** %105, i64 0
  %107 = load float*, float** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %110, i64 %113
  %115 = bitcast float* %114 to <4 x float>*
  %116 = load <4 x float>, <4 x float>* %115, align 16
  store <4 x float> %116, <4 x float>* %16, align 16
  %117 = load float**, float*** %6, align 8
  %118 = getelementptr inbounds float*, float** %117, i64 0
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 3, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %122, i64 %125
  %127 = bitcast float* %126 to <4 x float>*
  %128 = load <4 x float>, <4 x float>* %127, align 16
  store <4 x float> %128, <4 x float>* %17, align 16
  store i32 1, i32* %9, align 4
  br label %129

129:                                              ; preds = %198, %80
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %201

133:                                              ; preds = %129
  %134 = load float**, float*** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float*, float** %134, i64 %136
  %138 = load float*, float** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load i32, i32* %11, align 4
  %143 = mul nsw i32 0, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %141, i64 %144
  %146 = bitcast float* %145 to <4 x float>*
  %147 = load <4 x float>, <4 x float>* %146, align 16
  %148 = load <4 x float>, <4 x float>* %14, align 16
  %149 = fadd <4 x float> %148, %147
  store <4 x float> %149, <4 x float>* %14, align 16
  %150 = load float**, float*** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float*, float** %150, i64 %152
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  %158 = load i32, i32* %11, align 4
  %159 = mul nsw i32 1, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %157, i64 %160
  %162 = bitcast float* %161 to <4 x float>*
  %163 = load <4 x float>, <4 x float>* %162, align 16
  %164 = load <4 x float>, <4 x float>* %15, align 16
  %165 = fadd <4 x float> %164, %163
  store <4 x float> %165, <4 x float>* %15, align 16
  %166 = load float**, float*** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float*, float** %166, i64 %168
  %170 = load float*, float** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 2, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %173, i64 %176
  %178 = bitcast float* %177 to <4 x float>*
  %179 = load <4 x float>, <4 x float>* %178, align 16
  %180 = load <4 x float>, <4 x float>* %16, align 16
  %181 = fadd <4 x float> %180, %179
  store <4 x float> %181, <4 x float>* %16, align 16
  %182 = load float**, float*** %6, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %186, i64 %188
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 3, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %189, i64 %192
  %194 = bitcast float* %193 to <4 x float>*
  %195 = load <4 x float>, <4 x float>* %194, align 16
  %196 = load <4 x float>, <4 x float>* %17, align 16
  %197 = fadd <4 x float> %196, %195
  store <4 x float> %197, <4 x float>* %17, align 16
  br label %198

198:                                              ; preds = %133
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %129, !llvm.loop !7

201:                                              ; preds = %129
  %202 = load <4 x float>, <4 x float>* %14, align 16
  %203 = load float*, float** %5, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %203, i64 %205
  %207 = load i32, i32* %11, align 4
  %208 = mul nsw i32 0, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %206, i64 %209
  %211 = bitcast float* %210 to <4 x float>*
  store <4 x float> %202, <4 x float>* %211, align 16
  %212 = load <4 x float>, <4 x float>* %15, align 16
  %213 = load float*, float** %5, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 1, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %216, i64 %219
  %221 = bitcast float* %220 to <4 x float>*
  store <4 x float> %212, <4 x float>* %221, align 16
  %222 = load <4 x float>, <4 x float>* %16, align 16
  %223 = load float*, float** %5, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load i32, i32* %11, align 4
  %228 = mul nsw i32 2, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %226, i64 %229
  %231 = bitcast float* %230 to <4 x float>*
  store <4 x float> %222, <4 x float>* %231, align 16
  %232 = load <4 x float>, <4 x float>* %17, align 16
  %233 = load float*, float** %5, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %233, i64 %235
  %237 = load i32, i32* %11, align 4
  %238 = mul nsw i32 3, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %236, i64 %239
  %241 = bitcast float* %240 to <4 x float>*
  store <4 x float> %232, <4 x float>* %241, align 16
  br label %242

242:                                              ; preds = %201
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 4, %243
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %10, align 4
  br label %72, !llvm.loop !8

247:                                              ; preds = %72
  br label %248

248:                                              ; preds = %285, %247
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %288

252:                                              ; preds = %248
  %253 = load float**, float*** %6, align 8
  %254 = getelementptr inbounds float*, float** %253, i64 0
  %255 = load float*, float** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float, float* %258, align 4
  store float %259, float* %18, align 4
  store i32 1, i32* %9, align 4
  br label %260

260:                                              ; preds = %276, %252
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %279

264:                                              ; preds = %260
  %265 = load float**, float*** %6, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float*, float** %265, i64 %267
  %269 = load float*, float** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  %273 = load float, float* %272, align 4
  %274 = load float, float* %18, align 4
  %275 = fadd float %274, %273
  store float %275, float* %18, align 4
  br label %276

276:                                              ; preds = %264
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %260, !llvm.loop !9

279:                                              ; preds = %260
  %280 = load float, float* %18, align 4
  %281 = load float*, float** %5, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  store float %280, float* %284, align 4
  br label %285

285:                                              ; preds = %279
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %10, align 4
  br label %248, !llvm.loop !10

288:                                              ; preds = %248
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca [2 x float*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i8* bitcast ([64 x float]* @buffer to i8*), i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 and (i64 sub nsw (i64 0, i64 ptrtoint ([64 x float]* @buffer to i64)), i64 63)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %3, align 8
  %11 = load float*, float** %3, align 8
  %12 = getelementptr inbounds float, float* %11, i64 16
  %13 = getelementptr inbounds [2 x float*], [2 x float*]* %4, i64 0, i64 0
  store float* %12, float** %13, align 16
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 32
  %16 = getelementptr inbounds [2 x float*], [2 x float*]* %4, i64 0, i64 1
  store float* %15, float** %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %41, %0
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sitofp i32 %21 to float
  %23 = load i32, i32* %2, align 4
  %24 = sitofp i32 %23 to float
  %25 = call float @llvm.fmuladd.f32(float 1.100000e+01, float %24, float %22)
  %26 = getelementptr inbounds [2 x float*], [2 x float*]* %4, i64 0, i64 0
  %27 = load float*, float** %26, align 16
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float %25, float* %30, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sitofp i32 %31 to float
  %33 = load i32, i32* %2, align 4
  %34 = sitofp i32 %33 to float
  %35 = call float @llvm.fmuladd.f32(float 1.200000e+01, float %34, float %32)
  %36 = getelementptr inbounds [2 x float*], [2 x float*]* %4, i64 0, i64 1
  %37 = load float*, float** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float %35, float* %40, align 4
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %17, !llvm.loop !11

44:                                               ; preds = %17
  %45 = load float*, float** %3, align 8
  %46 = getelementptr inbounds [2 x float*], [2 x float*]* %4, i64 0, i64 0
  call void @foo(float* noundef %45, float** noundef %46, i32 noundef 2, i32 noundef 16)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %71, %44
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = sitofp i32 %51 to float
  %53 = load i32, i32* %2, align 4
  %54 = sitofp i32 %53 to float
  %55 = call float @llvm.fmuladd.f32(float 1.100000e+01, float %54, float %52)
  %56 = load i32, i32* %2, align 4
  %57 = sitofp i32 %56 to float
  %58 = fadd float %55, %57
  %59 = load i32, i32* %2, align 4
  %60 = sitofp i32 %59 to float
  %61 = call float @llvm.fmuladd.f32(float 1.200000e+01, float %60, float %58)
  store float %61, float* %6, align 4
  %62 = load float*, float** %3, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %6, align 4
  %68 = fcmp une float %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  call void @abort() #3
  unreachable

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %47, !llvm.loop !12

74:                                               ; preds = %47
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
