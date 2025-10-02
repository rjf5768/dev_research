; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cbc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_cbc_encrypt(i8* noundef %0, i8* noundef %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bf_key_st*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i64], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %376

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %11, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i64
  %29 = shl i64 %28, 24
  store i64 %29, i64* %15, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i64
  %34 = shl i64 %33, 16
  %35 = load i64, i64* %15, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %15, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i64
  %41 = shl i64 %40, 8
  %42 = load i64, i64* %15, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %15, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64, i64* %15, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %15, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 24
  store i64 %54, i64* %16, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i64
  %59 = shl i64 %58, 16
  %60 = load i64, i64* %16, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %16, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = shl i64 %65, 8
  %67 = load i64, i64* %16, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %16, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  %71 = load i8, i8* %69, align 1
  %72 = zext i8 %71 to i64
  %73 = load i64, i64* %16, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %16, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -8
  store i8* %76, i8** %11, align 8
  %77 = load i64, i64* %19, align 8
  %78 = sub nsw i64 %77, 8
  store i64 %78, i64* %19, align 8
  br label %79

79:                                               ; preds = %195, %24
  %80 = load i64, i64* %19, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %198

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  %85 = load i8, i8* %83, align 1
  %86 = zext i8 %85 to i64
  %87 = shl i64 %86, 24
  store i64 %87, i64* %13, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i64
  %92 = shl i64 %91, 16
  %93 = load i64, i64* %13, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i64
  %99 = shl i64 %98, 8
  %100 = load i64, i64* %13, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %13, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i64
  %106 = load i64, i64* %13, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %13, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  %110 = load i8, i8* %108, align 1
  %111 = zext i8 %110 to i64
  %112 = shl i64 %111, 24
  store i64 %112, i64* %14, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i64
  %117 = shl i64 %116, 16
  %118 = load i64, i64* %14, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %14, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 8
  %122 = load i8, i8* %120, align 1
  %123 = zext i8 %122 to i64
  %124 = shl i64 %123, 8
  %125 = load i64, i64* %14, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %14, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  %129 = load i8, i8* %127, align 1
  %130 = zext i8 %129 to i64
  %131 = load i64, i64* %14, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %13, align 8
  %135 = xor i64 %134, %133
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %14, align 8
  %138 = xor i64 %137, %136
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %139, i64* %140, align 16
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %144 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 8
  call void @BF_encrypt(i64* noundef %143, %struct.bf_key_st* noundef %144, i32 noundef 1)
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %146 = load i64, i64* %145, align 16
  store i64 %146, i64* %15, align 8
  %147 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %16, align 8
  %149 = load i64, i64* %15, align 8
  %150 = lshr i64 %149, 24
  %151 = and i64 %150, 255
  %152 = trunc i64 %151 to i8
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  store i8 %152, i8* %153, align 1
  %155 = load i64, i64* %15, align 8
  %156 = lshr i64 %155, 16
  %157 = and i64 %156, 255
  %158 = trunc i64 %157 to i8
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %8, align 8
  store i8 %158, i8* %159, align 1
  %161 = load i64, i64* %15, align 8
  %162 = lshr i64 %161, 8
  %163 = and i64 %162, 255
  %164 = trunc i64 %163 to i8
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 8
  store i8 %164, i8* %165, align 1
  %167 = load i64, i64* %15, align 8
  %168 = and i64 %167, 255
  %169 = trunc i64 %168 to i8
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i64, i64* %16, align 8
  %173 = lshr i64 %172, 24
  %174 = and i64 %173, 255
  %175 = trunc i64 %174 to i8
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %8, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i64, i64* %16, align 8
  %179 = lshr i64 %178, 16
  %180 = and i64 %179, 255
  %181 = trunc i64 %180 to i8
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %8, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i64, i64* %16, align 8
  %185 = lshr i64 %184, 8
  %186 = and i64 %185, 255
  %187 = trunc i64 %186 to i8
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %8, align 8
  store i8 %187, i8* %188, align 1
  %190 = load i64, i64* %16, align 8
  %191 = and i64 %190, 255
  %192 = trunc i64 %191 to i8
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %8, align 8
  store i8 %192, i8* %193, align 1
  br label %195

