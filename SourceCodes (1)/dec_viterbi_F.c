; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvector = type { i64, double* }
%struct.bitvector = type { i64, i8* }
%struct.dvarray = type { i64, %struct.dvector* }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

@.str = private unnamed_addr constant [55 x i8] c"0 && \22Synchronization in Viterbi: i_in > size(Dist,2)\22\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c\00", align 1
@__PRETTY_FUNCTION__.dec_viterbi_F = private unnamed_addr constant [110 x i8] c"void dec_viterbi_F(dvector *, unsigned char *, bitvector *, const dvarray *, const param_viterbi_t *, size_t)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dec_viterbi_F(%struct.dvector* noundef %0, i8* noundef %1, %struct.bitvector* noundef %2, %struct.dvarray* noundef %3, %struct.param_viterbi_t* noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.dvector*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bitvector*, align 8
  %10 = alloca %struct.dvarray*, align 8
  %11 = alloca %struct.param_viterbi_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca [128 x [143 x i8]], align 16
  %27 = alloca [128 x [144 x i8]], align 16
  store %struct.dvector* %0, %struct.dvector** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.bitvector* %2, %struct.bitvector** %9, align 8
  store %struct.dvarray* %3, %struct.dvarray** %10, align 8
  store %struct.param_viterbi_t* %4, %struct.param_viterbi_t** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %18, align 8
  %28 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %29 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  call void @bitvector_clear(%struct.bitvector* noundef %33)
  br label %34

34:                                               ; preds = %32, %6
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.dvarray*, %struct.dvarray** %10, align 8
  %39 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %38, i32 0, i32 1
  %40 = load %struct.dvector*, %struct.dvector** %39, align 8
  %41 = getelementptr inbounds %struct.dvector, %struct.dvector* %40, i64 0
  %42 = getelementptr inbounds %struct.dvector, %struct.dvector* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %46 = load i64, i64* %12, align 8
  call void @bitvector_init(%struct.bitvector* noundef %45, i64 noundef %46)
  %47 = load %struct.dvector*, %struct.dvector** %7, align 8
  %48 = getelementptr inbounds %struct.dvector, %struct.dvector* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %49, 8
  %51 = call noalias i8* @malloc(i64 noundef %50) #5
  %52 = bitcast i8* %51 to double*
  store double* %52, double** %21, align 8
  %53 = load %struct.dvector*, %struct.dvector** %7, align 8
  %54 = getelementptr inbounds %struct.dvector, %struct.dvector* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %55, 8
  %57 = call noalias i8* @malloc(i64 noundef %56) #5
  %58 = bitcast i8* %57 to double*
  store double* %58, double** %19, align 8
  %59 = load %struct.dvector*, %struct.dvector** %7, align 8
  %60 = getelementptr inbounds %struct.dvector, %struct.dvector* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 %61, 8
  %63 = call noalias i8* @malloc(i64 noundef %62) #5
  %64 = bitcast i8* %63 to double*
  store double* %64, double** %20, align 8
  %65 = load double*, double** %21, align 8
  %66 = bitcast double* %65 to i8*
  %67 = load %struct.dvector*, %struct.dvector** %7, align 8
  %68 = getelementptr inbounds %struct.dvector, %struct.dvector* %67, i32 0, i32 1
  %69 = load double*, double** %68, align 8
  %70 = bitcast double* %69 to i8*
  %71 = load %struct.dvector*, %struct.dvector** %7, align 8
  %72 = getelementptr inbounds %struct.dvector, %struct.dvector* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %73, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %70, i64 %74, i1 false)
  %75 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 0
  %76 = bitcast [143 x i8]* %75 to i8*
  %77 = load i8*, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %76, i8* align 1 %77, i64 18304, i1 false)
  store i64 0, i64* %14, align 8
  br label %78

78:                                               ; preds = %527, %44
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %81 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %528

84:                                               ; preds = %78
  %85 = load double*, double** %19, align 8
  %86 = bitcast double* %85 to i8*
  %87 = load double*, double** %21, align 8
  %88 = bitcast double* %87 to i8*
  %89 = load %struct.dvector*, %struct.dvector** %7, align 8
  %90 = getelementptr inbounds %struct.dvector, %struct.dvector* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = mul i64 %91, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %88, i64 %92, i1 false)
  %93 = load double*, double** %20, align 8
  %94 = bitcast double* %93 to i8*
  %95 = load double*, double** %21, align 8
  %96 = bitcast double* %95 to i8*
  %97 = load %struct.dvector*, %struct.dvector** %7, align 8
  %98 = getelementptr inbounds %struct.dvector, %struct.dvector* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = mul i64 %99, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %96, i64 %100, i1 false)
  %101 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %102 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %101, i32 0, i32 3
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds [7 x i8], [7 x i8]* %102, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %173

