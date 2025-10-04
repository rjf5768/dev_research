; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/asearch1.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/asearch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = external dso_local global i32, align 4
@Init1 = external dso_local global i32, align 4
@DD = external dso_local global i32, align 4
@S = external dso_local global i32, align 4
@NO_ERR_MASK = external dso_local global i32, align 4
@D_endpos = external dso_local global i32, align 4
@Init = external dso_local global [0 x i32], align 4
@DELIMITER = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4
@AND = external dso_local global i32, align 4
@endposition = external dso_local global i32, align 4
@INVERSE = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@num_of_matched = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@TRUNCATE = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch1(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %18 = alloca [17 x i32], align 16
  %19 = alloca [17 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %25, align 4
  %27 = load i32, i32* @I, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* @DD, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* @DD, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @I, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* @I, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @S, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* @S, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @strlen(i8* noundef %52) #4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %20, align 4
  %55 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 49151
  store i8 10, i8* %55, align 1
  store i32 49152, i32* %22, align 4
  %56 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* @D_endpos, align 4
  store i32 %57, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %67, %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 1
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %58, !llvm.loop !4

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @D_endpos, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul i32 %76, 2
  store i32 %77, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %89, %70
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %78, !llvm.loop !6

92:                                               ; preds = %78
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %106, %92
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %94, !llvm.loop !7

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %671, %109
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %113 = getelementptr inbounds i8, i8* %112, i64 49152
  %114 = call i32 @fill_buf(i32 noundef %111, i8* noundef %113, i32 noundef 49152)
  store i32 %114, i32* %23, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %672

116:                                              ; preds = %110
  store i32 49152, i32* %8, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 49152, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %24, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  store i32 49151, i32* %8, align 4
  %122 = load i32, i32* @DELIMITER, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %145, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i32, i32* %15, align 4
  %137 = add i32 49152, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %148

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %125, !llvm.loop !8

148:                                              ; preds = %143, %125
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp uge i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %25, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %25, align 4
  br label %155

155:                                              ; preds = %152, %148
  br label %156

156:                                              ; preds = %155, %121
  store i32 0, i32* %24, align 4
  br label %157

157:                                              ; preds = %156, %116
  %158 = load i32, i32* %23, align 4
  %159 = icmp slt i32 %158, 49152
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %162 = getelementptr inbounds i8, i8* %161, i64 49152
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %4, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = call i8* @strncpy(i8* noundef %165, i8* noundef %166, i64 noundef %168) #5
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %20, align 4
  %172 = add i32 %170, %171
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %174
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %160, %157
  br label %177

177:                                              ; preds = %639, %176
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %640

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %8, align 4
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i64
  %188 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* @Init1, align 4
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %190, %194
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %6, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = lshr i32 %199, 1
  %201 = load i32, i32* %13, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* %9, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %206
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %254, %181
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ule i32 %210, %211
  br i1 %212, label %213, label %257

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* @Init1, align 4
  %219 = load i32, i32* %12, align 4
  %220 = and i32 %218, %219
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %12, align 4
  %222 = lshr i32 %221, 1
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @I, align 4
  %227 = sub i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %224, %230
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @DD, align 4
  %234 = sub i32 %232, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @S, align 4
  %240 = sub i32 %238, %239
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %237, %243
  %245 = lshr i32 %244, 1
  %246 = load i32, i32* %17, align 4
  %247 = and i32 %245, %246
  %248 = or i32 %231, %247
  %249 = load i32, i32* %9, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %252
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %213
  %255 = load i32, i32* %15, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %15, align 4
  br label %209, !llvm.loop !9

257:                                              ; preds = %209
  %258 = load i32, i32* %6, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %16, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %410

265:                                              ; preds = %257
  %266 = load i32, i32* %25, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %25, align 4
  %268 = load i32, i32* @AND, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  %272 = mul i32 %271, 2
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @endposition, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* @endposition, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %298, label %280

280:                                              ; preds = %270, %265
  %281 = load i32, i32* @AND, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load i32, i32* %6, align 4
  %285 = mul i32 %284, 2
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @endposition, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br label %292

292:                                              ; preds = %283, %280
  %293 = phi i1 [ false, %280 ], [ %291, %283 ]
  %294 = zext i1 %293 to i32
  %295 = load i32, i32* @INVERSE, align 4
  %296 = xor i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %319

298:                                              ; preds = %292, %270
  %299 = load i32, i32* @FILENAMEONLY, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %298
  %302 = load i32, i32* @num_of_matched, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @num_of_matched, align 4
  %304 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %673

305:                                              ; preds = %298
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 49152, %307
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %312 = load i32, i32* %22, align 4
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %20, align 4
  %315 = sub i32 %313, %314
  %316 = sub i32 %315, 1
  %317 = load i32, i32* %25, align 4
  call void @output(i8* noundef %311, i32 noundef %312, i32 noundef %316, i32 noundef %317)
  br label %318

318:                                              ; preds = %310, %305
  br label %319

319:                                              ; preds = %318, %292
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %20, align 4
  %322 = sub i32 %320, %321
  store i32 %322, i32* %22, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %15, align 4
  br label %324

324:                                              ; preds = %336, %319
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ule i32 %325, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %324
  %329 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %330 = load i32, i32* %15, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %331
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* %15, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %334
  store i32 %329, i32* %335, align 4
  br label %336

336:                                              ; preds = %328
  %337 = load i32, i32* %15, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %15, align 4
  br label %324, !llvm.loop !10

339:                                              ; preds = %324
  %340 = load i32, i32* @Init1, align 4
  %341 = load i32, i32* %6, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %340, %344
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %6, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = lshr i32 %349, 1
  %351 = load i32, i32* %13, align 4
  %352 = and i32 %350, %351
  %353 = load i32, i32* %9, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* %14, align 4
  %356 = and i32 %354, %355
  %357 = load i32, i32* %6, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %358
  store i32 %356, i32* %359, align 4
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %15, align 4
  br label %361

361:                                              ; preds = %406, %339
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %11, align 4
  %364 = icmp ule i32 %362, %363
  br i1 %364, label %365, label %409

365:                                              ; preds = %361
  %366 = load i32, i32* %15, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %12, align 4
  %370 = load i32, i32* @Init1, align 4
  %371 = load i32, i32* %12, align 4
  %372 = and i32 %370, %371
  store i32 %372, i32* %9, align 4
  %373 = load i32, i32* %12, align 4
  %374 = lshr i32 %373, 1
  %375 = load i32, i32* %13, align 4
  %376 = and i32 %374, %375
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* @I, align 4
  %379 = sub i32 %377, %378
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %376, %382
  %384 = load i32, i32* %15, align 4
  %385 = load i32, i32* @DD, align 4
  %386 = sub i32 %384, %385
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* @S, align 4
  %392 = sub i32 %390, %391
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %389, %395
  %397 = lshr i32 %396, 1
  %398 = load i32, i32* %17, align 4
  %399 = and i32 %397, %398
  %400 = or i32 %383, %399
  %401 = load i32, i32* %9, align 4
  %402 = or i32 %400, %401
  %403 = load i32, i32* %15, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %404
  store i32 %402, i32* %405, align 4
  br label %406

406:                                              ; preds = %365
  %407 = load i32, i32* %15, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %361, !llvm.loop !11

409:                                              ; preds = %361
  br label %410

410:                                              ; preds = %409, %257
  %411 = load i32, i32* %8, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %8, align 4
  %413 = zext i32 %411 to i64
  %414 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i64
  %417 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %13, align 4
  %419 = load i32, i32* %6, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @Init1, align 4
  %424 = and i32 %422, %423
  store i32 %424, i32* %9, align 4
  %425 = load i32, i32* %6, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = lshr i32 %428, 1
  %430 = load i32, i32* %13, align 4
  %431 = and i32 %429, %430
  %432 = load i32, i32* %9, align 4
  %433 = or i32 %431, %432
  %434 = load i32, i32* %6, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %435
  store i32 %433, i32* %436, align 4
  %437 = load i32, i32* %10, align 4
  store i32 %437, i32* %15, align 4
  br label %438

438:                                              ; preds = %485, %410
  %439 = load i32, i32* %15, align 4
  %440 = load i32, i32* %11, align 4
  %441 = icmp ule i32 %439, %440
  br i1 %441, label %442, label %488

442:                                              ; preds = %438
  %443 = load i32, i32* %15, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @Init1, align 4
  %448 = and i32 %446, %447
  store i32 %448, i32* %9, align 4
  %449 = load i32, i32* %15, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = lshr i32 %452, 1
  %454 = load i32, i32* %13, align 4
  %455 = and i32 %453, %454
  %456 = load i32, i32* %15, align 4
  %457 = load i32, i32* @I, align 4
  %458 = sub i32 %456, %457
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %455, %461
  %463 = load i32, i32* %15, align 4
  %464 = load i32, i32* @DD, align 4
  %465 = sub i32 %463, %464
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %15, align 4
  %470 = load i32, i32* @S, align 4
  %471 = sub i32 %469, %470
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %468, %474
  %476 = lshr i32 %475, 1
  %477 = load i32, i32* %17, align 4
  %478 = and i32 %476, %477
  %479 = or i32 %462, %478
  %480 = load i32, i32* %9, align 4
  %481 = or i32 %479, %480
  %482 = load i32, i32* %15, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %483
  store i32 %481, i32* %484, align 4
  br label %485

485:                                              ; preds = %442
  %486 = load i32, i32* %15, align 4
  %487 = add i32 %486, 1
  store i32 %487, i32* %15, align 4
  br label %438, !llvm.loop !12

488:                                              ; preds = %438
  %489 = load i32, i32* %6, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %16, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %639

496:                                              ; preds = %488
  %497 = load i32, i32* %25, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %25, align 4
  %499 = load i32, i32* @AND, align 4
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %510

501:                                              ; preds = %496
  %502 = load i32, i32* %11, align 4
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @endposition, align 4
  %507 = and i32 %505, %506
  %508 = load i32, i32* @endposition, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %527, label %510

510:                                              ; preds = %501, %496
  %511 = load i32, i32* @AND, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %521

513:                                              ; preds = %510
  %514 = load i32, i32* %11, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @endposition, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br label %521

521:                                              ; preds = %513, %510
  %522 = phi i1 [ false, %510 ], [ %520, %513 ]
  %523 = zext i1 %522 to i32
  %524 = load i32, i32* @INVERSE, align 4
  %525 = xor i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %548

527:                                              ; preds = %521, %501
  %528 = load i32, i32* @FILENAMEONLY, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %527
  %531 = load i32, i32* @num_of_matched, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* @num_of_matched, align 4
  %533 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %673

534:                                              ; preds = %527
  %535 = load i32, i32* %22, align 4
  %536 = load i32, i32* %23, align 4
  %537 = add nsw i32 49152, %536
  %538 = icmp slt i32 %535, %537
  br i1 %538, label %539, label %547

539:                                              ; preds = %534
  %540 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %541 = load i32, i32* %22, align 4
  %542 = load i32, i32* %8, align 4
  %543 = load i32, i32* %20, align 4
  %544 = sub i32 %542, %543
  %545 = sub i32 %544, 1
  %546 = load i32, i32* %25, align 4
  call void @output(i8* noundef %540, i32 noundef %541, i32 noundef %545, i32 noundef %546)
  br label %547

547:                                              ; preds = %539, %534
  br label %548

548:                                              ; preds = %547, %521
  %549 = load i32, i32* %8, align 4
  %550 = load i32, i32* %20, align 4
  %551 = sub i32 %549, %550
  store i32 %551, i32* %22, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %552 = load i32, i32* %6, align 4
  store i32 %552, i32* %15, align 4
  br label %553

553:                                              ; preds = %565, %548
  %554 = load i32, i32* %15, align 4
  %555 = load i32, i32* %11, align 4
  %556 = icmp ule i32 %554, %555
  br i1 %556, label %557, label %568

557:                                              ; preds = %553
  %558 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %559 = load i32, i32* %15, align 4
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %560
  store i32 %558, i32* %561, align 4
  %562 = load i32, i32* %15, align 4
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %563
  store i32 %558, i32* %564, align 4
  br label %565

565:                                              ; preds = %557
  %566 = load i32, i32* %15, align 4
  %567 = add i32 %566, 1
  store i32 %567, i32* %15, align 4
  br label %553, !llvm.loop !13

568:                                              ; preds = %553
  %569 = load i32, i32* @Init1, align 4
  %570 = load i32, i32* %6, align 4
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = and i32 %569, %573
  store i32 %574, i32* %9, align 4
  %575 = load i32, i32* %6, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = lshr i32 %578, 1
  %580 = load i32, i32* %13, align 4
  %581 = and i32 %579, %580
  %582 = load i32, i32* %9, align 4
  %583 = or i32 %581, %582
  %584 = load i32, i32* %14, align 4
  %585 = and i32 %583, %584
  %586 = load i32, i32* %6, align 4
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %587
  store i32 %585, i32* %588, align 4
  %589 = load i32, i32* %10, align 4
  store i32 %589, i32* %15, align 4
  br label %590

590:                                              ; preds = %635, %568
  %591 = load i32, i32* %15, align 4
  %592 = load i32, i32* %11, align 4
  %593 = icmp ule i32 %591, %592
  br i1 %593, label %594, label %638

594:                                              ; preds = %590
  %595 = load i32, i32* %15, align 4
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %596
  %598 = load i32, i32* %597, align 4
  store i32 %598, i32* %12, align 4
  %599 = load i32, i32* @Init1, align 4
  %600 = load i32, i32* %12, align 4
  %601 = and i32 %599, %600
  store i32 %601, i32* %9, align 4
  %602 = load i32, i32* %12, align 4
  %603 = lshr i32 %602, 1
  %604 = load i32, i32* %13, align 4
  %605 = and i32 %603, %604
  %606 = load i32, i32* %15, align 4
  %607 = load i32, i32* @I, align 4
  %608 = sub i32 %606, %607
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = or i32 %605, %611
  %613 = load i32, i32* %15, align 4
  %614 = load i32, i32* @DD, align 4
  %615 = sub i32 %613, %614
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* %15, align 4
  %620 = load i32, i32* @S, align 4
  %621 = sub i32 %619, %620
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = or i32 %618, %624
  %626 = lshr i32 %625, 1
  %627 = load i32, i32* %17, align 4
  %628 = and i32 %626, %627
  %629 = or i32 %612, %628
  %630 = load i32, i32* %9, align 4
  %631 = or i32 %629, %630
  %632 = load i32, i32* %15, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %633
  store i32 %631, i32* %634, align 4
  br label %635

635:                                              ; preds = %594
  %636 = load i32, i32* %15, align 4
  %637 = add i32 %636, 1
  store i32 %637, i32* %15, align 4
  br label %590, !llvm.loop !14

638:                                              ; preds = %590
  br label %639

639:                                              ; preds = %638, %488
  br label %177, !llvm.loop !15

640:                                              ; preds = %177
  %641 = load i32, i32* %23, align 4
  %642 = add nsw i32 49152, %641
  %643 = load i32, i32* %22, align 4
  %644 = sub nsw i32 %642, %643
  store i32 %644, i32* %21, align 4
  %645 = load i32, i32* %21, align 4
  %646 = icmp sgt i32 %645, 49152
  br i1 %646, label %647, label %648

647:                                              ; preds = %640
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %648

648:                                              ; preds = %647, %640
  %649 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %650 = getelementptr inbounds i8, i8* %649, i64 49152
  %651 = load i32, i32* %21, align 4
  %652 = sext i32 %651 to i64
  %653 = sub i64 0, %652
  %654 = getelementptr inbounds i8, i8* %650, i64 %653
  %655 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %656 = load i32, i32* %22, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8, i8* %655, i64 %657
  %659 = load i32, i32* %21, align 4
  %660 = sext i32 %659 to i64
  %661 = call i8* @strncpy(i8* noundef %654, i8* noundef %658, i64 noundef %660) #5
  %662 = load i32, i32* %21, align 4
  %663 = sub nsw i32 49152, %662
  store i32 %663, i32* %22, align 4
  %664 = load i32, i32* %22, align 4
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %666, label %667

666:                                              ; preds = %648
  store i32 1, i32* %22, align 4
  br label %667

667:                                              ; preds = %666, %648
  %668 = load i32, i32* %23, align 4
  %669 = icmp slt i32 %668, 49152
  br i1 %669, label %670, label %671

670:                                              ; preds = %667
  store i32 49152, i32* %22, align 4
  br label %671

671:                                              ; preds = %670, %667
  br label %110, !llvm.loop !16

672:                                              ; preds = %110
  br label %673

673:                                              ; preds = %672, %530, %301
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fill_buf(i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

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