195:                                              ; preds = %82
  %196 = load i64, i64* %19, align 8
  %197 = sub nsw i64 %196, 8
  store i64 %197, i64* %19, align 8
  br label %79, !llvm.loop !4

198:                                              ; preds = %79
  %199 = load i64, i64* %19, align 8
  %200 = icmp ne i64 %199, -8
  br i1 %200, label %201, label %329

201:                                              ; preds = %198
  %202 = load i64, i64* %19, align 8
  %203 = add nsw i64 %202, 8
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %7, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %206 = load i64, i64* %19, align 8
  %207 = add nsw i64 %206, 8
  switch i64 %207, label %266 [
    i64 8, label %208
    i64 7, label %213
    i64 6, label %221
    i64 5, label %229
    i64 4, label %237
    i64 3, label %242
    i64 2, label %250
    i64 1, label %258
  ]

208:                                              ; preds = %201
  %209 = load i8*, i8** %7, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 -1
  store i8* %210, i8** %7, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i64
  store i64 %212, i64* %14, align 8
  br label %213

213:                                              ; preds = %201, %208
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 -1
  store i8* %215, i8** %7, align 8
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  %218 = shl i64 %217, 8
  %219 = load i64, i64* %14, align 8
  %220 = or i64 %219, %218
  store i64 %220, i64* %14, align 8
  br label %221

221:                                              ; preds = %201, %213
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 -1
  store i8* %223, i8** %7, align 8
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i64
  %226 = shl i64 %225, 16
  %227 = load i64, i64* %14, align 8
  %228 = or i64 %227, %226
  store i64 %228, i64* %14, align 8
  br label %229

229:                                              ; preds = %201, %221
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 -1
  store i8* %231, i8** %7, align 8
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i64
  %234 = shl i64 %233, 24
  %235 = load i64, i64* %14, align 8
  %236 = or i64 %235, %234
  store i64 %236, i64* %14, align 8
  br label %237

237:                                              ; preds = %201, %229
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 -1
  store i8* %239, i8** %7, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i64
  store i64 %241, i64* %13, align 8
  br label %242

242:                                              ; preds = %201, %237
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 -1
  store i8* %244, i8** %7, align 8
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i64
  %247 = shl i64 %246, 8
  %248 = load i64, i64* %13, align 8
  %249 = or i64 %248, %247
  store i64 %249, i64* %13, align 8
  br label %250

250:                                              ; preds = %201, %242
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %252, i8** %7, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i64
  %255 = shl i64 %254, 16
  %256 = load i64, i64* %13, align 8
  %257 = or i64 %256, %255
  store i64 %257, i64* %13, align 8
  br label %258

258:                                              ; preds = %201, %250
  %259 = load i8*, i8** %7, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 -1
  store i8* %260, i8** %7, align 8
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i64
  %263 = shl i64 %262, 24
  %264 = load i64, i64* %13, align 8
  %265 = or i64 %264, %263
  store i64 %265, i64* %13, align 8
  br label %266

