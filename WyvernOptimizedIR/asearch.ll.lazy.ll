; ModuleID = './asearch.ll'
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
  %4 = alloca [10 x i32], align 16
  %5 = alloca [10 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49151
  store i8 10, i8* %9, align 1
  %10 = load i32, i32* @D_endpos, align 4
  br label %11

11:                                               ; preds = %14, %3
  %.018 = phi i32 [ %10, %3 ], [ %16, %14 ]
  %.05 = phi i32 [ 1, %3 ], [ %17, %14 ]
  %12 = icmp ult i32 %.05, %8
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  %15 = shl i32 %.018, 1
  %16 = or i32 %15, %.018
  %17 = add i32 %.05, 1
  br label %11, !llvm.loop !4

18:                                               ; preds = %11
  %19 = xor i32 %.018, -1
  %20 = load i32, i32* @Init1, align 4
  %21 = load i32, i32* @NO_ERR_MASK, align 4
  %22 = load i32, i32* @D_endpos, align 4
  br label %23

23:                                               ; preds = %30, %18
  %.01 = phi i32 [ 0, %18 ], [ %31, %30 ]
  %.not = icmp ugt i32 %.01, %2
  br i1 %.not, label %32, label %24

24:                                               ; preds = %23
  %25 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %26
  store i32 %25, i32* %27, align 4
  %28 = zext i32 %.01 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %.01, 1
  br label %23, !llvm.loop !6

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %352, %32
  %.016 = phi i32 [ 1, %32 ], [ %.117, %352 ]
  %.08 = phi i32 [ 49152, %32 ], [ %.513, %352 ]
  %.0 = phi i32 [ 0, %32 ], [ %.1, %352 ]
  %34 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %35 = call i32 @fill_buf(i32 noundef %1, i8* noundef nonnull %34, i32 noundef 49152) #6
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %353

37:                                               ; preds = %33
  %38 = add nsw i32 %35, 49152
  %.not23 = icmp eq i32 %.016, 0
  br i1 %.not23, label %40, label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %37
  %.117 = phi i32 [ 0, %39 ], [ %.016, %37 ]
  %.16 = phi i32 [ 49151, %39 ], [ 49152, %37 ]
  %41 = icmp slt i32 %35, 49152
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = zext i32 %38 to i64
  %44 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %43
  %sext = shl i64 %7, 32
  %45 = ashr exact i64 %sext, 32
  %46 = call i8* @strncpy(i8* noundef nonnull %44, i8* noundef %0, i64 noundef %45) #6
  %47 = add i32 %38, %8
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  %50 = add i32 %38, %8
  br label %51

51:                                               ; preds = %42, %40
  %.015 = phi i32 [ %50, %42 ], [ %38, %40 ]
  br label %52

52:                                               ; preds = %330, %51
  %.19 = phi i32 [ %.08, %51 ], [ %.311, %330 ]
  %.27 = phi i32 [ %.16, %51 ], [ %193, %330 ]
  %.1 = phi i32 [ %.0, %51 ], [ %.3, %330 ]
  %53 = icmp ult i32 %.27, %.015
  br i1 %53, label %54, label %331

54:                                               ; preds = %52
  %55 = add i32 %.27, 1
  %56 = zext i32 %.27 to i64
  %57 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = and i32 %63, %20
  %65 = lshr i32 %63, 1
  %66 = and i32 %65, %61
  %67 = or i32 %66, %64
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  br label %69

69:                                               ; preds = %100, %54
  %.12 = phi i32 [ 1, %54 ], [ %101, %100 ]
  %.not24 = icmp ugt i32 %.12, %2
  br i1 %.not24, label %102, label %70

70:                                               ; preds = %69
  %71 = zext i32 %.12 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %20, %73
  %75 = add nsw i32 %.12, -1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %.12, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %.12, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %82, %86
  %88 = lshr i32 %87, 1
  %89 = and i32 %88, %21
  %90 = or i32 %78, %89
  %91 = zext i32 %.12 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = lshr i32 %93, 1
  %95 = and i32 %94, %61
  %96 = or i32 %95, %90
  %97 = or i32 %96, %74
  %98 = zext i32 %.12 to i64
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %98
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %70
  %101 = add nuw nsw i32 %.12, 1
  br label %69, !llvm.loop !7

102:                                              ; preds = %69
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = and i32 %104, %22
  %.not25 = icmp eq i32 %105, 0
  br i1 %.not25, label %192, label %106

106:                                              ; preds = %102
  %107 = add nsw i32 %.1, 1
  %108 = zext i32 %2 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AND, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @endposition, align 4
  %115 = and i32 %110, %114
  %116 = icmp eq i32 %115, %114
  br i1 %116, label %128, label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* @AND, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @endposition, align 4
  %122 = and i32 %110, %121
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* @INVERSE, align 4
  %.not33 = icmp eq i32 %127, %126
  br i1 %.not33, label %139, label %128

128:                                              ; preds = %124, %113
  %129 = load i32, i32* @FILENAMEONLY, align 4
  %.not36 = icmp eq i32 %129, 0
  br i1 %.not36, label %133, label %130

130:                                              ; preds = %128
  %131 = load i32, i32* @num_of_matched, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @num_of_matched, align 4
  %puts38 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %354

133:                                              ; preds = %128
  %134 = add nsw i32 %35, 49151
  %.not37 = icmp slt i32 %.19, %134
  br i1 %.not37, label %135, label %138

135:                                              ; preds = %133
  %136 = sub i32 %.27, %8
  %137 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %137, i32 noundef %.19, i32 noundef %136, i32 noundef %107) #6
  br label %138

