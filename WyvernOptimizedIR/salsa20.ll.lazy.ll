; ModuleID = './salsa20.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/salsa20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptr = dso_local global i32 0, align 4
@outbuf = dso_local global [16 x i32] zeroinitializer, align 16
@STATE = dso_local global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"got:       %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"should be: %x\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @salsa20(i32* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) #0 {
  %3 = alloca [16 x i32], align 16
  br label %4

4:                                                ; preds = %12, %2
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %5 = icmp ult i32 %.0, 16
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %1, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add i32 %.0, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %289, %14
  %.1 = phi i32 [ 20, %14 ], [ %290, %289 ]
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %291, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12
  %20 = load i32, i32* %19, align 16
  %21 = add i32 %18, %20
  %22 = add i32 %18, %20
  %23 = call i32 @llvm.fshl.i32(i32 %21, i32 %22, i32 7)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4
  %25 = load i32, i32* %24, align 16
  %26 = xor i32 %25, %23
  store i32 %26, i32* %24, align 16
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = add i32 %26, %28
  %30 = add i32 %26, %28
  %31 = call i32 @llvm.fshl.i32(i32 %29, i32 %30, i32 9)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  %33 = load i32, i32* %32, align 16
  %34 = xor i32 %33, %31
  store i32 %34, i32* %32, align 16
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4
  %36 = load i32, i32* %35, align 16
  %37 = add i32 %34, %36
  %38 = add i32 %34, %36
  %39 = call i32 @llvm.fshl.i32(i32 %37, i32 %38, i32 13)
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12
  %41 = load i32, i32* %40, align 16
  %42 = xor i32 %41, %39
  store i32 %42, i32* %40, align 16
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  %44 = load i32, i32* %43, align 16
  %45 = add i32 %42, %44
  %46 = add i32 %42, %44
  %47 = call i32 @llvm.fshl.i32(i32 %45, i32 %46, i32 18)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = xor i32 %49, %47
  store i32 %50, i32* %48, align 16
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %52, %54
  %56 = add i32 %52, %54
  %57 = call i32 @llvm.fshl.i32(i32 %55, i32 %56, i32 7)
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %60, %62
  %64 = add i32 %60, %62
  %65 = call i32 @llvm.fshl.i32(i32 %63, i32 %64, i32 9)
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %68, %70
  %72 = add i32 %68, %70
  %73 = call i32 @llvm.fshl.i32(i32 %71, i32 %72, i32 13)
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %76, %78
  %80 = add i32 %76, %78
  %81 = call i32 @llvm.fshl.i32(i32 %79, i32 %80, i32 18)
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %86, %88
  %90 = add i32 %86, %88
  %91 = call i32 @llvm.fshl.i32(i32 %89, i32 %90, i32 7)
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14
  %93 = load i32, i32* %92, align 8
  %94 = xor i32 %93, %91
  store i32 %94, i32* %92, align 8
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %94, %96
  %98 = add i32 %94, %96
  %99 = call i32 @llvm.fshl.i32(i32 %97, i32 %98, i32 9)
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = xor i32 %101, %99
  store i32 %102, i32* %100, align 8
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14
  %104 = load i32, i32* %103, align 8
  %105 = add i32 %102, %104
  %106 = add i32 %102, %104
  %107 = call i32 @llvm.fshl.i32(i32 %105, i32 %106, i32 13)
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %109, %107
  store i32 %110, i32* %108, align 8
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %110, %112
  %114 = add i32 %110, %112
  %115 = call i32 @llvm.fshl.i32(i32 %113, i32 %114, i32 18)
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %117 = load i32, i32* %116, align 8
  %118 = xor i32 %117, %115
  store i32 %118, i32* %116, align 8
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %120, %122
  %124 = add i32 %120, %122
  %125 = call i32 @llvm.fshl.i32(i32 %123, i32 %124, i32 7)
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %128, %130
  %132 = add i32 %128, %130
  %133 = call i32 @llvm.fshl.i32(i32 %131, i32 %132, i32 9)
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %136, %138
  %140 = add i32 %136, %138
  %141 = call i32 @llvm.fshl.i32(i32 %139, i32 %140, i32 13)
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11
  %143 = load i32, i32* %142, align 4
  %144 = xor i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7
  %146 = load i32, i32* %145, align 4
  %147 = add i32 %144, %146
  %148 = add i32 %144, %146
  %149 = call i32 @llvm.fshl.i32(i32 %147, i32 %148, i32 18)
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %154, %156
  %158 = add i32 %154, %156
  %159 = call i32 @llvm.fshl.i32(i32 %157, i32 %158, i32 7)
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, %159
  store i32 %162, i32* %160, align 4
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = add i32 %162, %164
  %166 = add i32 %162, %164
  %167 = call i32 @llvm.fshl.i32(i32 %165, i32 %166, i32 9)
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2
  %169 = load i32, i32* %168, align 8
  %170 = xor i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %170, %172
  %174 = add i32 %170, %172
  %175 = call i32 @llvm.fshl.i32(i32 %173, i32 %174, i32 13)
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = xor i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 2
  %180 = load i32, i32* %179, align 8
  %181 = add i32 %178, %180
  %182 = add i32 %178, %180
  %183 = call i32 @llvm.fshl.i32(i32 %181, i32 %182, i32 18)
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = xor i32 %185, %183
  store i32 %186, i32* %184, align 16
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4
  %190 = load i32, i32* %189, align 16
  %191 = add i32 %188, %190
  %192 = add i32 %188, %190
  %193 = call i32 @llvm.fshl.i32(i32 %191, i32 %192, i32 7)
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6
  %195 = load i32, i32* %194, align 8
  %196 = xor i32 %195, %193
  store i32 %196, i32* %194, align 8
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %196, %198
  %200 = add i32 %196, %198
  %201 = call i32 @llvm.fshl.i32(i32 %199, i32 %200, i32 9)
  %202 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %203, %201
  store i32 %204, i32* %202, align 4
  %205 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 6
  %206 = load i32, i32* %205, align 8
  %207 = add i32 %204, %206
  %208 = add i32 %204, %206
  %209 = call i32 @llvm.fshl.i32(i32 %207, i32 %208, i32 13)
  %210 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 4
  %211 = load i32, i32* %210, align 16
  %212 = xor i32 %211, %209
  store i32 %212, i32* %210, align 16
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 7
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %212, %214
  %216 = add i32 %212, %214
  %217 = call i32 @llvm.fshl.i32(i32 %215, i32 %216, i32 18)
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 5
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, %217
  store i32 %220, i32* %218, align 4
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %222, %224
  %226 = add i32 %222, %224
  %227 = call i32 @llvm.fshl.i32(i32 %225, i32 %226, i32 7)
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %229, %227
  store i32 %230, i32* %228, align 4
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %232 = load i32, i32* %231, align 8
  %233 = add i32 %230, %232
  %234 = add i32 %230, %232
  %235 = call i32 @llvm.fshl.i32(i32 %233, i32 %234, i32 9)
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  %237 = load i32, i32* %236, align 16
  %238 = xor i32 %237, %235
  store i32 %238, i32* %236, align 16
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 11
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %238, %240
  %242 = add i32 %238, %240
  %243 = call i32 @llvm.fshl.i32(i32 %241, i32 %242, i32 13)
  %244 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 9
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %245, %243
  store i32 %246, i32* %244, align 4
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  %248 = load i32, i32* %247, align 16
  %249 = add i32 %246, %248
  %250 = add i32 %246, %248
  %251 = call i32 @llvm.fshl.i32(i32 %249, i32 %250, i32 18)
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 10
  %253 = load i32, i32* %252, align 8
  %254 = xor i32 %253, %251
  store i32 %254, i32* %252, align 8
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14
  %258 = load i32, i32* %257, align 8
  %259 = add i32 %256, %258
  %260 = add i32 %256, %258
  %261 = call i32 @llvm.fshl.i32(i32 %259, i32 %260, i32 7)
  %262 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12
  %263 = load i32, i32* %262, align 16
  %264 = xor i32 %263, %261
  store i32 %264, i32* %262, align 16
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %266 = load i32, i32* %265, align 4
  %267 = add i32 %264, %266
  %268 = add i32 %264, %266
  %269 = call i32 @llvm.fshl.i32(i32 %267, i32 %268, i32 9)
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13
  %271 = load i32, i32* %270, align 4
  %272 = xor i32 %271, %269
  store i32 %272, i32* %270, align 4
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 12
  %274 = load i32, i32* %273, align 16
  %275 = add i32 %272, %274
  %276 = add i32 %272, %274
  %277 = call i32 @llvm.fshl.i32(i32 %275, i32 %276, i32 13)
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 14
  %279 = load i32, i32* %278, align 8
  %280 = xor i32 %279, %277
  store i32 %280, i32* %278, align 8
  %281 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 13
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %280, %282
  %284 = add i32 %280, %282
  %285 = call i32 @llvm.fshl.i32(i32 %283, i32 %284, i32 18)
  %286 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  %287 = load i32, i32* %286, align 4
  %288 = xor i32 %287, %285
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %16
  %290 = add i32 %.1, -2
  br label %15, !llvm.loop !6