266:                                              ; preds = %258, %201
  %267 = load i64, i64* %15, align 8
  %268 = load i64, i64* %13, align 8
  %269 = xor i64 %268, %267
  store i64 %269, i64* %13, align 8
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* %14, align 8
  %272 = xor i64 %271, %270
  store i64 %272, i64* %14, align 8
  %273 = load i64, i64* %13, align 8
  %274 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %273, i64* %274, align 16
  %275 = load i64, i64* %14, align 8
  %276 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %275, i64* %276, align 8
  %277 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %278 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 8
  call void @BF_encrypt(i64* noundef %277, %struct.bf_key_st* noundef %278, i32 noundef 1)
  %279 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %280 = load i64, i64* %279, align 16
  store i64 %280, i64* %15, align 8
  %281 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %16, align 8
  %283 = load i64, i64* %15, align 8
  %284 = lshr i64 %283, 24
  %285 = and i64 %284, 255
  %286 = trunc i64 %285 to i8
  %287 = load i8*, i8** %8, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %8, align 8
  store i8 %286, i8* %287, align 1
  %289 = load i64, i64* %15, align 8
  %290 = lshr i64 %289, 16
  %291 = and i64 %290, 255
  %292 = trunc i64 %291 to i8
  %293 = load i8*, i8** %8, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %8, align 8
  store i8 %292, i8* %293, align 1
  %295 = load i64, i64* %15, align 8
  %296 = lshr i64 %295, 8
  %297 = and i64 %296, 255
  %298 = trunc i64 %297 to i8
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %8, align 8
  store i8 %298, i8* %299, align 1
  %301 = load i64, i64* %15, align 8
  %302 = and i64 %301, 255
  %303 = trunc i64 %302 to i8
  %304 = load i8*, i8** %8, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %8, align 8
  store i8 %303, i8* %304, align 1
  %306 = load i64, i64* %16, align 8
  %307 = lshr i64 %306, 24
  %308 = and i64 %307, 255
  %309 = trunc i64 %308 to i8
  %310 = load i8*, i8** %8, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %8, align 8
  store i8 %309, i8* %310, align 1
  %312 = load i64, i64* %16, align 8
  %313 = lshr i64 %312, 16
  %314 = and i64 %313, 255
  %315 = trunc i64 %314 to i8
  %316 = load i8*, i8** %8, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %8, align 8
  store i8 %315, i8* %316, align 1
  %318 = load i64, i64* %16, align 8
  %319 = lshr i64 %318, 8
  %320 = and i64 %319, 255
  %321 = trunc i64 %320 to i8
  %322 = load i8*, i8** %8, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %8, align 8
  store i8 %321, i8* %322, align 1
  %324 = load i64, i64* %16, align 8
  %325 = and i64 %324, 255
  %326 = trunc i64 %325 to i8
  %327 = load i8*, i8** %8, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %8, align 8
  store i8 %326, i8* %327, align 1
  br label %329

329:                                              ; preds = %266, %198
  %330 = load i64, i64* %15, align 8
  %331 = lshr i64 %330, 24
  %332 = and i64 %331, 255
  %333 = trunc i64 %332 to i8
  %334 = load i8*, i8** %11, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %11, align 8
  store i8 %333, i8* %334, align 1
  %336 = load i64, i64* %15, align 8
  %337 = lshr i64 %336, 16
  %338 = and i64 %337, 255
  %339 = trunc i64 %338 to i8
  %340 = load i8*, i8** %11, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %11, align 8
  store i8 %339, i8* %340, align 1
  %342 = load i64, i64* %15, align 8
  %343 = lshr i64 %342, 8
  %344 = and i64 %343, 255
  %345 = trunc i64 %344 to i8
  %346 = load i8*, i8** %11, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %11, align 8
  store i8 %345, i8* %346, align 1
  %348 = load i64, i64* %15, align 8
  %349 = and i64 %348, 255
  %350 = trunc i64 %349 to i8
  %351 = load i8*, i8** %11, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %11, align 8
  store i8 %350, i8* %351, align 1
  %353 = load i64, i64* %16, align 8
  %354 = lshr i64 %353, 24
  %355 = and i64 %354, 255
  %356 = trunc i64 %355 to i8
  %357 = load i8*, i8** %11, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %11, align 8
  store i8 %356, i8* %357, align 1
  %359 = load i64, i64* %16, align 8
  %360 = lshr i64 %359, 16
  %361 = and i64 %360, 255
  %362 = trunc i64 %361 to i8
  %363 = load i8*, i8** %11, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %11, align 8
  store i8 %362, i8* %363, align 1
  %365 = load i64, i64* %16, align 8
  %366 = lshr i64 %365, 8
  %367 = and i64 %366, 255
  %368 = trunc i64 %367 to i8
  %369 = load i8*, i8** %11, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %11, align 8
  store i8 %368, i8* %369, align 1
  %371 = load i64, i64* %16, align 8
  %372 = and i64 %371, 255
  %373 = trunc i64 %372 to i8
  %374 = load i8*, i8** %11, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %11, align 8
  store i8 %373, i8* %374, align 1
  br label %728

