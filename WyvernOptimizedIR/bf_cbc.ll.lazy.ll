; ModuleID = './bf_cbc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_cbc_encrypt(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* nocapture noundef %4, i32 noundef %5) #0 {
  %7 = alloca [2 x i64], align 16
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %215, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %4, i64 1
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds i8, i8* %4, i64 2
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or i64 %12, %16
  %18 = getelementptr inbounds i8, i8* %4, i64 3
  %19 = load i8, i8* %13, align 1
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = or i64 %17, %21
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = load i8, i8* %18, align 1
  %25 = zext i8 %24 to i64
  %26 = or i64 %22, %25
  %27 = getelementptr inbounds i8, i8* %4, i64 5
  %28 = load i8, i8* %23, align 1
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = getelementptr inbounds i8, i8* %4, i64 6
  %32 = load i8, i8* %27, align 1
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or i64 %30, %34
  %36 = getelementptr inbounds i8, i8* %4, i64 7
  %37 = load i8, i8* %31, align 1
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or i64 %35, %39
  %41 = load i8, i8* %36, align 1
  %42 = zext i8 %41 to i64
  %43 = or i64 %40, %42
  br label %44

44:                                               ; preds = %112, %8
  %.030 = phi i64 [ %43, %8 ], [ %90, %112 ]
  %.028 = phi i64 [ %26, %8 ], [ %88, %112 ]
  %.010.in = phi i64 [ %2, %8 ], [ %.010, %112 ]
  %.01 = phi i8* [ %1, %8 ], [ %113, %112 ]
  %.0 = phi i8* [ %0, %8 ], [ %114, %112 ]
  %.010 = add nsw i64 %.010.in, -8
  %45 = icmp sgt i64 %.010.in, 7
  br i1 %45, label %46, label %115

46:                                               ; preds = %44
  %47 = getelementptr inbounds i8, i8* %.0, i64 1
  %48 = load i8, i8* %.0, align 1
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 24
  %51 = getelementptr inbounds i8, i8* %.0, i64 2
  %52 = load i8, i8* %47, align 1
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 16
  %55 = or i64 %50, %54
  %56 = getelementptr inbounds i8, i8* %.0, i64 3
  %57 = load i8, i8* %51, align 1
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 8
  %60 = or i64 %55, %59
  %61 = getelementptr inbounds i8, i8* %.0, i64 4
  %62 = load i8, i8* %56, align 1
  %63 = zext i8 %62 to i64
  %64 = or i64 %60, %63
  %65 = getelementptr inbounds i8, i8* %.0, i64 5
  %66 = load i8, i8* %61, align 1
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = getelementptr inbounds i8, i8* %.0, i64 6
  %70 = load i8, i8* %65, align 1
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = or i64 %68, %72
  %74 = getelementptr inbounds i8, i8* %.0, i64 7
  %75 = load i8, i8* %69, align 1
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 8
  %78 = or i64 %73, %77
  %79 = load i8, i8* %74, align 1
  %80 = zext i8 %79 to i64
  %81 = or i64 %78, %80
  %82 = xor i64 %64, %.028
  %83 = xor i64 %81, %.030
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %82, i64* %84, align 16
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %86, %struct.bf_key_st* noundef %3, i32 noundef 1) #2
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %88 = load i64, i64* %87, align 16
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = lshr i64 %88, 24
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %92, i8* %.01, align 1
  %94 = lshr i64 %88, 16
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %95, i8* %93, align 1
  %97 = lshr i64 %88, 8
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds i8, i8* %.01, i64 3
  store i8 %98, i8* %96, align 1
  %100 = trunc i64 %88 to i8
  %101 = getelementptr inbounds i8, i8* %.01, i64 4
  store i8 %100, i8* %99, align 1
  %102 = lshr i64 %90, 24
  %103 = trunc i64 %102 to i8
  %104 = getelementptr inbounds i8, i8* %.01, i64 5
  store i8 %103, i8* %101, align 1
  %105 = lshr i64 %90, 16
  %106 = trunc i64 %105 to i8
  %107 = getelementptr inbounds i8, i8* %.01, i64 6
  store i8 %106, i8* %104, align 1
  %108 = lshr i64 %90, 8
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds i8, i8* %.01, i64 7
  store i8 %109, i8* %107, align 1
  %111 = trunc i64 %90 to i8
  store i8 %111, i8* %110, align 1
  br label %112