138:                                              ; preds = %135, %133
  br label %139

139:                                              ; preds = %138, %124
  %140 = sub i32 %55, %8
  br label %141

141:                                              ; preds = %146, %139
  %.23 = phi i32 [ 0, %139 ], [ %147, %146 ]
  %.not34 = icmp ugt i32 %.23, %2
  br i1 %.not34, label %148, label %142

142:                                              ; preds = %141
  %143 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %144 = zext i32 %.23 to i64
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %144
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142
  %147 = add nuw nsw i32 %.23, 1
  br label %141, !llvm.loop !8

148:                                              ; preds = %141
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  %151 = and i32 %150, %20
  %152 = lshr i32 %150, 1
  %153 = and i32 %152, %61
  %154 = or i32 %153, %151
  %155 = and i32 %154, %19
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  store i32 %155, i32* %156, align 16
  br label %157

157:                                              ; preds = %189, %148
  %.34 = phi i32 [ 1, %148 ], [ %190, %189 ]
  %.not35 = icmp ugt i32 %.34, %2
  br i1 %.not35, label %191, label %158

158:                                              ; preds = %157
  %159 = load i32, i32* @Init1, align 4
  %160 = zext i32 %.34 to i64
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %159, %162
  %164 = add nsw i32 %.34, -1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %.34, -1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %.34, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %171, %175
  %177 = lshr i32 %176, 1
  %178 = and i32 %177, %21
  %179 = or i32 %167, %178
  %180 = zext i32 %.34 to i64
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = lshr i32 %182, 1
  %184 = and i32 %183, %61
  %185 = or i32 %184, %163
  %186 = or i32 %185, %179
  %187 = zext i32 %.34 to i64
  %188 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %187
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %158
  %190 = add nuw nsw i32 %.34, 1
  br label %157, !llvm.loop !9

191:                                              ; preds = %157
  br label %192

192:                                              ; preds = %191, %102
  %.210 = phi i32 [ %140, %191 ], [ %.19, %102 ]
  %.2 = phi i32 [ %107, %191 ], [ %.1, %102 ]
  %193 = add i32 %.27, 2
  %194 = zext i32 %55 to i64
  %195 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %201 = load i32, i32* %200, align 16
  %202 = and i32 %20, %201
  %203 = lshr i32 %201, 1
  %204 = and i32 %203, %199
  %205 = or i32 %204, %202
  %206 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  store i32 %205, i32* %206, align 16
  br label %207

207:                                              ; preds = %238, %192
  %.4 = phi i32 [ 1, %192 ], [ %239, %238 ]
  %.not26 = icmp ugt i32 %.4, %2
  br i1 %.not26, label %240, label %208

208:                                              ; preds = %207
  %209 = zext i32 %.4 to i64
  %210 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %20, %211
  %213 = add nsw i32 %.4, -1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %.4, -1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %.4, -1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %220, %224
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, %21
  %228 = or i32 %216, %227
  %229 = zext i32 %.4 to i64
  %230 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = lshr i32 %231, 1
  %233 = and i32 %232, %199
  %234 = or i32 %233, %228
  %235 = or i32 %234, %212
  %236 = zext i32 %.4 to i64
  %237 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %236
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %208
  %239 = add nuw nsw i32 %.4, 1
  br label %207, !llvm.loop !10

240:                                              ; preds = %207
  %241 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %242 = load i32, i32* %241, align 16
  %243 = and i32 %242, %22
  %.not27 = icmp eq i32 %243, 0
  br i1 %.not27, label %330, label %244

244:                                              ; preds = %240
  %245 = add nsw i32 %.2, 1
  %246 = zext i32 %2 to i64
  %247 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @AND, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @endposition, align 4
  %253 = and i32 %248, %252
  %254 = icmp eq i32 %253, %252
  br i1 %254, label %266, label %255

