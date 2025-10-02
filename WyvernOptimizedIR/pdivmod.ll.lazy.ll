; ModuleID = './pdivmod.ll'
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
  %8 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %5, align 8
  store %struct.precisionType* %1, %struct.precisionType** %6, align 8
  %9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 2
  %10 = load i16, i16* %9, align 2
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %16, label %11

11:                                               ; preds = %4
  %12 = bitcast %struct.precisionType** %5 to i16**
  %13 = load i16*, i16** %12, align 8
  %14 = load i16, i16* %13, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %13, align 2
  br label %16

16:                                               ; preds = %11, %4
  %17 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %.not36 = icmp eq %struct.precisionType* %17, null
  br i1 %.not36, label %23, label %18

18:                                               ; preds = %16
  %19 = bitcast %struct.precisionType** %6 to i16**
  %20 = load i16*, i16** %19, align 8
  %21 = load i16, i16* %20, align 2
  %22 = add i16 %21, 1
  store i16 %22, i16* %20, align 2
  br label %23

23:                                               ; preds = %18, %16
  %24 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 2
  %26 = load i16, i16* %25, align 2
  %27 = icmp ult i16 %26, %10
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  store %struct.precisionType* null, %struct.precisionType** %7, align 8
  store %struct.precisionType* null, %struct.precisionType** %8, align 8
  %29 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %30 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %7, %struct.precisionType* noundef %29) #2
  %31 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %32 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %8, %struct.precisionType* noundef %31) #2
  br label %363

33:                                               ; preds = %23
  %34 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %35 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i64 0, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = sub i16 %36, %10
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i64 0, i32 4, i64 %38
  %40 = zext i16 %10 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  %42 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %43 = zext i16 %10 to i64
  %44 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %42, i64 0, i32 4, i64 %43
  %45 = zext i16 %37 to i32
  %46 = add nuw nsw i32 %45, 1
  %47 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %46) #2
  store %struct.precisionType* %47, %struct.precisionType** %7, align 8
  %48 = icmp eq %struct.precisionType* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  br label %457

51:                                               ; preds = %33
  %52 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %53 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %52, i64 0, i32 3
  %54 = load i8, i8* %53, align 2
  %55 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %56 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %55, i64 0, i32 3
  %57 = load i8, i8* %56, align 2
  %58 = icmp ne i8 %54, %57
  %59 = zext i1 %58 to i8
  %60 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %60, i64 0, i32 3
  store i8 %59, i8* %61, align 2
  %62 = zext i16 %10 to i32
  %63 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %62) #2
  store %struct.precisionType* %63, %struct.precisionType** %8, align 8
  %64 = icmp eq %struct.precisionType* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %51
  %66 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %.not48 = icmp eq %struct.precisionType* %66, null
  br i1 %.not48, label %76, label %67

67:                                               ; preds = %65
  %68 = bitcast %struct.precisionType** %7 to i16**
  %69 = load i16*, i16** %68, align 8
  %70 = load i16, i16* %69, align 2
  %71 = add i16 %70, -1
  store i16 %71, i16* %69, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %75 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %74) #2
  br label %76

76:                                               ; preds = %73, %67, %65
  %77 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  br label %457

78:                                               ; preds = %51
  %79 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %80 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %79, i64 0, i32 3
  %81 = load i8, i8* %80, align 2
  %82 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %83 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %82, i64 0, i32 3
  store i8 %81, i8* %83, align 2
  %84 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %85 = zext i16 %37 to i64
  %86 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %84, i64 0, i32 4, i64 %85
  %87 = getelementptr inbounds i16, i16* %86, i64 1
  %88 = icmp eq i16 %10, 1
  br i1 %88, label %89, label %120

89:                                               ; preds = %78
  %90 = getelementptr inbounds i16, i16* %44, i64 -1
  %91 = load i16, i16* %90, align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #2
  %95 = call %struct.precisionType* @pnew(%struct.precisionType* noundef %94) #2
  store %struct.precisionType* %95, %struct.precisionType** %7, align 8
  br label %119

96:                                               ; preds = %89
  %97 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %98 = zext i16 %10 to i64
  %99 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %97, i64 0, i32 4, i64 %98
  br label %100