112:                                              ; preds = %46
  %113 = getelementptr inbounds i8, i8* %.01, i64 8
  %114 = getelementptr inbounds i8, i8* %.0, i64 8
  br label %44, !llvm.loop !4

115:                                              ; preds = %44
  %.not33 = icmp eq i64 %.010.in, 0
  br i1 %.not33, label %193, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds i8, i8* %.0, i64 %.010.in
  switch i64 %.010.in, label %162 [
    i64 8, label %118
    i64 7, label %122
    i64 6, label %128
    i64 5, label %134
    i64 4, label %140
    i64 3, label %144
    i64 2, label %150
    i64 1, label %156
  ]

118:                                              ; preds = %116
  %119 = getelementptr inbounds i8, i8* %117, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  br label %122

122:                                              ; preds = %118, %116
  %.020 = phi i64 [ 0, %116 ], [ %121, %118 ]
  %.1 = phi i8* [ %117, %116 ], [ %119, %118 ]
  %123 = getelementptr inbounds i8, i8* %.1, i64 -1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = or i64 %.020, %126
  br label %128

128:                                              ; preds = %122, %116
  %.121 = phi i64 [ 0, %116 ], [ %127, %122 ]
  %.2 = phi i8* [ %117, %116 ], [ %123, %122 ]
  %129 = getelementptr inbounds i8, i8* %.2, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i64
  %132 = shl nuw nsw i64 %131, 16
  %133 = or i64 %.121, %132
  br label %134

134:                                              ; preds = %128, %116
  %.222 = phi i64 [ 0, %116 ], [ %133, %128 ]
  %.3 = phi i8* [ %117, %116 ], [ %129, %128 ]
  %135 = getelementptr inbounds i8, i8* %.3, i64 -1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 24
  %139 = or i64 %.222, %138
  br label %140

140:                                              ; preds = %134, %116
  %.323 = phi i64 [ 0, %116 ], [ %139, %134 ]
  %.4 = phi i8* [ %117, %116 ], [ %135, %134 ]
  %141 = getelementptr inbounds i8, i8* %.4, i64 -1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  br label %144

144:                                              ; preds = %140, %116
  %.424 = phi i64 [ 0, %116 ], [ %.323, %140 ]
  %.016 = phi i64 [ 0, %116 ], [ %143, %140 ]
  %.5 = phi i8* [ %117, %116 ], [ %141, %140 ]
  %145 = getelementptr inbounds i8, i8* %.5, i64 -1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, 8
  %149 = or i64 %.016, %148
  br label %150

150:                                              ; preds = %144, %116
  %.525 = phi i64 [ 0, %116 ], [ %.424, %144 ]
  %.117 = phi i64 [ 0, %116 ], [ %149, %144 ]
  %.6 = phi i8* [ %117, %116 ], [ %145, %144 ]
  %151 = getelementptr inbounds i8, i8* %.6, i64 -1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 16
  %155 = or i64 %.117, %154
  br label %156

156:                                              ; preds = %150, %116
  %.626 = phi i64 [ 0, %116 ], [ %.525, %150 ]
  %.218 = phi i64 [ 0, %116 ], [ %155, %150 ]
  %.7 = phi i8* [ %117, %116 ], [ %151, %150 ]
  %157 = getelementptr inbounds i8, i8* %.7, i64 -1
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 24
  %161 = or i64 %.218, %160
  br label %162