255:                                              ; preds = %251, %244
  %256 = load i32, i32* @AND, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i32, i32* @endposition, align 4
  %260 = and i32 %248, %259
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %258, %255
  %263 = phi i1 [ false, %255 ], [ %261, %258 ]
  %264 = zext i1 %263 to i32
  %265 = load i32, i32* @INVERSE, align 4
  %.not28 = icmp eq i32 %265, %264
  br i1 %.not28, label %278, label %266

266:                                              ; preds = %262, %251
  %267 = load i32, i32* @FILENAMEONLY, align 4
  %.not31 = icmp eq i32 %267, 0
  br i1 %.not31, label %271, label %268

268:                                              ; preds = %266
  %269 = load i32, i32* @num_of_matched, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* @num_of_matched, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %354

271:                                              ; preds = %266
  %272 = add nsw i32 %35, 49151
  %.not32 = icmp slt i32 %.210, %272
  br i1 %.not32, label %273, label %277

273:                                              ; preds = %271
  %274 = xor i32 %8, -1
  %275 = add i32 %193, %274
  %276 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %276, i32 noundef %.210, i32 noundef %275, i32 noundef %245) #6
  br label %277

277:                                              ; preds = %273, %271
  br label %278

278:                                              ; preds = %277, %262
  %279 = sub i32 %193, %8
  br label %280

280:                                              ; preds = %285, %278
  %.5 = phi i32 [ 0, %278 ], [ %286, %285 ]
  %.not29 = icmp ugt i32 %.5, %2
  br i1 %.not29, label %287, label %281

281:                                              ; preds = %280
  %282 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %283 = zext i32 %.5 to i64
  %284 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %283
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %281
  %286 = add nuw nsw i32 %.5, 1
  br label %280, !llvm.loop !11

287:                                              ; preds = %280
  %288 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %289 = load i32, i32* %288, align 16
  %290 = and i32 %289, %20
  %291 = lshr i32 %289, 1
  %292 = and i32 %291, %199
  %293 = or i32 %292, %290
  %294 = and i32 %293, %19
  %295 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  store i32 %294, i32* %295, align 16
  br label %296

296:                                              ; preds = %327, %287
  %.6 = phi i32 [ 1, %287 ], [ %328, %327 ]
  %.not30 = icmp ugt i32 %.6, %2
  br i1 %.not30, label %329, label %297

297:                                              ; preds = %296
  %298 = zext i32 %.6 to i64
  %299 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %20, %300
  %302 = add nsw i32 %.6, -1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %.6, -1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %.6, -1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %309, %313
  %315 = lshr i32 %314, 1
  %316 = and i32 %315, %21
  %317 = or i32 %305, %316
  %318 = zext i32 %.6 to i64
  %319 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = lshr i32 %320, 1
  %322 = and i32 %321, %199
  %323 = or i32 %322, %301
  %324 = or i32 %323, %317
  %325 = zext i32 %.6 to i64
  %326 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %325
  store i32 %324, i32* %326, align 4
  br label %327

327:                                              ; preds = %297
  %328 = add nuw nsw i32 %.6, 1
  br label %296, !llvm.loop !12

329:                                              ; preds = %296
  br label %330

330:                                              ; preds = %329, %240
  %.311 = phi i32 [ %279, %329 ], [ %.210, %240 ]
  %.3 = phi i32 [ %245, %329 ], [ %.2, %240 ]
  br label %52, !llvm.loop !13

331:                                              ; preds = %52
  %332 = icmp slt i32 %35, 49152
  br i1 %332, label %333, label %334

333:                                              ; preds = %331
  br label %352

334:                                              ; preds = %331
  %335 = add nsw i32 %35, 49152
  %336 = sub nsw i32 %335, %.19
  %337 = icmp sgt i32 %336, 49152
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 1, i32* @TRUNCATE, align 4
  br label %339

339:                                              ; preds = %338, %334
  %.014 = phi i32 [ 49152, %338 ], [ %336, %334 ]
  %340 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %341 = sext i32 %.014 to i64
  %342 = sub nsw i64 0, %341
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = sext i32 %.19 to i64
  %345 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %344
  %346 = sext i32 %.014 to i64
  %347 = call i8* @strncpy(i8* noundef nonnull %343, i8* noundef nonnull %345, i64 noundef %346) #6
  %348 = sub nsw i32 49152, %.014
  %349 = icmp eq i32 %.014, 49152
  br i1 %349, label %350, label %351

350:                                              ; preds = %339
  br label %351

351:                                              ; preds = %350, %339
  %.412 = phi i32 [ 1, %350 ], [ %348, %339 ]
  br label %352

352:                                              ; preds = %351, %333
  %.513 = phi i32 [ 49152, %333 ], [ %.412, %351 ]
  br label %33, !llvm.loop !14

353:                                              ; preds = %33
  br label %354

