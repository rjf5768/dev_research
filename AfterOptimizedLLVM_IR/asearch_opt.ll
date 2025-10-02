; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/asearch.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/asearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_endpos = external dso_local global i32, align 4
@Init1 = external dso_local global i32, align 4
@NO_ERR_MASK = external dso_local global i32, align 4
@Init = external dso_local global [0 x i32], align 4
@Mask = external dso_local global [0 x i32], align 4
@AND = external dso_local global i32, align 4
@endposition = external dso_local global i32, align 4
@INVERSE = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@num_of_matched = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@TRUNCATE = external dso_local global i32, align 4
@I = external dso_local global i32, align 4
@DELIMITER = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch0(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [10 x i32], align 16
  %17 = alloca [10 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %25, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* noundef %28) #4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %19, align 4
  %31 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 49151
  store i8 10, i8* %31, align 1
  %32 = load i32, i32* @D_endpos, align 4
  store i32 %32, i32* %18, align 4
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %42, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %18, align 4
  %39 = shl i32 %38, 1
  %40 = load i32, i32* %18, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %33, !llvm.loop !4

45:                                               ; preds = %33
  %46 = load i32, i32* %18, align 4
  %47 = xor i32 %46, -1
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @Init1, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @D_endpos, align 4
  store i32 %50, i32* %15, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %51

51:                                               ; preds = %63, %45
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %57 = load i32, i32* %24, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %24, align 4
  br label %51, !llvm.loop !6

66:                                               ; preds = %51
  store i32 49152, i32* %22, align 4
  br label %67

67:                                               ; preds = %555, %66
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 49152
  %71 = call i32 @fill_buf(i32 noundef %68, i8* noundef %70, i32 noundef 49152)
  store i32 %71, i32* %23, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %556

73:                                               ; preds = %67
  store i32 49152, i32* %7, align 4
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 49152, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 49151, i32* %7, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %23, align 4
  %81 = icmp slt i32 %80, 49152
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = call i8* @strncpy(i8* noundef %86, i8* noundef %87, i64 noundef %89) #5
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add i32 %96, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %82, %79
  br label %100

100:                                              ; preds = %522, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %523

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = lshr i32 %120, 1
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %123, %124
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  store i32 1, i32* %24, align 4
  br label %127

127:                                              ; preds = %172, %104
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ule i32 %128, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %132, %136
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %24, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %24, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %24, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %147, %152
  %154 = lshr i32 %153, 1
  %155 = load i32, i32* %12, align 4
  %156 = and i32 %154, %155
  %157 = or i32 %142, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = lshr i32 %161, 1
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %10, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %170
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %131
  %173 = load i32, i32* %24, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %24, align 4
  br label %127, !llvm.loop !7

175:                                              ; preds = %127
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %313

181:                                              ; preds = %175
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %25, align 4
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* @AND, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @endposition, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @endposition, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %210, label %196

196:                                              ; preds = %190, %181
  %197 = load i32, i32* @AND, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @endposition, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %199, %196
  %205 = phi i1 [ false, %196 ], [ %203, %199 ]
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* @INVERSE, align 4
  %208 = xor i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %233

210:                                              ; preds = %204, %190
  %211 = load i32, i32* @FILENAMEONLY, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* @num_of_matched, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @num_of_matched, align 4
  %216 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %557

217:                                              ; preds = %210
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sub i32 %218, %219
  %221 = sub i32 %220, 1
  store i32 %221, i32* %26, align 4
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 49152, %223
  %225 = sub nsw i32 %224, 1
  %226 = icmp sge i32 %222, %225
  br i1 %226, label %232, label %227

227:                                              ; preds = %217
  %228 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %26, align 4
  %231 = load i32, i32* %25, align 4
  call void @output(i8* noundef %228, i32 noundef %229, i32 noundef %230, i32 noundef %231)
  br label %232

232:                                              ; preds = %227, %217
  br label %233

233:                                              ; preds = %232, %204
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %19, align 4
  %236 = sub i32 %234, %235
  store i32 %236, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %237

237:                                              ; preds = %246, %233
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ule i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %244
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %24, align 4
  br label %237, !llvm.loop !8

249:                                              ; preds = %237
  %250 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %251 = load i32, i32* %250, align 16
  %252 = load i32, i32* %13, align 4
  %253 = and i32 %251, %252
  store i32 %253, i32* %9, align 4
  %254 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %255 = load i32, i32* %254, align 16
  %256 = lshr i32 %255, 1
  %257 = load i32, i32* %11, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* %18, align 4
  %262 = and i32 %260, %261
  %263 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 %262, i32* %263, align 16
  store i32 1, i32* %24, align 4
  br label %264

264:                                              ; preds = %309, %249
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ule i32 %265, %266
  br i1 %267, label %268, label %312

268:                                              ; preds = %264
  %269 = load i32, i32* @Init1, align 4
  %270 = load i32, i32* %24, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %269, %273
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %24, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %24, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %24, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %284, %289
  %291 = lshr i32 %290, 1
  %292 = load i32, i32* %12, align 4
  %293 = and i32 %291, %292
  %294 = or i32 %279, %293
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %24, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = lshr i32 %298, 1
  %300 = load i32, i32* %11, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* %9, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* %10, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* %24, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %307
  store i32 %305, i32* %308, align 4
  br label %309

309:                                              ; preds = %268
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %24, align 4
  br label %264, !llvm.loop !9

312:                                              ; preds = %264
  br label %313

313:                                              ; preds = %312, %175
  %314 = load i32, i32* %7, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %7, align 4
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %8, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %13, align 4
  %325 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %326 = load i32, i32* %325, align 16
  %327 = and i32 %324, %326
  store i32 %327, i32* %9, align 4
  %328 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %329 = load i32, i32* %328, align 16
  %330 = lshr i32 %329, 1
  %331 = load i32, i32* %11, align 4
  %332 = and i32 %330, %331
  %333 = load i32, i32* %9, align 4
  %334 = or i32 %332, %333
  %335 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %334, i32* %335, align 16
  store i32 1, i32* %24, align 4
  br label %336

336:                                              ; preds = %381, %313
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp ule i32 %337, %338
  br i1 %339, label %340, label %384

340:                                              ; preds = %336
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %24, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %341, %345
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %24, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %24, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %24, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %356, %361
  %363 = lshr i32 %362, 1
  %364 = load i32, i32* %12, align 4
  %365 = and i32 %363, %364
  %366 = or i32 %351, %365
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %24, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = lshr i32 %370, 1
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* %10, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* %9, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* %24, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %379
  store i32 %377, i32* %380, align 4
  br label %381

381:                                              ; preds = %340
  %382 = load i32, i32* %24, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %24, align 4
  br label %336, !llvm.loop !10

384:                                              ; preds = %336
  %385 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %386 = load i32, i32* %385, align 16
  %387 = load i32, i32* %15, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %522

390:                                              ; preds = %384
  %391 = load i32, i32* %25, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %25, align 4
  %393 = load i32, i32* %6, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* @AND, align 4
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %390
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* @endposition, align 4
  %402 = and i32 %400, %401
  %403 = load i32, i32* @endposition, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %419, label %405

405:                                              ; preds = %399, %390
  %406 = load i32, i32* @AND, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load i32, i32* %9, align 4
  %410 = load i32, i32* @endposition, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br label %413

413:                                              ; preds = %408, %405
  %414 = phi i1 [ false, %405 ], [ %412, %408 ]
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* @INVERSE, align 4
  %417 = xor i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %442

419:                                              ; preds = %413, %399
  %420 = load i32, i32* @FILENAMEONLY, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load i32, i32* @num_of_matched, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* @num_of_matched, align 4
  %425 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %557

426:                                              ; preds = %419
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* %19, align 4
  %429 = sub i32 %427, %428
  %430 = sub i32 %429, 1
  store i32 %430, i32* %26, align 4
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* %23, align 4
  %433 = add nsw i32 49152, %432
  %434 = sub nsw i32 %433, 1
  %435 = icmp sge i32 %431, %434
  br i1 %435, label %441, label %436

436:                                              ; preds = %426
  %437 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* %26, align 4
  %440 = load i32, i32* %25, align 4
  call void @output(i8* noundef %437, i32 noundef %438, i32 noundef %439, i32 noundef %440)
  br label %441

441:                                              ; preds = %436, %426
  br label %442

442:                                              ; preds = %441, %413
  %443 = load i32, i32* %7, align 4
  %444 = load i32, i32* %19, align 4
  %445 = sub i32 %443, %444
  store i32 %445, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %446

446:                                              ; preds = %455, %442
  %447 = load i32, i32* %24, align 4
  %448 = load i32, i32* %6, align 4
  %449 = icmp ule i32 %447, %448
  br i1 %449, label %450, label %458

450:                                              ; preds = %446
  %451 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %452 = load i32, i32* %24, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %453
  store i32 %451, i32* %454, align 4
  br label %455

455:                                              ; preds = %450
  %456 = load i32, i32* %24, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %24, align 4
  br label %446, !llvm.loop !11

458:                                              ; preds = %446
  %459 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %460 = load i32, i32* %459, align 16
  %461 = load i32, i32* %13, align 4
  %462 = and i32 %460, %461
  store i32 %462, i32* %9, align 4
  %463 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %464 = load i32, i32* %463, align 16
  %465 = lshr i32 %464, 1
  %466 = load i32, i32* %11, align 4
  %467 = and i32 %465, %466
  %468 = load i32, i32* %9, align 4
  %469 = or i32 %467, %468
  %470 = load i32, i32* %18, align 4
  %471 = and i32 %469, %470
  %472 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %471, i32* %472, align 16
  store i32 1, i32* %24, align 4
  br label %473

473:                                              ; preds = %518, %458
  %474 = load i32, i32* %24, align 4
  %475 = load i32, i32* %6, align 4
  %476 = icmp ule i32 %474, %475
  br i1 %476, label %477, label %521

477:                                              ; preds = %473
  %478 = load i32, i32* %13, align 4
  %479 = load i32, i32* %24, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = and i32 %478, %482
  store i32 %483, i32* %9, align 4
  %484 = load i32, i32* %24, align 4
  %485 = sub nsw i32 %484, 1
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %24, align 4
  %490 = sub nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %24, align 4
  %495 = sub nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = or i32 %493, %498
  %500 = lshr i32 %499, 1
  %501 = load i32, i32* %12, align 4
  %502 = and i32 %500, %501
  %503 = or i32 %488, %502
  store i32 %503, i32* %10, align 4
  %504 = load i32, i32* %24, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = lshr i32 %507, 1
  %509 = load i32, i32* %11, align 4
  %510 = and i32 %508, %509
  %511 = load i32, i32* %9, align 4
  %512 = or i32 %510, %511
  %513 = load i32, i32* %10, align 4
  %514 = or i32 %512, %513
  %515 = load i32, i32* %24, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %516
  store i32 %514, i32* %517, align 4
  br label %518

518:                                              ; preds = %477
  %519 = load i32, i32* %24, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %24, align 4
  br label %473, !llvm.loop !12

521:                                              ; preds = %473
  br label %522

522:                                              ; preds = %521, %384
  br label %100, !llvm.loop !13

523:                                              ; preds = %100
  %524 = load i32, i32* %23, align 4
  %525 = icmp slt i32 %524, 49152
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  store i32 49152, i32* %22, align 4
  br label %555

527:                                              ; preds = %523
  %528 = load i32, i32* %23, align 4
  %529 = add nsw i32 49152, %528
  %530 = load i32, i32* %22, align 4
  %531 = sub nsw i32 %529, %530
  store i32 %531, i32* %21, align 4
  %532 = load i32, i32* %21, align 4
  %533 = icmp sgt i32 %532, 49152
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %535

535:                                              ; preds = %534, %527
  %536 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %537 = getelementptr inbounds i8, i8* %536, i64 49152
  %538 = load i32, i32* %21, align 4
  %539 = sext i32 %538 to i64
  %540 = sub i64 0, %539
  %541 = getelementptr inbounds i8, i8* %537, i64 %540
  %542 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %543 = load i32, i32* %22, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %542, i64 %544
  %546 = load i32, i32* %21, align 4
  %547 = sext i32 %546 to i64
  %548 = call i8* @strncpy(i8* noundef %541, i8* noundef %545, i64 noundef %547) #5
  %549 = load i32, i32* %21, align 4
  %550 = sub nsw i32 49152, %549
  store i32 %550, i32* %22, align 4
  %551 = load i32, i32* %22, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %535
  store i32 1, i32* %22, align 4
  br label %554

554:                                              ; preds = %553, %535
  br label %555

555:                                              ; preds = %554, %526
  br label %67, !llvm.loop !14

556:                                              ; preds = %67
  br label %557

557:                                              ; preds = %556, %422, %213
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fill_buf(i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i32], align 16
  %26 = alloca [9 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %35, align 4
  %38 = load i32, i32* @I, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  call void @asearch0(i8* noundef %45, i32 noundef %46, i32 noundef %47)
  br label %770

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @strlen(i8* noundef %49) #4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %29, align 4
  %52 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 49151
  store i8 10, i8* %52, align 1
  %53 = load i32, i32* @D_endpos, align 4
  store i32 %53, i32* %27, align 4
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %63, %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %29, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %27, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* %27, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %27, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %54, !llvm.loop !15

66:                                               ; preds = %54
  %67 = load i32, i32* %27, align 4
  %68 = xor i32 %67, -1
  store i32 %68, i32* %27, align 4
  %69 = load i32, i32* @Init1, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @D_endpos, align 4
  store i32 %71, i32* %18, align 4
  store i32 1, i32* %30, align 4
  %72 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %72, i32* %24, align 4
  store i32 %72, i32* %23, align 4
  store i32 %72, i32* %22, align 4
  store i32 %72, i32* %21, align 4
  store i32 %72, i32* %20, align 4
  store i32 %72, i32* %19, align 4
  store i32 %72, i32* %17, align 4
  store i32 %72, i32* %16, align 4
  store i32 %72, i32* %15, align 4
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %34, align 4
  br label %73

73:                                               ; preds = %85, %66
  %74 = load i32, i32* %34, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %79 = load i32, i32* %34, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %34, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %34, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %34, align 4
  br label %73, !llvm.loop !16

88:                                               ; preds = %73
  store i32 49152, i32* %32, align 4
  br label %89

89:                                               ; preds = %768, %88
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 49152
  %93 = call i32 @fill_buf(i32 noundef %90, i8* noundef %92, i32 noundef 49152)
  store i32 %93, i32* %33, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %769

95:                                               ; preds = %89
  store i32 49152, i32* %7, align 4
  %96 = load i32, i32* %33, align 4
  %97 = add nsw i32 49152, %96
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %30, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %95
  store i32 49151, i32* %7, align 4
  %101 = load i32, i32* @DELIMITER, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %100
  store i32 0, i32* %34, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* %34, align 4
  %106 = load i32, i32* %29, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %34, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %34, align 4
  %116 = add nsw i32 49152, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %114, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %127

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %34, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %34, align 4
  br label %104, !llvm.loop !17

127:                                              ; preds = %122, %104
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %29, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %35, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %35, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %100
  store i32 0, i32* %30, align 4
  br label %136

136:                                              ; preds = %135, %95
  %137 = load i32, i32* %33, align 4
  %138 = icmp slt i32 %137, 49152
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %141 = load i32, i32* %28, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8*, i8** %4, align 8
  %145 = load i32, i32* %29, align 4
  %146 = sext i32 %145 to i64
  %147 = call i8* @strncpy(i8* noundef %143, i8* noundef %144, i64 noundef %146) #5
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %29, align 4
  %150 = add i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %29, align 4
  %155 = add i32 %153, %154
  store i32 %155, i32* %28, align 4
  br label %156

156:                                              ; preds = %139, %136
  br label %157

157:                                              ; preds = %735, %156
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %28, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %736

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %15, align 4
  %173 = and i32 %171, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %15, align 4
  %175 = lshr i32 %174, 1
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %177, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %17, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %184, %185
  %187 = lshr i32 %186, 1
  %188 = load i32, i32* %12, align 4
  %189 = and i32 %187, %188
  %190 = or i32 %183, %189
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %17, align 4
  %192 = lshr i32 %191, 1
  %193 = load i32, i32* %11, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %161
  br label %272

202:                                              ; preds = %161
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %20, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = or i32 %207, %208
  %210 = lshr i32 %209, 1
  %211 = load i32, i32* %12, align 4
  %212 = and i32 %210, %211
  %213 = or i32 %206, %212
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %20, align 4
  %215 = lshr i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* %10, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %219, %220
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %225

224:                                              ; preds = %202
  br label %272

225:                                              ; preds = %202
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %22, align 4
  %228 = and i32 %226, %227
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = or i32 %230, %231
  %233 = lshr i32 %232, 1
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %233, %234
  %236 = or i32 %229, %235
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %22, align 4
  %238 = lshr i32 %237, 1
  %239 = load i32, i32* %11, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* %10, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* %9, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %248

247:                                              ; preds = %225
  br label %272

248:                                              ; preds = %225
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %24, align 4
  %251 = and i32 %249, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %22, align 4
  %255 = or i32 %253, %254
  %256 = lshr i32 %255, 1
  %257 = load i32, i32* %12, align 4
  %258 = and i32 %256, %257
  %259 = or i32 %252, %258
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %24, align 4
  %261 = lshr i32 %260, 1
  %262 = load i32, i32* %11, align 4
  %263 = and i32 %261, %262
  %264 = load i32, i32* %10, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %9, align 4
  %267 = or i32 %265, %266
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp eq i32 %268, 4
  br i1 %269, label %270, label %271

270:                                              ; preds = %248
  br label %272

271:                                              ; preds = %248
  br label %272

272:                                              ; preds = %271, %270, %247, %224, %201
  %273 = load i32, i32* %7, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %18, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %448

279:                                              ; preds = %272
  %280 = load i32, i32* %35, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %35, align 4
  %282 = load i32, i32* %14, align 4
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = load i32, i32* %16, align 4
  store i32 %286, i32* %9, align 4
  br label %287

287:                                              ; preds = %285, %279
  %288 = load i32, i32* %6, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* %19, align 4
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %290, %287
  %293 = load i32, i32* %6, align 4
  %294 = icmp eq i32 %293, 3
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i32, i32* %21, align 4
  store i32 %296, i32* %9, align 4
  br label %297

297:                                              ; preds = %295, %292
  %298 = load i32, i32* %6, align 4
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32, i32* %23, align 4
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %300, %297
  %303 = load i32, i32* @AND, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %311

305:                                              ; preds = %302
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @endposition, align 4
  %308 = and i32 %306, %307
  %309 = load i32, i32* @endposition, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %325, label %311

311:                                              ; preds = %305, %302
  %312 = load i32, i32* @AND, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @endposition, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br label %319

319:                                              ; preds = %314, %311
  %320 = phi i1 [ false, %311 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* @INVERSE, align 4
  %323 = xor i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %348

325:                                              ; preds = %319, %305
  %326 = load i32, i32* @FILENAMEONLY, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* @num_of_matched, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* @num_of_matched, align 4
  %331 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %770

332:                                              ; preds = %325
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %29, align 4
  %335 = sub i32 %333, %334
  %336 = sub i32 %335, 1
  store i32 %336, i32* %36, align 4
  %337 = load i32, i32* %32, align 4
  %338 = load i32, i32* %33, align 4
  %339 = add nsw i32 49152, %338
  %340 = sub nsw i32 %339, 1
  %341 = icmp sge i32 %337, %340
  br i1 %341, label %347, label %342

342:                                              ; preds = %332
  %343 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %344 = load i32, i32* %32, align 4
  %345 = load i32, i32* %36, align 4
  %346 = load i32, i32* %35, align 4
  call void @output(i8* noundef %343, i32 noundef %344, i32 noundef %345, i32 noundef %346)
  br label %347

347:                                              ; preds = %342, %332
  br label %348

348:                                              ; preds = %347, %319
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %29, align 4
  %351 = sub i32 %349, %350
  store i32 %351, i32* %32, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %34, align 4
  br label %352

352:                                              ; preds = %361, %348
  %353 = load i32, i32* %34, align 4
  %354 = load i32, i32* %6, align 4
  %355 = icmp ule i32 %353, %354
  br i1 %355, label %356, label %364

356:                                              ; preds = %352
  %357 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %358 = load i32, i32* %34, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %359
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %356
  %362 = load i32, i32* %34, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %34, align 4
  br label %352, !llvm.loop !18

364:                                              ; preds = %352
  %365 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %366 = load i32, i32* %365, align 16
  %367 = load i32, i32* @Init1, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %9, align 4
  %369 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %370 = load i32, i32* %369, align 16
  %371 = lshr i32 %370, 1
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* %9, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* %27, align 4
  %377 = and i32 %375, %376
  %378 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  store i32 %377, i32* %378, align 16
  store i32 1, i32* %34, align 4
  br label %379

379:                                              ; preds = %424, %364
  %380 = load i32, i32* %34, align 4
  %381 = load i32, i32* %6, align 4
  %382 = icmp ule i32 %380, %381
  br i1 %382, label %383, label %427

383:                                              ; preds = %379
  %384 = load i32, i32* @Init1, align 4
  %385 = load i32, i32* %34, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %384, %388
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %34, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %34, align 4
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %34, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %399, %404
  %406 = lshr i32 %405, 1
  %407 = load i32, i32* %12, align 4
  %408 = and i32 %406, %407
  %409 = or i32 %394, %408
  store i32 %409, i32* %10, align 4
  %410 = load i32, i32* %34, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = lshr i32 %413, 1
  %415 = load i32, i32* %11, align 4
  %416 = and i32 %414, %415
  %417 = load i32, i32* %9, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* %10, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* %34, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %422
  store i32 %420, i32* %423, align 4
  br label %424

424:                                              ; preds = %383
  %425 = load i32, i32* %34, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %34, align 4
  br label %379, !llvm.loop !19

427:                                              ; preds = %379
  %428 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %429 = load i32, i32* %428, align 16
  store i32 %429, i32* %14, align 4
  %430 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %431 = load i32, i32* %430, align 16
  store i32 %431, i32* %15, align 4
  %432 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 1
  %433 = load i32, i32* %432, align 4
  store i32 %433, i32* %16, align 4
  %434 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 1
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %17, align 4
  %436 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  store i32 %437, i32* %19, align 4
  %438 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 2
  %439 = load i32, i32* %438, align 8
  store i32 %439, i32* %20, align 4
  %440 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 3
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %21, align 4
  %442 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 3
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %22, align 4
  %444 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 4
  %445 = load i32, i32* %444, align 16
  store i32 %445, i32* %23, align 4
  %446 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 4
  %447 = load i32, i32* %446, align 16
  store i32 %447, i32* %24, align 4
  br label %448

448:                                              ; preds = %427, %272
  %449 = load i32, i32* %7, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  store i32 %453, i32* %8, align 4
  %454 = load i32, i32* %8, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %455
  %457 = load i32, i32* %456, align 4
  store i32 %457, i32* %11, align 4
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %14, align 4
  %460 = and i32 %458, %459
  store i32 %460, i32* %9, align 4
  %461 = load i32, i32* %14, align 4
  %462 = lshr i32 %461, 1
  %463 = load i32, i32* %11, align 4
  %464 = and i32 %462, %463
  %465 = load i32, i32* %9, align 4
  %466 = or i32 %464, %465
  store i32 %466, i32* %15, align 4
  %467 = load i32, i32* %13, align 4
  %468 = load i32, i32* %16, align 4
  %469 = and i32 %467, %468
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %14, align 4
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* %15, align 4
  %473 = or i32 %471, %472
  %474 = lshr i32 %473, 1
  %475 = load i32, i32* %12, align 4
  %476 = and i32 %474, %475
  %477 = or i32 %470, %476
  store i32 %477, i32* %10, align 4
  %478 = load i32, i32* %16, align 4
  %479 = lshr i32 %478, 1
  %480 = load i32, i32* %11, align 4
  %481 = and i32 %479, %480
  %482 = load i32, i32* %10, align 4
  %483 = or i32 %481, %482
  %484 = load i32, i32* %9, align 4
  %485 = or i32 %483, %484
  store i32 %485, i32* %17, align 4
  %486 = load i32, i32* %6, align 4
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %489

488:                                              ; preds = %448
  br label %559

489:                                              ; preds = %448
  %490 = load i32, i32* %13, align 4
  %491 = load i32, i32* %19, align 4
  %492 = and i32 %490, %491
  store i32 %492, i32* %9, align 4
  %493 = load i32, i32* %16, align 4
  %494 = load i32, i32* %16, align 4
  %495 = load i32, i32* %17, align 4
  %496 = or i32 %494, %495
  %497 = lshr i32 %496, 1
  %498 = load i32, i32* %12, align 4
  %499 = and i32 %497, %498
  %500 = or i32 %493, %499
  store i32 %500, i32* %10, align 4
  %501 = load i32, i32* %19, align 4
  %502 = lshr i32 %501, 1
  %503 = load i32, i32* %11, align 4
  %504 = and i32 %502, %503
  %505 = load i32, i32* %10, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* %9, align 4
  %508 = or i32 %506, %507
  store i32 %508, i32* %20, align 4
  %509 = load i32, i32* %6, align 4
  %510 = icmp eq i32 %509, 2
  br i1 %510, label %511, label %512

511:                                              ; preds = %489
  br label %559

512:                                              ; preds = %489
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %21, align 4
  %515 = and i32 %513, %514
  store i32 %515, i32* %9, align 4
  %516 = load i32, i32* %19, align 4
  %517 = load i32, i32* %19, align 4
  %518 = load i32, i32* %20, align 4
  %519 = or i32 %517, %518
  %520 = lshr i32 %519, 1
  %521 = load i32, i32* %12, align 4
  %522 = and i32 %520, %521
  %523 = or i32 %516, %522
  store i32 %523, i32* %10, align 4
  %524 = load i32, i32* %21, align 4
  %525 = lshr i32 %524, 1
  %526 = load i32, i32* %11, align 4
  %527 = and i32 %525, %526
  %528 = load i32, i32* %10, align 4
  %529 = or i32 %527, %528
  %530 = load i32, i32* %9, align 4
  %531 = or i32 %529, %530
  store i32 %531, i32* %22, align 4
  %532 = load i32, i32* %6, align 4
  %533 = icmp eq i32 %532, 3
  br i1 %533, label %534, label %535

534:                                              ; preds = %512
  br label %559

535:                                              ; preds = %512
  %536 = load i32, i32* %13, align 4
  %537 = load i32, i32* %23, align 4
  %538 = and i32 %536, %537
  store i32 %538, i32* %9, align 4
  %539 = load i32, i32* %21, align 4
  %540 = load i32, i32* %21, align 4
  %541 = load i32, i32* %22, align 4
  %542 = or i32 %540, %541
  %543 = lshr i32 %542, 1
  %544 = load i32, i32* %12, align 4
  %545 = and i32 %543, %544
  %546 = or i32 %539, %545
  store i32 %546, i32* %10, align 4
  %547 = load i32, i32* %23, align 4
  %548 = lshr i32 %547, 1
  %549 = load i32, i32* %11, align 4
  %550 = and i32 %548, %549
  %551 = load i32, i32* %10, align 4
  %552 = or i32 %550, %551
  %553 = load i32, i32* %9, align 4
  %554 = or i32 %552, %553
  store i32 %554, i32* %24, align 4
  %555 = load i32, i32* %6, align 4
  %556 = icmp eq i32 %555, 4
  br i1 %556, label %557, label %558

557:                                              ; preds = %535
  br label %559

558:                                              ; preds = %535
  br label %559

559:                                              ; preds = %558, %557, %534, %511, %488
  %560 = load i32, i32* %7, align 4
  %561 = add i32 %560, 1
  store i32 %561, i32* %7, align 4
  %562 = load i32, i32* %15, align 4
  %563 = load i32, i32* %18, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %735

566:                                              ; preds = %559
  %567 = load i32, i32* %35, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %35, align 4
  %569 = load i32, i32* %15, align 4
  store i32 %569, i32* %9, align 4
  %570 = load i32, i32* %6, align 4
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %574

572:                                              ; preds = %566
  %573 = load i32, i32* %17, align 4
  store i32 %573, i32* %9, align 4
  br label %574

574:                                              ; preds = %572, %566
  %575 = load i32, i32* %6, align 4
  %576 = icmp eq i32 %575, 2
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  %578 = load i32, i32* %20, align 4
  store i32 %578, i32* %9, align 4
  br label %579

579:                                              ; preds = %577, %574
  %580 = load i32, i32* %6, align 4
  %581 = icmp eq i32 %580, 3
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  %583 = load i32, i32* %22, align 4
  store i32 %583, i32* %9, align 4
  br label %584

584:                                              ; preds = %582, %579
  %585 = load i32, i32* %6, align 4
  %586 = icmp eq i32 %585, 4
  br i1 %586, label %587, label %589

587:                                              ; preds = %584
  %588 = load i32, i32* %24, align 4
  store i32 %588, i32* %9, align 4
  br label %589

589:                                              ; preds = %587, %584
  %590 = load i32, i32* @AND, align 4
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %598

592:                                              ; preds = %589
  %593 = load i32, i32* %9, align 4
  %594 = load i32, i32* @endposition, align 4
  %595 = and i32 %593, %594
  %596 = load i32, i32* @endposition, align 4
  %597 = icmp eq i32 %595, %596
  br i1 %597, label %612, label %598

598:                                              ; preds = %592, %589
  %599 = load i32, i32* @AND, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %598
  %602 = load i32, i32* %9, align 4
  %603 = load i32, i32* @endposition, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br label %606

606:                                              ; preds = %601, %598
  %607 = phi i1 [ false, %598 ], [ %605, %601 ]
  %608 = zext i1 %607 to i32
  %609 = load i32, i32* @INVERSE, align 4
  %610 = xor i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %635

612:                                              ; preds = %606, %592
  %613 = load i32, i32* @FILENAMEONLY, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %619

615:                                              ; preds = %612
  %616 = load i32, i32* @num_of_matched, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* @num_of_matched, align 4
  %618 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %770

619:                                              ; preds = %612
  %620 = load i32, i32* %7, align 4
  %621 = load i32, i32* %29, align 4
  %622 = sub i32 %620, %621
  %623 = sub i32 %622, 1
  store i32 %623, i32* %36, align 4
  %624 = load i32, i32* %32, align 4
  %625 = load i32, i32* %33, align 4
  %626 = add nsw i32 49152, %625
  %627 = sub nsw i32 %626, 1
  %628 = icmp sge i32 %624, %627
  br i1 %628, label %634, label %629

629:                                              ; preds = %619
  %630 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %631 = load i32, i32* %32, align 4
  %632 = load i32, i32* %36, align 4
  %633 = load i32, i32* %35, align 4
  call void @output(i8* noundef %630, i32 noundef %631, i32 noundef %632, i32 noundef %633)
  br label %634

634:                                              ; preds = %629, %619
  br label %635

635:                                              ; preds = %634, %606
  %636 = load i32, i32* %7, align 4
  %637 = load i32, i32* %29, align 4
  %638 = sub i32 %636, %637
  store i32 %638, i32* %32, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %34, align 4
  br label %639

639:                                              ; preds = %648, %635
  %640 = load i32, i32* %34, align 4
  %641 = load i32, i32* %6, align 4
  %642 = icmp ule i32 %640, %641
  br i1 %642, label %643, label %651

643:                                              ; preds = %639
  %644 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %645 = load i32, i32* %34, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %646
  store i32 %644, i32* %647, align 4
  br label %648

648:                                              ; preds = %643
  %649 = load i32, i32* %34, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %34, align 4
  br label %639, !llvm.loop !20

651:                                              ; preds = %639
  %652 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %653 = load i32, i32* %652, align 16
  %654 = load i32, i32* @Init1, align 4
  %655 = and i32 %653, %654
  store i32 %655, i32* %9, align 4
  %656 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %657 = load i32, i32* %656, align 16
  %658 = lshr i32 %657, 1
  %659 = load i32, i32* %11, align 4
  %660 = and i32 %658, %659
  %661 = load i32, i32* %9, align 4
  %662 = or i32 %660, %661
  %663 = load i32, i32* %27, align 4
  %664 = and i32 %662, %663
  %665 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  store i32 %664, i32* %665, align 16
  store i32 1, i32* %34, align 4
  br label %666

666:                                              ; preds = %711, %651
  %667 = load i32, i32* %34, align 4
  %668 = load i32, i32* %6, align 4
  %669 = icmp ule i32 %667, %668
  br i1 %669, label %670, label %714

670:                                              ; preds = %666
  %671 = load i32, i32* @Init1, align 4
  %672 = load i32, i32* %34, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = and i32 %671, %675
  store i32 %676, i32* %9, align 4
  %677 = load i32, i32* %34, align 4
  %678 = sub nsw i32 %677, 1
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* %34, align 4
  %683 = sub nsw i32 %682, 1
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* %34, align 4
  %688 = sub nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = or i32 %686, %691
  %693 = lshr i32 %692, 1
  %694 = load i32, i32* %12, align 4
  %695 = and i32 %693, %694
  %696 = or i32 %681, %695
  store i32 %696, i32* %10, align 4
  %697 = load i32, i32* %34, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = lshr i32 %700, 1
  %702 = load i32, i32* %11, align 4
  %703 = and i32 %701, %702
  %704 = load i32, i32* %9, align 4
  %705 = or i32 %703, %704
  %706 = load i32, i32* %10, align 4
  %707 = or i32 %705, %706
  %708 = load i32, i32* %34, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %709
  store i32 %707, i32* %710, align 4
  br label %711

711:                                              ; preds = %670
  %712 = load i32, i32* %34, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %34, align 4
  br label %666, !llvm.loop !21

714:                                              ; preds = %666
  %715 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %716 = load i32, i32* %715, align 16
  store i32 %716, i32* %14, align 4
  %717 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %718 = load i32, i32* %717, align 16
  store i32 %718, i32* %15, align 4
  %719 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 1
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %16, align 4
  %721 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 1
  %722 = load i32, i32* %721, align 4
  store i32 %722, i32* %17, align 4
  %723 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 2
  %724 = load i32, i32* %723, align 8
  store i32 %724, i32* %19, align 4
  %725 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 2
  %726 = load i32, i32* %725, align 8
  store i32 %726, i32* %20, align 4
  %727 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 3
  %728 = load i32, i32* %727, align 4
  store i32 %728, i32* %21, align 4
  %729 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 3
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %22, align 4
  %731 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 4
  %732 = load i32, i32* %731, align 16
  store i32 %732, i32* %23, align 4
  %733 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 4
  %734 = load i32, i32* %733, align 16
  store i32 %734, i32* %24, align 4
  br label %735

735:                                              ; preds = %714, %559
  br label %157, !llvm.loop !22

736:                                              ; preds = %157
  %737 = load i32, i32* %33, align 4
  %738 = icmp slt i32 %737, 49152
  br i1 %738, label %739, label %740

739:                                              ; preds = %736
  store i32 49152, i32* %32, align 4
  br label %768

740:                                              ; preds = %736
  %741 = load i32, i32* %33, align 4
  %742 = add nsw i32 49152, %741
  %743 = load i32, i32* %32, align 4
  %744 = sub nsw i32 %742, %743
  store i32 %744, i32* %31, align 4
  %745 = load i32, i32* %31, align 4
  %746 = icmp sgt i32 %745, 49152
  br i1 %746, label %747, label %748

747:                                              ; preds = %740
  store i32 49152, i32* %31, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %748

748:                                              ; preds = %747, %740
  %749 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %750 = getelementptr inbounds i8, i8* %749, i64 49152
  %751 = load i32, i32* %31, align 4
  %752 = sext i32 %751 to i64
  %753 = sub i64 0, %752
  %754 = getelementptr inbounds i8, i8* %750, i64 %753
  %755 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %756 = load i32, i32* %32, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i8, i8* %755, i64 %757
  %759 = load i32, i32* %31, align 4
  %760 = sext i32 %759 to i64
  %761 = call i8* @strncpy(i8* noundef %754, i8* noundef %758, i64 noundef %760) #5
  %762 = load i32, i32* %31, align 4
  %763 = sub nsw i32 49152, %762
  store i32 %763, i32* %32, align 4
  %764 = load i32, i32* %32, align 4
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %767

766:                                              ; preds = %748
  store i32 1, i32* %32, align 4
  br label %767

767:                                              ; preds = %766, %748
  br label %768

768:                                              ; preds = %767, %739
  br label %89, !llvm.loop !23

769:                                              ; preds = %89
  br label %770

770:                                              ; preds = %769, %615, %328, %44
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
