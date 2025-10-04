; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pdivmod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pdivmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzero = external dso_local global %struct.precisionType*, align 8
@.str = private unnamed_addr constant [8 x i8] c"pdivmod\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1, %struct.precisionType** noundef %2, %struct.precisionType** noundef %3) #0 {
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca %struct.precisionType*, align 8
  %7 = alloca %struct.precisionType*, align 8
  %8 = alloca %struct.precisionType**, align 8
  %9 = alloca %struct.precisionType**, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca %struct.precisionType*, align 8
  %22 = alloca %struct.precisionType*, align 8
  %23 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %6, align 8
  store %struct.precisionType* %1, %struct.precisionType** %7, align 8
  store %struct.precisionType** %2, %struct.precisionType*** %8, align 8
  store %struct.precisionType** %3, %struct.precisionType*** %9, align 8
  %24 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i32 0, i32 2
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %17, align 2
  %27 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %28 = icmp ne %struct.precisionType* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %31 = bitcast %struct.precisionType* %30 to i16*
  %32 = load i16, i16* %31, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %31, align 2
  %34 = zext i16 %32 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %4
  %37 = phi i1 [ false, %4 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %40 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %41 = icmp ne %struct.precisionType* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %44 = bitcast %struct.precisionType* %43 to i16*
  %45 = load i16, i16* %44, align 2
  %46 = add i16 %45, 1
  store i16 %46, i16* %44, align 2
  %47 = zext i16 %45 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %53 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %54 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %53, i32 0, i32 2
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* %17, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  store %struct.precisionType* null, %struct.precisionType** %21, align 8
  store %struct.precisionType* null, %struct.precisionType** %22, align 8
  %61 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %62 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %21, %struct.precisionType* noundef %61)
  %63 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %64 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %22, %struct.precisionType* noundef %63)
  br label %644

65:                                               ; preds = %49
  %66 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %66, i32 0, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %17, align 2
  %71 = zext i16 %70 to i32
  %72 = sub nsw i32 %69, %71
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %18, align 2
  %74 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %75 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %74, i32 0, i32 4
  %76 = getelementptr inbounds [1 x i16], [1 x i16]* %75, i64 0, i64 0
  %77 = load i16, i16* %18, align 2
  %78 = zext i16 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %76, i64 %79
  %81 = load i16, i16* %17, align 2
  %82 = zext i16 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %80, i64 %83
  store i16* %84, i16** %10, align 8
  %85 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %86 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %85, i32 0, i32 4
  %87 = getelementptr inbounds [1 x i16], [1 x i16]* %86, i64 0, i64 0
  %88 = load i16, i16* %17, align 2
  %89 = zext i16 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %87, i64 %90
  store i16* %91, i16** %11, align 8
  %92 = load i16, i16* %18, align 2
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %93, 1
  %95 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %94)
  store %struct.precisionType* %95, %struct.precisionType** %21, align 8
  %96 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %97 = icmp eq %struct.precisionType* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %65
  %99 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  store %struct.precisionType* %99, %struct.precisionType** %5, align 8
  br label %782