376:                                              ; preds = %6
  %377 = load i8*, i8** %11, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %11, align 8
  %379 = load i8, i8* %377, align 1
  %380 = zext i8 %379 to i64
  %381 = shl i64 %380, 24
  store i64 %381, i64* %17, align 8
  %382 = load i8*, i8** %11, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %11, align 8
  %384 = load i8, i8* %382, align 1
  %385 = zext i8 %384 to i64
  %386 = shl i64 %385, 16
  %387 = load i64, i64* %17, align 8
  %388 = or i64 %387, %386
  store i64 %388, i64* %17, align 8
  %389 = load i8*, i8** %11, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %11, align 8
  %391 = load i8, i8* %389, align 1
  %392 = zext i8 %391 to i64
  %393 = shl i64 %392, 8
  %394 = load i64, i64* %17, align 8
  %395 = or i64 %394, %393
  store i64 %395, i64* %17, align 8
  %396 = load i8*, i8** %11, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %11, align 8
  %398 = load i8, i8* %396, align 1
  %399 = zext i8 %398 to i64
  %400 = load i64, i64* %17, align 8
  %401 = or i64 %400, %399
  store i64 %401, i64* %17, align 8
  %402 = load i8*, i8** %11, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %11, align 8
  %404 = load i8, i8* %402, align 1
  %405 = zext i8 %404 to i64
  %406 = shl i64 %405, 24
  store i64 %406, i64* %18, align 8
  %407 = load i8*, i8** %11, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %11, align 8
  %409 = load i8, i8* %407, align 1
  %410 = zext i8 %409 to i64
  %411 = shl i64 %410, 16
  %412 = load i64, i64* %18, align 8
  %413 = or i64 %412, %411
  store i64 %413, i64* %18, align 8
  %414 = load i8*, i8** %11, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %11, align 8
  %416 = load i8, i8* %414, align 1
  %417 = zext i8 %416 to i64
  %418 = shl i64 %417, 8
  %419 = load i64, i64* %18, align 8
  %420 = or i64 %419, %418
  store i64 %420, i64* %18, align 8
  %421 = load i8*, i8** %11, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %11, align 8
  %423 = load i8, i8* %421, align 1
  %424 = zext i8 %423 to i64
  %425 = load i64, i64* %18, align 8
  %426 = or i64 %425, %424
  store i64 %426, i64* %18, align 8
  %427 = load i8*, i8** %11, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 -8
  store i8* %428, i8** %11, align 8
  %429 = load i64, i64* %19, align 8
  %430 = sub nsw i64 %429, 8
  store i64 %430, i64* %19, align 8
  br label %431

431:                                              ; preds = %547, %376
  %432 = load i64, i64* %19, align 8
  %433 = icmp sge i64 %432, 0
  br i1 %433, label %434, label %550

