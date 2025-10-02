; ModuleID = './uint64_to_float.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/uint64_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.float_bits = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error detected @ 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09Expected result: %a (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09Observed result: %a (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"to nearest\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"towards zero\00", align 1
@__const.main.modeNames = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [55 x i8] c"Testing uint64_t --> float conversions in round %s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Finished Testing.\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Finished Testing.\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local float @floatundisf(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %44

4:                                                ; preds = %1
  %5 = call i64 @llvm.ctlz.i64(i64 %0, i1 true), !range !4
  %6 = trunc i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = icmp ult i32 %6, 40
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = sub nuw nsw i32 64, %6
  switch i32 %10, label %14 [
    i32 25, label %11
    i32 26, label %13
  ]

11:                                               ; preds = %9
  %12 = shl i64 %0, 1
  br label %23

13:                                               ; preds = %9
  br label %23

14:                                               ; preds = %9
  %15 = sub nsw i64 38, %5
  %16 = and i64 %15, 4294967295
  %17 = lshr i64 %0, %16
  %18 = lshr i64 274877906943, %5
  %19 = and i64 %18, %0
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = or i64 %17, %21
  br label %23

23:                                               ; preds = %14, %13, %11
  %.01 = phi i64 [ %22, %14 ], [ %0, %13 ], [ %12, %11 ]
  %24 = lshr i64 %.01, 2
  %25 = and i64 %24, 1
  %26 = or i64 %.01, %25
  %27 = add i64 %26, 1
  %28 = lshr i64 %27, 2
  %29 = and i64 %27, 67108864
  %.not = icmp eq i64 %29, 0
  br i1 %.not, label %33, label %30

30:                                               ; preds = %23
  %31 = lshr i64 %27, 3
  %32 = sub nuw nsw i32 64, %6
  br label %33

33:                                               ; preds = %30, %23
  %.02 = phi i32 [ %32, %30 ], [ %7, %23 ]
  %.1 = phi i64 [ %31, %30 ], [ %28, %23 ]
  br label %38

34:                                               ; preds = %4
  %35 = add nuw nsw i64 %5, 4294967256
  %36 = and i64 %35, 4294967295
  %37 = shl i64 %0, %36
  br label %38

38:                                               ; preds = %34, %33
  %.13 = phi i32 [ %.02, %33 ], [ %7, %34 ]
  %.2 = phi i64 [ %.1, %33 ], [ %37, %34 ]
  %39 = shl nsw i32 %.13, 23
  %40 = add i32 %39, 1065353216
  %41 = trunc i64 %.2 to i32
  %42 = and i32 %41, 8388607
  %43 = or i32 %40, %42
  %.cast = bitcast i32 %43 to float
  br label %44

44:                                               ; preds = %38, %3
  %.0 = phi float [ 0.000000e+00, %3 ], [ %.cast, %38 ]
  ret float %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64 noundef %0) #2 {
  %2 = alloca %union.float_bits, align 4
  %3 = alloca %union.float_bits, align 4
  %4 = bitcast %union.float_bits* %2 to float*
  %5 = call float @floatundisf(i64 noundef %0)
  store float %5, float* %4, align 4
  %6 = bitcast %union.float_bits* %3 to float*
  %7 = uitofp i64 %0 to float
  store float %7, float* %6, align 4
  %.cast = bitcast float %5 to i32
  %.cast1 = bitcast float %7 to i32
  %.not = icmp eq i32 %.cast, %.cast1
  br i1 %.not, label %18, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %0) #8
  %10 = bitcast %union.float_bits* %2 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %.cast2 = bitcast float %11 to i32
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), double noundef %12, i32 noundef %.cast2) #8
  %14 = bitcast %union.float_bits* %3 to float*
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %.cast3 = bitcast float %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double noundef %16, i32 noundef %.cast3) #8
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  %3 = alloca [4 x i32], align 16
  %4 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %5