100:                                              ; preds = %65
  %101 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %102 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 2
  %104 = zext i8 %103 to i32
  %105 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %106 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %105, i32 0, i32 3
  %107 = load i8, i8* %106, align 2
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %104, %108
  %110 = zext i1 %109 to i32
  %111 = trunc i32 %110 to i8
  %112 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %113 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %112, i32 0, i32 3
  store i8 %111, i8* %113, align 2
  %114 = load i16, i16* %17, align 2
  %115 = zext i16 %114 to i32
  %116 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %115)
  store %struct.precisionType* %116, %struct.precisionType** %22, align 8
  %117 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %118 = icmp eq %struct.precisionType* %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %100
  %120 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %121 = icmp ne %struct.precisionType* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %124 = bitcast %struct.precisionType* %123 to i16*
  %125 = load i16, i16* %124, align 2
  %126 = add i16 %125, -1
  store i16 %126, i16* %124, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %131 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %130)
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %129, %122, %119
  %134 = phi i1 [ false, %122 ], [ false, %119 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  store %struct.precisionType* %136, %struct.precisionType** %5, align 8
  br label %782

137:                                              ; preds = %100
  %138 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %139 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %138, i32 0, i32 3
  %140 = load i8, i8* %139, align 2
  %141 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %142 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %141, i32 0, i32 3
  store i8 %140, i8* %142, align 2
  %143 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %144 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %143, i32 0, i32 4
  %145 = getelementptr inbounds [1 x i16], [1 x i16]* %144, i64 0, i64 0
  %146 = load i16, i16* %18, align 2
  %147 = zext i16 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %145, i64 %148
  %150 = getelementptr inbounds i16, i16* %149, i64 1
  store i16* %150, i16** %12, align 8
  %151 = load i16, i16* %17, align 2
  %152 = zext i16 %151 to i32
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %205

154:                                              ; preds = %137
  %155 = load i16*, i16** %11, align 8
  %156 = getelementptr inbounds i16, i16* %155, i32 -1
  store i16* %156, i16** %11, align 8
  %157 = load i16, i16* %156, align 2
  store i16 %157, i16* %19, align 2
  %158 = load i16, i16* %19, align 2
  %159 = zext i16 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %163 = call %struct.precisionType* @pnew(%struct.precisionType* noundef %162)
  store %struct.precisionType* %163, %struct.precisionType** %21, align 8
  br label %204

164:                                              ; preds = %154
  %165 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %166 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %165, i32 0, i32 4
  %167 = getelementptr inbounds [1 x i16], [1 x i16]* %166, i64 0, i64 0
  %168 = load i16, i16* %17, align 2
  %169 = zext i16 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %167, i64 %170
  store i16* %171, i16** %11, align 8
  store i16 0, i16* %16, align 2
  br label %172

172:                                              ; preds = %194, %164
  %173 = load i16, i16* %16, align 2
  %174 = zext i16 %173 to i32
  %175 = shl i32 %174, 16
  store i32 %175, i32* %14, align 4
  %176 = load i16*, i16** %10, align 8
  %177 = getelementptr inbounds i16, i16* %176, i32 -1
  store i16* %177, i16** %10, align 8
  %178 = load i16, i16* %177, align 2
  %179 = zext i16 %178 to i32
  %180 = load i32, i32* %14, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i16, i16* %19, align 2
  %184 = zext i16 %183 to i32
  %185 = udiv i32 %182, %184
  %186 = trunc i32 %185 to i16
  %187 = load i16*, i16** %12, align 8
  %188 = getelementptr inbounds i16, i16* %187, i32 -1
  store i16* %188, i16** %12, align 8
  store i16 %186, i16* %188, align 2
  %189 = load i32, i32* %14, align 4
  %190 = load i16, i16* %19, align 2
  %191 = zext i16 %190 to i32
  %192 = urem i32 %189, %191
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %16, align 2
  br label %194

194:                                              ; preds = %172
  %195 = load i16*, i16** %10, align 8
  %196 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %197 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %196, i32 0, i32 4
  %198 = getelementptr inbounds [1 x i16], [1 x i16]* %197, i64 0, i64 0
  %199 = icmp ugt i16* %195, %198
  br i1 %199, label %172, label %200, !llvm.loop !4

200:                                              ; preds = %194
  %201 = load i16, i16* %16, align 2
  %202 = load i16*, i16** %11, align 8
  %203 = getelementptr inbounds i16, i16* %202, i32 -1
  store i16* %203, i16** %11, align 8
  store i16 %201, i16* %203, align 2
  br label %204

204:                                              ; preds = %200, %161
  br label %612

205:                                              ; preds = %137
  %206 = load i16*, i16** %11, align 8
  %207 = getelementptr inbounds i16, i16* %206, i32 -1
  store i16* %207, i16** %11, align 8
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = add nsw i32 %209, 1
  %211 = sdiv i32 65536, %210
  %212 = trunc i32 %211 to i16
  store i16 %212, i16* %19, align 2
  %213 = load i16, i16* %17, align 2
  %214 = zext i16 %213 to i32
  %215 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %214)
  store %struct.precisionType* %215, %struct.precisionType** %23, align 8
  %216 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %217 = icmp eq %struct.precisionType* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %205
  %219 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  store %struct.precisionType* %219, %struct.precisionType** %5, align 8
  br label %782

220:                                              ; preds = %205
  %221 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %222 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %221, i32 0, i32 4
  %223 = getelementptr inbounds [1 x i16], [1 x i16]* %222, i64 0, i64 0
  store i16* %223, i16** %11, align 8
  %224 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %225 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %224, i32 0, i32 4
  %226 = getelementptr inbounds [1 x i16], [1 x i16]* %225, i64 0, i64 0
  store i16* %226, i16** %10, align 8
  %227 = load i16*, i16** %11, align 8
  %228 = load i16, i16* %17, align 2
  %229 = zext i16 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %227, i64 %230
  store i16* %231, i16** %13, align 8
  store i16 0, i16* %16, align 2
  br label %232

232:                                              ; preds = %252, %220
  %233 = load i16*, i16** %11, align 8
  %234 = getelementptr inbounds i16, i16* %233, i32 1
  store i16* %234, i16** %11, align 8
  %235 = load i16, i16* %233, align 2
  %236 = zext i16 %235 to i32
  %237 = load i16, i16* %19, align 2
  %238 = zext i16 %237 to i32
  %239 = mul nsw i32 %236, %238
  store i32 %239, i32* %14, align 4
  %240 = load i16, i16* %16, align 2
  %241 = zext i16 %240 to i32
  %242 = load i32, i32* %14, align 4
  %243 = add i32 %242, %241
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = lshr i32 %244, 16
  %246 = trunc i32 %245 to i16
  store i16 %246, i16* %16, align 2
  %247 = load i32, i32* %14, align 4
  %248 = and i32 %247, 65535
  %249 = trunc i32 %248 to i16
  %250 = load i16*, i16** %10, align 8
  %251 = getelementptr inbounds i16, i16* %250, i32 1
  store i16* %251, i16** %10, align 8
  store i16 %249, i16* %250, align 2
  br label %252