108:                                              ; preds = %84
  store i64 0, i64* %15, align 8
  br label %109

109:                                              ; preds = %167, %108
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %112 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %170

115:                                              ; preds = %109
  %116 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %117 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %116, i32 0, i32 6
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %117, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %22, align 1
  %121 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %122 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %121, i32 0, i32 6
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %122, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = sub nsw i32 1, %126
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %23, align 1
  %129 = load double*, double** %19, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds double, double* %129, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load %struct.dvarray*, %struct.dvarray** %10, align 8
  %134 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %133, i32 0, i32 1
  %135 = load %struct.dvector*, %struct.dvector** %134, align 8
  %136 = load i8, i8* %22, align 1
  %137 = sext i8 %136 to i64
  %138 = getelementptr inbounds %struct.dvector, %struct.dvector* %135, i64 %137
  %139 = getelementptr inbounds %struct.dvector, %struct.dvector* %138, i32 0, i32 1
  %140 = load double*, double** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds double, double* %140, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fadd double %132, %143
  %145 = load double*, double** %19, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds double, double* %145, i64 %146
  store double %144, double* %147, align 8
  %148 = load double*, double** %20, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds double, double* %148, i64 %149
  %151 = load double, double* %150, align 8
  %152 = load %struct.dvarray*, %struct.dvarray** %10, align 8
  %153 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %152, i32 0, i32 1
  %154 = load %struct.dvector*, %struct.dvector** %153, align 8
  %155 = load i8, i8* %23, align 1
  %156 = sext i8 %155 to i64
  %157 = getelementptr inbounds %struct.dvector, %struct.dvector* %154, i64 %156
  %158 = getelementptr inbounds %struct.dvector, %struct.dvector* %157, i32 0, i32 1
  %159 = load double*, double** %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds double, double* %159, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fadd double %151, %162
  %164 = load double*, double** %20, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds double, double* %164, i64 %165
  store double %163, double* %166, align 8
  br label %167

167:                                              ; preds = %115
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %15, align 8
  br label %109, !llvm.loop !4

170:                                              ; preds = %109
  %171 = load i64, i64* %13, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %13, align 8
  br label %173

173:                                              ; preds = %170, %84
  %174 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %175 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %174, i32 0, i32 4
  %176 = load i64, i64* %14, align 8
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %175, i64 0, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %253

181:                                              ; preds = %173
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %184 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp uge i64 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__.dec_viterbi_F, i64 0, i64 0)) #6
  unreachable

188:                                              ; preds = %181
  store i64 0, i64* %15, align 8
  br label %189

189:                                              ; preds = %247, %188
  %190 = load i64, i64* %15, align 8
  %191 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %192 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %250

195:                                              ; preds = %189
  %196 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %197 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %196, i32 0, i32 7
  %198 = load i64, i64* %15, align 8
  %199 = getelementptr inbounds [128 x i8], [128 x i8]* %197, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %24, align 1
  %201 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %202 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %201, i32 0, i32 7
  %203 = load i64, i64* %15, align 8
  %204 = getelementptr inbounds [128 x i8], [128 x i8]* %202, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = sub nsw i32 1, %206
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %25, align 1
  %209 = load double*, double** %19, align 8
  %210 = load i64, i64* %15, align 8
  %211 = getelementptr inbounds double, double* %209, i64 %210
  %212 = load double, double* %211, align 8
  %213 = load %struct.dvarray*, %struct.dvarray** %10, align 8
  %214 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %213, i32 0, i32 1
  %215 = load %struct.dvector*, %struct.dvector** %214, align 8
  %216 = load i8, i8* %24, align 1
  %217 = sext i8 %216 to i64
  %218 = getelementptr inbounds %struct.dvector, %struct.dvector* %215, i64 %217
  %219 = getelementptr inbounds %struct.dvector, %struct.dvector* %218, i32 0, i32 1
  %220 = load double*, double** %219, align 8
  %221 = load i64, i64* %13, align 8
  %222 = getelementptr inbounds double, double* %220, i64 %221
  %223 = load double, double* %222, align 8
  %224 = fadd double %212, %223
  %225 = load double*, double** %19, align 8
  %226 = load i64, i64* %15, align 8
  %227 = getelementptr inbounds double, double* %225, i64 %226
  store double %224, double* %227, align 8
  %228 = load double*, double** %20, align 8
  %229 = load i64, i64* %15, align 8
  %230 = getelementptr inbounds double, double* %228, i64 %229
  %231 = load double, double* %230, align 8
  %232 = load %struct.dvarray*, %struct.dvarray** %10, align 8
  %233 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %232, i32 0, i32 1
  %234 = load %struct.dvector*, %struct.dvector** %233, align 8
  %235 = load i8, i8* %25, align 1
  %236 = sext i8 %235 to i64
  %237 = getelementptr inbounds %struct.dvector, %struct.dvector* %234, i64 %236
  %238 = getelementptr inbounds %struct.dvector, %struct.dvector* %237, i32 0, i32 1
  %239 = load double*, double** %238, align 8
  %240 = load i64, i64* %13, align 8
  %241 = getelementptr inbounds double, double* %239, i64 %240
  %242 = load double, double* %241, align 8
  %243 = fadd double %231, %242
  %244 = load double*, double** %20, align 8
  %245 = load i64, i64* %15, align 8
  %246 = getelementptr inbounds double, double* %244, i64 %245
  store double %243, double* %246, align 8
  br label %247