434:                                              ; preds = %431
  %435 = load i8*, i8** %7, align 8
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %7, align 8
  %437 = load i8, i8* %435, align 1
  %438 = zext i8 %437 to i64
  %439 = shl i64 %438, 24
  store i64 %439, i64* %13, align 8
  %440 = load i8*, i8** %7, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %7, align 8
  %442 = load i8, i8* %440, align 1
  %443 = zext i8 %442 to i64
  %444 = shl i64 %443, 16
  %445 = load i64, i64* %13, align 8
  %446 = or i64 %445, %444
  store i64 %446, i64* %13, align 8
  %447 = load i8*, i8** %7, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %7, align 8
  %449 = load i8, i8* %447, align 1
  %450 = zext i8 %449 to i64
  %451 = shl i64 %450, 8
  %452 = load i64, i64* %13, align 8
  %453 = or i64 %452, %451
  store i64 %453, i64* %13, align 8
  %454 = load i8*, i8** %7, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %7, align 8
  %456 = load i8, i8* %454, align 1
  %457 = zext i8 %456 to i64
  %458 = load i64, i64* %13, align 8
  %459 = or i64 %458, %457
  store i64 %459, i64* %13, align 8
  %460 = load i8*, i8** %7, align 8
  %461 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %461, i8** %7, align 8
  %462 = load i8, i8* %460, align 1
  %463 = zext i8 %462 to i64
  %464 = shl i64 %463, 24
  store i64 %464, i64* %14, align 8
  %465 = load i8*, i8** %7, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %7, align 8
  %467 = load i8, i8* %465, align 1
  %468 = zext i8 %467 to i64
  %469 = shl i64 %468, 16
  %470 = load i64, i64* %14, align 8
  %471 = or i64 %470, %469
  store i64 %471, i64* %14, align 8
  %472 = load i8*, i8** %7, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %7, align 8
  %474 = load i8, i8* %472, align 1
  %475 = zext i8 %474 to i64
  %476 = shl i64 %475, 8
  %477 = load i64, i64* %14, align 8
  %478 = or i64 %477, %476
  store i64 %478, i64* %14, align 8
  %479 = load i8*, i8** %7, align 8
  %480 = getelementptr inbounds i8, i8* %479, i32 1
  store i8* %480, i8** %7, align 8
  %481 = load i8, i8* %479, align 1
  %482 = zext i8 %481 to i64
  %483 = load i64, i64* %14, align 8
  %484 = or i64 %483, %482
  store i64 %484, i64* %14, align 8
  %485 = load i64, i64* %13, align 8
  %486 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %485, i64* %486, align 16
  %487 = load i64, i64* %14, align 8
  %488 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %487, i64* %488, align 8
  %489 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %490 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 8
  call void @BF_encrypt(i64* noundef %489, %struct.bf_key_st* noundef %490, i32 noundef 0)
  %491 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %492 = load i64, i64* %491, align 16
  %493 = load i64, i64* %17, align 8
  %494 = xor i64 %492, %493
  store i64 %494, i64* %15, align 8
  %495 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %18, align 8
  %498 = xor i64 %496, %497
  store i64 %498, i64* %16, align 8
  %499 = load i64, i64* %15, align 8
  %500 = lshr i64 %499, 24
  %501 = and i64 %500, 255
  %502 = trunc i64 %501 to i8
  %503 = load i8*, i8** %8, align 8
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** %8, align 8
  store i8 %502, i8* %503, align 1
  %505 = load i64, i64* %15, align 8
  %506 = lshr i64 %505, 16
  %507 = and i64 %506, 255
  %508 = trunc i64 %507 to i8
  %509 = load i8*, i8** %8, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %8, align 8
  store i8 %508, i8* %509, align 1
  %511 = load i64, i64* %15, align 8
  %512 = lshr i64 %511, 8
  %513 = and i64 %512, 255
  %514 = trunc i64 %513 to i8
  %515 = load i8*, i8** %8, align 8
  %516 = getelementptr inbounds i8, i8* %515, i32 1
  store i8* %516, i8** %8, align 8
  store i8 %514, i8* %515, align 1
  %517 = load i64, i64* %15, align 8
  %518 = and i64 %517, 255
  %519 = trunc i64 %518 to i8
  %520 = load i8*, i8** %8, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %8, align 8
  store i8 %519, i8* %520, align 1
  %522 = load i64, i64* %16, align 8
  %523 = lshr i64 %522, 24
  %524 = and i64 %523, 255
  %525 = trunc i64 %524 to i8
  %526 = load i8*, i8** %8, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %8, align 8
  store i8 %525, i8* %526, align 1
  %528 = load i64, i64* %16, align 8
  %529 = lshr i64 %528, 16
  %530 = and i64 %529, 255
  %531 = trunc i64 %530 to i8
  %532 = load i8*, i8** %8, align 8
  %533 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %533, i8** %8, align 8
  store i8 %531, i8* %532, align 1
  %534 = load i64, i64* %16, align 8
  %535 = lshr i64 %534, 8
  %536 = and i64 %535, 255
  %537 = trunc i64 %536 to i8
  %538 = load i8*, i8** %8, align 8
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %8, align 8
  store i8 %537, i8* %538, align 1
  %540 = load i64, i64* %16, align 8
  %541 = and i64 %540, 255
  %542 = trunc i64 %541 to i8
  %543 = load i8*, i8** %8, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %8, align 8
  store i8 %542, i8* %543, align 1
  %545 = load i64, i64* %13, align 8
  store i64 %545, i64* %17, align 8
  %546 = load i64, i64* %14, align 8
  store i64 %546, i64* %18, align 8
  br label %547