252:                                              ; preds = %232
  %253 = load i16*, i16** %11, align 8
  %254 = load i16*, i16** %13, align 8
  %255 = icmp ult i16* %253, %254
  br i1 %255, label %232, label %256, !llvm.loop !6

256:                                              ; preds = %252
  %257 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %258 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %7, %struct.precisionType* noundef %257)
  %259 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %260 = icmp ne %struct.precisionType* %259, null
  br i1 %260, label %261, label %272

261:                                              ; preds = %256
  %262 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %263 = bitcast %struct.precisionType* %262 to i16*
  %264 = load i16, i16* %263, align 2
  %265 = add i16 %264, -1
  store i16 %265, i16* %263, align 2
  %266 = zext i16 %265 to i32
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %270 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %269)
  %271 = icmp ne i32 %270, 0
  br label %272

272:                                              ; preds = %268, %261, %256
  %273 = phi i1 [ false, %261 ], [ false, %256 ], [ %271, %268 ]
  %274 = zext i1 %273 to i32
  %275 = load i16, i16* %18, align 2
  %276 = zext i16 %275 to i32
  %277 = load i16, i16* %17, align 2
  %278 = zext i16 %277 to i32
  %279 = add nsw i32 %276, %278
  %280 = add nsw i32 %279, 1
  %281 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %280)
  store %struct.precisionType* %281, %struct.precisionType** %23, align 8
  %282 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %283 = icmp eq %struct.precisionType* %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %272
  %285 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  store %struct.precisionType* %285, %struct.precisionType** %5, align 8
  br label %782

286:                                              ; preds = %272
  %287 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %288 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %287, i32 0, i32 4
  %289 = getelementptr inbounds [1 x i16], [1 x i16]* %288, i64 0, i64 0
  store i16* %289, i16** %10, align 8
  %290 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %291 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %290, i32 0, i32 4
  %292 = getelementptr inbounds [1 x i16], [1 x i16]* %291, i64 0, i64 0
  store i16* %292, i16** %11, align 8
  %293 = load i16*, i16** %10, align 8
  %294 = load i16, i16* %18, align 2
  %295 = zext i16 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %293, i64 %296
  %298 = load i16, i16* %17, align 2
  %299 = zext i16 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i16, i16* %297, i64 %300
  store i16* %301, i16** %13, align 8
  br label %302

302:                                              ; preds = %322, %286
  %303 = load i16*, i16** %10, align 8
  %304 = getelementptr inbounds i16, i16* %303, i32 1
  store i16* %304, i16** %10, align 8
  %305 = load i16, i16* %303, align 2
  %306 = zext i16 %305 to i32
  %307 = load i16, i16* %19, align 2
  %308 = zext i16 %307 to i32
  %309 = mul nsw i32 %306, %308
  store i32 %309, i32* %14, align 4
  %310 = load i16, i16* %16, align 2
  %311 = zext i16 %310 to i32
  %312 = load i32, i32* %14, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %14, align 4
  %314 = load i32, i32* %14, align 4
  %315 = lshr i32 %314, 16
  %316 = trunc i32 %315 to i16
  store i16 %316, i16* %16, align 2
  %317 = load i32, i32* %14, align 4
  %318 = and i32 %317, 65535
  %319 = trunc i32 %318 to i16
  %320 = load i16*, i16** %11, align 8
  %321 = getelementptr inbounds i16, i16* %320, i32 1
  store i16* %321, i16** %11, align 8
  store i16 %319, i16* %320, align 2
  br label %322

322:                                              ; preds = %302
  %323 = load i16*, i16** %10, align 8
  %324 = load i16*, i16** %13, align 8
  %325 = icmp ult i16* %323, %324
  br i1 %325, label %302, label %326, !llvm.loop !7

326:                                              ; preds = %322
  %327 = load i16, i16* %16, align 2
  %328 = load i16*, i16** %11, align 8
  store i16 %327, i16* %328, align 2
  %329 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %330 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %6, %struct.precisionType* noundef %329)
  %331 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %332 = icmp ne %struct.precisionType* %331, null
  br i1 %332, label %333, label %344

333:                                              ; preds = %326
  %334 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %335 = bitcast %struct.precisionType* %334 to i16*
  %336 = load i16, i16* %335, align 2
  %337 = add i16 %336, -1
  store i16 %337, i16* %335, align 2
  %338 = zext i16 %337 to i32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %333
  %341 = load %struct.precisionType*, %struct.precisionType** %23, align 8
  %342 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %341)
  %343 = icmp ne i32 %342, 0
  br label %344