354:                                              ; preds = %353, %268, %130
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fill_buf(i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  %7 = load i32, i32* @I, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp ugt i32 %2, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @asearch0(i8* noundef %0, i32 noundef %1, i32 noundef %2)
  br label %456

13:                                               ; preds = %10
  %14 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49151
  store i8 10, i8* %16, align 1
  %17 = load i32, i32* @D_endpos, align 4
  br label %18

18:                                               ; preds = %21, %13
  %.064 = phi i32 [ %17, %13 ], [ %23, %21 ]
  %.07 = phi i32 [ 1, %13 ], [ %24, %21 ]
  %19 = icmp ult i32 %.07, %15
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = shl i32 %.064, 1
  %23 = or i32 %22, %.064
  %24 = add i32 %.07, 1
  br label %18, !llvm.loop !15

25:                                               ; preds = %18
  %26 = xor i32 %.064, -1
  %27 = load i32, i32* @Init1, align 4
  %28 = load i32, i32* @NO_ERR_MASK, align 4
  %29 = load i32, i32* @D_endpos, align 4
  %30 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  br label %31

31:                                               ; preds = %38, %25
  %.01 = phi i32 [ 0, %25 ], [ %39, %38 ]
  %.not = icmp ugt i32 %.01, %2
  br i1 %.not, label %40, label %32

32:                                               ; preds = %31
  %33 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %34
  store i32 %33, i32* %35, align 4
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %32
  %39 = add nuw nsw i32 %.01, 1
  br label %31, !llvm.loop !16

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %454, %40
  %.059 = phi i32 [ %30, %40 ], [ %.160, %454 ]
  %.054 = phi i32 [ %30, %40 ], [ %.155, %454 ]
  %.049 = phi i32 [ %30, %40 ], [ %.150, %454 ]
  %.044 = phi i32 [ %30, %40 ], [ %.145, %454 ]
  %.039 = phi i32 [ %30, %40 ], [ %.140, %454 ]
  %.034 = phi i32 [ %30, %40 ], [ %.135, %454 ]
  %.032 = phi i32 [ 1, %40 ], [ %.133, %454 ]
  %.029 = phi i32 [ %30, %40 ], [ %.130, %454 ]
  %.025 = phi i32 [ %30, %40 ], [ %.126, %454 ]
  %.017 = phi i32 [ 49152, %40 ], [ %.522, %454 ]
  %.0 = phi i32 [ 0, %40 ], [ %.4, %454 ]
  %42 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %43 = call i32 @fill_buf(i32 noundef %1, i8* noundef nonnull %42, i32 noundef 49152) #6
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %455

45:                                               ; preds = %41
  %46 = add nsw i32 %43, 49152
  %.not88 = icmp eq i32 %.032, 0
  br i1 %.not88, label %69, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* @DELIMITER, align 4
  %.not102 = icmp eq i32 %48, 0
  br i1 %.not102, label %68, label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %62, %49
  %.12 = phi i32 [ 0, %49 ], [ %63, %62 ]
  %51 = icmp slt i32 %.12, %15
  br i1 %51, label %52, label %.loopexit

52:                                               ; preds = %50
  %53 = zext i32 %.12 to i64
  %54 = getelementptr inbounds i8, i8* %0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = add nuw nsw i32 %.12, 49152
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %.not104 = icmp eq i8 %55, %59
  br i1 %.not104, label %61, label %60

60:                                               ; preds = %52
  br label %64

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.12, 1
  br label %50, !llvm.loop !17

.loopexit:                                        ; preds = %50
  br label %64

64:                                               ; preds = %.loopexit, %60
  %.not103 = icmp slt i32 %.12, %15
  br i1 %.not103, label %67, label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %.0, -1
  br label %67

67:                                               ; preds = %65, %64
  %.1 = phi i32 [ %66, %65 ], [ %.0, %64 ]
  br label %68

68:                                               ; preds = %67, %47
  %.2 = phi i32 [ %.1, %67 ], [ %.0, %47 ]
  br label %69

69:                                               ; preds = %68, %45
  %.133 = phi i32 [ 0, %68 ], [ %.032, %45 ]
  %.18 = phi i32 [ 49151, %68 ], [ 49152, %45 ]
  %.3 = phi i32 [ %.2, %68 ], [ %.0, %45 ]
  %70 = icmp slt i32 %43, 49152
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = zext i32 %46 to i64
  %73 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %72
  %sext = shl i64 %14, 32
  %74 = ashr exact i64 %sext, 32
  %75 = call i8* @strncpy(i8* noundef nonnull %73, i8* noundef %0, i64 noundef %74) #6
  %76 = add i32 %46, %15
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = add i32 %46, %15
  br label %80

80:                                               ; preds = %71, %69
  %.065 = phi i32 [ %79, %71 ], [ %46, %69 ]
  br label %81

81:                                               ; preds = %432, %80
  %.160 = phi i32 [ %.059, %80 ], [ %.463, %432 ]
  %.155 = phi i32 [ %.054, %80 ], [ %.458, %432 ]
  %.150 = phi i32 [ %.049, %80 ], [ %.453, %432 ]
  %.145 = phi i32 [ %.044, %80 ], [ %.448, %432 ]
  %.140 = phi i32 [ %.039, %80 ], [ %.443, %432 ]
  %.135 = phi i32 [ %.034, %80 ], [ %.438, %432 ]
  %.130 = phi i32 [ %.029, %80 ], [ %.231, %432 ]
  %.126 = phi i32 [ %.025, %80 ], [ %.227, %432 ]
  %.118 = phi i32 [ %.017, %80 ], [ %.320, %432 ]
  %.29 = phi i32 [ %.18, %80 ], [ %317, %432 ]
  %.4 = phi i32 [ %.3, %80 ], [ %.6, %432 ]
  %82 = icmp ult i32 %.29, %.065
  br i1 %82, label %83, label %433

83:                                               ; preds = %81
  %84 = zext i32 %.29 to i64
  %85 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %27, %.126
  %91 = lshr i32 %.126, 1
  %92 = and i32 %91, %89
  %93 = or i32 %92, %90
  %94 = and i32 %27, %.130
  %95 = or i32 %92, %.126
  %96 = lshr i32 %95, 1
  %97 = and i32 %96, %28
  %98 = or i32 %.126, %97
  %99 = lshr i32 %.130, 1
  %100 = and i32 %99, %89
  %101 = or i32 %100, %98
  %102 = or i32 %101, %94
  %103 = icmp eq i32 %2, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %83
  br label %142

105:                                              ; preds = %83
  %106 = and i32 %27, %.140
  %107 = or i32 %101, %.130
  %108 = lshr i32 %107, 1
  %109 = and i32 %108, %28
  %110 = or i32 %.130, %109
  %111 = lshr i32 %.140, 1
  %112 = and i32 %111, %89
  %113 = or i32 %112, %110
  %114 = or i32 %113, %106
  %115 = icmp eq i32 %2, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %142

117:                                              ; preds = %105
  %118 = and i32 %27, %.150
  %119 = or i32 %113, %.140
  %120 = lshr i32 %119, 1
  %121 = and i32 %120, %28
  %122 = or i32 %.140, %121
  %123 = lshr i32 %.150, 1
  %124 = and i32 %123, %89
  %125 = or i32 %124, %122
  %126 = or i32 %125, %118
  %127 = icmp eq i32 %2, 3
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %142

129:                                              ; preds = %117
  %130 = and i32 %27, %.160
  %131 = or i32 %125, %.150
  %132 = lshr i32 %131, 1
  %133 = and i32 %132, %28
  %134 = or i32 %.150, %133
  %135 = lshr i32 %.160, 1
  %136 = and i32 %135, %89
  %137 = or i32 %136, %134
  %138 = or i32 %137, %130
  %139 = icmp eq i32 %2, 4
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %142

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %140, %128, %116, %104
  %.256 = phi i32 [ %.155, %104 ], [ %.155, %116 ], [ %.155, %128 ], [ %138, %140 ], [ %138, %141 ]
  %.246 = phi i32 [ %.145, %104 ], [ %.145, %116 ], [ %126, %128 ], [ %126, %140 ], [ %126, %141 ]
  %.236 = phi i32 [ %.135, %104 ], [ %114, %116 ], [ %114, %128 ], [ %114, %140 ], [ %114, %141 ]
  %143 = add i32 %.29, 1
  %144 = and i32 %93, %29
  %.not89 = icmp eq i32 %144, 0
  br i1 %.not89, label %257, label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %.4, 1
  %147 = icmp eq i32 %2, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148, %145
  %.010 = phi i32 [ %102, %148 ], [ %93, %145 ]
  %150 = icmp eq i32 %2, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %149
  %.111 = phi i32 [ %.236, %151 ], [ %.010, %149 ]
  %153 = icmp eq i32 %2, 3
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %152
  %.212 = phi i32 [ %.246, %154 ], [ %.111, %152 ]
  %156 = icmp eq i32 %2, 4
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %155
  %.313 = phi i32 [ %.256, %157 ], [ %.212, %155 ]
  %159 = load i32, i32* @AND, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* @endposition, align 4
  %163 = and i32 %.313, %162
  %164 = icmp eq i32 %163, %162
  br i1 %164, label %176, label %165

165:                                              ; preds = %161, %158
  %166 = load i32, i32* @AND, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* @endposition, align 4
  %170 = and i32 %.313, %169
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %168, %165
  %173 = phi i1 [ false, %165 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* @INVERSE, align 4
  %.not96 = icmp eq i32 %175, %174
  br i1 %.not96, label %187, label %176

176:                                              ; preds = %172, %161
  %177 = load i32, i32* @FILENAMEONLY, align 4
  %.not99 = icmp eq i32 %177, 0
  br i1 %.not99, label %181, label %178

178:                                              ; preds = %176
  %179 = load i32, i32* @num_of_matched, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @num_of_matched, align 4
  %puts101 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %456

181:                                              ; preds = %176
  %182 = add nsw i32 %43, 49151
  %.not100 = icmp slt i32 %.118, %182
  br i1 %.not100, label %183, label %186

183:                                              ; preds = %181
  %184 = sub i32 %.29, %15
  %185 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %185, i32 noundef %.118, i32 noundef %184, i32 noundef %146) #6
  br label %186

186:                                              ; preds = %183, %181
  br label %187

187:                                              ; preds = %186, %172
  %188 = sub i32 %143, %15
  store i32 0, i32* @TRUNCATE, align 4
  br label %189

189:                                              ; preds = %194, %187
  %.23 = phi i32 [ 0, %187 ], [ %195, %194 ]
  %.not97 = icmp ugt i32 %.23, %2
  br i1 %.not97, label %196, label %190

190:                                              ; preds = %189
  %191 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %192 = zext i32 %.23 to i64
  %193 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %192
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %190
  %195 = add nuw nsw i32 %.23, 1
  br label %189, !llvm.loop !18

196:                                              ; preds = %189
  %197 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %198 = load i32, i32* %197, align 16
  %199 = load i32, i32* @Init1, align 4
  %200 = and i32 %198, %199
  %201 = lshr i32 %198, 1
  %202 = and i32 %201, %89
  %203 = or i32 %202, %200
  %204 = and i32 %203, %26
  %205 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  store i32 %204, i32* %205, align 16
  br label %206

206:                                              ; preds = %238, %196
  %.34 = phi i32 [ 1, %196 ], [ %239, %238 ]
  %.not98 = icmp ugt i32 %.34, %2
  br i1 %.not98, label %240, label %207

207:                                              ; preds = %206
  %208 = load i32, i32* @Init1, align 4
  %209 = zext i32 %.34 to i64
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %208, %211
  %213 = add nsw i32 %.34, -1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %.34, -1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %.34, -1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %220, %224
  %226 = lshr i32 %225, 1
  %227 = and i32 %226, %28
  %228 = or i32 %216, %227
  %229 = zext i32 %.34 to i64
  %230 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = lshr i32 %231, 1
  %233 = and i32 %232, %89
  %234 = or i32 %233, %212
  %235 = or i32 %234, %228
  %236 = zext i32 %.34 to i64
  %237 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %236
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %207
  %239 = add nuw nsw i32 %.34, 1
  br label %206, !llvm.loop !19

240:                                              ; preds = %206
  %241 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %242 = load i32, i32* %241, align 16
  %243 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 2
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 3
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  %254 = load i32, i32* %253, align 16
  %255 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 4
  %256 = load i32, i32* %255, align 16
  br label %257

257:                                              ; preds = %240, %142
  %.261 = phi i32 [ %256, %240 ], [ %.160, %142 ]
  %.357 = phi i32 [ %254, %240 ], [ %.256, %142 ]
  %.251 = phi i32 [ %252, %240 ], [ %.150, %142 ]
  %.347 = phi i32 [ %250, %240 ], [ %.246, %142 ]
  %.241 = phi i32 [ %248, %240 ], [ %.140, %142 ]
  %.337 = phi i32 [ %246, %240 ], [ %.236, %142 ]
  %.028 = phi i32 [ %244, %240 ], [ %102, %142 ]
  %.024 = phi i32 [ %242, %240 ], [ %93, %142 ]
  %.219 = phi i32 [ %188, %240 ], [ %.118, %142 ]
  %.5 = phi i32 [ %146, %240 ], [ %.4, %142 ]
  %258 = zext i32 %143 to i64
  %259 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i64
  %262 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %27, %.024
  %265 = lshr i32 %.024, 1
  %266 = and i32 %265, %263
  %267 = or i32 %266, %264
  %268 = and i32 %27, %.028
  %269 = or i32 %266, %.024
  %270 = lshr i32 %269, 1
  %271 = and i32 %270, %28
  %272 = or i32 %.024, %271
  %273 = lshr i32 %.028, 1
  %274 = and i32 %273, %263
  %275 = or i32 %274, %272
  %276 = or i32 %275, %268
  %277 = icmp eq i32 %2, 1
  br i1 %277, label %278, label %279

278:                                              ; preds = %257
  br label %316

279:                                              ; preds = %257
  %280 = and i32 %27, %.337
  %281 = or i32 %275, %.028
  %282 = lshr i32 %281, 1
  %283 = and i32 %282, %28
  %284 = or i32 %.028, %283
  %285 = lshr i32 %.337, 1
  %286 = and i32 %285, %263
  %287 = or i32 %286, %284
  %288 = or i32 %287, %280
  %289 = icmp eq i32 %2, 2
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %316

291:                                              ; preds = %279
  %292 = and i32 %27, %.347
  %293 = or i32 %287, %.337
  %294 = lshr i32 %293, 1
  %295 = and i32 %294, %28
  %296 = or i32 %.337, %295
  %297 = lshr i32 %.347, 1
  %298 = and i32 %297, %263
  %299 = or i32 %298, %296
  %300 = or i32 %299, %292
  %301 = icmp eq i32 %2, 3
  br i1 %301, label %302, label %303

302:                                              ; preds = %291
  br label %316

303:                                              ; preds = %291
  %304 = and i32 %27, %.357
  %305 = or i32 %299, %.347
  %306 = lshr i32 %305, 1
  %307 = and i32 %306, %28
  %308 = or i32 %.347, %307
  %309 = lshr i32 %.357, 1
  %310 = and i32 %309, %263
  %311 = or i32 %310, %308
  %312 = or i32 %311, %304
  %313 = icmp eq i32 %2, 4
  br i1 %313, label %314, label %315

314:                                              ; preds = %303
  br label %316

315:                                              ; preds = %303
  br label %316

316:                                              ; preds = %315, %314, %302, %290, %278
  %.362 = phi i32 [ %.261, %278 ], [ %.261, %290 ], [ %.261, %302 ], [ %312, %314 ], [ %312, %315 ]
  %.352 = phi i32 [ %.251, %278 ], [ %.251, %290 ], [ %300, %302 ], [ %300, %314 ], [ %300, %315 ]
  %.342 = phi i32 [ %.241, %278 ], [ %288, %290 ], [ %288, %302 ], [ %288, %314 ], [ %288, %315 ]
  %317 = add i32 %.29, 2
  %318 = and i32 %267, %29
  %.not90 = icmp eq i32 %318, 0
  br i1 %.not90, label %432, label %319

319:                                              ; preds = %316
  %320 = add nsw i32 %.5, 1
  %321 = icmp eq i32 %2, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %323

323:                                              ; preds = %322, %319
  %.414 = phi i32 [ %276, %322 ], [ %267, %319 ]
  %324 = icmp eq i32 %2, 2
  br i1 %324, label %325, label %326

325:                                              ; preds = %323
  br label %326

326:                                              ; preds = %325, %323
  %.515 = phi i32 [ %.342, %325 ], [ %.414, %323 ]
  %327 = icmp eq i32 %2, 3
  br i1 %327, label %328, label %329

328:                                              ; preds = %326
  br label %329

329:                                              ; preds = %328, %326
  %.616 = phi i32 [ %.352, %328 ], [ %.515, %326 ]
  %330 = icmp eq i32 %2, 4
  br i1 %330, label %331, label %332

331:                                              ; preds = %329
  br label %332

332:                                              ; preds = %331, %329
  %.7 = phi i32 [ %.362, %331 ], [ %.616, %329 ]
  %333 = load i32, i32* @AND, align 4
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %339

335:                                              ; preds = %332
  %336 = load i32, i32* @endposition, align 4
  %337 = and i32 %.7, %336
  %338 = icmp eq i32 %337, %336
  br i1 %338, label %350, label %339

339:                                              ; preds = %335, %332
  %340 = load i32, i32* @AND, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load i32, i32* @endposition, align 4
  %344 = and i32 %.7, %343
  %345 = icmp ne i32 %344, 0
  br label %346

346:                                              ; preds = %342, %339
  %347 = phi i1 [ false, %339 ], [ %345, %342 ]
  %348 = zext i1 %347 to i32
  %349 = load i32, i32* @INVERSE, align 4
  %.not91 = icmp eq i32 %349, %348
  br i1 %.not91, label %362, label %350

350:                                              ; preds = %346, %335
  %351 = load i32, i32* @FILENAMEONLY, align 4
  %.not94 = icmp eq i32 %351, 0
  br i1 %.not94, label %355, label %352

352:                                              ; preds = %350
  %353 = load i32, i32* @num_of_matched, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* @num_of_matched, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %456

355:                                              ; preds = %350
  %356 = add nsw i32 %43, 49151
  %.not95 = icmp slt i32 %.219, %356
  br i1 %.not95, label %357, label %361

357:                                              ; preds = %355
  %358 = xor i32 %15, -1
  %359 = add i32 %317, %358
  %360 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %360, i32 noundef %.219, i32 noundef %359, i32 noundef %320) #6
  br label %361