547:                                              ; preds = %434
  %548 = load i64, i64* %19, align 8
  %549 = sub nsw i64 %548, 8
  store i64 %549, i64* %19, align 8
  br label %431, !llvm.loop !6

550:                                              ; preds = %431
  %551 = load i64, i64* %19, align 8
  %552 = icmp ne i64 %551, -8
  br i1 %552, label %553, label %681

553:                                              ; preds = %550
  %554 = load i8*, i8** %7, align 8
  %555 = getelementptr inbounds i8, i8* %554, i32 1
  store i8* %555, i8** %7, align 8
  %556 = load i8, i8* %554, align 1
  %557 = zext i8 %556 to i64
  %558 = shl i64 %557, 24
  store i64 %558, i64* %13, align 8
  %559 = load i8*, i8** %7, align 8
  %560 = getelementptr inbounds i8, i8* %559, i32 1
  store i8* %560, i8** %7, align 8
  %561 = load i8, i8* %559, align 1
  %562 = zext i8 %561 to i64
  %563 = shl i64 %562, 16
  %564 = load i64, i64* %13, align 8
  %565 = or i64 %564, %563
  store i64 %565, i64* %13, align 8
  %566 = load i8*, i8** %7, align 8
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %7, align 8
  %568 = load i8, i8* %566, align 1
  %569 = zext i8 %568 to i64
  %570 = shl i64 %569, 8
  %571 = load i64, i64* %13, align 8
  %572 = or i64 %571, %570
  store i64 %572, i64* %13, align 8
  %573 = load i8*, i8** %7, align 8
  %574 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %574, i8** %7, align 8
  %575 = load i8, i8* %573, align 1
  %576 = zext i8 %575 to i64
  %577 = load i64, i64* %13, align 8
  %578 = or i64 %577, %576
  store i64 %578, i64* %13, align 8
  %579 = load i8*, i8** %7, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %7, align 8
  %581 = load i8, i8* %579, align 1
  %582 = zext i8 %581 to i64
  %583 = shl i64 %582, 24
  store i64 %583, i64* %14, align 8
  %584 = load i8*, i8** %7, align 8
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** %7, align 8
  %586 = load i8, i8* %584, align 1
  %587 = zext i8 %586 to i64
  %588 = shl i64 %587, 16
  %589 = load i64, i64* %14, align 8
  %590 = or i64 %589, %588
  store i64 %590, i64* %14, align 8
  %591 = load i8*, i8** %7, align 8
  %592 = getelementptr inbounds i8, i8* %591, i32 1
  store i8* %592, i8** %7, align 8
  %593 = load i8, i8* %591, align 1
  %594 = zext i8 %593 to i64
  %595 = shl i64 %594, 8
  %596 = load i64, i64* %14, align 8
  %597 = or i64 %596, %595
  store i64 %597, i64* %14, align 8
  %598 = load i8*, i8** %7, align 8
  %599 = getelementptr inbounds i8, i8* %598, i32 1
  store i8* %599, i8** %7, align 8
  %600 = load i8, i8* %598, align 1
  %601 = zext i8 %600 to i64
  %602 = load i64, i64* %14, align 8
  %603 = or i64 %602, %601
  store i64 %603, i64* %14, align 8
  %604 = load i64, i64* %13, align 8
  %605 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %604, i64* %605, align 16
  %606 = load i64, i64* %14, align 8
  %607 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %606, i64* %607, align 8
  %608 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %609 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 8
  call void @BF_encrypt(i64* noundef %608, %struct.bf_key_st* noundef %609, i32 noundef 0)
  %610 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %611 = load i64, i64* %610, align 16
  %612 = load i64, i64* %17, align 8
  %613 = xor i64 %611, %612
  store i64 %613, i64* %15, align 8
  %614 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %615 = load i64, i64* %614, align 8
  %616 = load i64, i64* %18, align 8
  %617 = xor i64 %615, %616
  store i64 %617, i64* %16, align 8
  %618 = load i64, i64* %19, align 8
  %619 = add nsw i64 %618, 8
  %620 = load i8*, i8** %8, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 %619
  store i8* %621, i8** %8, align 8
  %622 = load i64, i64* %19, align 8
  %623 = add nsw i64 %622, 8
  switch i64 %623, label %678 [
    i64 8, label %624
    i64 7, label %630
    i64 6, label %637
    i64 5, label %644
    i64 4, label %651
    i64 3, label %657
    i64 2, label %664
    i64 1, label %671
  ]