344:                                              ; preds = %340, %333, %326
  %345 = phi i1 [ false, %333 ], [ false, %326 ], [ %343, %340 ]
  %346 = zext i1 %345 to i32
  %347 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %348 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %347, i32 0, i32 4
  %349 = getelementptr inbounds [1 x i16], [1 x i16]* %348, i64 0, i64 0
  %350 = load i16, i16* %18, align 2
  %351 = zext i16 %350 to i32
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i16, i16* %349, i64 %352
  %354 = getelementptr inbounds i16, i16* %353, i64 1
  store i16* %354, i16** %10, align 8
  br label %355

355:                                              ; preds = %561, %344
  %356 = load i16*, i16** %10, align 8
  %357 = getelementptr inbounds i16, i16* %356, i32 -1
  store i16* %357, i16** %10, align 8
  %358 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %359 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %358, i32 0, i32 4
  %360 = getelementptr inbounds [1 x i16], [1 x i16]* %359, i64 0, i64 0
  %361 = load i16, i16* %17, align 2
  %362 = zext i16 %361 to i32
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i16, i16* %360, i64 %363
  store i16* %364, i16** %11, align 8
  %365 = load i16*, i16** %10, align 8
  %366 = load i16, i16* %17, align 2
  %367 = zext i16 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i16, i16* %365, i64 %368
  store i16* %369, i16** %13, align 8
  %370 = load i16*, i16** %13, align 8
  %371 = load i16, i16* %370, align 2
  %372 = zext i16 %371 to i32
  %373 = load i16*, i16** %11, align 8
  %374 = getelementptr inbounds i16, i16* %373, i32 -1
  store i16* %374, i16** %11, align 8
  %375 = load i16, i16* %374, align 2
  %376 = zext i16 %375 to i32
  %377 = icmp eq i32 %372, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %355
  store i16 -1, i16* %20, align 2
  br label %435

379:                                              ; preds = %355
  %380 = load i16*, i16** %13, align 8
  %381 = load i16, i16* %380, align 2
  %382 = zext i16 %381 to i32
  %383 = shl i32 %382, 16
  store i32 %383, i32* %14, align 4
  %384 = load i16*, i16** %13, align 8
  %385 = getelementptr inbounds i16, i16* %384, i32 -1
  store i16* %385, i16** %13, align 8
  %386 = load i16, i16* %385, align 2
  %387 = zext i16 %386 to i32
  %388 = load i32, i32* %14, align 4
  %389 = add i32 %388, %387
  store i32 %389, i32* %14, align 4
  %390 = load i32, i32* %14, align 4
  %391 = load i16*, i16** %11, align 8
  %392 = load i16, i16* %391, align 2
  %393 = zext i16 %392 to i32
  %394 = udiv i32 %390, %393
  %395 = trunc i32 %394 to i16
  store i16 %395, i16* %20, align 2
  %396 = load i32, i32* %14, align 4
  %397 = load i16*, i16** %11, align 8
  %398 = load i16, i16* %397, align 2
  %399 = zext i16 %398 to i32
  %400 = urem i32 %396, %399
  store i32 %400, i32* %14, align 4
  %401 = load i16*, i16** %11, align 8
  %402 = getelementptr inbounds i16, i16* %401, i32 -1
  store i16* %402, i16** %11, align 8
  %403 = load i16*, i16** %13, align 8
  %404 = getelementptr inbounds i16, i16* %403, i32 -1
  store i16* %404, i16** %13, align 8
  br label %405

405:                                              ; preds = %431, %379
  %406 = load i16*, i16** %11, align 8
  %407 = load i16, i16* %406, align 2
  %408 = zext i16 %407 to i32
  %409 = load i16, i16* %20, align 2
  %410 = zext i16 %409 to i32
  %411 = mul nsw i32 %408, %410
  %412 = load i32, i32* %14, align 4
  %413 = shl i32 %412, 16
  %414 = load i16*, i16** %13, align 8
  %415 = load i16, i16* %414, align 2
  %416 = zext i16 %415 to i32
  %417 = add i32 %413, %416
  %418 = icmp ugt i32 %411, %417
  br i1 %418, label %419, label %432

419:                                              ; preds = %405
  %420 = load i16, i16* %20, align 2
  %421 = add i16 %420, -1
  store i16 %421, i16* %20, align 2
  %422 = load i16*, i16** %11, align 8
  %423 = getelementptr inbounds i16, i16* %422, i64 1
  %424 = load i16, i16* %423, align 2
  %425 = zext i16 %424 to i32
  %426 = load i32, i32* %14, align 4
  %427 = add i32 %426, %425
  store i32 %427, i32* %14, align 4
  %428 = load i32, i32* %14, align 4
  %429 = icmp uge i32 %428, 65536
  br i1 %429, label %430, label %431

