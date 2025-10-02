; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-26-Shorts.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-26-Shorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"   ui = %u (0x%x)\09\09UL-ui = %lld (0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ui*ui = %u (0x%x)\09  UL/ui = %lld (0x%llx)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"    i = %d (0x%x)\09L-i = %lld (0x%llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" i* i = %d (0x%x)\09L/ i = %lld (0x%llx)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"us    = %u (0x%x)\09\09UL-us = %lld (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"us*us = %u (0x%x)\09  UL/us = %lld (0x%llx)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" s    = %d (0x%x)\09L-s = %lld (0x%llx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" s* s = %d (0x%x)\09L/ s = %lld (0x%llx)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ub    = %u (0x%x)\09\09UL-ub = %lld (0x%llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"ub*ub = %u (0x%x)\09\09UL/ub = %lld (0x%llx)\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" b    = %d (0x%x)\09\09L-b = %lld (0x%llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c" b* b = %d (0x%x)\09\09\09L/b = %lld (0x%llx)\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"uiprod = %u (0x%x)\09  uidiv = %u (0x%x)\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"usprod = %u (0x%x)\09  usdiv = %u (0x%x)\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"ubprod = %u (0x%x)\09  ubdiv = %u (0x%x)\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c" iprod = %u (0x%x)\09   idiv = %u (0x%x)\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c" sprod = %u (0x%x)\09   sdiv = %u (0x%x)\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" bprod = %u (0x%x)\09   bdiv = %u (0x%x)\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getL() #0 {
  ret i64 -5787213826675591005
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i16, align 2
  %25 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = call i64 @getL()
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i16
  store i16 %33, i16* %10, align 2
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i16
  store i16 %35, i16* %11, align 2
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i8
  store i8 %37, i8* %12, align 1
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i8
  store i8 %39, i8* %13, align 1
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = sub i64 %46, %48
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 noundef %40, i32 noundef %41, i64 noundef %45, i64 noundef %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul i32 %54, %55
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = udiv i64 %57, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = udiv i64 %61, %63
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %53, i32 noundef %56, i64 noundef %60, i64 noundef %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %66, i32 noundef %67, i64 noundef %71, i64 noundef %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = sdiv i64 %83, %85
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = sdiv i64 %87, %89
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %79, i32 noundef %82, i64 noundef %86, i64 noundef %90)
  %92 = load i16, i16* %10, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* %10, align 2
  %95 = zext i16 %94 to i32
  %96 = load i64, i64* %6, align 8
  %97 = load i16, i16* %10, align 2
  %98 = zext i16 %97 to i64
  %99 = sub i64 %96, %98
  %100 = load i64, i64* %6, align 8
  %101 = load i16, i16* %10, align 2
  %102 = zext i16 %101 to i64
  %103 = sub i64 %100, %102
  %104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %93, i32 noundef %95, i64 noundef %99, i64 noundef %103)
  %105 = load i16, i16* %10, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* %10, align 2
  %108 = zext i16 %107 to i32
  %109 = mul nsw i32 %106, %108
  %110 = load i16, i16* %10, align 2
  %111 = zext i16 %110 to i32
  %112 = load i16, i16* %10, align 2
  %113 = zext i16 %112 to i32
  %114 = mul nsw i32 %111, %113
  %115 = load i64, i64* %6, align 8
  %116 = load i16, i16* %10, align 2
  %117 = zext i16 %116 to i64
  %118 = udiv i64 %115, %117
  %119 = load i64, i64* %6, align 8
  %120 = load i16, i16* %10, align 2
  %121 = zext i16 %120 to i64
  %122 = udiv i64 %119, %121
  %123 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 noundef %109, i32 noundef %114, i64 noundef %118, i64 noundef %122)
  %124 = load i16, i16* %11, align 2
  %125 = sext i16 %124 to i32
  %126 = load i16, i16* %11, align 2
  %127 = sext i16 %126 to i32
  %128 = load i64, i64* %7, align 8
  %129 = load i16, i16* %11, align 2
  %130 = sext i16 %129 to i64
  %131 = sub nsw i64 %128, %130
  %132 = load i64, i64* %7, align 8
  %133 = load i16, i16* %11, align 2
  %134 = sext i16 %133 to i64
  %135 = sub nsw i64 %132, %134
  %136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef %125, i32 noundef %127, i64 noundef %131, i64 noundef %135)
  %137 = load i16, i16* %11, align 2
  %138 = sext i16 %137 to i32
  %139 = load i16, i16* %11, align 2
  %140 = sext i16 %139 to i32
  %141 = mul nsw i32 %138, %140
  %142 = load i16, i16* %11, align 2
  %143 = sext i16 %142 to i32
  %144 = load i16, i16* %11, align 2
  %145 = sext i16 %144 to i32
  %146 = mul nsw i32 %143, %145
  %147 = load i64, i64* %7, align 8
  %148 = load i16, i16* %11, align 2
  %149 = sext i16 %148 to i64
  %150 = sdiv i64 %147, %149
  %151 = load i64, i64* %7, align 8
  %152 = load i16, i16* %11, align 2
  %153 = sext i16 %152 to i64
  %154 = sdiv i64 %151, %153
  %155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 noundef %141, i32 noundef %146, i64 noundef %150, i64 noundef %154)
  %156 = load i8, i8* %12, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %12, align 1
  %159 = zext i8 %158 to i32
  %160 = load i64, i64* %6, align 8
  %161 = load i8, i8* %12, align 1
  %162 = zext i8 %161 to i64
  %163 = sub i64 %160, %162
  %164 = load i64, i64* %6, align 8
  %165 = load i8, i8* %12, align 1
  %166 = zext i8 %165 to i64
  %167 = sub i64 %164, %166
  %168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %157, i32 noundef %159, i64 noundef %163, i64 noundef %167)
  %169 = load i8, i8* %12, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, i8* %12, align 1
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 %170, %172
  %174 = load i8, i8* %12, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* %12, align 1
  %177 = zext i8 %176 to i32
  %178 = mul nsw i32 %175, %177
  %179 = load i64, i64* %6, align 8
  %180 = load i8, i8* %12, align 1
  %181 = zext i8 %180 to i64
  %182 = udiv i64 %179, %181
  %183 = load i64, i64* %6, align 8
  %184 = load i8, i8* %12, align 1
  %185 = zext i8 %184 to i64
  %186 = udiv i64 %183, %185
  %187 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %173, i32 noundef %178, i64 noundef %182, i64 noundef %186)
  %188 = load i8, i8* %13, align 1
  %189 = sext i8 %188 to i32
  %190 = load i8, i8* %13, align 1
  %191 = sext i8 %190 to i32
  %192 = load i64, i64* %7, align 8
  %193 = load i8, i8* %13, align 1
  %194 = sext i8 %193 to i64
  %195 = sub nsw i64 %192, %194
  %196 = load i64, i64* %7, align 8
  %197 = load i8, i8* %13, align 1
  %198 = sext i8 %197 to i64
  %199 = sub nsw i64 %196, %198
  %200 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %189, i32 noundef %191, i64 noundef %195, i64 noundef %199)
  %201 = load i8, i8* %13, align 1
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* %13, align 1
  %204 = sext i8 %203 to i32
  %205 = mul nsw i32 %202, %204
  %206 = load i8, i8* %13, align 1
  %207 = sext i8 %206 to i32
  %208 = load i8, i8* %13, align 1
  %209 = sext i8 %208 to i32
  %210 = mul nsw i32 %207, %209
  %211 = load i64, i64* %7, align 8
  %212 = load i8, i8* %13, align 1
  %213 = sext i8 %212 to i64
  %214 = sdiv i64 %211, %213
  %215 = load i64, i64* %7, align 8
  %216 = load i8, i8* %13, align 1
  %217 = sext i8 %216 to i64
  %218 = sdiv i64 %215, %217
  %219 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %205, i32 noundef %210, i64 noundef %214, i64 noundef %218)
  %220 = load i32, i32* %8, align 4
  %221 = add i32 %220, 1
  %222 = load i32, i32* %8, align 4
  %223 = add i32 %222, 1
  %224 = mul i32 %221, %223
  %225 = load i32, i32* %8, align 4
  %226 = shl i32 %225, 2
  %227 = sub i32 %224, %226
  %228 = sub i32 %227, 1
  store i32 %228, i32* %14, align 4
  %229 = load i16, i16* %10, align 2
  %230 = zext i16 %229 to i32
  %231 = add i32 %230, 1
  %232 = load i16, i16* %10, align 2
  %233 = zext i16 %232 to i32
  %234 = add i32 %233, 1
  %235 = mul i32 %231, %234
  %236 = load i16, i16* %10, align 2
  %237 = zext i16 %236 to i32
  %238 = shl i32 %237, 2
  %239 = trunc i32 %238 to i16
  %240 = zext i16 %239 to i32
  %241 = sub i32 %235, %240
  %242 = sub i32 %241, 1
  %243 = trunc i32 %242 to i16
  store i16 %243, i16* %15, align 2
  %244 = load i8, i8* %12, align 1
  %245 = zext i8 %244 to i32
  %246 = add i32 %245, 1
  %247 = load i8, i8* %12, align 1
  %248 = zext i8 %247 to i32
  %249 = add i32 %248, 1
  %250 = mul i32 %246, %249
  %251 = load i8, i8* %12, align 1
  %252 = zext i8 %251 to i32
  %253 = shl i32 %252, 2
  %254 = trunc i32 %253 to i8
  %255 = zext i8 %254 to i32
  %256 = sub i32 %250, %255
  %257 = sub i32 %256, 1
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %16, align 1
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  %263 = mul nsw i32 %260, %262
  %264 = load i32, i32* %9, align 4
  %265 = shl i32 %264, 2
  %266 = sub nsw i32 %263, %265
  %267 = sub nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  %268 = load i16, i16* %11, align 2
  %269 = sext i16 %268 to i32
  %270 = add nsw i32 %269, 1
  %271 = load i16, i16* %11, align 2
  %272 = sext i16 %271 to i32
  %273 = add nsw i32 %272, 1
  %274 = mul nsw i32 %270, %273
  %275 = load i16, i16* %11, align 2
  %276 = sext i16 %275 to i32
  %277 = shl i32 %276, 2
  %278 = trunc i32 %277 to i16
  %279 = sext i16 %278 to i32
  %280 = sub nsw i32 %274, %279
  %281 = sub nsw i32 %280, 1
  %282 = trunc i32 %281 to i16
  store i16 %282, i16* %18, align 2
  %283 = load i8, i8* %13, align 1
  %284 = sext i8 %283 to i32
  %285 = add nsw i32 %284, 1
  %286 = load i8, i8* %13, align 1
  %287 = sext i8 %286 to i32
  %288 = add nsw i32 %287, 1
  %289 = mul nsw i32 %285, %288
  %290 = load i8, i8* %13, align 1
  %291 = sext i8 %290 to i32
  %292 = shl i32 %291, 2
  %293 = trunc i32 %292 to i8
  %294 = sext i8 %293 to i32
  %295 = sub nsw i32 %289, %294
  %296 = sub nsw i32 %295, 1
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %19, align 1
  %298 = load i64, i64* %6, align 8
  %299 = load i32, i32* %8, align 4
  %300 = zext i32 %299 to i64
  %301 = udiv i64 %298, %300
  %302 = trunc i64 %301 to i32
  %303 = load i64, i64* %6, align 8
  %304 = load i32, i32* %8, align 4
  %305 = zext i32 %304 to i64
  %306 = udiv i64 %303, %305
  %307 = trunc i64 %306 to i32
  %308 = mul i32 %302, %307
  store i32 %308, i32* %20, align 4
  %309 = load i64, i64* %6, align 8
  %310 = load i16, i16* %10, align 2
  %311 = zext i16 %310 to i64
  %312 = udiv i64 %309, %311
  %313 = trunc i64 %312 to i16
  %314 = zext i16 %313 to i32
  %315 = load i64, i64* %6, align 8
  %316 = load i16, i16* %10, align 2
  %317 = zext i16 %316 to i64
  %318 = udiv i64 %315, %317
  %319 = trunc i64 %318 to i16
  %320 = zext i16 %319 to i32
  %321 = mul nsw i32 %314, %320
  %322 = trunc i32 %321 to i16
  store i16 %322, i16* %21, align 2
  %323 = load i64, i64* %6, align 8
  %324 = load i8, i8* %12, align 1
  %325 = zext i8 %324 to i64
  %326 = udiv i64 %323, %325
  %327 = trunc i64 %326 to i8
  %328 = zext i8 %327 to i32
  %329 = load i64, i64* %6, align 8
  %330 = load i8, i8* %12, align 1
  %331 = zext i8 %330 to i64
  %332 = udiv i64 %329, %331
  %333 = trunc i64 %332 to i8
  %334 = zext i8 %333 to i32
  %335 = mul nsw i32 %328, %334
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %22, align 1
  %337 = load i64, i64* %7, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = sdiv i64 %337, %339
  %341 = trunc i64 %340 to i32
  %342 = load i64, i64* %7, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = sdiv i64 %342, %344
  %346 = trunc i64 %345 to i32
  %347 = mul nsw i32 %341, %346
  store i32 %347, i32* %23, align 4
  %348 = load i64, i64* %7, align 8
  %349 = load i16, i16* %11, align 2
  %350 = sext i16 %349 to i64
  %351 = sdiv i64 %348, %350
  %352 = trunc i64 %351 to i16
  %353 = sext i16 %352 to i32
  %354 = load i64, i64* %7, align 8
  %355 = load i16, i16* %11, align 2
  %356 = sext i16 %355 to i64
  %357 = sdiv i64 %354, %356
  %358 = trunc i64 %357 to i16
  %359 = sext i16 %358 to i32
  %360 = mul nsw i32 %353, %359
  %361 = trunc i32 %360 to i16
  store i16 %361, i16* %24, align 2
  %362 = load i64, i64* %7, align 8
  %363 = load i8, i8* %13, align 1
  %364 = sext i8 %363 to i64
  %365 = sdiv i64 %362, %364
  %366 = trunc i64 %365 to i8
  %367 = sext i8 %366 to i32
  %368 = load i64, i64* %7, align 8
  %369 = load i8, i8* %13, align 1
  %370 = sext i8 %369 to i64
  %371 = sdiv i64 %368, %370
  %372 = trunc i64 %371 to i8
  %373 = sext i8 %372 to i32
  %374 = mul nsw i32 %367, %373
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %25, align 1
  %376 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %377 = load i32, i32* %14, align 4
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %20, align 4
  %381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 noundef %377, i32 noundef %378, i32 noundef %379, i32 noundef %380)
  %382 = load i16, i16* %15, align 2
  %383 = zext i16 %382 to i32
  %384 = load i16, i16* %15, align 2
  %385 = zext i16 %384 to i32
  %386 = load i16, i16* %21, align 2
  %387 = zext i16 %386 to i32
  %388 = load i16, i16* %21, align 2
  %389 = zext i16 %388 to i32
  %390 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 noundef %383, i32 noundef %385, i32 noundef %387, i32 noundef %389)
  %391 = load i8, i8* %16, align 1
  %392 = zext i8 %391 to i32
  %393 = load i8, i8* %16, align 1
  %394 = zext i8 %393 to i32
  %395 = load i8, i8* %22, align 1
  %396 = zext i8 %395 to i32
  %397 = load i8, i8* %22, align 1
  %398 = zext i8 %397 to i32
  %399 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 noundef %392, i32 noundef %394, i32 noundef %396, i32 noundef %398)
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %17, align 4
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %23, align 4
  %404 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %403)
  %405 = load i16, i16* %18, align 2
  %406 = sext i16 %405 to i32
  %407 = load i16, i16* %18, align 2
  %408 = sext i16 %407 to i32
  %409 = load i16, i16* %24, align 2
  %410 = sext i16 %409 to i32
  %411 = load i16, i16* %24, align 2
  %412 = sext i16 %411 to i32
  %413 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 noundef %406, i32 noundef %408, i32 noundef %410, i32 noundef %412)
  %414 = load i8, i8* %19, align 1
  %415 = sext i8 %414 to i32
  %416 = load i8, i8* %19, align 1
  %417 = sext i8 %416 to i32
  %418 = load i8, i8* %25, align 1
  %419 = sext i8 %418 to i32
  %420 = load i8, i8* %25, align 1
  %421 = sext i8 %420 to i32
  %422 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 noundef %415, i32 noundef %417, i32 noundef %419, i32 noundef %421)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