247:                                              ; preds = %195
  %248 = load i64, i64* %15, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %15, align 8
  br label %189, !llvm.loop !6

250:                                              ; preds = %189
  %251 = load i64, i64* %13, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %13, align 8
  br label %253

253:                                              ; preds = %250, %173
  store i64 0, i64* %15, align 8
  br label %254

254:                                              ; preds = %446, %253
  %255 = load i64, i64* %15, align 8
  %256 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %257 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = udiv i64 %258, 2
  %260 = icmp ult i64 %255, %259
  br i1 %260, label %261, label %449

261:                                              ; preds = %254
  %262 = load double*, double** %19, align 8
  %263 = load i64, i64* %15, align 8
  %264 = mul i64 2, %263
  %265 = getelementptr inbounds double, double* %262, i64 %264
  %266 = load double, double* %265, align 8
  %267 = load double*, double** %19, align 8
  %268 = load i64, i64* %15, align 8
  %269 = mul i64 2, %268
  %270 = add i64 %269, 1
  %271 = getelementptr inbounds double, double* %267, i64 %270
  %272 = load double, double* %271, align 8
  %273 = fcmp ole double %266, %272
  br i1 %273, label %274, label %305

274:                                              ; preds = %261
  %275 = load double*, double** %19, align 8
  %276 = load i64, i64* %15, align 8
  %277 = mul i64 2, %276
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = load double, double* %278, align 8
  %280 = load double*, double** %21, align 8
  %281 = load i64, i64* %15, align 8
  %282 = getelementptr inbounds double, double* %280, i64 %281
  store double %279, double* %282, align 8
  %283 = load i64, i64* %15, align 8
  %284 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %283
  %285 = getelementptr inbounds [144 x i8], [144 x i8]* %284, i64 0, i64 0
  store i8 0, i8* %285, align 16
  store i64 0, i64* %16, align 8
  br label %286

286:                                              ; preds = %301, %274
  %287 = load i64, i64* %16, align 8
  %288 = icmp ult i64 %287, 143
  br i1 %288, label %289, label %304

289:                                              ; preds = %286
  %290 = load i64, i64* %15, align 8
  %291 = mul i64 2, %290
  %292 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 %291
  %293 = load i64, i64* %16, align 8
  %294 = getelementptr inbounds [143 x i8], [143 x i8]* %292, i64 0, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = load i64, i64* %15, align 8
  %297 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %296
  %298 = load i64, i64* %16, align 8
  %299 = add i64 %298, 1
  %300 = getelementptr inbounds [144 x i8], [144 x i8]* %297, i64 0, i64 %299
  store i8 %295, i8* %300, align 1
  br label %301

301:                                              ; preds = %289
  %302 = load i64, i64* %16, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %16, align 8
  br label %286, !llvm.loop !7

304:                                              ; preds = %286
  br label %338