430:                                              ; preds = %419
  br label %432

431:                                              ; preds = %419
  br label %405, !llvm.loop !8

432:                                              ; preds = %430, %405
  %433 = load i16*, i16** %13, align 8
  %434 = getelementptr inbounds i16, i16* %433, i64 2
  store i16* %434, i16** %13, align 8
  br label %435

435:                                              ; preds = %432, %378
  %436 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %437 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %436, i32 0, i32 4
  %438 = getelementptr inbounds [1 x i16], [1 x i16]* %437, i64 0, i64 0
  store i16* %438, i16** %11, align 8
  store i16 1, i16* %15, align 2
  store i16 0, i16* %16, align 2
  br label %439

439:                                              ; preds = %474, %435
  %440 = load i16, i16* %20, align 2
  %441 = zext i16 %440 to i32
  %442 = load i16*, i16** %11, align 8
  %443 = getelementptr inbounds i16, i16* %442, i32 1
  store i16* %443, i16** %11, align 8
  %444 = load i16, i16* %442, align 2
  %445 = zext i16 %444 to i32
  %446 = mul nsw i32 %441, %445
  store i32 %446, i32* %14, align 4
  %447 = load i16, i16* %16, align 2
  %448 = zext i16 %447 to i32
  %449 = load i32, i32* %14, align 4
  %450 = add i32 %449, %448
  store i32 %450, i32* %14, align 4
  %451 = load i32, i32* %14, align 4
  %452 = lshr i32 %451, 16
  %453 = trunc i32 %452 to i16
  store i16 %453, i16* %16, align 2
  %454 = load i32, i32* %14, align 4
  %455 = and i32 %454, 65535
  store i32 %455, i32* %14, align 4
  %456 = load i32, i32* %14, align 4
  %457 = sub i32 65535, %456
  store i32 %457, i32* %14, align 4
  %458 = load i16*, i16** %10, align 8
  %459 = load i16, i16* %458, align 2
  %460 = zext i16 %459 to i32
  %461 = load i16, i16* %15, align 2
  %462 = zext i16 %461 to i32
  %463 = add nsw i32 %460, %462
  %464 = load i32, i32* %14, align 4
  %465 = add i32 %464, %463
  store i32 %465, i32* %14, align 4
  %466 = load i32, i32* %14, align 4
  %467 = lshr i32 %466, 16
  %468 = trunc i32 %467 to i16
  store i16 %468, i16* %15, align 2
  %469 = load i32, i32* %14, align 4
  %470 = and i32 %469, 65535
  %471 = trunc i32 %470 to i16
  %472 = load i16*, i16** %10, align 8
  %473 = getelementptr inbounds i16, i16* %472, i32 1
  store i16* %473, i16** %10, align 8
  store i16 %471, i16* %472, align 2
  br label %474

474:                                              ; preds = %439
  %475 = load i16*, i16** %10, align 8
  %476 = load i16*, i16** %13, align 8
  %477 = icmp ult i16* %475, %476
  br i1 %477, label %439, label %478, !llvm.loop !9

478:                                              ; preds = %474
  %479 = load i16, i16* %16, align 2
  %480 = zext i16 %479 to i32
  %481 = sub nsw i32 65535, %480
  store i32 %481, i32* %14, align 4
  %482 = load i16*, i16** %10, align 8
  %483 = load i16, i16* %482, align 2
  %484 = zext i16 %483 to i32
  %485 = load i16, i16* %15, align 2
  %486 = zext i16 %485 to i32
  %487 = add nsw i32 %484, %486
  %488 = load i32, i32* %14, align 4
  %489 = add i32 %488, %487
  store i32 %489, i32* %14, align 4
  %490 = load i32, i32* %14, align 4
  %491 = lshr i32 %490, 16
  %492 = trunc i32 %491 to i16
  store i16 %492, i16* %15, align 2
  %493 = load i32, i32* %14, align 4
  %494 = and i32 %493, 65535
  %495 = trunc i32 %494 to i16
  %496 = load i16*, i16** %10, align 8
  store i16 %495, i16* %496, align 2
  %497 = load i16, i16* %17, align 2
  %498 = zext i16 %497 to i32
  %499 = load i16*, i16** %10, align 8
  %500 = sext i32 %498 to i64
  %501 = sub i64 0, %500
  %502 = getelementptr inbounds i16, i16* %499, i64 %501
  store i16* %502, i16** %10, align 8
  %503 = load i16, i16* %15, align 2
  %504 = zext i16 %503 to i32
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %557

506:                                              ; preds = %478
  %507 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %508 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %507, i32 0, i32 4
  %509 = getelementptr inbounds [1 x i16], [1 x i16]* %508, i64 0, i64 0
  store i16* %509, i16** %11, align 8
  %510 = load i16*, i16** %10, align 8
  %511 = load i16, i16* %17, align 2
  %512 = zext i16 %511 to i32
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i16, i16* %510, i64 %513
  store i16* %514, i16** %13, align 8
  br label %515