100:                                              ; preds = %112, %96
  %.019 = phi i32 [ 0, %96 ], [ %111, %112 ]
  %.011 = phi i16* [ %87, %96 ], [ %109, %112 ]
  %.02 = phi i16* [ %41, %96 ], [ %102, %112 ]
  %101 = shl i32 %.019, 16
  %102 = getelementptr inbounds i16, i16* %.02, i64 -1
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %101, %104
  %106 = zext i16 %91 to i32
  %107 = udiv i32 %105, %106
  %108 = trunc i32 %107 to i16
  %109 = getelementptr inbounds i16, i16* %.011, i64 -1
  store i16 %108, i16* %109, align 2
  %110 = zext i16 %91 to i32
  %111 = urem i32 %105, %110
  br label %112

112:                                              ; preds = %100
  %113 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %114 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %113, i64 0, i32 4, i64 0
  %115 = icmp ugt i16* %102, %114
  br i1 %115, label %100, label %116, !llvm.loop !4

116:                                              ; preds = %112
  %117 = trunc i32 %111 to i16
  %118 = getelementptr inbounds i16, i16* %99, i64 -1
  store i16 %117, i16* %118, align 2
  br label %119

119:                                              ; preds = %116, %93
  %.112 = phi i16* [ %87, %93 ], [ %109, %116 ]
  br label %340

120:                                              ; preds = %78
  %121 = getelementptr inbounds i16, i16* %44, i64 -1
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = add nuw nsw i32 %123, 1
  %125 = udiv i32 65536, %124
  %126 = zext i16 %10 to i32
  %127 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %126) #2
  %128 = icmp eq %struct.precisionType* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %457

130:                                              ; preds = %120
  %131 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %132 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %131, i64 0, i32 4, i64 0
  %133 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %127, i64 0, i32 4, i64 0
  %134 = zext i16 %10 to i64
  %135 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %131, i64 0, i32 4, i64 %134
  br label %136

136:                                              ; preds = %145, %130
  %.120 = phi i32 [ 0, %130 ], [ %143, %145 ]
  %.06 = phi i16* [ %132, %130 ], [ %137, %145 ]
  %.13 = phi i16* [ %133, %130 ], [ %146, %145 ]
  %137 = getelementptr inbounds i16, i16* %.06, i64 1
  %138 = load i16, i16* %.06, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %125, 65535
  %141 = mul nuw nsw i32 %140, %139
  %142 = add nuw i32 %141, %.120
  %143 = lshr i32 %142, 16
  %144 = trunc i32 %142 to i16
  store i16 %144, i16* %.13, align 2
  br label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds i16, i16* %.13, i64 1
  %147 = icmp ult i16* %137, %135
  br i1 %147, label %136, label %148, !llvm.loop !6

148:                                              ; preds = %145
  %149 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %6, %struct.precisionType* noundef nonnull %127) #2
  br i1 true, label %150, label %157

150:                                              ; preds = %148
  %151 = getelementptr %struct.precisionType, %struct.precisionType* %127, i64 0, i32 0
  %152 = load i16, i16* %151, align 2
  %153 = add i16 %152, -1
  store i16 %153, i16* %151, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %127) #2
  br label %157

157:                                              ; preds = %155, %150, %148
  %158 = zext i16 %37 to i32
  %159 = zext i16 %10 to i32
  %160 = add nuw nsw i32 %158, %159
  %161 = add nuw nsw i32 %160, 1
  %162 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %161) #2
  %163 = icmp eq %struct.precisionType* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %457

165:                                              ; preds = %157
  %166 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %167 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %166, i64 0, i32 4, i64 0
  %168 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %162, i64 0, i32 4, i64 0
  %169 = zext i16 %37 to i64
  %170 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %166, i64 0, i32 4, i64 %169
  %171 = zext i16 %10 to i64
  %172 = getelementptr inbounds i16, i16* %170, i64 %171
  br label %173