305:                                              ; preds = %261
  %306 = load double*, double** %19, align 8
  %307 = load i64, i64* %15, align 8
  %308 = mul i64 2, %307
  %309 = add i64 %308, 1
  %310 = getelementptr inbounds double, double* %306, i64 %309
  %311 = load double, double* %310, align 8
  %312 = load double*, double** %21, align 8
  %313 = load i64, i64* %15, align 8
  %314 = getelementptr inbounds double, double* %312, i64 %313
  store double %311, double* %314, align 8
  %315 = load i64, i64* %15, align 8
  %316 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %315
  %317 = getelementptr inbounds [144 x i8], [144 x i8]* %316, i64 0, i64 0
  store i8 1, i8* %317, align 16
  store i64 0, i64* %16, align 8
  br label %318

318:                                              ; preds = %334, %305
  %319 = load i64, i64* %16, align 8
  %320 = icmp ult i64 %319, 143
  br i1 %320, label %321, label %337

321:                                              ; preds = %318
  %322 = load i64, i64* %15, align 8
  %323 = mul i64 2, %322
  %324 = add i64 %323, 1
  %325 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 %324
  %326 = load i64, i64* %16, align 8
  %327 = getelementptr inbounds [143 x i8], [143 x i8]* %325, i64 0, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = load i64, i64* %15, align 8
  %330 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %329
  %331 = load i64, i64* %16, align 8
  %332 = add i64 %331, 1
  %333 = getelementptr inbounds [144 x i8], [144 x i8]* %330, i64 0, i64 %332
  store i8 %328, i8* %333, align 1
  br label %334

334:                                              ; preds = %321
  %335 = load i64, i64* %16, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %16, align 8
  br label %318, !llvm.loop !8

337:                                              ; preds = %318
  br label %338

338:                                              ; preds = %337, %304
  %339 = load double*, double** %20, align 8
  %340 = load i64, i64* %15, align 8
  %341 = mul i64 2, %340
  %342 = getelementptr inbounds double, double* %339, i64 %341
  %343 = load double, double* %342, align 8
  %344 = load double*, double** %20, align 8
  %345 = load i64, i64* %15, align 8
  %346 = mul i64 2, %345
  %347 = add i64 %346, 1
  %348 = getelementptr inbounds double, double* %344, i64 %347
  %349 = load double, double* %348, align 8
  %350 = fcmp ole double %343, %349
  br i1 %350, label %351, label %397

351:                                              ; preds = %338
  %352 = load double*, double** %20, align 8
  %353 = load i64, i64* %15, align 8
  %354 = mul i64 2, %353
  %355 = getelementptr inbounds double, double* %352, i64 %354
  %356 = load double, double* %355, align 8
  %357 = load double*, double** %21, align 8
  %358 = load i64, i64* %15, align 8
  %359 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %360 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = udiv i64 %361, 2
  %363 = add i64 %358, %362
  %364 = getelementptr inbounds double, double* %357, i64 %363
  store double %356, double* %364, align 8
  %365 = load i64, i64* %15, align 8
  %366 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %367 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = udiv i64 %368, 2
  %370 = add i64 %365, %369
  %371 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %370
  %372 = getelementptr inbounds [144 x i8], [144 x i8]* %371, i64 0, i64 0
  store i8 0, i8* %372, align 16
  store i64 0, i64* %16, align 8
  br label %373

373:                                              ; preds = %393, %351
  %374 = load i64, i64* %16, align 8
  %375 = icmp ult i64 %374, 143
  br i1 %375, label %376, label %396

376:                                              ; preds = %373
  %377 = load i64, i64* %15, align 8
  %378 = mul i64 2, %377
  %379 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 %378
  %380 = load i64, i64* %16, align 8
  %381 = getelementptr inbounds [143 x i8], [143 x i8]* %379, i64 0, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = load i64, i64* %15, align 8
  %384 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %385 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = udiv i64 %386, 2
  %388 = add i64 %383, %387
  %389 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %388
  %390 = load i64, i64* %16, align 8
  %391 = add i64 %390, 1
  %392 = getelementptr inbounds [144 x i8], [144 x i8]* %389, i64 0, i64 %391
  store i8 %382, i8* %392, align 1
  br label %393

393:                                              ; preds = %376
  %394 = load i64, i64* %16, align 8
  %395 = add i64 %394, 1
  store i64 %395, i64* %16, align 8
  br label %373, !llvm.loop !9

396:                                              ; preds = %373
  br label %445