515:                                              ; preds = %536, %506
  %516 = load i16*, i16** %10, align 8
  %517 = load i16, i16* %516, align 2
  %518 = zext i16 %517 to i32
  %519 = load i16*, i16** %11, align 8
  %520 = getelementptr inbounds i16, i16* %519, i32 1
  store i16* %520, i16** %11, align 8
  %521 = load i16, i16* %519, align 2
  %522 = zext i16 %521 to i32
  %523 = add nsw i32 %518, %522
  store i32 %523, i32* %14, align 4
  %524 = load i16, i16* %15, align 2
  %525 = zext i16 %524 to i32
  %526 = load i32, i32* %14, align 4
  %527 = add i32 %526, %525
  store i32 %527, i32* %14, align 4
  %528 = load i32, i32* %14, align 4
  %529 = lshr i32 %528, 16
  %530 = trunc i32 %529 to i16
  store i16 %530, i16* %15, align 2
  %531 = load i32, i32* %14, align 4
  %532 = and i32 %531, 65535
  %533 = trunc i32 %532 to i16
  %534 = load i16*, i16** %10, align 8
  %535 = getelementptr inbounds i16, i16* %534, i32 1
  store i16* %535, i16** %10, align 8
  store i16 %533, i16* %534, align 2
  br label %536

536:                                              ; preds = %515
  %537 = load i16*, i16** %10, align 8
  %538 = load i16*, i16** %13, align 8
  %539 = icmp ult i16* %537, %538
  br i1 %539, label %515, label %540, !llvm.loop !10

540:                                              ; preds = %536
  %541 = load i16, i16* %15, align 2
  %542 = zext i16 %541 to i32
  %543 = sub nsw i32 %542, 65536
  %544 = load i16*, i16** %10, align 8
  %545 = load i16, i16* %544, align 2
  %546 = zext i16 %545 to i32
  %547 = add nsw i32 %546, %543
  %548 = trunc i32 %547 to i16
  store i16 %548, i16* %544, align 2
  %549 = load i16, i16* %17, align 2
  %550 = zext i16 %549 to i32
  %551 = load i16*, i16** %10, align 8
  %552 = sext i32 %550 to i64
  %553 = sub i64 0, %552
  %554 = getelementptr inbounds i16, i16* %551, i64 %553
  store i16* %554, i16** %10, align 8
  %555 = load i16, i16* %20, align 2
  %556 = add i16 %555, -1
  store i16 %556, i16* %20, align 2
  br label %557

557:                                              ; preds = %540, %478
  %558 = load i16, i16* %20, align 2
  %559 = load i16*, i16** %12, align 8
  %560 = getelementptr inbounds i16, i16* %559, i32 -1
  store i16* %560, i16** %12, align 8
  store i16 %558, i16* %560, align 2
  br label %561

561:                                              ; preds = %557
  %562 = load i16*, i16** %10, align 8
  %563 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %564 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %563, i32 0, i32 4
  %565 = getelementptr inbounds [1 x i16], [1 x i16]* %564, i64 0, i64 0
  %566 = icmp ugt i16* %562, %565
  br i1 %566, label %355, label %567, !llvm.loop !11

567:                                              ; preds = %561
  %568 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %569 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %568, i32 0, i32 4
  %570 = getelementptr inbounds [1 x i16], [1 x i16]* %569, i64 0, i64 0
  %571 = load i16, i16* %17, align 2
  %572 = zext i16 %571 to i32
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i16, i16* %570, i64 %573
  store i16* %574, i16** %10, align 8
  %575 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %576 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %575, i32 0, i32 4
  %577 = getelementptr inbounds [1 x i16], [1 x i16]* %576, i64 0, i64 0
  %578 = load i16, i16* %17, align 2
  %579 = zext i16 %578 to i32
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i16, i16* %577, i64 %580
  store i16* %581, i16** %11, align 8
  store i16 0, i16* %16, align 2
  br label %582

582:                                              ; preds = %604, %567
  %583 = load i16, i16* %16, align 2
  %584 = zext i16 %583 to i32
  %585 = shl i32 %584, 16
  store i32 %585, i32* %14, align 4
  %586 = load i16*, i16** %10, align 8
  %587 = getelementptr inbounds i16, i16* %586, i32 -1
  store i16* %587, i16** %10, align 8
  %588 = load i16, i16* %587, align 2
  %589 = zext i16 %588 to i32
  %590 = load i32, i32* %14, align 4
  %591 = add i32 %590, %589
  store i32 %591, i32* %14, align 4
  %592 = load i32, i32* %14, align 4
  %593 = load i16, i16* %19, align 2
  %594 = zext i16 %593 to i32
  %595 = udiv i32 %592, %594
  %596 = trunc i32 %595 to i16
  %597 = load i16*, i16** %11, align 8
  %598 = getelementptr inbounds i16, i16* %597, i32 -1
  store i16* %598, i16** %11, align 8
  store i16 %596, i16* %598, align 2
  %599 = load i32, i32* %14, align 4
  %600 = load i16, i16* %19, align 2
  %601 = zext i16 %600 to i32
  %602 = urem i32 %599, %601
  %603 = trunc i32 %602 to i16
  store i16 %603, i16* %16, align 2
  br label %604

