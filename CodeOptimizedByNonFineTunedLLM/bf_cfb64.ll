; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cfb64.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_cfb64_encrypt(i8* noundef %0, i8* noundef %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bf_key_st*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [2 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.bf_key_st* %3, %struct.bf_key_st** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %19, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %21, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %172

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %147, %30
  %32 = load i64, i64* %19, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %19, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %171

35:                                               ; preds = %31
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %147

38:                                               ; preds = %35
  %39 = load i8*, i8** %21, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %21, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 24
  store i64 %43, i64* %15, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %21, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  %48 = shl i64 %47, 16
  %49 = load i64, i64* %15, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %15, align 8
  %51 = load i8*, i8** %21, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %21, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i64
  %55 = shl i64 %54, 8
  %56 = load i64, i64* %15, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %15, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %21, align 8
  %60 = load i8, i8* %58, align 1
  %61 = zext i8 %60 to i64
  %62 = load i64, i64* %15, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %64, i64* %65, align 16
  %66 = load i8*, i8** %21, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %21, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i64
  %70 = shl i64 %69, 24
  store i64 %70, i64* %16, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i64
  %75 = shl i64 %74, 16
  %76 = load i64, i64* %16, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %16, align 8
  %78 = load i8*, i8** %21, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %21, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i64
  %82 = shl i64 %81, 8
  %83 = load i64, i64* %16, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %16, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %21, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i64
  %89 = load i64, i64* %16, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %94 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 8
  call void @BF_encrypt(i64* noundef %93, %struct.bf_key_st* noundef %94, i32 noundef 1)
  %95 = load i8*, i8** %12, align 8
  store i8* %95, i8** %21, align 8
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = lshr i64 %98, 24
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %21, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %21, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i64, i64* %17, align 8
  %105 = lshr i64 %104, 16
  %106 = and i64 %105, 255
  %107 = trunc i64 %106 to i8
  %108 = load i8*, i8** %21, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %21, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i64, i64* %17, align 8
  %111 = lshr i64 %110, 8
  %112 = and i64 %111, 255
  %113 = trunc i64 %112 to i8
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %21, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i64, i64* %17, align 8
  %117 = and i64 %116, 255
  %118 = trunc i64 %117 to i8
  %119 = load i8*, i8** %21, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %21, align 8
  store i8 %118, i8* %119, align 1
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %17, align 8
  %124 = lshr i64 %123, 24
  %125 = and i64 %124, 255
  %126 = trunc i64 %125 to i8
  %127 = load i8*, i8** %21, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %21, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i64, i64* %17, align 8
  %130 = lshr i64 %129, 16
  %131 = and i64 %130, 255
  %132 = trunc i64 %131 to i8
  %133 = load i8*, i8** %21, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %21, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i64, i64* %17, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i8
  %139 = load i8*, i8** %21, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %21, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i64, i64* %17, align 8
  %142 = and i64 %141, 255
  %143 = trunc i64 %142 to i8
  %144 = load i8*, i8** %21, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %21, align 8
  store i8 %143, i8* %144, align 1
  %146 = load i8*, i8** %12, align 8
  store i8* %146, i8** %21, align 8
  br label %147

147:                                              ; preds = %38, %35
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  %150 = load i8, i8* %148, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8*, i8** %21, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = xor i32 %151, %157
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %22, align 1
  %160 = load i8, i8* %22, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i8, i8* %22, align 1
  %164 = load i8*, i8** %21, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8 %163, i8* %167, align 1
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  %170 = and i32 %169, 7
  store i32 %170, i32* %18, align 4
  br label %31, !llvm.loop !4

171:                                              ; preds = %31
  br label %315

172:                                              ; preds = %7
  br label %173

173:                                              ; preds = %289, %172
  %174 = load i64, i64* %19, align 8
  %175 = add nsw i64 %174, -1
  store i64 %175, i64* %19, align 8
  %176 = icmp ne i64 %174, 0
  br i1 %176, label %177, label %314

177:                                              ; preds = %173
  %178 = load i32, i32* %18, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %289

180:                                              ; preds = %177
  %181 = load i8*, i8** %21, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %21, align 8
  %183 = load i8, i8* %181, align 1
  %184 = zext i8 %183 to i64
  %185 = shl i64 %184, 24
  store i64 %185, i64* %15, align 8
  %186 = load i8*, i8** %21, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %21, align 8
  %188 = load i8, i8* %186, align 1
  %189 = zext i8 %188 to i64
  %190 = shl i64 %189, 16
  %191 = load i64, i64* %15, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %15, align 8
  %193 = load i8*, i8** %21, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %21, align 8
  %195 = load i8, i8* %193, align 1
  %196 = zext i8 %195 to i64
  %197 = shl i64 %196, 8
  %198 = load i64, i64* %15, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %15, align 8
  %200 = load i8*, i8** %21, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %21, align 8
  %202 = load i8, i8* %200, align 1
  %203 = zext i8 %202 to i64
  %204 = load i64, i64* %15, align 8
  %205 = or i64 %204, %203
  store i64 %205, i64* %15, align 8
  %206 = load i64, i64* %15, align 8
  %207 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %206, i64* %207, align 16
  %208 = load i8*, i8** %21, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %21, align 8
  %210 = load i8, i8* %208, align 1
  %211 = zext i8 %210 to i64
  %212 = shl i64 %211, 24
  store i64 %212, i64* %16, align 8
  %213 = load i8*, i8** %21, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %21, align 8
  %215 = load i8, i8* %213, align 1
  %216 = zext i8 %215 to i64
  %217 = shl i64 %216, 16
  %218 = load i64, i64* %16, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %16, align 8
  %220 = load i8*, i8** %21, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %21, align 8
  %222 = load i8, i8* %220, align 1
  %223 = zext i8 %222 to i64
  %224 = shl i64 %223, 8
  %225 = load i64, i64* %16, align 8
  %226 = or i64 %225, %224
  store i64 %226, i64* %16, align 8
  %227 = load i8*, i8** %21, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %21, align 8
  %229 = load i8, i8* %227, align 1
  %230 = zext i8 %229 to i64
  %231 = load i64, i64* %16, align 8
  %232 = or i64 %231, %230
  store i64 %232, i64* %16, align 8
  %233 = load i64, i64* %16, align 8
  %234 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %233, i64* %234, align 8
  %235 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %236 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 8
  call void @BF_encrypt(i64* noundef %235, %struct.bf_key_st* noundef %236, i32 noundef 1)
  %237 = load i8*, i8** %12, align 8
  store i8* %237, i8** %21, align 8
  %238 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %239 = load i64, i64* %238, align 16
  store i64 %239, i64* %17, align 8
  %240 = load i64, i64* %17, align 8
  %241 = lshr i64 %240, 24
  %242 = and i64 %241, 255
  %243 = trunc i64 %242 to i8
  %244 = load i8*, i8** %21, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %21, align 8
  store i8 %243, i8* %244, align 1
  %246 = load i64, i64* %17, align 8
  %247 = lshr i64 %246, 16
  %248 = and i64 %247, 255
  %249 = trunc i64 %248 to i8
  %250 = load i8*, i8** %21, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %21, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i64, i64* %17, align 8
  %253 = lshr i64 %252, 8
  %254 = and i64 %253, 255
  %255 = trunc i64 %254 to i8
  %256 = load i8*, i8** %21, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %21, align 8
  store i8 %255, i8* %256, align 1
  %258 = load i64, i64* %17, align 8
  %259 = and i64 %258, 255
  %260 = trunc i64 %259 to i8
  %261 = load i8*, i8** %21, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %21, align 8
  store i8 %260, i8* %261, align 1
  %263 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %17, align 8
  %265 = load i64, i64* %17, align 8
  %266 = lshr i64 %265, 24
  %267 = and i64 %266, 255
  %268 = trunc i64 %267 to i8
  %269 = load i8*, i8** %21, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %21, align 8
  store i8 %268, i8* %269, align 1
  %271 = load i64, i64* %17, align 8
  %272 = lshr i64 %271, 16
  %273 = and i64 %272, 255
  %274 = trunc i64 %273 to i8
  %275 = load i8*, i8** %21, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %21, align 8
  store i8 %274, i8* %275, align 1
  %277 = load i64, i64* %17, align 8
  %278 = lshr i64 %277, 8
  %279 = and i64 %278, 255
  %280 = trunc i64 %279 to i8
  %281 = load i8*, i8** %21, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %21, align 8
  store i8 %280, i8* %281, align 1
  %283 = load i64, i64* %17, align 8
  %284 = and i64 %283, 255
  %285 = trunc i64 %284 to i8
  %286 = load i8*, i8** %21, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %21, align 8
  store i8 %285, i8* %286, align 1
  %288 = load i8*, i8** %12, align 8
  store i8* %288, i8** %21, align 8
  br label %289

289:                                              ; preds = %180, %177
  %290 = load i8*, i8** %8, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %8, align 8
  %292 = load i8, i8* %290, align 1
  store i8 %292, i8* %23, align 1
  %293 = load i8*, i8** %21, align 8
  %294 = load i32, i32* %18, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i8, i8* %296, align 1
  store i8 %297, i8* %22, align 1
  %298 = load i8, i8* %23, align 1
  %299 = load i8*, i8** %21, align 8
  %300 = load i32, i32* %18, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  store i8 %298, i8* %302, align 1
  %303 = load i8, i8* %22, align 1
  %304 = zext i8 %303 to i32
  %305 = load i8, i8* %23, align 1
  %306 = zext i8 %305 to i32
  %307 = xor i32 %304, %306
  %308 = trunc i32 %307 to i8
  %309 = load i8*, i8** %9, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %9, align 8
  store i8 %308, i8* %309, align 1
  %311 = load i32, i32* %18, align 4
  %312 = add nsw i32 %311, 1
  %313 = and i32 %312, 7
  store i32 %313, i32* %18, align 4
  br label %173, !llvm.loop !6

314:                                              ; preds = %173
  br label %315

315:                                              ; preds = %314, %171
  store i8 0, i8* %23, align 1
  store i8 0, i8* %22, align 1
  store i64 0, i64* %17, align 8
  %316 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %316, align 8
  %317 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %317, align 16
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %318 = load i32, i32* %18, align 4
  %319 = load i32*, i32** %13, align 8
  store i32 %318, i32* %319, align 4
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