397:                                              ; preds = %338
  %398 = load double*, double** %20, align 8
  %399 = load i64, i64* %15, align 8
  %400 = mul i64 2, %399
  %401 = add i64 %400, 1
  %402 = getelementptr inbounds double, double* %398, i64 %401
  %403 = load double, double* %402, align 8
  %404 = load double*, double** %21, align 8
  %405 = load i64, i64* %15, align 8
  %406 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %407 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = udiv i64 %408, 2
  %410 = add i64 %405, %409
  %411 = getelementptr inbounds double, double* %404, i64 %410
  store double %403, double* %411, align 8
  %412 = load i64, i64* %15, align 8
  %413 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %414 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = udiv i64 %415, 2
  %417 = add i64 %412, %416
  %418 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %417
  %419 = getelementptr inbounds [144 x i8], [144 x i8]* %418, i64 0, i64 0
  store i8 1, i8* %419, align 16
  store i64 0, i64* %16, align 8
  br label %420

420:                                              ; preds = %441, %397
  %421 = load i64, i64* %16, align 8
  %422 = icmp ult i64 %421, 143
  br i1 %422, label %423, label %444

423:                                              ; preds = %420
  %424 = load i64, i64* %15, align 8
  %425 = mul i64 2, %424
  %426 = add i64 %425, 1
  %427 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 %426
  %428 = load i64, i64* %16, align 8
  %429 = getelementptr inbounds [143 x i8], [143 x i8]* %427, i64 0, i64 %428
  %430 = load i8, i8* %429, align 1
  %431 = load i64, i64* %15, align 8
  %432 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %433 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = udiv i64 %434, 2
  %436 = add i64 %431, %435
  %437 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %436
  %438 = load i64, i64* %16, align 8
  %439 = add i64 %438, 1
  %440 = getelementptr inbounds [144 x i8], [144 x i8]* %437, i64 0, i64 %439
  store i8 %430, i8* %440, align 1
  br label %441

441:                                              ; preds = %423
  %442 = load i64, i64* %16, align 8
  %443 = add i64 %442, 1
  store i64 %443, i64* %16, align 8
  br label %420, !llvm.loop !10

444:                                              ; preds = %420
  br label %445

445:                                              ; preds = %444, %396
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %15, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %15, align 8
  br label %254, !llvm.loop !11

449:                                              ; preds = %254
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  br label %450

450:                                              ; preds = %467, %449
  %451 = load i64, i64* %15, align 8
  %452 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %453 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = icmp ult i64 %451, %454
  br i1 %455, label %456, label %470

456:                                              ; preds = %450
  %457 = load i64, i64* %15, align 8
  %458 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %457
  %459 = getelementptr inbounds [144 x i8], [144 x i8]* %458, i64 0, i64 143
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp eq i32 %461, 0
  %463 = zext i1 %462 to i32
  %464 = sext i32 %463 to i64
  %465 = load i64, i64* %17, align 8
  %466 = add i64 %465, %464
  store i64 %466, i64* %17, align 8
  br label %467

467:                                              ; preds = %456
  %468 = load i64, i64* %15, align 8
  %469 = add i64 %468, 1
  store i64 %469, i64* %15, align 8
  br label %450, !llvm.loop !12

470:                                              ; preds = %450
  %471 = load i64, i64* %17, align 8
  %472 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %473 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = udiv i64 %474, 2
  %476 = icmp uge i64 %471, %475
  br i1 %476, label %477, label %484

477:                                              ; preds = %470
  %478 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %479 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %478, i32 0, i32 1
  %480 = load i8*, i8** %479, align 8
  %481 = load i64, i64* %18, align 8
  %482 = add i64 %481, 1
  store i64 %482, i64* %18, align 8
  %483 = getelementptr inbounds i8, i8* %480, i64 %481
  store i8 0, i8* %483, align 1
  br label %491

484:                                              ; preds = %470
  %485 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %486 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %485, i32 0, i32 1
  %487 = load i8*, i8** %486, align 8
  %488 = load i64, i64* %18, align 8
  %489 = add i64 %488, 1
  store i64 %489, i64* %18, align 8
  %490 = getelementptr inbounds i8, i8* %487, i64 %488
  store i8 1, i8* %490, align 1
  br label %491

491:                                              ; preds = %484, %477
  store i64 0, i64* %15, align 8
  br label %492

492:                                              ; preds = %516, %491
  %493 = load i64, i64* %15, align 8
  %494 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %495 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = icmp ult i64 %493, %496
  br i1 %497, label %498, label %519

498:                                              ; preds = %492
  store i64 0, i64* %16, align 8
  br label %499

499:                                              ; preds = %512, %498
  %500 = load i64, i64* %16, align 8
  %501 = icmp ult i64 %500, 143
  br i1 %501, label %502, label %515