162:                                              ; preds = %156, %116
  %.727 = phi i64 [ 0, %116 ], [ %.626, %156 ]
  %.319 = phi i64 [ 0, %116 ], [ %161, %156 ]
  %163 = xor i64 %.319, %.028
  %164 = xor i64 %.727, %.030
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %163, i64* %165, align 16
  %166 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %164, i64* %166, align 8
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %167, %struct.bf_key_st* noundef %3, i32 noundef 1) #2
  %168 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %169 = load i64, i64* %168, align 16
  %170 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = lshr i64 %169, 24
  %173 = trunc i64 %172 to i8
  %174 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %173, i8* %.01, align 1
  %175 = lshr i64 %169, 16
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %176, i8* %174, align 1
  %178 = lshr i64 %169, 8
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds i8, i8* %.01, i64 3
  store i8 %179, i8* %177, align 1
  %181 = trunc i64 %169 to i8
  %182 = getelementptr inbounds i8, i8* %.01, i64 4
  store i8 %181, i8* %180, align 1
  %183 = lshr i64 %171, 24
  %184 = trunc i64 %183 to i8
  %185 = getelementptr inbounds i8, i8* %.01, i64 5
  store i8 %184, i8* %182, align 1
  %186 = lshr i64 %171, 16
  %187 = trunc i64 %186 to i8
  %188 = getelementptr inbounds i8, i8* %.01, i64 6
  store i8 %187, i8* %185, align 1
  %189 = lshr i64 %171, 8
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds i8, i8* %.01, i64 7
  store i8 %190, i8* %188, align 1
  %192 = trunc i64 %171 to i8
  store i8 %192, i8* %191, align 1
  br label %193

193:                                              ; preds = %162, %115
  %.131 = phi i64 [ %171, %162 ], [ %.030, %115 ]
  %.129 = phi i64 [ %169, %162 ], [ %.028, %115 ]
  %194 = lshr i64 %.129, 24
  %195 = trunc i64 %194 to i8
  %196 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %195, i8* %4, align 1
  %197 = lshr i64 %.129, 16
  %198 = trunc i64 %197 to i8
  %199 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %198, i8* %196, align 1
  %200 = lshr i64 %.129, 8
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %201, i8* %199, align 1
  %203 = trunc i64 %.129 to i8
  %204 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %203, i8* %202, align 1
  %205 = lshr i64 %.131, 24
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %206, i8* %204, align 1
  %208 = lshr i64 %.131, 16
  %209 = trunc i64 %208 to i8
  %210 = getelementptr inbounds i8, i8* %4, i64 6
  store i8 %209, i8* %207, align 1
  %211 = lshr i64 %.131, 8
  %212 = trunc i64 %211 to i8
  %213 = getelementptr inbounds i8, i8* %4, i64 7
  store i8 %212, i8* %210, align 1
  %214 = trunc i64 %.131 to i8
  store i8 %214, i8* %213, align 1
  br label %422

215:                                              ; preds = %6
  %216 = getelementptr inbounds i8, i8* %4, i64 1
  %217 = load i8, i8* %4, align 1
  %218 = zext i8 %217 to i64
  %219 = shl nuw nsw i64 %218, 24
  %220 = getelementptr inbounds i8, i8* %4, i64 2
  %221 = load i8, i8* %216, align 1
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, 16
  %224 = or i64 %219, %223
  %225 = getelementptr inbounds i8, i8* %4, i64 3
  %226 = load i8, i8* %220, align 1
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 8
  %229 = or i64 %224, %228
  %230 = getelementptr inbounds i8, i8* %4, i64 4
  %231 = load i8, i8* %225, align 1
  %232 = zext i8 %231 to i64
  %233 = or i64 %229, %232
  %234 = getelementptr inbounds i8, i8* %4, i64 5
  %235 = load i8, i8* %230, align 1
  %236 = zext i8 %235 to i64
  %237 = shl nuw nsw i64 %236, 24
  %238 = getelementptr inbounds i8, i8* %4, i64 6
  %239 = load i8, i8* %234, align 1
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 16
  %242 = or i64 %237, %241
  %243 = getelementptr inbounds i8, i8* %4, i64 7
  %244 = load i8, i8* %238, align 1
  %245 = zext i8 %244 to i64
  %246 = shl nuw nsw i64 %245, 8
  %247 = or i64 %242, %246
  %248 = load i8, i8* %243, align 1
  %249 = zext i8 %248 to i64
  %250 = or i64 %247, %249
  br label %251