173:                                              ; preds = %183, %165
  %.221 = phi i32 [ %143, %165 ], [ %180, %183 ]
  %.17 = phi i16* [ %168, %165 ], [ %182, %183 ]
  %.24 = phi i16* [ %167, %165 ], [ %174, %183 ]
  %174 = getelementptr inbounds i16, i16* %.24, i64 1
  %175 = load i16, i16* %.24, align 2
  %176 = zext i16 %175 to i32
  %177 = and i32 %125, 65535
  %178 = mul nuw nsw i32 %177, %176
  %179 = add nuw i32 %178, %.221
  %180 = lshr i32 %179, 16
  %181 = trunc i32 %179 to i16
  %182 = getelementptr inbounds i16, i16* %.17, i64 1
  store i16 %181, i16* %.17, align 2
  br label %183

183:                                              ; preds = %173
  %184 = icmp ult i16* %174, %172
  br i1 %184, label %173, label %185, !llvm.loop !7

185:                                              ; preds = %183
  %186 = trunc i32 %180 to i16
  store i16 %186, i16* %182, align 2
  %187 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %5, %struct.precisionType* noundef nonnull %162) #2
  br i1 true, label %188, label %195

188:                                              ; preds = %185
  %189 = getelementptr %struct.precisionType, %struct.precisionType* %162, i64 0, i32 0
  %190 = load i16, i16* %189, align 2
  %191 = add i16 %190, -1
  store i16 %191, i16* %189, align 2
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %162) #2
  br label %195

195:                                              ; preds = %193, %188, %185
  %196 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %197 = zext i16 %37 to i64
  %198 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %196, i64 0, i32 4, i64 %197
  %199 = getelementptr inbounds i16, i16* %198, i64 1
  br label %200

200:                                              ; preds = %311, %195
  %.213 = phi i16* [ %87, %195 ], [ %310, %311 ]
  %.35 = phi i16* [ %199, %195 ], [ %.6, %311 ]
  %201 = getelementptr inbounds i16, i16* %.35, i64 -1
  %202 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %203 = zext i16 %10 to i64
  %204 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %202, i64 0, i32 4, i64 %203
  %205 = zext i16 %10 to i64
  %206 = getelementptr inbounds i16, i16* %201, i64 %205
  %207 = load i16, i16* %206, align 2
  %208 = getelementptr inbounds i16, i16* %204, i64 -1
  %209 = load i16, i16* %208, align 2
  %210 = icmp eq i16 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %249

212:                                              ; preds = %200
  %213 = load i16, i16* %206, align 2
  %214 = zext i16 %213 to i32
  %215 = shl nuw i32 %214, 16
  %216 = getelementptr inbounds i16, i16* %206, i64 -1
  %217 = load i16, i16* %216, align 2
  %218 = zext i16 %217 to i32
  %219 = or i32 %215, %218
  %220 = load i16, i16* %208, align 2
  %221 = zext i16 %220 to i32
  %222 = udiv i32 %219, %221
  %223 = trunc i32 %222 to i16
  %224 = zext i16 %220 to i32
  %225 = urem i32 %219, %224
  %226 = getelementptr inbounds i16, i16* %204, i64 -2
  %227 = getelementptr inbounds i16, i16* %216, i64 -1
  br label %228

228:                                              ; preds = %246, %212
  %.016 = phi i32 [ %225, %212 ], [ %243, %246 ]
  %.01 = phi i16 [ %223, %212 ], [ %239, %246 ]
  %229 = load i16, i16* %226, align 2
  %230 = zext i16 %229 to i32
  %231 = zext i16 %.01 to i32
  %232 = mul nuw nsw i32 %230, %231
  %233 = shl i32 %.016, 16
  %234 = load i16, i16* %227, align 2
  %235 = zext i16 %234 to i32
  %236 = or i32 %233, %235
  %237 = icmp ugt i32 %232, %236
  br i1 %237, label %238, label %.loopexit

238:                                              ; preds = %228
  %239 = add i16 %.01, -1
  %240 = getelementptr inbounds i16, i16* %204, i64 -1
  %241 = load i16, i16* %240, align 2
  %242 = zext i16 %241 to i32
  %243 = add i32 %.016, %242
  %244 = icmp ugt i32 %243, 65535
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %247

246:                                              ; preds = %238
  br label %228, !llvm.loop !8