502:                                              ; preds = %499
  %503 = load i64, i64* %15, align 8
  %504 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %27, i64 0, i64 %503
  %505 = load i64, i64* %16, align 8
  %506 = getelementptr inbounds [144 x i8], [144 x i8]* %504, i64 0, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = load i64, i64* %15, align 8
  %509 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 %508
  %510 = load i64, i64* %16, align 8
  %511 = getelementptr inbounds [143 x i8], [143 x i8]* %509, i64 0, i64 %510
  store i8 %507, i8* %511, align 1
  br label %512

512:                                              ; preds = %502
  %513 = load i64, i64* %16, align 8
  %514 = add i64 %513, 1
  store i64 %514, i64* %16, align 8
  br label %499, !llvm.loop !13

515:                                              ; preds = %499
  br label %516

516:                                              ; preds = %515
  %517 = load i64, i64* %15, align 8
  %518 = add i64 %517, 1
  store i64 %518, i64* %15, align 8
  br label %492, !llvm.loop !14

519:                                              ; preds = %492
  %520 = load i64, i64* %14, align 8
  %521 = add i64 %520, 1
  store i64 %521, i64* %14, align 8
  %522 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %11, align 8
  %523 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %522, i32 0, i32 5
  %524 = load i64, i64* %523, align 8
  %525 = icmp eq i64 %521, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %519
  store i64 0, i64* %14, align 8
  br label %527

527:                                              ; preds = %526, %519
  br label %78, !llvm.loop !15

528:                                              ; preds = %78
  %529 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %530 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  %532 = load i64, i64* %18, align 8
  %533 = mul i64 %532, 1
  %534 = call i8* @realloc(i8* noundef %531, i64 noundef %533) #5
  %535 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %536 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %535, i32 0, i32 1
  store i8* %534, i8** %536, align 8
  %537 = load i64, i64* %18, align 8
  %538 = load %struct.bitvector*, %struct.bitvector** %9, align 8
  %539 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %538, i32 0, i32 0
  store i64 %537, i64* %539, align 8
  %540 = load %struct.dvector*, %struct.dvector** %7, align 8
  %541 = getelementptr inbounds %struct.dvector, %struct.dvector* %540, i32 0, i32 1
  %542 = load double*, double** %541, align 8
  %543 = bitcast double* %542 to i8*
  %544 = load double*, double** %21, align 8
  %545 = bitcast double* %544 to i8*
  %546 = load %struct.dvector*, %struct.dvector** %7, align 8
  %547 = getelementptr inbounds %struct.dvector, %struct.dvector* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = mul i64 %548, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %543, i8* align 8 %545, i64 %549, i1 false)
  %550 = load i8*, i8** %8, align 8
  %551 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %26, i64 0, i64 0
  %552 = bitcast [143 x i8]* %551 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %550, i8* align 16 %552, i64 18304, i1 false)
  %553 = load double*, double** %21, align 8
  %554 = bitcast double* %553 to i8*
  call void @free(i8* noundef %554) #5
  %555 = load double*, double** %19, align 8
  %556 = bitcast double* %555 to i8*
  call void @free(i8* noundef %556) #5
  %557 = load double*, double** %20, align 8
  %558 = bitcast double* %557 to i8*
  call void @free(i8* noundef %558) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bitvector_clear(%struct.bitvector* noundef %0) #0 {
  %2 = alloca %struct.bitvector*, align 8
  store %struct.bitvector* %0, %struct.bitvector** %2, align 8
  %3 = load %struct.bitvector*, %struct.bitvector** %2, align 8
  %4 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5) #5
  %6 = load %struct.bitvector*, %struct.bitvector** %2, align 8
  %7 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.bitvector*, %struct.bitvector** %2, align 8
  %9 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %8, i32 0, i32 1
  store i8* null, i8** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bitvector_init(%struct.bitvector* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.bitvector*, align 8
  %4 = alloca i64, align 8
  store %struct.bitvector* %0, %struct.bitvector** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bitvector*, %struct.bitvector** %3, align 8
  %7 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = mul i64 %11, 1
  %13 = call noalias i8* @malloc(i64 noundef %12) #5
  %14 = load %struct.bitvector*, %struct.bitvector** %3, align 8
  %15 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.bitvector*, %struct.bitvector** %3, align 8
  %17 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = mul i64 %19, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 0, i64 %20, i1 false)
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.bitvector*, %struct.bitvector** %3, align 8
  %23 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %22, i32 0, i32 1
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