251:                                              ; preds = %319, %215
  %.014 = phi i64 [ %233, %215 ], [ %271, %319 ]
  %.012 = phi i64 [ %250, %215 ], [ %288, %319 ]
  %.111.in = phi i64 [ %2, %215 ], [ %.111, %319 ]
  %.12 = phi i8* [ %1, %215 ], [ %320, %319 ]
  %.8 = phi i8* [ %0, %215 ], [ %321, %319 ]
  %.111 = add nsw i64 %.111.in, -8
  %252 = icmp sgt i64 %.111.in, 7
  br i1 %252, label %253, label %322

253:                                              ; preds = %251
  %254 = getelementptr inbounds i8, i8* %.8, i64 1
  %255 = load i8, i8* %.8, align 1
  %256 = zext i8 %255 to i64
  %257 = shl nuw nsw i64 %256, 24
  %258 = getelementptr inbounds i8, i8* %.8, i64 2
  %259 = load i8, i8* %254, align 1
  %260 = zext i8 %259 to i64
  %261 = shl nuw nsw i64 %260, 16
  %262 = or i64 %257, %261
  %263 = getelementptr inbounds i8, i8* %.8, i64 3
  %264 = load i8, i8* %258, align 1
  %265 = zext i8 %264 to i64
  %266 = shl nuw nsw i64 %265, 8
  %267 = or i64 %262, %266
  %268 = getelementptr inbounds i8, i8* %.8, i64 4
  %269 = load i8, i8* %263, align 1
  %270 = zext i8 %269 to i64
  %271 = or i64 %267, %270
  %272 = getelementptr inbounds i8, i8* %.8, i64 5
  %273 = load i8, i8* %268, align 1
  %274 = zext i8 %273 to i64
  %275 = shl nuw nsw i64 %274, 24
  %276 = getelementptr inbounds i8, i8* %.8, i64 6
  %277 = load i8, i8* %272, align 1
  %278 = zext i8 %277 to i64
  %279 = shl nuw nsw i64 %278, 16
  %280 = or i64 %275, %279
  %281 = getelementptr inbounds i8, i8* %.8, i64 7
  %282 = load i8, i8* %276, align 1
  %283 = zext i8 %282 to i64
  %284 = shl nuw nsw i64 %283, 8
  %285 = or i64 %280, %284
  %286 = load i8, i8* %281, align 1
  %287 = zext i8 %286 to i64
  %288 = or i64 %285, %287
  %289 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %271, i64* %289, align 16
  %290 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %288, i64* %290, align 8
  %291 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %291, %struct.bf_key_st* noundef %3, i32 noundef 0) #2
  %292 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %293 = load i64, i64* %292, align 16
  %294 = xor i64 %293, %.014
  %295 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %296 = load i64, i64* %295, align 8
  %297 = xor i64 %296, %.012
  %298 = lshr i64 %294, 24
  %299 = trunc i64 %298 to i8
  %300 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 %299, i8* %.12, align 1
  %301 = lshr i64 %294, 16
  %302 = trunc i64 %301 to i8
  %303 = getelementptr inbounds i8, i8* %.12, i64 2
  store i8 %302, i8* %300, align 1
  %304 = lshr i64 %294, 8
  %305 = trunc i64 %304 to i8
  %306 = getelementptr inbounds i8, i8* %.12, i64 3
  store i8 %305, i8* %303, align 1
  %307 = trunc i64 %294 to i8
  %308 = getelementptr inbounds i8, i8* %.12, i64 4
  store i8 %307, i8* %306, align 1
  %309 = lshr i64 %297, 24
  %310 = trunc i64 %309 to i8
  %311 = getelementptr inbounds i8, i8* %.12, i64 5
  store i8 %310, i8* %308, align 1
  %312 = lshr i64 %297, 16
  %313 = trunc i64 %312 to i8
  %314 = getelementptr inbounds i8, i8* %.12, i64 6
  store i8 %313, i8* %311, align 1
  %315 = lshr i64 %297, 8
  %316 = trunc i64 %315 to i8
  %317 = getelementptr inbounds i8, i8* %.12, i64 7
  store i8 %316, i8* %314, align 1
  %318 = trunc i64 %297 to i8
  store i8 %318, i8* %317, align 1
  br label %319