.loopexit:                                        ; preds = %228
  br label %247

247:                                              ; preds = %.loopexit, %245
  %.1 = phi i16 [ %239, %245 ], [ %.01, %.loopexit ]
  %248 = getelementptr inbounds i16, i16* %227, i64 2
  br label %249

249:                                              ; preds = %247, %211
  %.015 = phi i16* [ %206, %211 ], [ %248, %247 ]
  %.2 = phi i16 [ -1, %211 ], [ %.1, %247 ]
  %250 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %251 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %250, i64 0, i32 4, i64 0
  br label %252

252:                                              ; preds = %268, %249
  %.322 = phi i32 [ 0, %249 ], [ %258, %268 ]
  %.017 = phi i32 [ 1, %249 ], [ %265, %268 ]
  %.28 = phi i16* [ %251, %249 ], [ %269, %268 ]
  %.4 = phi i16* [ %201, %249 ], [ %267, %268 ]
  %253 = zext i16 %.2 to i32
  %254 = load i16, i16* %.28, align 2
  %255 = zext i16 %254 to i32
  %256 = mul nuw nsw i32 %253, %255
  %257 = add nuw i32 %256, %.322
  %258 = lshr i32 %257, 16
  %259 = and i32 %257, 65535
  %260 = xor i32 %259, 65535
  %261 = load i16, i16* %.4, align 2
  %262 = zext i16 %261 to i32
  %263 = add nuw nsw i32 %.017, %262
  %264 = add nuw nsw i32 %260, %263
  %265 = lshr i32 %264, 16
  %266 = trunc i32 %264 to i16
  %267 = getelementptr inbounds i16, i16* %.4, i64 1
  store i16 %266, i16* %.4, align 2
  br label %268

268:                                              ; preds = %252
  %269 = getelementptr inbounds i16, i16* %.28, i64 1
  %270 = icmp ult i16* %267, %.015
  br i1 %270, label %252, label %271, !llvm.loop !9

271:                                              ; preds = %268
  %272 = xor i32 %258, 65535
  %273 = load i16, i16* %267, align 2
  %274 = zext i16 %273 to i32
  %275 = add nuw nsw i32 %265, %274
  %276 = add nuw nsw i32 %272, %275
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %267, align 2
  %278 = zext i16 %10 to i64
  %279 = sub nsw i64 0, %278
  %280 = getelementptr inbounds i16, i16* %267, i64 %279
  %281 = icmp ult i32 %276, 65536
  br i1 %281, label %282, label %309

282:                                              ; preds = %271
  %283 = lshr i32 %276, 16
  %284 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %285 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %284, i64 0, i32 4, i64 0
  %286 = zext i16 %10 to i64
  %287 = getelementptr inbounds i16, i16* %280, i64 %286
  br label %288

288:                                              ; preds = %298, %282
  %.118 = phi i32 [ %283, %282 ], [ %295, %298 ]
  %.39 = phi i16* [ %285, %282 ], [ %299, %298 ]
  %.5 = phi i16* [ %280, %282 ], [ %297, %298 ]
  %289 = load i16, i16* %.5, align 2
  %290 = zext i16 %289 to i32
  %291 = load i16, i16* %.39, align 2
  %292 = zext i16 %291 to i32
  %293 = add nuw nsw i32 %290, %292
  %294 = add nuw nsw i32 %293, %.118
  %295 = lshr i32 %294, 16
  %296 = trunc i32 %294 to i16
  %297 = getelementptr inbounds i16, i16* %.5, i64 1
  store i16 %296, i16* %.5, align 2
  br label %298

298:                                              ; preds = %288
  %299 = getelementptr inbounds i16, i16* %.39, i64 1
  %300 = icmp ult i16* %297, %287
  br i1 %300, label %288, label %301, !llvm.loop !10

301:                                              ; preds = %298
  %302 = load i16, i16* %297, align 2
  %303 = trunc i32 %295 to i16
  %304 = add i16 %302, %303
  store i16 %304, i16* %297, align 2
  %305 = zext i16 %10 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i16, i16* %297, i64 %306
  %308 = add i16 %.2, -1
  br label %309