361:                                              ; preds = %357, %355
  br label %362

362:                                              ; preds = %361, %346
  %363 = sub i32 %317, %15
  store i32 0, i32* @TRUNCATE, align 4
  br label %364

364:                                              ; preds = %369, %362
  %.45 = phi i32 [ 0, %362 ], [ %370, %369 ]
  %.not92 = icmp ugt i32 %.45, %2
  br i1 %.not92, label %371, label %365

365:                                              ; preds = %364
  %366 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %367 = zext i32 %.45 to i64
  %368 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %367
  store i32 %366, i32* %368, align 4
  br label %369

369:                                              ; preds = %365
  %370 = add nuw nsw i32 %.45, 1
  br label %364, !llvm.loop !20

371:                                              ; preds = %364
  %372 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %373 = load i32, i32* %372, align 16
  %374 = load i32, i32* @Init1, align 4
  %375 = and i32 %373, %374
  %376 = lshr i32 %373, 1
  %377 = and i32 %376, %263
  %378 = or i32 %377, %375
  %379 = and i32 %378, %26
  %380 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  store i32 %379, i32* %380, align 16
  br label %381

381:                                              ; preds = %413, %371
  %.56 = phi i32 [ 1, %371 ], [ %414, %413 ]
  %.not93 = icmp ugt i32 %.56, %2
  br i1 %.not93, label %415, label %382