319:                                              ; preds = %253
  %320 = getelementptr inbounds i8, i8* %.12, i64 8
  %321 = getelementptr inbounds i8, i8* %.8, i64 8
  br label %251, !llvm.loop !6

322:                                              ; preds = %251
  %.not32 = icmp eq i64 %.111.in, 0
  br i1 %.not32, label %400, label %323

323:                                              ; preds = %322
  %324 = getelementptr inbounds i8, i8* %.8, i64 1
  %325 = load i8, i8* %.8, align 1
  %326 = zext i8 %325 to i64
  %327 = shl nuw nsw i64 %326, 24
  %328 = getelementptr inbounds i8, i8* %.8, i64 2
  %329 = load i8, i8* %324, align 1
  %330 = zext i8 %329 to i64
  %331 = shl nuw nsw i64 %330, 16
  %332 = or i64 %327, %331
  %333 = getelementptr inbounds i8, i8* %.8, i64 3
  %334 = load i8, i8* %328, align 1
  %335 = zext i8 %334 to i64
  %336 = shl nuw nsw i64 %335, 8
  %337 = or i64 %332, %336
  %338 = getelementptr inbounds i8, i8* %.8, i64 4
  %339 = load i8, i8* %333, align 1
  %340 = zext i8 %339 to i64
  %341 = or i64 %337, %340
  %342 = getelementptr inbounds i8, i8* %.8, i64 5
  %343 = load i8, i8* %338, align 1
  %344 = zext i8 %343 to i64
  %345 = shl nuw nsw i64 %344, 24
  %346 = getelementptr inbounds i8, i8* %.8, i64 6
  %347 = load i8, i8* %342, align 1
  %348 = zext i8 %347 to i64
  %349 = shl nuw nsw i64 %348, 16
  %350 = or i64 %345, %349
  %351 = getelementptr inbounds i8, i8* %.8, i64 7
  %352 = load i8, i8* %346, align 1
  %353 = zext i8 %352 to i64
  %354 = shl nuw nsw i64 %353, 8
  %355 = or i64 %350, %354
  %356 = load i8, i8* %351, align 1
  %357 = zext i8 %356 to i64
  %358 = or i64 %355, %357
  %359 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %341, i64* %359, align 16
  %360 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %358, i64* %360, align 8
  %361 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %361, %struct.bf_key_st* noundef %3, i32 noundef 0) #2
  %362 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %363 = load i64, i64* %362, align 16
  %364 = xor i64 %363, %.014
  %365 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %366 = load i64, i64* %365, align 8
  %367 = xor i64 %366, %.012
  %368 = getelementptr inbounds i8, i8* %.12, i64 %.111.in
  switch i64 %.111.in, label %399 [
    i64 8, label %369
    i64 7, label %372
    i64 6, label %376
    i64 5, label %380
    i64 4, label %384
    i64 3, label %387
    i64 2, label %391
    i64 1, label %395
  ]

369:                                              ; preds = %323
  %370 = trunc i64 %367 to i8
  %371 = getelementptr inbounds i8, i8* %368, i64 -1
  store i8 %370, i8* %371, align 1
  br label %372