309:                                              ; preds = %301, %271
  %.6 = phi i16* [ %307, %301 ], [ %280, %271 ]
  %.3 = phi i16 [ %308, %301 ], [ %.2, %271 ]
  %310 = getelementptr inbounds i16, i16* %.213, i64 -1
  store i16 %.3, i16* %310, align 2
  br label %311

311:                                              ; preds = %309
  %312 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %313 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %312, i64 0, i32 4, i64 0
  %314 = icmp ugt i16* %.6, %313
  br i1 %314, label %200, label %315, !llvm.loop !11

315:                                              ; preds = %311
  %316 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %317 = zext i16 %10 to i64
  %318 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %316, i64 0, i32 4, i64 %317
  %319 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %320 = zext i16 %10 to i64
  %321 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %319, i64 0, i32 4, i64 %320
  br label %322

322:                                              ; preds = %332, %315
  %.423 = phi i32 [ 0, %315 ], [ %334, %332 ]
  %.410 = phi i16* [ %321, %315 ], [ %331, %332 ]
  %.7 = phi i16* [ %318, %315 ], [ %324, %332 ]
  %323 = shl i32 %.423, 16
  %324 = getelementptr inbounds i16, i16* %.7, i64 -1
  %325 = load i16, i16* %324, align 2
  %326 = zext i16 %325 to i32
  %327 = or i32 %323, %326
  %328 = and i32 %125, 65535
  %329 = udiv i32 %327, %328
  %330 = trunc i32 %329 to i16
  %331 = getelementptr inbounds i16, i16* %.410, i64 -1
  store i16 %330, i16* %331, align 2
  br label %332

332:                                              ; preds = %322
  %333 = and i32 %125, 65535
  %334 = urem i32 %327, %333
  %335 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %336 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %335, i64 0, i32 4, i64 0
  %337 = icmp ugt i16* %324, %336
  br i1 %337, label %322, label %338, !llvm.loop !12

338:                                              ; preds = %332
  %339 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  call void (%struct.precisionType*, ...) bitcast (void (...)* @pnorm to void (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %339) #2
  br label %340

340:                                              ; preds = %338, %119
  %.314 = phi i16* [ %.112, %119 ], [ %310, %338 ]
  %.not37 = icmp eq i16 %37, 0
  br i1 %.not37, label %351, label %341

341:                                              ; preds = %340
  %342 = zext i16 %37 to i64
  %343 = getelementptr inbounds i16, i16* %.314, i64 %342
  %344 = load i16, i16* %343, align 2
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %341
  %347 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %348 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %347, i64 0, i32 2
  %349 = load i16, i16* %348, align 2
  %350 = add i16 %349, -1
  store i16 %350, i16* %348, align 2
  br label %351

351:                                              ; preds = %346, %341, %340
  %352 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %353 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %352, i64 0, i32 2
  %354 = load i16, i16* %353, align 2
  %355 = icmp eq i16 %354, 1
  br i1 %355, label %356, label %362

356:                                              ; preds = %351
  %357 = load i16, i16* %.314, align 2
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %361 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %360, i64 0, i32 3
  store i8 0, i8* %361, align 2
  br label %362

362:                                              ; preds = %359, %356, %351
  br label %363

363:                                              ; preds = %362, %28
  %364 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %.not38 = icmp eq %struct.precisionType* %364, null
  br i1 %.not38, label %374, label %365

365:                                              ; preds = %363
  %366 = bitcast %struct.precisionType** %5 to i16**
  %367 = load i16*, i16** %366, align 8
  %368 = load i16, i16* %367, align 2
  %369 = add i16 %368, -1
  store i16 %369, i16* %367, align 2
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %373 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %372) #2
  br label %374

374:                                              ; preds = %371, %365, %363
  %375 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %.not39 = icmp eq %struct.precisionType* %375, null
  br i1 %.not39, label %385, label %376

376:                                              ; preds = %374
  %377 = bitcast %struct.precisionType** %6 to i16**
  %378 = load i16*, i16** %377, align 8
  %379 = load i16, i16* %378, align 2
  %380 = add i16 %379, -1
  store i16 %380, i16* %378, align 2
  %381 = icmp eq i16 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %384 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %383) #2
  br label %385

