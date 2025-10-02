; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/IRSmk/rmatmult3.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/IRSmk/rmatmult3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }

@.str = private unnamed_addr constant [10 x i8] c"rmatmult3\00", align 1
@kmin = dso_local global i32 0, align 4
@kmax = dso_local global i32 0, align 4
@jmin = dso_local global i32 0, align 4
@jmax = dso_local global i32 0, align 4
@imin = dso_local global i32 0, align 4
@imax = dso_local global i32 0, align 4
@kp = dso_local global i32 0, align 4
@jp = dso_local global i32 0, align 4
@i_lb = dso_local global i32 0, align 4
@i_ub = dso_local global i32 0, align 4
@x_size = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @rmatmult3(%struct.Domain_s* noundef %0, %struct.RadiationData_t* noundef %1, double* noundef %2, double* noundef %3) #0 {
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
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
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca double*, align 8
  %37 = alloca double*, align 8
  %38 = alloca double*, align 8
  %39 = alloca double*, align 8
  %40 = alloca double*, align 8
  %41 = alloca double*, align 8
  %42 = alloca double*, align 8
  %43 = alloca double*, align 8
  %44 = alloca double*, align 8
  %45 = alloca double*, align 8
  %46 = alloca double*, align 8
  %47 = alloca double*, align 8
  %48 = alloca double*, align 8
  %49 = alloca double*, align 8
  %50 = alloca double*, align 8
  %51 = alloca double*, align 8
  %52 = alloca double*, align 8
  %53 = alloca double*, align 8
  %54 = alloca double*, align 8
  %55 = alloca double*, align 8
  %56 = alloca double*, align 8
  %57 = alloca double*, align 8
  %58 = alloca double*, align 8
  %59 = alloca double*, align 8
  %60 = alloca double*, align 8
  %61 = alloca double*, align 8
  %62 = alloca double*, align 8
  %63 = alloca double*, align 8
  %64 = alloca double*, align 8
  %65 = alloca double*, align 8
  %66 = alloca double*, align 8
  %67 = alloca double*, align 8
  %68 = alloca double*, align 8
  %69 = alloca double*, align 8
  %70 = alloca double*, align 8
  %71 = alloca double*, align 8
  %72 = alloca double*, align 8
  %73 = alloca double*, align 8
  %74 = alloca double*, align 8
  %75 = alloca double*, align 8
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 8
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %76 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %77 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %80 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %83 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %86 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %89 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %92 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %95 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %98 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 0
  %102 = load double*, double** %101, align 8
  store double* %102, double** %22, align 8
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 1
  %105 = load double*, double** %104, align 8
  store double* %105, double** %23, align 8
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 8
  store double* %108, double** %24, align 8
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 8
  store double* %111, double** %25, align 8
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 4
  %114 = load double*, double** %113, align 8
  store double* %114, double** %26, align 8
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 5
  %117 = load double*, double** %116, align 8
  store double* %117, double** %27, align 8
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 6
  %120 = load double*, double** %119, align 8
  store double* %120, double** %28, align 8
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 7
  %123 = load double*, double** %122, align 8
  store double* %123, double** %29, align 8
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 8
  %126 = load double*, double** %125, align 8
  store double* %126, double** %30, align 8
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 9
  %129 = load double*, double** %128, align 8
  store double* %129, double** %31, align 8
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 10
  %132 = load double*, double** %131, align 8
  store double* %132, double** %32, align 8
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 11
  %135 = load double*, double** %134, align 8
  store double* %135, double** %33, align 8
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 12
  %138 = load double*, double** %137, align 8
  store double* %138, double** %34, align 8
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 13
  %141 = load double*, double** %140, align 8
  store double* %141, double** %35, align 8
  %142 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %143 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %142, i32 0, i32 14
  %144 = load double*, double** %143, align 8
  store double* %144, double** %36, align 8
  %145 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %146 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %145, i32 0, i32 15
  %147 = load double*, double** %146, align 8
  store double* %147, double** %37, align 8
  %148 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %149 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %148, i32 0, i32 16
  %150 = load double*, double** %149, align 8
  store double* %150, double** %38, align 8
  %151 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %152 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %151, i32 0, i32 17
  %153 = load double*, double** %152, align 8
  store double* %153, double** %39, align 8
  %154 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %155 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %154, i32 0, i32 18
  %156 = load double*, double** %155, align 8
  store double* %156, double** %40, align 8
  %157 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %158 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %157, i32 0, i32 19
  %159 = load double*, double** %158, align 8
  store double* %159, double** %41, align 8
  %160 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %161 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %160, i32 0, i32 20
  %162 = load double*, double** %161, align 8
  store double* %162, double** %42, align 8
  %163 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %164 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %163, i32 0, i32 21
  %165 = load double*, double** %164, align 8
  store double* %165, double** %43, align 8
  %166 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %167 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %166, i32 0, i32 22
  %168 = load double*, double** %167, align 8
  store double* %168, double** %44, align 8
  %169 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %170 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %169, i32 0, i32 23
  %171 = load double*, double** %170, align 8
  store double* %171, double** %45, align 8
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 24
  %174 = load double*, double** %173, align 8
  store double* %174, double** %46, align 8
  %175 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %176 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %175, i32 0, i32 25
  %177 = load double*, double** %176, align 8
  store double* %177, double** %47, align 8
  %178 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %179 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %178, i32 0, i32 26
  %180 = load double*, double** %179, align 8
  store double* %180, double** %48, align 8
  %181 = load double*, double** %7, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds double, double* %181, i64 %184
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds double, double* %185, i64 %188
  %190 = getelementptr inbounds double, double* %189, i64 -1
  store double* %190, double** %49, align 8
  %191 = load double*, double** %7, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds double, double* %191, i64 %194
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = sub i64 0, %197
  %199 = getelementptr inbounds double, double* %195, i64 %198
  store double* %199, double** %50, align 8
  %200 = load double*, double** %7, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds double, double* %200, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds double, double* %204, i64 %207
  %209 = getelementptr inbounds double, double* %208, i64 1
  store double* %209, double** %51, align 8
  %210 = load double*, double** %7, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 0, %212
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = getelementptr inbounds double, double* %214, i64 -1
  store double* %215, double** %52, align 8
  %216 = load double*, double** %7, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds double, double* %216, i64 %219
  store double* %220, double** %53, align 8
  %221 = load double*, double** %7, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds double, double* %221, i64 %224
  %226 = getelementptr inbounds double, double* %225, i64 1
  store double* %226, double** %54, align 8
  %227 = load double*, double** %7, align 8
  %228 = load i32, i32* %21, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds double, double* %227, i64 %230
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = getelementptr inbounds double, double* %234, i64 -1
  store double* %235, double** %55, align 8
  %236 = load double*, double** %7, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = sub i64 0, %238
  %240 = getelementptr inbounds double, double* %236, i64 %239
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %240, i64 %242
  store double* %243, double** %56, align 8
  %244 = load double*, double** %7, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = sub i64 0, %246
  %248 = getelementptr inbounds double, double* %244, i64 %247
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, double* %248, i64 %250
  %252 = getelementptr inbounds double, double* %251, i64 1
  store double* %252, double** %57, align 8
  %253 = load double*, double** %7, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds double, double* %253, i64 %256
  %258 = getelementptr inbounds double, double* %257, i64 -1
  store double* %258, double** %58, align 8
  %259 = load double*, double** %7, align 8
  %260 = load i32, i32* %20, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 0, %261
  %263 = getelementptr inbounds double, double* %259, i64 %262
  store double* %263, double** %59, align 8
  %264 = load double*, double** %7, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds double, double* %264, i64 %267
  %269 = getelementptr inbounds double, double* %268, i64 1
  store double* %269, double** %60, align 8
  %270 = load double*, double** %7, align 8
  %271 = getelementptr inbounds double, double* %270, i64 -1
  store double* %271, double** %61, align 8
  %272 = load double*, double** %7, align 8
  store double* %272, double** %62, align 8
  %273 = load double*, double** %7, align 8
  %274 = getelementptr inbounds double, double* %273, i64 1
  store double* %274, double** %63, align 8
  %275 = load double*, double** %7, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = getelementptr inbounds double, double* %278, i64 -1
  store double* %279, double** %64, align 8
  %280 = load double*, double** %7, align 8
  %281 = load i32, i32* %20, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  store double* %283, double** %65, align 8
  %284 = load double*, double** %7, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  %288 = getelementptr inbounds double, double* %287, i64 1
  store double* %288, double** %66, align 8
  %289 = load double*, double** %7, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %289, i64 %291
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 0, %294
  %296 = getelementptr inbounds double, double* %292, i64 %295
  %297 = getelementptr inbounds double, double* %296, i64 -1
  store double* %297, double** %67, align 8
  %298 = load double*, double** %7, align 8
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds double, double* %301, i64 %304
  store double* %305, double** %68, align 8
  %306 = load double*, double** %7, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %306, i64 %308
  %310 = load i32, i32* %20, align 4
  %311 = sext i32 %310 to i64
  %312 = sub i64 0, %311
  %313 = getelementptr inbounds double, double* %309, i64 %312
  %314 = getelementptr inbounds double, double* %313, i64 1
  store double* %314, double** %69, align 8
  %315 = load double*, double** %7, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %315, i64 %317
  %319 = getelementptr inbounds double, double* %318, i64 -1
  store double* %319, double** %70, align 8
  %320 = load double*, double** %7, align 8
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %320, i64 %322
  store double* %323, double** %71, align 8
  %324 = load double*, double** %7, align 8
  %325 = load i32, i32* %21, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %324, i64 %326
  %328 = getelementptr inbounds double, double* %327, i64 1
  store double* %328, double** %72, align 8
  %329 = load double*, double** %7, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %329, i64 %331
  %333 = load i32, i32* %20, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  %336 = getelementptr inbounds double, double* %335, i64 -1
  store double* %336, double** %73, align 8
  %337 = load double*, double** %7, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, double* %337, i64 %339
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %340, i64 %342
  store double* %343, double** %74, align 8
  %344 = load double*, double** %7, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load i32, i32* %20, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %347, i64 %349
  %351 = getelementptr inbounds double, double* %350, i64 1
  store double* %351, double** %75, align 8
  %352 = load i32, i32* %18, align 4
  store i32 %352, i32* %13, align 4
  br label %353