624:                                              ; preds = %553
  %625 = load i64, i64* %16, align 8
  %626 = and i64 %625, 255
  %627 = trunc i64 %626 to i8
  %628 = load i8*, i8** %8, align 8
  %629 = getelementptr inbounds i8, i8* %628, i32 -1
  store i8* %629, i8** %8, align 8
  store i8 %627, i8* %629, align 1
  br label %630

630:                                              ; preds = %553, %624
  %631 = load i64, i64* %16, align 8
  %632 = lshr i64 %631, 8
  %633 = and i64 %632, 255
  %634 = trunc i64 %633 to i8
  %635 = load i8*, i8** %8, align 8
  %636 = getelementptr inbounds i8, i8* %635, i32 -1
  store i8* %636, i8** %8, align 8
  store i8 %634, i8* %636, align 1
  br label %637

637:                                              ; preds = %553, %630
  %638 = load i64, i64* %16, align 8
  %639 = lshr i64 %638, 16
  %640 = and i64 %639, 255
  %641 = trunc i64 %640 to i8
  %642 = load i8*, i8** %8, align 8
  %643 = getelementptr inbounds i8, i8* %642, i32 -1
  store i8* %643, i8** %8, align 8
  store i8 %641, i8* %643, align 1
  br label %644

644:                                              ; preds = %553, %637
  %645 = load i64, i64* %16, align 8
  %646 = lshr i64 %645, 24
  %647 = and i64 %646, 255
  %648 = trunc i64 %647 to i8
  %649 = load i8*, i8** %8, align 8
  %650 = getelementptr inbounds i8, i8* %649, i32 -1
  store i8* %650, i8** %8, align 8
  store i8 %648, i8* %650, align 1
  br label %651

651:                                              ; preds = %553, %644
  %652 = load i64, i64* %15, align 8
  %653 = and i64 %652, 255
  %654 = trunc i64 %653 to i8
  %655 = load i8*, i8** %8, align 8
  %656 = getelementptr inbounds i8, i8* %655, i32 -1
  store i8* %656, i8** %8, align 8
  store i8 %654, i8* %656, align 1
  br label %657

657:                                              ; preds = %553, %651
  %658 = load i64, i64* %15, align 8
  %659 = lshr i64 %658, 8
  %660 = and i64 %659, 255
  %661 = trunc i64 %660 to i8
  %662 = load i8*, i8** %8, align 8
  %663 = getelementptr inbounds i8, i8* %662, i32 -1
  store i8* %663, i8** %8, align 8
  store i8 %661, i8* %663, align 1
  br label %664