291:                                              ; preds = %15
  br label %292

292:                                              ; preds = %304, %291
  %.2 = phi i32 [ 0, %291 ], [ %305, %304 ]
  %293 = icmp ult i32 %.2, 16
  br i1 %293, label %294, label %306

294:                                              ; preds = %292
  %295 = zext i32 %.2 to i64
  %296 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %.2 to i64
  %299 = getelementptr inbounds i32, i32* %1, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %297, %300
  %302 = zext i32 %.2 to i64
  %303 = getelementptr inbounds i32, i32* %0, i64 %302
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %294
  %305 = add i32 %.2, 1
  br label %292, !llvm.loop !7

306:                                              ; preds = %292
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @salsa() #0 {
  %1 = load i32, i32* @ptr, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  call void @salsa20(i32* noundef getelementptr inbounds ([16 x i32], [16 x i32]* @outbuf, i64 0, i64 0), i32* noundef getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i64 0, i64 0))
  %4 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i64 0, i64 0), align 16
  %5 = add i32 %4, 1
  store i32 %5, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i64 0, i64 0), align 16
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @ptr, align 4
  %8 = add i32 %7, 1
  %9 = and i32 %8, 15
  store i32 %9, i32* @ptr, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* @outbuf, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 16
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = add i32 %.0, -307516430
  %5 = sub i32 -559038737, %.0
  %6 = xor i32 %4, %5
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* @STATE, i64 0, i64 %7
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %3
  %10 = add i32 %.0, 1
  br label %1, !llvm.loop !8

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %16, %11
  %.1 = phi i32 [ 0, %11 ], [ %17, %16 ]
  %13 = icmp ult i32 %.1, 537919488
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = call i32 @salsa()
  br label %16

16:                                               ; preds = %14
  %17 = add i32 %.1, 1
  br label %12, !llvm.loop !9

18:                                               ; preds = %12
  %19 = call i32 @salsa()
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %19) #4
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef -162172867) #4
  %22 = icmp ne i32 %19, -162172867
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