353:                                              ; preds = %688, %4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %19, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %691

357:                                              ; preds = %353
  %358 = load i32, i32* %16, align 4
  store i32 %358, i32* %12, align 4
  br label %359

359:                                              ; preds = %684, %357
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %687

363:                                              ; preds = %359
  %364 = load i32, i32* %14, align 4
  store i32 %364, i32* %11, align 4
  br label %365

365:                                              ; preds = %680, %363
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %15, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %683

369:                                              ; preds = %365
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %20, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %21, align 4
  %377 = mul nsw i32 %375, %376
  %378 = add nsw i32 %374, %377
  store i32 %378, i32* %10, align 4
  %379 = load double*, double** %22, align 8
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double, double* %379, i64 %381
  %383 = load double, double* %382, align 8
  %384 = load double*, double** %49, align 8
  %385 = load i32, i32* %10, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = load double*, double** %23, align 8
  %390 = load i32, i32* %10, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double, double* %389, i64 %391
  %393 = load double, double* %392, align 8
  %394 = load double*, double** %50, align 8
  %395 = load i32, i32* %10, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %394, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fmul double %393, %398
  %400 = call double @llvm.fmuladd.f64(double %383, double %388, double %399)
  %401 = load double*, double** %24, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %401, i64 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %51, align 8
  %407 = load i32, i32* %10, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, double* %406, i64 %408
  %410 = load double, double* %409, align 8
  %411 = call double @llvm.fmuladd.f64(double %405, double %410, double %400)
  %412 = load double*, double** %25, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds double, double* %412, i64 %414
  %416 = load double, double* %415, align 8
  %417 = load double*, double** %52, align 8
  %418 = load i32, i32* %10, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds double, double* %417, i64 %419
  %421 = load double, double* %420, align 8
  %422 = call double @llvm.fmuladd.f64(double %416, double %421, double %411)
  %423 = load double*, double** %26, align 8
  %424 = load i32, i32* %10, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds double, double* %423, i64 %425
  %427 = load double, double* %426, align 8
  %428 = load double*, double** %53, align 8
  %429 = load i32, i32* %10, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds double, double* %428, i64 %430
  %432 = load double, double* %431, align 8
  %433 = call double @llvm.fmuladd.f64(double %427, double %432, double %422)
  %434 = load double*, double** %27, align 8
  %435 = load i32, i32* %10, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds double, double* %434, i64 %436
  %438 = load double, double* %437, align 8
  %439 = load double*, double** %54, align 8
  %440 = load i32, i32* %10, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds double, double* %439, i64 %441
  %443 = load double, double* %442, align 8
  %444 = call double @llvm.fmuladd.f64(double %438, double %443, double %433)
  %445 = load double*, double** %28, align 8
  %446 = load i32, i32* %10, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds double, double* %445, i64 %447
  %449 = load double, double* %448, align 8
  %450 = load double*, double** %55, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds double, double* %450, i64 %452
  %454 = load double, double* %453, align 8
  %455 = call double @llvm.fmuladd.f64(double %449, double %454, double %444)
  %456 = load double*, double** %29, align 8
  %457 = load i32, i32* %10, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds double, double* %456, i64 %458
  %460 = load double, double* %459, align 8
  %461 = load double*, double** %56, align 8
  %462 = load i32, i32* %10, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds double, double* %461, i64 %463
  %465 = load double, double* %464, align 8
  %466 = call double @llvm.fmuladd.f64(double %460, double %465, double %455)
  %467 = load double*, double** %30, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double, double* %467, i64 %469
  %471 = load double, double* %470, align 8
  %472 = load double*, double** %57, align 8
  %473 = load i32, i32* %10, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %472, i64 %474
  %476 = load double, double* %475, align 8
  %477 = call double @llvm.fmuladd.f64(double %471, double %476, double %466)
  %478 = load double*, double** %31, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds double, double* %478, i64 %480
  %482 = load double, double* %481, align 8
  %483 = load double*, double** %58, align 8
  %484 = load i32, i32* %10, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds double, double* %483, i64 %485
  %487 = load double, double* %486, align 8
  %488 = call double @llvm.fmuladd.f64(double %482, double %487, double %477)
  %489 = load double*, double** %32, align 8
  %490 = load i32, i32* %10, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds double, double* %489, i64 %491
  %493 = load double, double* %492, align 8
  %494 = load double*, double** %59, align 8
  %495 = load i32, i32* %10, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds double, double* %494, i64 %496
  %498 = load double, double* %497, align 8
  %499 = call double @llvm.fmuladd.f64(double %493, double %498, double %488)
  %500 = load double*, double** %33, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds double, double* %500, i64 %502
  %504 = load double, double* %503, align 8
  %505 = load double*, double** %60, align 8
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds double, double* %505, i64 %507
  %509 = load double, double* %508, align 8
  %510 = call double @llvm.fmuladd.f64(double %504, double %509, double %499)
  %511 = load double*, double** %34, align 8
  %512 = load i32, i32* %10, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds double, double* %511, i64 %513
  %515 = load double, double* %514, align 8
  %516 = load double*, double** %61, align 8
  %517 = load i32, i32* %10, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds double, double* %516, i64 %518
  %520 = load double, double* %519, align 8
  %521 = call double @llvm.fmuladd.f64(double %515, double %520, double %510)
  %522 = load double*, double** %35, align 8
  %523 = load i32, i32* %10, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds double, double* %522, i64 %524
  %526 = load double, double* %525, align 8
  %527 = load double*, double** %62, align 8
  %528 = load i32, i32* %10, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds double, double* %527, i64 %529
  %531 = load double, double* %530, align 8
  %532 = call double @llvm.fmuladd.f64(double %526, double %531, double %521)
  %533 = load double*, double** %36, align 8
  %534 = load i32, i32* %10, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %533, i64 %535
  %537 = load double, double* %536, align 8
  %538 = load double*, double** %63, align 8
  %539 = load i32, i32* %10, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds double, double* %538, i64 %540
  %542 = load double, double* %541, align 8
  %543 = call double @llvm.fmuladd.f64(double %537, double %542, double %532)
  %544 = load double*, double** %37, align 8
  %545 = load i32, i32* %10, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds double, double* %544, i64 %546
  %548 = load double, double* %547, align 8
  %549 = load double*, double** %64, align 8
  %550 = load i32, i32* %10, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds double, double* %549, i64 %551
  %553 = load double, double* %552, align 8
  %554 = call double @llvm.fmuladd.f64(double %548, double %553, double %543)
  %555 = load double*, double** %38, align 8
  %556 = load i32, i32* %10, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds double, double* %555, i64 %557
  %559 = load double, double* %558, align 8
  %560 = load double*, double** %65, align 8
  %561 = load i32, i32* %10, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds double, double* %560, i64 %562
  %564 = load double, double* %563, align 8
  %565 = call double @llvm.fmuladd.f64(double %559, double %564, double %554)
  %566 = load double*, double** %39, align 8
  %567 = load i32, i32* %10, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds double, double* %566, i64 %568
  %570 = load double, double* %569, align 8
  %571 = load double*, double** %66, align 8
  %572 = load i32, i32* %10, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds double, double* %571, i64 %573
  %575 = load double, double* %574, align 8
  %576 = call double @llvm.fmuladd.f64(double %570, double %575, double %565)
  %577 = load double*, double** %40, align 8
  %578 = load i32, i32* %10, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds double, double* %577, i64 %579
  %581 = load double, double* %580, align 8
  %582 = load double*, double** %67, align 8
  %583 = load i32, i32* %10, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = call double @llvm.fmuladd.f64(double %581, double %586, double %576)
  %588 = load double*, double** %41, align 8
  %589 = load i32, i32* %10, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds double, double* %588, i64 %590
  %592 = load double, double* %591, align 8
  %593 = load double*, double** %68, align 8
  %594 = load i32, i32* %10, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds double, double* %593, i64 %595
  %597 = load double, double* %596, align 8
  %598 = call double @llvm.fmuladd.f64(double %592, double %597, double %587)
  %599 = load double*, double** %42, align 8
  %600 = load i32, i32* %10, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %599, i64 %601
  %603 = load double, double* %602, align 8
  %604 = load double*, double** %69, align 8
  %605 = load i32, i32* %10, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds double, double* %604, i64 %606
  %608 = load double, double* %607, align 8
  %609 = call double @llvm.fmuladd.f64(double %603, double %608, double %598)
  %610 = load double*, double** %43, align 8
  %611 = load i32, i32* %10, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds double, double* %610, i64 %612
  %614 = load double, double* %613, align 8
  %615 = load double*, double** %70, align 8
  %616 = load i32, i32* %10, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds double, double* %615, i64 %617
  %619 = load double, double* %618, align 8
  %620 = call double @llvm.fmuladd.f64(double %614, double %619, double %609)
  %621 = load double*, double** %44, align 8
  %622 = load i32, i32* %10, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds double, double* %621, i64 %623
  %625 = load double, double* %624, align 8
  %626 = load double*, double** %71, align 8
  %627 = load i32, i32* %10, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds double, double* %626, i64 %628
  %630 = load double, double* %629, align 8
  %631 = call double @llvm.fmuladd.f64(double %625, double %630, double %620)
  %632 = load double*, double** %45, align 8
  %633 = load i32, i32* %10, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds double, double* %632, i64 %634
  %636 = load double, double* %635, align 8
  %637 = load double*, double** %72, align 8
  %638 = load i32, i32* %10, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds double, double* %637, i64 %639
  %641 = load double, double* %640, align 8
  %642 = call double @llvm.fmuladd.f64(double %636, double %641, double %631)
  %643 = load double*, double** %46, align 8
  %644 = load i32, i32* %10, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds double, double* %643, i64 %645
  %647 = load double, double* %646, align 8
  %648 = load double*, double** %73, align 8
  %649 = load i32, i32* %10, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds double, double* %648, i64 %650
  %652 = load double, double* %651, align 8
  %653 = call double @llvm.fmuladd.f64(double %647, double %652, double %642)
  %654 = load double*, double** %47, align 8
  %655 = load i32, i32* %10, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %654, i64 %656
  %658 = load double, double* %657, align 8
  %659 = load double*, double** %74, align 8
  %660 = load i32, i32* %10, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %659, i64 %661
  %663 = load double, double* %662, align 8
  %664 = call double @llvm.fmuladd.f64(double %658, double %663, double %653)
  %665 = load double*, double** %48, align 8
  %666 = load i32, i32* %10, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds double, double* %665, i64 %667
  %669 = load double, double* %668, align 8
  %670 = load double*, double** %75, align 8
  %671 = load i32, i32* %10, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds double, double* %670, i64 %672
  %674 = load double, double* %673, align 8
  %675 = call double @llvm.fmuladd.f64(double %669, double %674, double %664)
  %676 = load double*, double** %8, align 8
  %677 = load i32, i32* %10, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds double, double* %676, i64 %678
  store double %675, double* %679, align 8
  br label %680

680:                                              ; preds = %369
  %681 = load i32, i32* %11, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %11, align 4
  br label %365, !llvm.loop !4

683:                                              ; preds = %365
  br label %684

684:                                              ; preds = %683
  %685 = load i32, i32* %12, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %12, align 4
  br label %359, !llvm.loop !6

687:                                              ; preds = %359
  br label %688

688:                                              ; preds = %687
  %689 = load i32, i32* %13, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %13, align 4
  br label %353, !llvm.loop !7

691:                                              ; preds = %353
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