604:                                              ; preds = %582
  %605 = load i16*, i16** %10, align 8
  %606 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %607 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %606, i32 0, i32 4
  %608 = getelementptr inbounds [1 x i16], [1 x i16]* %607, i64 0, i64 0
  %609 = icmp ugt i16* %605, %608
  br i1 %609, label %582, label %610, !llvm.loop !12

610:                                              ; preds = %604
  %611 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  call void (%struct.precisionType*, ...) bitcast (void (...)* @pnorm to void (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %611)
  br label %612

612:                                              ; preds = %610, %204
  %613 = load i16, i16* %18, align 2
  %614 = zext i16 %613 to i32
  %615 = icmp sgt i32 %614, 0
  br i1 %615, label %616, label %629

616:                                              ; preds = %612
  %617 = load i16*, i16** %12, align 8
  %618 = load i16, i16* %18, align 2
  %619 = zext i16 %618 to i64
  %620 = getelementptr inbounds i16, i16* %617, i64 %619
  %621 = load i16, i16* %620, align 2
  %622 = zext i16 %621 to i32
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %629

624:                                              ; preds = %616
  %625 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %626 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %625, i32 0, i32 2
  %627 = load i16, i16* %626, align 2
  %628 = add i16 %627, -1
  store i16 %628, i16* %626, align 2
  br label %629

629:                                              ; preds = %624, %616, %612
  %630 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %631 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %630, i32 0, i32 2
  %632 = load i16, i16* %631, align 2
  %633 = zext i16 %632 to i32
  %634 = icmp eq i32 %633, 1
  br i1 %634, label %635, label %643

635:                                              ; preds = %629
  %636 = load i16*, i16** %12, align 8
  %637 = load i16, i16* %636, align 2
  %638 = zext i16 %637 to i32
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %635
  %641 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %642 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %641, i32 0, i32 3
  store i8 0, i8* %642, align 2
  br label %643

643:                                              ; preds = %640, %635, %629
  br label %644

644:                                              ; preds = %643, %60
  %645 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %646 = icmp ne %struct.precisionType* %645, null
  br i1 %646, label %647, label %658

647:                                              ; preds = %644
  %648 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %649 = bitcast %struct.precisionType* %648 to i16*
  %650 = load i16, i16* %649, align 2
  %651 = add i16 %650, -1
  store i16 %651, i16* %649, align 2
  %652 = zext i16 %651 to i32
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %658

654:                                              ; preds = %647
  %655 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %656 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %655)
  %657 = icmp ne i32 %656, 0
  br label %658

658:                                              ; preds = %654, %647, %644
  %659 = phi i1 [ false, %647 ], [ false, %644 ], [ %657, %654 ]
  %660 = zext i1 %659 to i32
  %661 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %662 = icmp ne %struct.precisionType* %661, null
  br i1 %662, label %663, label %674

663:                                              ; preds = %658
  %664 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %665 = bitcast %struct.precisionType* %664 to i16*
  %666 = load i16, i16* %665, align 2
  %667 = add i16 %666, -1
  store i16 %667, i16* %665, align 2
  %668 = zext i16 %667 to i32
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %663
  %671 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %672 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %671)
  %673 = icmp ne i32 %672, 0
  br label %674

674:                                              ; preds = %670, %663, %658
  %675 = phi i1 [ false, %663 ], [ false, %658 ], [ %673, %670 ]
  %676 = zext i1 %675 to i32
  %677 = load %struct.precisionType**, %struct.precisionType*** %9, align 8
  %678 = icmp eq %struct.precisionType** %677, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %678, label %679, label %705

679:                                              ; preds = %674
  %680 = load %struct.precisionType**, %struct.precisionType*** %8, align 8
  %681 = icmp ne %struct.precisionType** %680, null
  br i1 %681, label %682, label %686

682:                                              ; preds = %679
  %683 = load %struct.precisionType**, %struct.precisionType*** %8, align 8
  %684 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %685 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %683, %struct.precisionType* noundef %684)
  br label %686

686:                                              ; preds = %682, %679
  %687 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %688 = icmp ne %struct.precisionType* %687, null
  br i1 %688, label %689, label %700

689:                                              ; preds = %686
  %690 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %691 = bitcast %struct.precisionType* %690 to i16*
  %692 = load i16, i16* %691, align 2
  %693 = add i16 %692, -1
  store i16 %693, i16* %691, align 2
  %694 = zext i16 %693 to i32
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %700