382:                                              ; preds = %381
  %383 = load i32, i32* @Init1, align 4
  %384 = zext i32 %.56 to i64
  %385 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %383, %386
  %388 = add nsw i32 %.56, -1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %.56, -1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %.56, -1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %395, %399
  %401 = lshr i32 %400, 1
  %402 = and i32 %401, %28
  %403 = or i32 %391, %402
  %404 = zext i32 %.56 to i64
  %405 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = lshr i32 %406, 1
  %408 = and i32 %407, %263
  %409 = or i32 %408, %387
  %410 = or i32 %409, %403
  %411 = zext i32 %.56 to i64
  %412 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 %411
  store i32 %410, i32* %412, align 4
  br label %413

413:                                              ; preds = %382
  %414 = add nuw nsw i32 %.56, 1
  br label %381, !llvm.loop !21

415:                                              ; preds = %381
  %416 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %417 = load i32, i32* %416, align 16
  %418 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 2
  %421 = load i32, i32* %420, align 8
  %422 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 2
  %423 = load i32, i32* %422, align 8
  %424 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 3
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 3
  %427 = load i32, i32* %426, align 4
  %428 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 4
  %429 = load i32, i32* %428, align 16
  %430 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 4
  %431 = load i32, i32* %430, align 16
  br label %432