664:                                              ; preds = %553, %657
  %665 = load i64, i64* %15, align 8
  %666 = lshr i64 %665, 16
  %667 = and i64 %666, 255
  %668 = trunc i64 %667 to i8
  %669 = load i8*, i8** %8, align 8
  %670 = getelementptr inbounds i8, i8* %669, i32 -1
  store i8* %670, i8** %8, align 8
  store i8 %668, i8* %670, align 1
  br label %671

671:                                              ; preds = %553, %664
  %672 = load i64, i64* %15, align 8
  %673 = lshr i64 %672, 24
  %674 = and i64 %673, 255
  %675 = trunc i64 %674 to i8
  %676 = load i8*, i8** %8, align 8
  %677 = getelementptr inbounds i8, i8* %676, i32 -1
  store i8* %677, i8** %8, align 8
  store i8 %675, i8* %677, align 1
  br label %678

678:                                              ; preds = %671, %553
  %679 = load i64, i64* %13, align 8
  store i64 %679, i64* %17, align 8
  %680 = load i64, i64* %14, align 8
  store i64 %680, i64* %18, align 8
  br label %681

681:                                              ; preds = %678, %550
  %682 = load i64, i64* %17, align 8
  %683 = lshr i64 %682, 24
  %684 = and i64 %683, 255
  %685 = trunc i64 %684 to i8
  %686 = load i8*, i8** %11, align 8
  %687 = getelementptr inbounds i8, i8* %686, i32 1
  store i8* %687, i8** %11, align 8
  store i8 %685, i8* %686, align 1
  %688 = load i64, i64* %17, align 8
  %689 = lshr i64 %688, 16
  %690 = and i64 %689, 255
  %691 = trunc i64 %690 to i8
  %692 = load i8*, i8** %11, align 8
  %693 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %693, i8** %11, align 8
  store i8 %691, i8* %692, align 1
  %694 = load i64, i64* %17, align 8
  %695 = lshr i64 %694, 8
  %696 = and i64 %695, 255
  %697 = trunc i64 %696 to i8
  %698 = load i8*, i8** %11, align 8
  %699 = getelementptr inbounds i8, i8* %698, i32 1
  store i8* %699, i8** %11, align 8
  store i8 %697, i8* %698, align 1
  %700 = load i64, i64* %17, align 8
  %701 = and i64 %700, 255
  %702 = trunc i64 %701 to i8
  %703 = load i8*, i8** %11, align 8
  %704 = getelementptr inbounds i8, i8* %703, i32 1
  store i8* %704, i8** %11, align 8
  store i8 %702, i8* %703, align 1
  %705 = load i64, i64* %18, align 8
  %706 = lshr i64 %705, 24
  %707 = and i64 %706, 255
  %708 = trunc i64 %707 to i8
  %709 = load i8*, i8** %11, align 8
  %710 = getelementptr inbounds i8, i8* %709, i32 1
  store i8* %710, i8** %11, align 8
  store i8 %708, i8* %709, align 1
  %711 = load i64, i64* %18, align 8
  %712 = lshr i64 %711, 16
  %713 = and i64 %712, 255
  %714 = trunc i64 %713 to i8
  %715 = load i8*, i8** %11, align 8
  %716 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %716, i8** %11, align 8
  store i8 %714, i8* %715, align 1
  %717 = load i64, i64* %18, align 8
  %718 = lshr i64 %717, 8
  %719 = and i64 %718, 255
  %720 = trunc i64 %719 to i8
  %721 = load i8*, i8** %11, align 8
  %722 = getelementptr inbounds i8, i8* %721, i32 1
  store i8* %722, i8** %11, align 8
  store i8 %720, i8* %721, align 1
  %723 = load i64, i64* %18, align 8
  %724 = and i64 %723, 255
  %725 = trunc i64 %724 to i8
  %726 = load i8*, i8** %11, align 8
  %727 = getelementptr inbounds i8, i8* %726, i32 1
  store i8* %727, i8** %11, align 8
  store i8 %725, i8* %726, align 1
  br label %728

728:                                              ; preds = %681, %329
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %729 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %729, align 8
  %730 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %730, align 16
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