696:                                              ; preds = %689
  %697 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %698 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %697)
  %699 = icmp ne i32 %698, 0
  br label %700

700:                                              ; preds = %696, %689, %686
  %701 = phi i1 [ false, %689 ], [ false, %686 ], [ %699, %696 ]
  %702 = zext i1 %701 to i32
  %703 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %704 = call %struct.precisionType* @presult(%struct.precisionType* noundef %703)
  store %struct.precisionType* %704, %struct.precisionType** %5, align 8
  br label %782

705:                                              ; preds = %674
  %706 = load %struct.precisionType**, %struct.precisionType*** %8, align 8
  %707 = icmp eq %struct.precisionType** %706, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %707, label %708, label %734

708:                                              ; preds = %705
  %709 = load %struct.precisionType**, %struct.precisionType*** %9, align 8
  %710 = icmp ne %struct.precisionType** %709, null
  br i1 %710, label %711, label %715

711:                                              ; preds = %708
  %712 = load %struct.precisionType**, %struct.precisionType*** %9, align 8
  %713 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %714 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %712, %struct.precisionType* noundef %713)
  br label %715

715:                                              ; preds = %711, %708
  %716 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %717 = icmp ne %struct.precisionType* %716, null
  br i1 %717, label %718, label %729

718:                                              ; preds = %715
  %719 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %720 = bitcast %struct.precisionType* %719 to i16*
  %721 = load i16, i16* %720, align 2
  %722 = add i16 %721, -1
  store i16 %722, i16* %720, align 2
  %723 = zext i16 %722 to i32
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %729

725:                                              ; preds = %718
  %726 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %727 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %726)
  %728 = icmp ne i32 %727, 0
  br label %729

729:                                              ; preds = %725, %718, %715
  %730 = phi i1 [ false, %718 ], [ false, %715 ], [ %728, %725 ]
  %731 = zext i1 %730 to i32
  %732 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %733 = call %struct.precisionType* @presult(%struct.precisionType* noundef %732)
  store %struct.precisionType* %733, %struct.precisionType** %5, align 8
  br label %782

734:                                              ; preds = %705
  br label %735

735:                                              ; preds = %734
  %736 = load %struct.precisionType**, %struct.precisionType*** %8, align 8
  %737 = icmp ne %struct.precisionType** %736, null
  br i1 %737, label %738, label %742

738:                                              ; preds = %735
  %739 = load %struct.precisionType**, %struct.precisionType*** %8, align 8
  %740 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %741 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %739, %struct.precisionType* noundef %740)
  br label %742

742:                                              ; preds = %738, %735
  %743 = load %struct.precisionType**, %struct.precisionType*** %9, align 8
  %744 = icmp ne %struct.precisionType** %743, null
  br i1 %744, label %745, label %749

745:                                              ; preds = %742
  %746 = load %struct.precisionType**, %struct.precisionType*** %9, align 8
  %747 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %748 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %746, %struct.precisionType* noundef %747)
  br label %749

749:                                              ; preds = %745, %742
  %750 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %751 = icmp ne %struct.precisionType* %750, null
  br i1 %751, label %752, label %763

752:                                              ; preds = %749
  %753 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %754 = bitcast %struct.precisionType* %753 to i16*
  %755 = load i16, i16* %754, align 2
  %756 = add i16 %755, -1
  store i16 %756, i16* %754, align 2
  %757 = zext i16 %756 to i32
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %763

759:                                              ; preds = %752
  %760 = load %struct.precisionType*, %struct.precisionType** %21, align 8
  %761 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %760)
  %762 = icmp ne i32 %761, 0
  br label %763

763:                                              ; preds = %759, %752, %749
  %764 = phi i1 [ false, %752 ], [ false, %749 ], [ %762, %759 ]
  %765 = zext i1 %764 to i32
  %766 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %767 = icmp ne %struct.precisionType* %766, null
  br i1 %767, label %768, label %779

768:                                              ; preds = %763
  %769 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %770 = bitcast %struct.precisionType* %769 to i16*
  %771 = load i16, i16* %770, align 2
  %772 = add i16 %771, -1
  store i16 %772, i16* %770, align 2
  %773 = zext i16 %772 to i32
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %779

775:                                              ; preds = %768
  %776 = load %struct.precisionType*, %struct.precisionType** %22, align 8
  %777 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %776)
  %778 = icmp ne i32 %777, 0
  br label %779

779:                                              ; preds = %775, %768, %763
  %780 = phi i1 [ false, %768 ], [ false, %763 ], [ %778, %775 ]
  %781 = zext i1 %780 to i32
  store %struct.precisionType* null, %struct.precisionType** %5, align 8
  br label %782

782:                                              ; preds = %779, %729, %700, %284, %218, %133, %98
  %783 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  ret %struct.precisionType* %783
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @pnew(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local void @pnorm(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
