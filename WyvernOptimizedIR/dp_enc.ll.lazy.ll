; ModuleID = './dp_enc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/dp_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @init_coefs(i16* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = shl i32 38, %1
  %5 = lshr i32 %4, 4
  %6 = trunc i32 %5 to i16
  store i16 %6, i16* %0, align 2
  %7 = shl i32 -29, %1
  %8 = lshr i32 %7, 4
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds i16, i16* %0, i64 1
  store i16 %9, i16* %10, align 2
  %11 = shl i32 -2, %1
  %12 = lshr i32 %11, 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds i16, i16* %0, i64 2
  store i16 %13, i16* %14, align 2
  br label %15

15:                                               ; preds = %20, %3
  %.0 = phi i32 [ 3, %3 ], [ %21, %20 ]
  %16 = icmp slt i32 %.0, %2
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i16, i16* %0, i64 %18
  store i16 0, i16* %19, align 2
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !4

22:                                               ; preds = %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copy_coefs(i16* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i16, i16* %0, i64 %7
  %9 = load i16, i16* %8, align 2
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i16, i16* %1, i64 %10
  store i16 %9, i16* %11, align 2
  br label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @pc_block(i32* noundef readonly %0, i32* noundef writeonly %1, i32 noundef %2, i16* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = sub i32 32, %5
  %9 = add i32 %6, -1
  %10 = shl i32 1, %9
  %11 = load i32, i32* %0, align 4
  store i32 %11, i32* %1, align 4
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = icmp sgt i32 %2, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %.not74 = icmp eq i32* %0, %1
  br i1 %.not74, label %24, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds i32, i32* %1, i64 1
  %18 = bitcast i32* %17 to i8*
  %19 = getelementptr inbounds i32, i32* %0, i64 1
  %20 = bitcast i32* %19 to i8*
  %21 = add nsw i32 %2, -1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %18, i8* nonnull align 4 %20, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %16, %15, %13
  br label %617

25:                                               ; preds = %7
  %26 = icmp eq i32 %4, 31
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %43, %27
  %.019 = phi i32 [ 1, %27 ], [ %44, %43 ]
  %29 = icmp slt i32 %.019, %2
  br i1 %29, label %30, label %45

30:                                               ; preds = %28
  %31 = zext i32 %.019 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %.019, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %33, %37
  %39 = shl i32 %38, %8
  %40 = ashr i32 %39, %8
  %41 = zext i32 %.019 to i64
  %42 = getelementptr inbounds i32, i32* %1, i64 %41
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %30
  %44 = add nuw nsw i32 %.019, 1
  br label %28, !llvm.loop !7

45:                                               ; preds = %28
  br label %617

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %61, %46
  %.120 = phi i32 [ 1, %46 ], [ %62, %61 ]
  %.not = icmp sgt i32 %.120, %4
  br i1 %.not, label %63, label %48

48:                                               ; preds = %47
  %49 = zext i32 %.120 to i64
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %.120, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %51, %55
  %57 = shl i32 %56, %8
  %58 = ashr i32 %57, %8
  %59 = zext i32 %.120 to i64
  %60 = getelementptr inbounds i32, i32* %1, i64 %59
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %48
  %62 = add nuw nsw i32 %.120, 1
  br label %47, !llvm.loop !8

63:                                               ; preds = %47
  %64 = add nsw i32 %4, 1
  %65 = icmp eq i32 %4, 4
  br i1 %65, label %66, label %221

66:                                               ; preds = %63
  %67 = load i16, i16* %3, align 2
  %68 = getelementptr inbounds i16, i16* %3, i64 1
  %69 = load i16, i16* %68, align 2
  %70 = getelementptr inbounds i16, i16* %3, i64 2
  %71 = load i16, i16* %70, align 2
  %72 = getelementptr inbounds i16, i16* %3, i64 3
  %73 = load i16, i16* %72, align 2
  br label %74

74:                                               ; preds = %215, %66
  %.044 = phi i16 [ %67, %66 ], [ %.347, %215 ]
  %.036 = phi i16 [ %69, %66 ], [ %.339, %215 ]
  %.028 = phi i16 [ %71, %66 ], [ %.331, %215 ]
  %.023 = phi i16 [ %73, %66 ], [ %.326, %215 ]
  %.221 = phi i32 [ %64, %66 ], [ %216, %215 ]
  %75 = icmp slt i32 %.221, %2
  br i1 %75, label %76, label %217

76:                                               ; preds = %74
  %77 = sub nsw i32 %.221, %64
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %.221 to i64
  %82 = getelementptr inbounds i32, i32* %0, i64 -1
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %80, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 -1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %80, %87
  %89 = getelementptr inbounds i32, i32* %83, i64 -2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %80, %90
  %92 = getelementptr inbounds i32, i32* %83, i64 -3
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %80, %93
  %95 = sext i16 %.044 to i32
  %96 = mul nsw i32 %85, %95
  %97 = sext i16 %.036 to i32
  %98 = mul nsw i32 %88, %97
  %99 = add i32 %96, %98
  %100 = sext i16 %.028 to i32
  %101 = mul nsw i32 %91, %100
  %102 = add i32 %99, %101
  %103 = sext i16 %.023 to i32
  %104 = mul nsw i32 %94, %103
  %105 = add i32 %102, %104
  %106 = sub i32 %10, %105
  %107 = ashr i32 %106, %6
  %108 = sext i32 %.221 to i64
  %109 = getelementptr inbounds i32, i32* %0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %80, %107
  %112 = sub i32 %110, %111
  %113 = shl i32 %112, %8
  %114 = ashr i32 %113, %8
  %115 = sext i32 %.221 to i64
  %116 = getelementptr inbounds i32, i32* %1, i64 %115
  store i32 %114, i32* %116, align 4
  %117 = icmp sgt i32 %114, 0
  %118 = zext i1 %117 to i32
  %119 = ashr i32 %114, 31
  %120 = or i32 %119, %118
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %76
  %123 = icmp sgt i32 %94, 0
  %124 = zext i1 %123 to i32
  %125 = ashr i32 %94, 31
  %126 = or i32 %125, %124
  %127 = trunc i32 %126 to i16
  %128 = sub i16 %.023, %127
  %129 = mul nsw i32 %126, %94
  %130 = ashr i32 %129, %6
  %131 = sub nsw i32 %114, %130
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %215

134:                                              ; preds = %122
  %135 = icmp sgt i32 %91, 0
  %136 = zext i1 %135 to i32
  %137 = ashr i32 %91, 31
  %138 = or i32 %137, %136
  %139 = trunc i32 %138 to i16
  %140 = sub i16 %.028, %139
  %141 = mul nsw i32 %138, %91
  %142 = ashr i32 %141, %6
  %.neg72 = mul i32 %142, -2
  %143 = add i32 %.neg72, %131
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %215

146:                                              ; preds = %134
  %147 = icmp sgt i32 %88, 0
  %148 = zext i1 %147 to i32
  %149 = ashr i32 %88, 31
  %150 = or i32 %149, %148
  %151 = trunc i32 %150 to i16
  %152 = sub i16 %.036, %151
  %153 = mul nsw i32 %150, %88
  %154 = ashr i32 %153, %6
  %.neg73 = mul i32 %154, -3
  %155 = add i32 %.neg73, %143
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %215

158:                                              ; preds = %146
  %159 = icmp sgt i32 %85, 0
  %160 = zext i1 %159 to i32
  %161 = ashr i32 %85, 31
  %162 = or i32 %161, %160
  %163 = trunc i32 %162 to i16
  %164 = sub i16 %.044, %163
  br label %214

165:                                              ; preds = %76
  %166 = icmp slt i32 %120, 0
  br i1 %166, label %167, label %213

167:                                              ; preds = %165
  %168 = icmp sgt i32 %94, 0
  %169 = zext i1 %168 to i32
  %170 = ashr i32 %94, 31
  %171 = or i32 %170, %169
  %172 = trunc i32 %171 to i16
  %173 = add i16 %.023, %172
  %174 = mul i32 %171, %94
  %175 = sub i32 0, %174
  %176 = ashr i32 %175, %6
  %177 = sub nsw i32 %114, %176
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %215

180:                                              ; preds = %167
  %181 = icmp sgt i32 %91, 0
  %182 = zext i1 %181 to i32
  %183 = ashr i32 %91, 31
  %184 = or i32 %183, %182
  %185 = trunc i32 %184 to i16
  %186 = add i16 %.028, %185
  %187 = mul i32 %184, %91
  %188 = sub i32 0, %187
  %189 = ashr i32 %188, %6
  %.neg70 = mul i32 %189, -2
  %190 = add i32 %.neg70, %177
  %191 = icmp sgt i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %215

193:                                              ; preds = %180
  %194 = icmp sgt i32 %88, 0
  %195 = zext i1 %194 to i32
  %196 = ashr i32 %88, 31
  %197 = or i32 %196, %195
  %198 = trunc i32 %197 to i16
  %199 = add i16 %.036, %198
  %200 = mul i32 %197, %88
  %201 = sub i32 0, %200
  %202 = ashr i32 %201, %6
  %.neg71 = mul i32 %202, -3
  %203 = add i32 %.neg71, %190
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  br label %215

206:                                              ; preds = %193
  %207 = icmp sgt i32 %85, 0
  %208 = zext i1 %207 to i32
  %209 = ashr i32 %85, 31
  %210 = or i32 %209, %208
  %211 = trunc i32 %210 to i16
  %212 = add i16 %.044, %211
  br label %213

213:                                              ; preds = %206, %165
  %.145 = phi i16 [ %212, %206 ], [ %.044, %165 ]
  %.137 = phi i16 [ %199, %206 ], [ %.036, %165 ]
  %.129 = phi i16 [ %186, %206 ], [ %.028, %165 ]
  %.124 = phi i16 [ %173, %206 ], [ %.023, %165 ]
  br label %214

214:                                              ; preds = %213, %158
  %.246 = phi i16 [ %164, %158 ], [ %.145, %213 ]
  %.238 = phi i16 [ %152, %158 ], [ %.137, %213 ]
  %.230 = phi i16 [ %140, %158 ], [ %.129, %213 ]
  %.225 = phi i16 [ %128, %158 ], [ %.124, %213 ]
  br label %215

215:                                              ; preds = %214, %205, %192, %179, %157, %145, %133
  %.347 = phi i16 [ %.044, %133 ], [ %.044, %145 ], [ %.044, %157 ], [ %.246, %214 ], [ %.044, %179 ], [ %.044, %192 ], [ %.044, %205 ]
  %.339 = phi i16 [ %.036, %133 ], [ %.036, %145 ], [ %152, %157 ], [ %.238, %214 ], [ %.036, %179 ], [ %.036, %192 ], [ %199, %205 ]
  %.331 = phi i16 [ %.028, %133 ], [ %140, %145 ], [ %140, %157 ], [ %.230, %214 ], [ %.028, %179 ], [ %186, %192 ], [ %186, %205 ]
  %.326 = phi i16 [ %128, %133 ], [ %128, %145 ], [ %128, %157 ], [ %.225, %214 ], [ %173, %179 ], [ %173, %192 ], [ %173, %205 ]
  %216 = add nsw i32 %.221, 1
  br label %74, !llvm.loop !9

217:                                              ; preds = %74
  store i16 %.044, i16* %3, align 2
  %218 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %.036, i16* %218, align 2
  %219 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %.028, i16* %219, align 2
  %220 = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %.023, i16* %220, align 2
  br label %617

221:                                              ; preds = %63
  %222 = icmp eq i32 %4, 8
  br i1 %222, label %223, label %514

223:                                              ; preds = %221
  %224 = load i16, i16* %3, align 2
  %225 = getelementptr inbounds i16, i16* %3, i64 1
  %226 = load i16, i16* %225, align 2
  %227 = getelementptr inbounds i16, i16* %3, i64 2
  %228 = load i16, i16* %227, align 2
  %229 = getelementptr inbounds i16, i16* %3, i64 3
  %230 = load i16, i16* %229, align 2
  %231 = getelementptr inbounds i16, i16* %3, i64 4
  %232 = load i16, i16* %231, align 2
  %233 = getelementptr inbounds i16, i16* %3, i64 5
  %234 = load i16, i16* %233, align 2
  %235 = getelementptr inbounds i16, i16* %3, i64 6
  %236 = load i16, i16* %235, align 2
  %237 = getelementptr inbounds i16, i16* %3, i64 7
  %238 = load i16, i16* %237, align 2
  br label %239

239:                                              ; preds = %504, %223
  %.448 = phi i16 [ %224, %223 ], [ %.751, %504 ]
  %.440 = phi i16 [ %226, %223 ], [ %.743, %504 ]
  %.432 = phi i16 [ %228, %223 ], [ %.735, %504 ]
  %.427 = phi i16 [ %230, %223 ], [ %.7, %504 ]
  %.322 = phi i32 [ %64, %223 ], [ %505, %504 ]
  %.09 = phi i16 [ %232, %223 ], [ %.312, %504 ]
  %.05 = phi i16 [ %234, %223 ], [ %.38, %504 ]
  %.01 = phi i16 [ %236, %223 ], [ %.34, %504 ]
  %.0 = phi i16 [ %238, %223 ], [ %.3, %504 ]
  %240 = icmp slt i32 %.322, %2
  br i1 %240, label %241, label %506

241:                                              ; preds = %239
  %242 = sub nsw i32 %.322, %64
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %.322 to i64
  %247 = getelementptr inbounds i32, i32* %0, i64 -1
  %248 = getelementptr inbounds i32, i32* %247, i64 %246
  %249 = getelementptr inbounds i32, i32* %248, i64 -1
  %250 = load i32, i32* %248, align 4
  %251 = sub nsw i32 %245, %250
  %252 = getelementptr inbounds i32, i32* %249, i64 -1
  %253 = load i32, i32* %249, align 4
  %254 = sub nsw i32 %245, %253
  %255 = getelementptr inbounds i32, i32* %252, i64 -1
  %256 = load i32, i32* %252, align 4
  %257 = sub nsw i32 %245, %256
  %258 = getelementptr inbounds i32, i32* %255, i64 -1
  %259 = load i32, i32* %255, align 4
  %260 = sub nsw i32 %245, %259
  %261 = getelementptr inbounds i32, i32* %258, i64 -1
  %262 = load i32, i32* %258, align 4
  %263 = sub nsw i32 %245, %262
  %264 = getelementptr inbounds i32, i32* %261, i64 -1
  %265 = load i32, i32* %261, align 4
  %266 = sub nsw i32 %245, %265
  %267 = getelementptr inbounds i32, i32* %264, i64 -1
  %268 = load i32, i32* %264, align 4
  %269 = sub nsw i32 %245, %268
  %270 = load i32, i32* %267, align 4
  %271 = sub nsw i32 %245, %270
  %272 = sext i16 %.448 to i32
  %273 = mul nsw i32 %251, %272
  %274 = sext i16 %.440 to i32
  %275 = mul nsw i32 %254, %274
  %276 = add i32 %273, %275
  %277 = sext i16 %.432 to i32
  %278 = mul nsw i32 %257, %277
  %279 = add i32 %276, %278
  %280 = sext i16 %.427 to i32
  %281 = mul nsw i32 %260, %280
  %282 = add i32 %279, %281
  %283 = sext i16 %.09 to i32
  %284 = mul nsw i32 %263, %283
  %285 = add i32 %282, %284
  %286 = sext i16 %.05 to i32
  %287 = mul nsw i32 %266, %286
  %288 = add i32 %285, %287
  %289 = sext i16 %.01 to i32
  %290 = mul nsw i32 %269, %289
  %291 = add i32 %288, %290
  %292 = sext i16 %.0 to i32
  %293 = mul nsw i32 %271, %292
  %294 = add i32 %291, %293
  %295 = sub i32 %10, %294
  %296 = ashr i32 %295, %6
  %297 = sext i32 %.322 to i64
  %298 = getelementptr inbounds i32, i32* %0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %245, %296
  %301 = sub i32 %299, %300
  %302 = shl i32 %301, %8
  %303 = ashr i32 %302, %8
  %304 = sext i32 %.322 to i64
  %305 = getelementptr inbounds i32, i32* %1, i64 %304
  store i32 %303, i32* %305, align 4
  %306 = icmp sgt i32 %303, 0
  %307 = zext i1 %306 to i32
  %308 = ashr i32 %303, 31
  %309 = or i32 %308, %307
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %402

311:                                              ; preds = %241
  %312 = icmp sgt i32 %271, 0
  %313 = zext i1 %312 to i32
  %314 = ashr i32 %271, 31
  %315 = or i32 %314, %313
  %316 = trunc i32 %315 to i16
  %317 = sub i16 %.0, %316
  %318 = mul nsw i32 %315, %271
  %319 = ashr i32 %318, %6
  %320 = sub nsw i32 %303, %319
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %311
  br label %504

323:                                              ; preds = %311
  %324 = icmp sgt i32 %269, 0
  %325 = zext i1 %324 to i32
  %326 = ashr i32 %269, 31
  %327 = or i32 %326, %325
  %328 = trunc i32 %327 to i16
  %329 = sub i16 %.01, %328
  %330 = mul nsw i32 %327, %269
  %331 = ashr i32 %330, %6
  %.neg64 = mul i32 %331, -2
  %332 = add i32 %.neg64, %320
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  br label %504

335:                                              ; preds = %323
  %336 = icmp sgt i32 %266, 0
  %337 = zext i1 %336 to i32
  %338 = ashr i32 %266, 31
  %339 = or i32 %338, %337
  %340 = trunc i32 %339 to i16
  %341 = sub i16 %.05, %340
  %342 = mul nsw i32 %339, %266
  %343 = ashr i32 %342, %6
  %.neg65 = mul i32 %343, -3
  %344 = add i32 %.neg65, %332
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  br label %504

347:                                              ; preds = %335
  %348 = icmp sgt i32 %263, 0
  %349 = zext i1 %348 to i32
  %350 = ashr i32 %263, 31
  %351 = or i32 %350, %349
  %352 = trunc i32 %351 to i16
  %353 = sub i16 %.09, %352
  %354 = mul nsw i32 %351, %263
  %355 = ashr i32 %354, %6
  %.neg66 = mul i32 %355, -4
  %356 = add i32 %.neg66, %344
  %357 = icmp slt i32 %356, 1
  br i1 %357, label %358, label %359

358:                                              ; preds = %347
  br label %504

359:                                              ; preds = %347
  %360 = icmp sgt i32 %260, 0
  %361 = zext i1 %360 to i32
  %362 = ashr i32 %260, 31
  %363 = or i32 %362, %361
  %364 = trunc i32 %363 to i16
  %365 = sub i16 %.427, %364
  %366 = mul nsw i32 %363, %260
  %367 = ashr i32 %366, %6
  %.neg67 = mul i32 %367, -5
  %368 = add i32 %.neg67, %356
  %369 = icmp slt i32 %368, 1
  br i1 %369, label %370, label %371

370:                                              ; preds = %359
  br label %504

371:                                              ; preds = %359
  %372 = icmp sgt i32 %257, 0
  %373 = zext i1 %372 to i32
  %374 = ashr i32 %257, 31
  %375 = or i32 %374, %373
  %376 = trunc i32 %375 to i16
  %377 = sub i16 %.432, %376
  %378 = mul nsw i32 %375, %257
  %379 = ashr i32 %378, %6
  %.neg68 = mul i32 %379, -6
  %380 = add i32 %.neg68, %368
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %382, label %383

382:                                              ; preds = %371
  br label %504

383:                                              ; preds = %371
  %384 = icmp sgt i32 %254, 0
  %385 = zext i1 %384 to i32
  %386 = ashr i32 %254, 31
  %387 = or i32 %386, %385
  %388 = trunc i32 %387 to i16
  %389 = sub i16 %.440, %388
  %390 = mul nsw i32 %387, %254
  %391 = ashr i32 %390, %6
  %.neg69 = mul i32 %391, -7
  %392 = add i32 %.neg69, %380
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %383
  br label %504

395:                                              ; preds = %383
  %396 = icmp sgt i32 %251, 0
  %397 = zext i1 %396 to i32
  %398 = ashr i32 %251, 31
  %399 = or i32 %398, %397
  %400 = trunc i32 %399 to i16
  %401 = sub i16 %.448, %400
  br label %503

402:                                              ; preds = %241
  %403 = icmp slt i32 %309, 0
  br i1 %403, label %404, label %502

404:                                              ; preds = %402
  %405 = icmp sgt i32 %271, 0
  %406 = zext i1 %405 to i32
  %407 = ashr i32 %271, 31
  %408 = or i32 %407, %406
  %409 = trunc i32 %408 to i16
  %410 = add i16 %.0, %409
  %411 = mul i32 %408, %271
  %412 = sub i32 0, %411
  %413 = ashr i32 %412, %6
  %414 = sub nsw i32 %303, %413
  %415 = icmp sgt i32 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %404
  br label %504

417:                                              ; preds = %404
  %418 = icmp sgt i32 %269, 0
  %419 = zext i1 %418 to i32
  %420 = ashr i32 %269, 31
  %421 = or i32 %420, %419
  %422 = trunc i32 %421 to i16
  %423 = add i16 %.01, %422
  %424 = mul i32 %421, %269
  %425 = sub i32 0, %424
  %426 = ashr i32 %425, %6
  %.neg58 = mul i32 %426, -2
  %427 = add i32 %.neg58, %414
  %428 = icmp sgt i32 %427, -1
  br i1 %428, label %429, label %430

429:                                              ; preds = %417
  br label %504

430:                                              ; preds = %417
  %431 = icmp sgt i32 %266, 0
  %432 = zext i1 %431 to i32
  %433 = ashr i32 %266, 31
  %434 = or i32 %433, %432
  %435 = trunc i32 %434 to i16
  %436 = add i16 %.05, %435
  %437 = mul i32 %434, %266
  %438 = sub i32 0, %437
  %439 = ashr i32 %438, %6
  %.neg59 = mul i32 %439, -3
  %440 = add i32 %.neg59, %427
  %441 = icmp sgt i32 %440, -1
  br i1 %441, label %442, label %443

442:                                              ; preds = %430
  br label %504

443:                                              ; preds = %430
  %444 = icmp sgt i32 %263, 0
  %445 = zext i1 %444 to i32
  %446 = ashr i32 %263, 31
  %447 = or i32 %446, %445
  %448 = trunc i32 %447 to i16
  %449 = add i16 %.09, %448
  %450 = mul i32 %447, %263
  %451 = sub i32 0, %450
  %452 = ashr i32 %451, %6
  %.neg60 = mul i32 %452, -4
  %453 = add i32 %.neg60, %440
  %454 = icmp sgt i32 %453, -1
  br i1 %454, label %455, label %456

455:                                              ; preds = %443
  br label %504

456:                                              ; preds = %443
  %457 = icmp sgt i32 %260, 0
  %458 = zext i1 %457 to i32
  %459 = ashr i32 %260, 31
  %460 = or i32 %459, %458
  %461 = trunc i32 %460 to i16
  %462 = add i16 %.427, %461
  %463 = mul i32 %460, %260
  %464 = sub i32 0, %463
  %465 = ashr i32 %464, %6
  %.neg61 = mul i32 %465, -5
  %466 = add i32 %.neg61, %453
  %467 = icmp sgt i32 %466, -1
  br i1 %467, label %468, label %469

468:                                              ; preds = %456
  br label %504

469:                                              ; preds = %456
  %470 = icmp sgt i32 %257, 0
  %471 = zext i1 %470 to i32
  %472 = ashr i32 %257, 31
  %473 = or i32 %472, %471
  %474 = trunc i32 %473 to i16
  %475 = add i16 %.432, %474
  %476 = mul i32 %473, %257
  %477 = sub i32 0, %476
  %478 = ashr i32 %477, %6
  %.neg62 = mul i32 %478, -6
  %479 = add i32 %.neg62, %466
  %480 = icmp sgt i32 %479, -1
  br i1 %480, label %481, label %482

481:                                              ; preds = %469
  br label %504

482:                                              ; preds = %469
  %483 = icmp sgt i32 %254, 0
  %484 = zext i1 %483 to i32
  %485 = ashr i32 %254, 31
  %486 = or i32 %485, %484
  %487 = trunc i32 %486 to i16
  %488 = add i16 %.440, %487
  %489 = mul i32 %486, %254
  %490 = sub i32 0, %489
  %491 = ashr i32 %490, %6
  %.neg63 = mul i32 %491, -7
  %492 = add i32 %.neg63, %479
  %493 = icmp sgt i32 %492, -1
  br i1 %493, label %494, label %495

494:                                              ; preds = %482
  br label %504

495:                                              ; preds = %482
  %496 = icmp sgt i32 %251, 0
  %497 = zext i1 %496 to i32
  %498 = ashr i32 %251, 31
  %499 = or i32 %498, %497
  %500 = trunc i32 %499 to i16
  %501 = add i16 %.448, %500
  br label %502

502:                                              ; preds = %495, %402
  %.549 = phi i16 [ %501, %495 ], [ %.448, %402 ]
  %.541 = phi i16 [ %488, %495 ], [ %.440, %402 ]
  %.533 = phi i16 [ %475, %495 ], [ %.432, %402 ]
  %.5 = phi i16 [ %462, %495 ], [ %.427, %402 ]
  %.110 = phi i16 [ %449, %495 ], [ %.09, %402 ]
  %.16 = phi i16 [ %436, %495 ], [ %.05, %402 ]
  %.12 = phi i16 [ %423, %495 ], [ %.01, %402 ]
  %.1 = phi i16 [ %410, %495 ], [ %.0, %402 ]
  br label %503

503:                                              ; preds = %502, %395
  %.650 = phi i16 [ %401, %395 ], [ %.549, %502 ]
  %.642 = phi i16 [ %389, %395 ], [ %.541, %502 ]
  %.634 = phi i16 [ %377, %395 ], [ %.533, %502 ]
  %.6 = phi i16 [ %365, %395 ], [ %.5, %502 ]
  %.211 = phi i16 [ %353, %395 ], [ %.110, %502 ]
  %.27 = phi i16 [ %341, %395 ], [ %.16, %502 ]
  %.23 = phi i16 [ %329, %395 ], [ %.12, %502 ]
  %.2 = phi i16 [ %317, %395 ], [ %.1, %502 ]
  br label %504

504:                                              ; preds = %503, %494, %481, %468, %455, %442, %429, %416, %394, %382, %370, %358, %346, %334, %322
  %.751 = phi i16 [ %.448, %322 ], [ %.448, %334 ], [ %.448, %346 ], [ %.448, %358 ], [ %.448, %370 ], [ %.448, %382 ], [ %.448, %394 ], [ %.650, %503 ], [ %.448, %416 ], [ %.448, %429 ], [ %.448, %442 ], [ %.448, %455 ], [ %.448, %468 ], [ %.448, %481 ], [ %.448, %494 ]
  %.743 = phi i16 [ %.440, %322 ], [ %.440, %334 ], [ %.440, %346 ], [ %.440, %358 ], [ %.440, %370 ], [ %.440, %382 ], [ %389, %394 ], [ %.642, %503 ], [ %.440, %416 ], [ %.440, %429 ], [ %.440, %442 ], [ %.440, %455 ], [ %.440, %468 ], [ %.440, %481 ], [ %488, %494 ]
  %.735 = phi i16 [ %.432, %322 ], [ %.432, %334 ], [ %.432, %346 ], [ %.432, %358 ], [ %.432, %370 ], [ %377, %382 ], [ %377, %394 ], [ %.634, %503 ], [ %.432, %416 ], [ %.432, %429 ], [ %.432, %442 ], [ %.432, %455 ], [ %.432, %468 ], [ %475, %481 ], [ %475, %494 ]
  %.7 = phi i16 [ %.427, %322 ], [ %.427, %334 ], [ %.427, %346 ], [ %.427, %358 ], [ %365, %370 ], [ %365, %382 ], [ %365, %394 ], [ %.6, %503 ], [ %.427, %416 ], [ %.427, %429 ], [ %.427, %442 ], [ %.427, %455 ], [ %462, %468 ], [ %462, %481 ], [ %462, %494 ]
  %.312 = phi i16 [ %.09, %322 ], [ %.09, %334 ], [ %.09, %346 ], [ %353, %358 ], [ %353, %370 ], [ %353, %382 ], [ %353, %394 ], [ %.211, %503 ], [ %.09, %416 ], [ %.09, %429 ], [ %.09, %442 ], [ %449, %455 ], [ %449, %468 ], [ %449, %481 ], [ %449, %494 ]
  %.38 = phi i16 [ %.05, %322 ], [ %.05, %334 ], [ %341, %346 ], [ %341, %358 ], [ %341, %370 ], [ %341, %382 ], [ %341, %394 ], [ %.27, %503 ], [ %.05, %416 ], [ %.05, %429 ], [ %436, %442 ], [ %436, %455 ], [ %436, %468 ], [ %436, %481 ], [ %436, %494 ]
  %.34 = phi i16 [ %.01, %322 ], [ %329, %334 ], [ %329, %346 ], [ %329, %358 ], [ %329, %370 ], [ %329, %382 ], [ %329, %394 ], [ %.23, %503 ], [ %.01, %416 ], [ %423, %429 ], [ %423, %442 ], [ %423, %455 ], [ %423, %468 ], [ %423, %481 ], [ %423, %494 ]
  %.3 = phi i16 [ %317, %322 ], [ %317, %334 ], [ %317, %346 ], [ %317, %358 ], [ %317, %370 ], [ %317, %382 ], [ %317, %394 ], [ %.2, %503 ], [ %410, %416 ], [ %410, %429 ], [ %410, %442 ], [ %410, %455 ], [ %410, %468 ], [ %410, %481 ], [ %410, %494 ]
  %505 = add nsw i32 %.322, 1
  br label %239, !llvm.loop !10

506:                                              ; preds = %239
  store i16 %.448, i16* %3, align 2
  %507 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %.440, i16* %507, align 2
  %508 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %.432, i16* %508, align 2
  %509 = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %.427, i16* %509, align 2
  %510 = getelementptr inbounds i16, i16* %3, i64 4
  store i16 %.09, i16* %510, align 2
  %511 = getelementptr inbounds i16, i16* %3, i64 5
  store i16 %.05, i16* %511, align 2
  %512 = getelementptr inbounds i16, i16* %3, i64 6
  store i16 %.01, i16* %512, align 2
  %513 = getelementptr inbounds i16, i16* %3, i64 7
  store i16 %.0, i16* %513, align 2
  br label %616

514:                                              ; preds = %221
  br label %515

515:                                              ; preds = %613, %514
  %.4 = phi i32 [ %64, %514 ], [ %614, %613 ]
  %516 = icmp slt i32 %.4, %2
  br i1 %516, label %517, label %615

517:                                              ; preds = %515
  %518 = sub nsw i32 %.4, %64
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %.4 to i64
  %523 = getelementptr inbounds i32, i32* %0, i64 -1
  %524 = getelementptr inbounds i32, i32* %523, i64 %522
  br label %525

525:                                              ; preds = %528, %517
  %.016 = phi i32 [ 0, %517 ], [ %538, %528 ]
  %.015 = phi i32 [ 0, %517 ], [ %537, %528 ]
  %526 = icmp slt i32 %.016, %4
  br i1 %526, label %527, label %539

527:                                              ; preds = %525
  br label %528

528:                                              ; preds = %527
  %529 = zext i32 %.016 to i64
  %530 = getelementptr inbounds i16, i16* %3, i64 %529
  %531 = load i16, i16* %530, align 2
  %532 = sext i16 %531 to i32
  %533 = sub nsw i32 0, %.016
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %524, i64 %534
  %536 = load i32, i32* %535, align 4
  %.neg56 = sub i32 %536, %521
  %.neg57 = mul i32 %.neg56, %532
  %537 = add i32 %.neg57, %.015
  %538 = add nuw nsw i32 %.016, 1
  br label %525, !llvm.loop !11

539:                                              ; preds = %525
  %540 = sext i32 %.4 to i64
  %541 = getelementptr inbounds i32, i32* %0, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = add nsw i32 %.015, %10
  %544 = ashr i32 %543, %6
  %545 = add i32 %521, %544
  %546 = sub i32 %542, %545
  %547 = shl i32 %546, %8
  %548 = ashr i32 %547, %8
  %549 = sext i32 %.4 to i64
  %550 = getelementptr inbounds i32, i32* %1, i64 %549
  store i32 %548, i32* %550, align 4
  %551 = icmp sgt i32 %548, 0
  %552 = zext i1 %551 to i32
  %553 = ashr i32 %548, 31
  %554 = or i32 %553, %552
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %582

556:                                              ; preds = %539
  br label %557

557:                                              ; preds = %580, %556
  %.117.in = phi i32 [ %4, %556 ], [ %.117, %580 ]
  %.013 = phi i32 [ %548, %556 ], [ %576, %580 ]
  %.117 = add nsw i32 %.117.in, -1
  %558 = icmp sgt i32 %.117.in, 0
  br i1 %558, label %559, label %.loopexit

559:                                              ; preds = %557
  %560 = sub i32 1, %.117.in
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %524, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = sub nsw i32 %521, %563
  %565 = icmp sgt i32 %564, 0
  %566 = zext i1 %565 to i32
  %567 = ashr i32 %564, 31
  %568 = or i32 %567, %566
  %569 = sext i32 %.117 to i64
  %570 = getelementptr inbounds i16, i16* %3, i64 %569
  %571 = load i16, i16* %570, align 2
  %572 = trunc i32 %568 to i16
  %573 = sub i16 %571, %572
  store i16 %573, i16* %570, align 2
  %.neg54 = sub i32 %.117, %4
  %574 = mul nsw i32 %568, %564
  %575 = ashr i32 %574, %6
  %.neg55 = mul i32 %.neg54, %575
  %576 = add i32 %.neg55, %.013
  %577 = icmp slt i32 %576, 1
  br i1 %577, label %578, label %579

578:                                              ; preds = %559
  br label %581

579:                                              ; preds = %559
  br label %580

580:                                              ; preds = %579
  br label %557, !llvm.loop !12

.loopexit:                                        ; preds = %557
  br label %581

581:                                              ; preds = %.loopexit, %578
  br label %612

582:                                              ; preds = %539
  %583 = icmp slt i32 %554, 0
  br i1 %583, label %584, label %611

584:                                              ; preds = %582
  br label %585

585:                                              ; preds = %609, %584
  %.218.in = phi i32 [ %4, %584 ], [ %.218, %609 ]
  %.114 = phi i32 [ %548, %584 ], [ %605, %609 ]
  %.218 = add nsw i32 %.218.in, -1
  %586 = icmp sgt i32 %.218.in, 0
  br i1 %586, label %587, label %.loopexit52

587:                                              ; preds = %585
  %588 = sub i32 1, %.218.in
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %524, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = sub nsw i32 %521, %591
  %593 = icmp sgt i32 %592, 0
  %594 = zext i1 %593 to i32
  %595 = ashr i32 %592, 31
  %596 = or i32 %595, %594
  %597 = sext i32 %.218 to i64
  %598 = getelementptr inbounds i16, i16* %3, i64 %597
  %599 = load i16, i16* %598, align 2
  %600 = trunc i32 %596 to i16
  %601 = add i16 %599, %600
  store i16 %601, i16* %598, align 2
  %.neg = sub i32 %.218, %4
  %602 = mul i32 %596, %592
  %603 = sub i32 0, %602
  %604 = ashr i32 %603, %6
  %.neg53 = mul i32 %.neg, %604
  %605 = add i32 %.neg53, %.114
  %606 = icmp sgt i32 %605, -1
  br i1 %606, label %607, label %608

607:                                              ; preds = %587
  br label %610

608:                                              ; preds = %587
  br label %609

609:                                              ; preds = %608
  br label %585, !llvm.loop !13

.loopexit52:                                      ; preds = %585
  br label %610

610:                                              ; preds = %.loopexit52, %607
  br label %611

611:                                              ; preds = %610, %582
  br label %612

612:                                              ; preds = %611, %581
  br label %613

613:                                              ; preds = %612
  %614 = add nsw i32 %.4, 1
  br label %515, !llvm.loop !14

615:                                              ; preds = %515
  br label %616

616:                                              ; preds = %615, %506
  br label %617

617:                                              ; preds = %616, %217, %45, %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }

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