5:                                                ; preds = %303, %2
  %.0 = phi i32 [ 0, %2 ], [ %304, %303 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %305

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %9 = load i32, i32* %8, align 16
  %10 = call i32 @fesetround(i32 noundef %9) #8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* @__const.main.modeNames, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef %13) #8
  call void @test(i64 noundef 0)
  br label %15

15:                                               ; preds = %300, %7
  %.03 = phi i32 [ 0, %7 ], [ %301, %300 ]
  %16 = icmp ult i32 %.03, 64
  br i1 %16, label %17, label %302

17:                                               ; preds = %15
  %18 = zext i32 %.03 to i64
  %19 = shl i64 1, %18
  call void @test(i64 noundef %19)
  %20 = zext i32 %.03 to i64
  %21 = shl i64 -1, %20
  call void @test(i64 noundef %21)
  br label %22

22:                                               ; preds = %297, %17
  %.04 = phi i32 [ 0, %17 ], [ %298, %297 ]
  %23 = icmp ult i32 %.04, %.03
  br i1 %23, label %24, label %299

24:                                               ; preds = %22
  %25 = zext i32 %.03 to i64
  %26 = shl i64 1, %25
  %27 = zext i32 %.04 to i64
  %28 = shl i64 1, %27
  %29 = add i64 %26, %28
  call void @test(i64 noundef %29)
  %30 = zext i32 %.03 to i64
  %31 = shl i64 1, %30
  %32 = zext i32 %.04 to i64
  %33 = shl i64 -1, %32
  %34 = add i64 %31, %33
  call void @test(i64 noundef %34)
  %35 = zext i32 %.03 to i64
  %36 = shl i64 -1, %35
  %37 = zext i32 %.04 to i64
  %38 = shl i64 1, %37
  %39 = add i64 %36, %38
  call void @test(i64 noundef %39)
  %40 = zext i32 %.03 to i64
  %41 = shl i64 -1, %40
  %42 = zext i32 %.04 to i64
  %43 = shl i64 -1, %42
  %44 = add i64 %41, %43
  call void @test(i64 noundef %44)
  br label %45

45:                                               ; preds = %294, %24
  %.02 = phi i32 [ 0, %24 ], [ %295, %294 ]
  %46 = icmp ult i32 %.02, %.04
  br i1 %46, label %47, label %296

47:                                               ; preds = %45
  %48 = zext i32 %.03 to i64
  %49 = shl i64 1, %48
  %50 = zext i32 %.04 to i64
  %51 = shl i64 1, %50
  %52 = add i64 %49, %51
  %53 = zext i32 %.02 to i64
  %54 = shl i64 1, %53
  %55 = add i64 %52, %54
  call void @test(i64 noundef %55)
  %56 = zext i32 %.03 to i64
  %57 = shl i64 1, %56
  %58 = zext i32 %.04 to i64
  %59 = shl i64 1, %58
  %60 = add i64 %57, %59
  %61 = zext i32 %.02 to i64
  %62 = shl i64 -1, %61
  %63 = add i64 %60, %62
  call void @test(i64 noundef %63)
  %64 = zext i32 %.03 to i64
  %65 = shl i64 1, %64
  %66 = zext i32 %.04 to i64
  %67 = shl i64 -1, %66
  %68 = add i64 %65, %67
  %69 = zext i32 %.02 to i64
  %70 = shl i64 1, %69
  %71 = add i64 %68, %70
  call void @test(i64 noundef %71)
  %72 = zext i32 %.03 to i64
  %73 = shl i64 1, %72
  %74 = zext i32 %.04 to i64
  %75 = shl i64 -1, %74
  %76 = add i64 %73, %75
  %77 = zext i32 %.02 to i64
  %78 = shl i64 -1, %77
  %79 = add i64 %76, %78
  call void @test(i64 noundef %79)
  %80 = zext i32 %.03 to i64
  %81 = shl i64 -1, %80
  %82 = zext i32 %.04 to i64
  %83 = shl i64 1, %82
  %84 = add i64 %81, %83
  %85 = zext i32 %.02 to i64
  %86 = shl i64 1, %85
  %87 = add i64 %84, %86
  call void @test(i64 noundef %87)
  %88 = zext i32 %.03 to i64
  %89 = shl i64 -1, %88
  %90 = zext i32 %.04 to i64
  %91 = shl i64 1, %90
  %92 = add i64 %89, %91
  %93 = zext i32 %.02 to i64
  %94 = shl i64 -1, %93
  %95 = add i64 %92, %94
  call void @test(i64 noundef %95)
  %96 = zext i32 %.03 to i64
  %97 = shl i64 -1, %96
  %98 = zext i32 %.04 to i64
  %99 = shl i64 -1, %98
  %100 = add i64 %97, %99
  %101 = zext i32 %.02 to i64
  %102 = shl i64 1, %101
  %103 = add i64 %100, %102
  call void @test(i64 noundef %103)
  %104 = zext i32 %.03 to i64
  %105 = shl i64 -1, %104
  %106 = zext i32 %.04 to i64
  %107 = shl i64 -1, %106
  %108 = add i64 %105, %107
  %109 = zext i32 %.02 to i64
  %110 = shl i64 -1, %109
  %111 = add i64 %108, %110
  call void @test(i64 noundef %111)
  br label %112

112:                                              ; preds = %291, %47
  %.01 = phi i32 [ 0, %47 ], [ %292, %291 ]
  %113 = icmp ult i32 %.01, %.02
  br i1 %113, label %114, label %293

114:                                              ; preds = %112
  %115 = zext i32 %.03 to i64
  %116 = shl i64 1, %115
  %117 = zext i32 %.04 to i64
  %118 = shl i64 1, %117
  %119 = add i64 %116, %118
  %120 = zext i32 %.02 to i64
  %121 = shl i64 1, %120
  %122 = add i64 %119, %121
  %123 = zext i32 %.01 to i64
  %124 = shl i64 1, %123
  %125 = add i64 %122, %124
  call void @test(i64 noundef %125)
  %126 = zext i32 %.03 to i64
  %127 = shl i64 1, %126
  %128 = zext i32 %.04 to i64
  %129 = shl i64 1, %128
  %130 = add i64 %127, %129
  %131 = zext i32 %.02 to i64
  %132 = shl i64 1, %131
  %133 = add i64 %130, %132
  %134 = zext i32 %.01 to i64
  %135 = shl i64 -1, %134
  %136 = add i64 %133, %135
  call void @test(i64 noundef %136)
  %137 = zext i32 %.03 to i64
  %138 = shl i64 1, %137
  %139 = zext i32 %.04 to i64
  %140 = shl i64 1, %139
  %141 = add i64 %138, %140
  %142 = zext i32 %.02 to i64
  %143 = shl i64 -1, %142
  %144 = add i64 %141, %143
  %145 = zext i32 %.01 to i64
  %146 = shl i64 1, %145
  %147 = add i64 %144, %146
  call void @test(i64 noundef %147)
  %148 = zext i32 %.03 to i64
  %149 = shl i64 1, %148
  %150 = zext i32 %.04 to i64
  %151 = shl i64 1, %150
  %152 = add i64 %149, %151
  %153 = zext i32 %.02 to i64
  %154 = shl i64 -1, %153
  %155 = add i64 %152, %154
  %156 = zext i32 %.01 to i64
  %157 = shl i64 -1, %156
  %158 = add i64 %155, %157
  call void @test(i64 noundef %158)
  %159 = zext i32 %.03 to i64
  %160 = shl i64 1, %159
  %161 = zext i32 %.04 to i64
  %162 = shl i64 -1, %161
  %163 = add i64 %160, %162
  %164 = zext i32 %.02 to i64
  %165 = shl i64 1, %164
  %166 = add i64 %163, %165
  %167 = zext i32 %.01 to i64
  %168 = shl i64 1, %167
  %169 = add i64 %166, %168
  call void @test(i64 noundef %169)
  %170 = zext i32 %.03 to i64
  %171 = shl i64 1, %170
  %172 = zext i32 %.04 to i64
  %173 = shl i64 -1, %172
  %174 = add i64 %171, %173
  %175 = zext i32 %.02 to i64
  %176 = shl i64 1, %175
  %177 = add i64 %174, %176
  %178 = zext i32 %.01 to i64
  %179 = shl i64 -1, %178
  %180 = add i64 %177, %179
  call void @test(i64 noundef %180)
  %181 = zext i32 %.03 to i64
  %182 = shl i64 1, %181
  %183 = zext i32 %.04 to i64
  %184 = shl i64 -1, %183
  %185 = add i64 %182, %184
  %186 = zext i32 %.02 to i64
  %187 = shl i64 -1, %186
  %188 = add i64 %185, %187
  %189 = zext i32 %.01 to i64
  %190 = shl i64 1, %189
  %191 = add i64 %188, %190
  call void @test(i64 noundef %191)
  %192 = zext i32 %.03 to i64
  %193 = shl i64 1, %192
  %194 = zext i32 %.04 to i64
  %195 = shl i64 -1, %194
  %196 = add i64 %193, %195
  %197 = zext i32 %.02 to i64
  %198 = shl i64 -1, %197
  %199 = add i64 %196, %198
  %200 = zext i32 %.01 to i64
  %201 = shl i64 -1, %200
  %202 = add i64 %199, %201
  call void @test(i64 noundef %202)
  %203 = zext i32 %.03 to i64
  %204 = shl i64 -1, %203
  %205 = zext i32 %.04 to i64
  %206 = shl i64 1, %205
  %207 = add i64 %204, %206
  %208 = zext i32 %.02 to i64
  %209 = shl i64 1, %208
  %210 = add i64 %207, %209
  %211 = zext i32 %.01 to i64
  %212 = shl i64 1, %211
  %213 = add i64 %210, %212
  call void @test(i64 noundef %213)
  %214 = zext i32 %.03 to i64
  %215 = shl i64 -1, %214
  %216 = zext i32 %.04 to i64
  %217 = shl i64 1, %216
  %218 = add i64 %215, %217
  %219 = zext i32 %.02 to i64
  %220 = shl i64 1, %219
  %221 = add i64 %218, %220
  %222 = zext i32 %.01 to i64
  %223 = shl i64 -1, %222
  %224 = add i64 %221, %223
  call void @test(i64 noundef %224)
  %225 = zext i32 %.03 to i64
  %226 = shl i64 -1, %225
  %227 = zext i32 %.04 to i64
  %228 = shl i64 1, %227
  %229 = add i64 %226, %228
  %230 = zext i32 %.02 to i64
  %231 = shl i64 -1, %230
  %232 = add i64 %229, %231
  %233 = zext i32 %.01 to i64
  %234 = shl i64 1, %233
  %235 = add i64 %232, %234
  call void @test(i64 noundef %235)
  %236 = zext i32 %.03 to i64
  %237 = shl i64 -1, %236
  %238 = zext i32 %.04 to i64
  %239 = shl i64 1, %238
  %240 = add i64 %237, %239
  %241 = zext i32 %.02 to i64
  %242 = shl i64 -1, %241
  %243 = add i64 %240, %242
  %244 = zext i32 %.01 to i64
  %245 = shl i64 -1, %244
  %246 = add i64 %243, %245
  call void @test(i64 noundef %246)
  %247 = zext i32 %.03 to i64
  %248 = shl i64 -1, %247
  %249 = zext i32 %.04 to i64
  %250 = shl i64 -1, %249
  %251 = add i64 %248, %250
  %252 = zext i32 %.02 to i64
  %253 = shl i64 1, %252
  %254 = add i64 %251, %253
  %255 = zext i32 %.01 to i64
  %256 = shl i64 1, %255
  %257 = add i64 %254, %256
  call void @test(i64 noundef %257)
  %258 = zext i32 %.03 to i64
  %259 = shl i64 -1, %258
  %260 = zext i32 %.04 to i64
  %261 = shl i64 -1, %260
  %262 = add i64 %259, %261
  %263 = zext i32 %.02 to i64
  %264 = shl i64 1, %263
  %265 = add i64 %262, %264
  %266 = zext i32 %.01 to i64
  %267 = shl i64 -1, %266
  %268 = add i64 %265, %267
  call void @test(i64 noundef %268)
  %269 = zext i32 %.03 to i64
  %270 = shl i64 -1, %269
  %271 = zext i32 %.04 to i64
  %272 = shl i64 -1, %271
  %273 = add i64 %270, %272
  %274 = zext i32 %.02 to i64
  %275 = shl i64 -1, %274
  %276 = add i64 %273, %275
  %277 = zext i32 %.01 to i64
  %278 = shl i64 1, %277
  %279 = add i64 %276, %278
  call void @test(i64 noundef %279)
  %280 = zext i32 %.03 to i64
  %281 = shl i64 -1, %280
  %282 = zext i32 %.04 to i64
  %283 = shl i64 -1, %282
  %284 = add i64 %281, %283
  %285 = zext i32 %.02 to i64
  %286 = shl i64 -1, %285
  %287 = add i64 %284, %286
  %288 = zext i32 %.01 to i64
  %289 = shl i64 -1, %288
  %290 = add i64 %287, %289
  call void @test(i64 noundef %290)
  br label %291

291:                                              ; preds = %114
  %292 = add nuw nsw i32 %.01, 1
  br label %112, !llvm.loop !5

293:                                              ; preds = %112
  br label %294

294:                                              ; preds = %293
  %295 = add nuw nsw i32 %.02, 1
  br label %45, !llvm.loop !7

296:                                              ; preds = %45
  br label %297

297:                                              ; preds = %296
  %298 = add nuw nsw i32 %.04, 1
  br label %22, !llvm.loop !8

299:                                              ; preds = %22
  br label %300

300:                                              ; preds = %299
  %301 = add nuw nsw i32 %.03, 1
  br label %15, !llvm.loop !9

302:                                              ; preds = %15
  br label %303

303:                                              ; preds = %302
  %304 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !10

305:                                              ; preds = %5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @fesetround(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 0, i64 65}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