372:                                              ; preds = %369, %323
  %.23 = phi i8* [ %368, %323 ], [ %371, %369 ]
  %373 = lshr i64 %367, 8
  %374 = trunc i64 %373 to i8
  %375 = getelementptr inbounds i8, i8* %.23, i64 -1
  store i8 %374, i8* %375, align 1
  br label %376

376:                                              ; preds = %372, %323
  %.34 = phi i8* [ %368, %323 ], [ %375, %372 ]
  %377 = lshr i64 %367, 16
  %378 = trunc i64 %377 to i8
  %379 = getelementptr inbounds i8, i8* %.34, i64 -1
  store i8 %378, i8* %379, align 1
  br label %380

380:                                              ; preds = %376, %323
  %.45 = phi i8* [ %368, %323 ], [ %379, %376 ]
  %381 = lshr i64 %367, 24
  %382 = trunc i64 %381 to i8
  %383 = getelementptr inbounds i8, i8* %.45, i64 -1
  store i8 %382, i8* %383, align 1
  br label %384

384:                                              ; preds = %380, %323
  %.56 = phi i8* [ %368, %323 ], [ %383, %380 ]
  %385 = trunc i64 %364 to i8
  %386 = getelementptr inbounds i8, i8* %.56, i64 -1
  store i8 %385, i8* %386, align 1
  br label %387

387:                                              ; preds = %384, %323
  %.67 = phi i8* [ %368, %323 ], [ %386, %384 ]
  %388 = lshr i64 %364, 8
  %389 = trunc i64 %388 to i8
  %390 = getelementptr inbounds i8, i8* %.67, i64 -1
  store i8 %389, i8* %390, align 1
  br label %391

391:                                              ; preds = %387, %323
  %.78 = phi i8* [ %368, %323 ], [ %390, %387 ]
  %392 = lshr i64 %364, 16
  %393 = trunc i64 %392 to i8
  %394 = getelementptr inbounds i8, i8* %.78, i64 -1
  store i8 %393, i8* %394, align 1
  br label %395

395:                                              ; preds = %391, %323
  %.89 = phi i8* [ %368, %323 ], [ %394, %391 ]
  %396 = lshr i64 %364, 24
  %397 = trunc i64 %396 to i8
  %398 = getelementptr inbounds i8, i8* %.89, i64 -1
  store i8 %397, i8* %398, align 1
  br label %399

399:                                              ; preds = %395, %323
  br label %400

400:                                              ; preds = %399, %322
  %.115 = phi i64 [ %341, %399 ], [ %.014, %322 ]
  %.113 = phi i64 [ %358, %399 ], [ %.012, %322 ]
  %401 = lshr i64 %.115, 24
  %402 = trunc i64 %401 to i8
  %403 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %402, i8* %4, align 1
  %404 = lshr i64 %.115, 16
  %405 = trunc i64 %404 to i8
  %406 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %405, i8* %403, align 1
  %407 = lshr i64 %.115, 8
  %408 = trunc i64 %407 to i8
  %409 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %408, i8* %406, align 1
  %410 = trunc i64 %.115 to i8
  %411 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %410, i8* %409, align 1
  %412 = lshr i64 %.113, 24
  %413 = trunc i64 %412 to i8
  %414 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %413, i8* %411, align 1
  %415 = lshr i64 %.113, 16
  %416 = trunc i64 %415 to i8
  %417 = getelementptr inbounds i8, i8* %4, i64 6
  store i8 %416, i8* %414, align 1
  %418 = lshr i64 %.113, 8
  %419 = trunc i64 %418 to i8
  %420 = getelementptr inbounds i8, i8* %4, i64 7
  store i8 %419, i8* %417, align 1
  %421 = trunc i64 %.113 to i8
  store i8 %421, i8* %420, align 1
  br label %422

422:                                              ; preds = %400, %193
  %423 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 0, i64* %423, align 8
  %424 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %424, align 16
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