385:                                              ; preds = %382, %376, %374
  %386 = icmp eq %struct.precisionType** %3, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %386, label %387, label %405

387:                                              ; preds = %385
  %.not46 = icmp eq %struct.precisionType** %2, null
  br i1 %.not46, label %391, label %388

388:                                              ; preds = %387
  %389 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %390 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %389) #2
  br label %391

391:                                              ; preds = %388, %387
  %392 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %.not47 = icmp eq %struct.precisionType* %392, null
  br i1 %.not47, label %402, label %393

393:                                              ; preds = %391
  %394 = bitcast %struct.precisionType** %7 to i16**
  %395 = load i16*, i16** %394, align 8
  %396 = load i16, i16* %395, align 2
  %397 = add i16 %396, -1
  store i16 %397, i16* %395, align 2
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %393
  %400 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %401 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %400) #2
  br label %402

402:                                              ; preds = %399, %393, %391
  %403 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %404 = call %struct.precisionType* @presult(%struct.precisionType* noundef %403) #2
  br label %457

405:                                              ; preds = %385
  %406 = icmp eq %struct.precisionType** %2, inttoptr (i64 -1 to %struct.precisionType**)
  br i1 %406, label %407, label %425

407:                                              ; preds = %405
  %.not44 = icmp eq %struct.precisionType** %3, null
  br i1 %.not44, label %411, label %408

408:                                              ; preds = %407
  %409 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %410 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %409) #2
  br label %411

411:                                              ; preds = %408, %407
  %412 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %.not45 = icmp eq %struct.precisionType* %412, null
  br i1 %.not45, label %422, label %413

413:                                              ; preds = %411
  %414 = bitcast %struct.precisionType** %8 to i16**
  %415 = load i16*, i16** %414, align 8
  %416 = load i16, i16* %415, align 2
  %417 = add i16 %416, -1
  store i16 %417, i16* %415, align 2
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %421 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %420) #2
  br label %422

422:                                              ; preds = %419, %413, %411
  %423 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %424 = call %struct.precisionType* @presult(%struct.precisionType* noundef %423) #2
  br label %457

425:                                              ; preds = %405
  br label %426

426:                                              ; preds = %425
  %.not40 = icmp eq %struct.precisionType** %2, null
  br i1 %.not40, label %430, label %427

427:                                              ; preds = %426
  %428 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %429 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %428) #2
  br label %430

430:                                              ; preds = %427, %426
  %.not41 = icmp eq %struct.precisionType** %3, null
  br i1 %.not41, label %434, label %431

431:                                              ; preds = %430
  %432 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %433 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %432) #2
  br label %434

434:                                              ; preds = %431, %430
  %435 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %.not42 = icmp eq %struct.precisionType* %435, null
  br i1 %.not42, label %445, label %436

436:                                              ; preds = %434
  %437 = bitcast %struct.precisionType** %7 to i16**
  %438 = load i16*, i16** %437, align 8
  %439 = load i16, i16* %438, align 2
  %440 = add i16 %439, -1
  store i16 %440, i16* %438, align 2
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %436
  %443 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %444 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %443) #2
  br label %445

445:                                              ; preds = %442, %436, %434
  %446 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %.not43 = icmp eq %struct.precisionType* %446, null
  br i1 %.not43, label %456, label %447

447:                                              ; preds = %445
  %448 = bitcast %struct.precisionType** %8 to i16**
  %449 = load i16*, i16** %448, align 8
  %450 = load i16, i16* %449, align 2
  %451 = add i16 %450, -1
  store i16 %451, i16* %449, align 2
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %447
  %454 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %455 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %454) #2
  br label %456

456:                                              ; preds = %453, %447, %445
  br label %457

457:                                              ; preds = %456, %422, %402, %164, %129, %76, %49
  %.0 = phi %struct.precisionType* [ %404, %402 ], [ %424, %422 ], [ null, %456 ], [ %50, %49 ], [ %77, %76 ], [ %127, %129 ], [ %162, %164 ]
  ret %struct.precisionType* %.0
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