432:                                              ; preds = %415, %316
  %.463 = phi i32 [ %431, %415 ], [ %.362, %316 ]
  %.458 = phi i32 [ %429, %415 ], [ %.357, %316 ]
  %.453 = phi i32 [ %427, %415 ], [ %.352, %316 ]
  %.448 = phi i32 [ %425, %415 ], [ %.347, %316 ]
  %.443 = phi i32 [ %423, %415 ], [ %.342, %316 ]
  %.438 = phi i32 [ %421, %415 ], [ %.337, %316 ]
  %.231 = phi i32 [ %419, %415 ], [ %276, %316 ]
  %.227 = phi i32 [ %417, %415 ], [ %267, %316 ]
  %.320 = phi i32 [ %363, %415 ], [ %.219, %316 ]
  %.6 = phi i32 [ %320, %415 ], [ %.5, %316 ]
  br label %81, !llvm.loop !22

433:                                              ; preds = %81
  %434 = icmp slt i32 %43, 49152
  br i1 %434, label %435, label %436

435:                                              ; preds = %433
  br label %454

436:                                              ; preds = %433
  %437 = add nsw i32 %43, 49152
  %438 = sub nsw i32 %437, %.118
  %439 = icmp sgt i32 %438, 49152
  br i1 %439, label %440, label %441

440:                                              ; preds = %436
  store i32 1, i32* @TRUNCATE, align 4
  br label %441

441:                                              ; preds = %440, %436
  %.023 = phi i32 [ 49152, %440 ], [ %438, %436 ]
  %442 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %443 = sext i32 %.023 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, i8* %442, i64 %444
  %446 = sext i32 %.118 to i64
  %447 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %446
  %448 = sext i32 %.023 to i64
  %449 = call i8* @strncpy(i8* noundef nonnull %445, i8* noundef nonnull %447, i64 noundef %448) #6
  %450 = sub nsw i32 49152, %.023
  %451 = icmp eq i32 %.023, 49152
  br i1 %451, label %452, label %453

452:                                              ; preds = %441
  br label %453

453:                                              ; preds = %452, %441
  %.421 = phi i32 [ 1, %452 ], [ %450, %441 ]
  br label %454

454:                                              ; preds = %453, %435
  %.522 = phi i32 [ 49152, %435 ], [ %.421, %453 ]
  br label %41, !llvm.loop !23

455:                                              ; preds = %41
  br label %456

456:                                              ; preds = %455, %352, %178, %12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
