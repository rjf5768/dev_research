; ModuleID = './scal-to-vec1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca <8 x i16>, align 16
  %4 = alloca <8 x i16>, align 16
  %5 = alloca <4 x float>, align 16
  %6 = alloca <4 x float>, align 16
  %7 = alloca <2 x double>, align 16
  %8 = alloca <2 x double>, align 16
  %9 = load volatile i32, i32* @one, align 4
  %10 = trunc i32 %9 to i16
  %11 = insertelement <8 x i16> <i16 poison, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, i16 %10, i64 0
  store <8 x i16> %11, <8 x i16>* %3, align 16
  %12 = add <8 x i16> %11, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %12, <8 x i16>* %4, align 16
  br label %13

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %28, %13
  %.05 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %15 = icmp ult i32 %.05, 8
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = zext i32 %.05 to i64
  %18 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = zext i32 %.05 to i64
  %22 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = add nsw i32 %24, 2
  %.not50 = icmp eq i32 %25, %20
  br i1 %.not50, label %27, label %26

26:                                               ; preds = %16
  call void @abort() #2
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.05, 1
  br label %14, !llvm.loop !4

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load <8 x i16>, <8 x i16>* %3, align 16
  %33 = sub <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %32
  store <8 x i16> %33, <8 x i16>* %4, align 16
  br label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %49, %34
  %.06 = phi i32 [ 0, %34 ], [ %50, %49 ]
  %36 = icmp ult i32 %.06, 8
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = zext i32 %.06 to i64
  %39 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = zext i32 %.06 to i64
  %43 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 2, %45
  %.not49 = icmp eq i32 %46, %41
  br i1 %.not49, label %48, label %47

47:                                               ; preds = %37
  call void @abort() #2
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.06, 1
  br label %35, !llvm.loop !6

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load <8 x i16>, <8 x i16>* %3, align 16
  %54 = shl <8 x i16> %53, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  store <8 x i16> %54, <8 x i16>* %4, align 16
  br label %55

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %70, %55
  %.07 = phi i32 [ 0, %55 ], [ %71, %70 ]
  %57 = icmp ult i32 %.07, 8
  br i1 %57, label %58, label %72

58:                                               ; preds = %56
  %59 = zext i32 %.07 to i64
  %60 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = zext i32 %.07 to i64
  %64 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = shl nsw i32 %66, 1
  %.not48 = icmp eq i32 %67, %62
  br i1 %.not48, label %69, label %68

68:                                               ; preds = %58
  call void @abort() #2
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %.07, 1
  br label %56, !llvm.loop !7

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load <8 x i16>, <8 x i16>* %3, align 16
  %75 = sdiv <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %74
  store <8 x i16> %75, <8 x i16>* %4, align 16
  br label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %91, %76
  %.08 = phi i32 [ 0, %76 ], [ %92, %91 ]
  %78 = icmp ult i32 %.08, 8
  br i1 %78, label %79, label %93

79:                                               ; preds = %77
  %80 = zext i32 %.08 to i64
  %81 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = zext i32 %.08 to i64
  %85 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %84
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = sdiv i32 2, %87
  %.not47 = icmp eq i32 %88, %83
  br i1 %.not47, label %90, label %89

89:                                               ; preds = %79
  call void @abort() #2
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.08, 1
  br label %77, !llvm.loop !8

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load <8 x i16>, <8 x i16>* %3, align 16
  %96 = srem <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %95
  store <8 x i16> %96, <8 x i16>* %4, align 16
  br label %97

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %112, %97
  %.09 = phi i32 [ 0, %97 ], [ %113, %112 ]
  %99 = icmp ult i32 %.09, 8
  br i1 %99, label %100, label %114

100:                                              ; preds = %98
  %101 = zext i32 %.09 to i64
  %102 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = sext i16 %103 to i32
  %105 = zext i32 %.09 to i64
  %106 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %105
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = srem i32 2, %108
  %.not46 = icmp eq i32 %109, %104
  br i1 %.not46, label %111, label %110

110:                                              ; preds = %100
  call void @abort() #2
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i32 %.09, 1
  br label %98, !llvm.loop !9

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114
  %116 = load <8 x i16>, <8 x i16>* %3, align 16
  %117 = xor <8 x i16> %116, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %117, <8 x i16>* %4, align 16
  br label %118

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %131, %118
  %.010 = phi i32 [ 0, %118 ], [ %132, %131 ]
  %120 = icmp ult i32 %.010, 8
  br i1 %120, label %121, label %133

121:                                              ; preds = %119
  %122 = zext i32 %.010 to i64
  %123 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = zext i32 %.010 to i64
  %126 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = xor i16 %127, 2
  %.not45 = icmp eq i16 %124, %128
  br i1 %.not45, label %130, label %129

129:                                              ; preds = %121
  call void @abort() #2
  br label %UnifiedUnreachableBlock

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130
  %132 = add nuw nsw i32 %.010, 1
  br label %119, !llvm.loop !10

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133
  %135 = load <8 x i16>, <8 x i16>* %3, align 16
  %136 = and <8 x i16> %135, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %136, <8 x i16>* %4, align 16
  br label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %152, %137
  %.011 = phi i32 [ 0, %137 ], [ %153, %152 ]
  %139 = icmp ult i32 %.011, 8
  br i1 %139, label %140, label %154

140:                                              ; preds = %138
  %141 = zext i32 %.011 to i64
  %142 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = zext i32 %.011 to i64
  %146 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %145
  %147 = load i16, i16* %146, align 2
  %148 = and i16 %147, 2
  %149 = zext i16 %148 to i32
  %.not44 = icmp eq i32 %144, %149
  br i1 %.not44, label %151, label %150

150:                                              ; preds = %140
  call void @abort() #2
  br label %UnifiedUnreachableBlock

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151
  %153 = add nuw nsw i32 %.011, 1
  br label %138, !llvm.loop !11

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154
  %156 = load <8 x i16>, <8 x i16>* %3, align 16
  %157 = or <8 x i16> %156, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %157, <8 x i16>* %4, align 16
  br label %158

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %171, %158
  %.012 = phi i32 [ 0, %158 ], [ %172, %171 ]
  %160 = icmp ult i32 %.012, 8
  br i1 %160, label %161, label %173

161:                                              ; preds = %159
  %162 = zext i32 %.012 to i64
  %163 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %162
  %164 = load i16, i16* %163, align 2
  %165 = zext i32 %.012 to i64
  %166 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %165
  %167 = load i16, i16* %166, align 2
  %168 = or i16 %167, 2
  %.not43 = icmp eq i16 %164, %168
  br i1 %.not43, label %170, label %169

169:                                              ; preds = %161
  call void @abort() #2
  br label %UnifiedUnreachableBlock

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170
  %172 = add nuw nsw i32 %.012, 1
  br label %159, !llvm.loop !12

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173
  %175 = load <8 x i16>, <8 x i16>* %3, align 16
  %176 = shl <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %175
  store <8 x i16> %176, <8 x i16>* %4, align 16
  br label %177

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %192, %177
  %.013 = phi i32 [ 0, %177 ], [ %193, %192 ]
  %179 = icmp ult i32 %.013, 8
  br i1 %179, label %180, label %194

180:                                              ; preds = %178
  %181 = zext i32 %.013 to i64
  %182 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %181
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  %185 = zext i32 %.013 to i64
  %186 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %185
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = shl i32 2, %188
  %.not42 = icmp eq i32 %189, %184
  br i1 %.not42, label %191, label %190

190:                                              ; preds = %180
  call void @abort() #2
  br label %UnifiedUnreachableBlock

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191
  %193 = add nuw nsw i32 %.013, 1
  br label %178, !llvm.loop !13

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194
  %196 = load <8 x i16>, <8 x i16>* %3, align 16
  %197 = lshr <8 x i16> <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, %196
  store <8 x i16> %197, <8 x i16>* %4, align 16
  br label %198

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %213, %198
  %.014 = phi i32 [ 0, %198 ], [ %214, %213 ]
  %200 = icmp ult i32 %.014, 8
  br i1 %200, label %201, label %215

201:                                              ; preds = %199
  %202 = zext i32 %.014 to i64
  %203 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = zext i32 %.014 to i64
  %207 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = lshr i32 2, %209
  %.not41 = icmp eq i32 %210, %205
  br i1 %.not41, label %212, label %211

211:                                              ; preds = %201
  call void @abort() #2
  br label %UnifiedUnreachableBlock

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212
  %214 = add nuw nsw i32 %.014, 1
  br label %199, !llvm.loop !14

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215
  %217 = load <8 x i16>, <8 x i16>* %3, align 16
  %218 = add <8 x i16> %217, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %218, <8 x i16>* %4, align 16
  br label %219

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %234, %219
  %.015 = phi i32 [ 0, %219 ], [ %235, %234 ]
  %221 = icmp ult i32 %.015, 8
  br i1 %221, label %222, label %236

222:                                              ; preds = %220
  %223 = zext i32 %.015 to i64
  %224 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  %227 = zext i32 %.015 to i64
  %228 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %227
  %229 = load i16, i16* %228, align 2
  %230 = sext i16 %229 to i32
  %231 = add nsw i32 %230, 2
  %.not40 = icmp eq i32 %231, %226
  br i1 %.not40, label %233, label %232

232:                                              ; preds = %222
  call void @abort() #2
  br label %UnifiedUnreachableBlock

233:                                              ; preds = %222
  br label %234

234:                                              ; preds = %233
  %235 = add nuw nsw i32 %.015, 1
  br label %220, !llvm.loop !15

236:                                              ; preds = %220
  br label %237

237:                                              ; preds = %236
  %238 = load <8 x i16>, <8 x i16>* %3, align 16
  %239 = add <8 x i16> %238, <i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2>
  store <8 x i16> %239, <8 x i16>* %4, align 16
  br label %240

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %255, %240
  %.016 = phi i32 [ 0, %240 ], [ %256, %255 ]
  %242 = icmp ult i32 %.016, 8
  br i1 %242, label %243, label %257

243:                                              ; preds = %241
  %244 = zext i32 %.016 to i64
  %245 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %244
  %246 = load i16, i16* %245, align 2
  %247 = sext i16 %246 to i32
  %248 = zext i32 %.016 to i64
  %249 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %248
  %250 = load i16, i16* %249, align 2
  %251 = sext i16 %250 to i32
  %252 = add nsw i32 %251, -2
  %.not39 = icmp eq i32 %252, %247
  br i1 %.not39, label %254, label %253

253:                                              ; preds = %243
  call void @abort() #2
  br label %UnifiedUnreachableBlock

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254
  %256 = add nuw nsw i32 %.016, 1
  br label %241, !llvm.loop !16

257:                                              ; preds = %241
  br label %258

258:                                              ; preds = %257
  %259 = load <8 x i16>, <8 x i16>* %3, align 16
  %260 = shl <8 x i16> %259, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  store <8 x i16> %260, <8 x i16>* %4, align 16
  br label %261

261:                                              ; preds = %258
  br label %262

262:                                              ; preds = %276, %261
  %.017 = phi i32 [ 0, %261 ], [ %277, %276 ]
  %263 = icmp ult i32 %.017, 8
  br i1 %263, label %264, label %278

264:                                              ; preds = %262
  %265 = zext i32 %.017 to i64
  %266 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %265
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i32
  %269 = zext i32 %.017 to i64
  %270 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %269
  %271 = load i16, i16* %270, align 2
  %272 = sext i16 %271 to i32
  %273 = shl nsw i32 %272, 1
  %.not38 = icmp eq i32 %273, %268
  br i1 %.not38, label %275, label %274

274:                                              ; preds = %264
  call void @abort() #2
  br label %UnifiedUnreachableBlock

275:                                              ; preds = %264
  br label %276

276:                                              ; preds = %275
  %277 = add nuw nsw i32 %.017, 1
  br label %262, !llvm.loop !17

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278
  %280 = load <8 x i16>, <8 x i16>* %3, align 16
  %281 = sdiv <8 x i16> %280, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %281, <8 x i16>* %4, align 16
  br label %282

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %295, %282
  %.018 = phi i32 [ 0, %282 ], [ %296, %295 ]
  %284 = icmp ult i32 %.018, 8
  br i1 %284, label %285, label %297

285:                                              ; preds = %283
  %286 = zext i32 %.018 to i64
  %287 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %286
  %288 = load i16, i16* %287, align 2
  %289 = zext i32 %.018 to i64
  %290 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %289
  %291 = load i16, i16* %290, align 2
  %292 = sdiv i16 %291, 2
  %.not37 = icmp eq i16 %288, %292
  br i1 %.not37, label %294, label %293

293:                                              ; preds = %285
  call void @abort() #2
  br label %UnifiedUnreachableBlock

294:                                              ; preds = %285
  br label %295

295:                                              ; preds = %294
  %296 = add nuw nsw i32 %.018, 1
  br label %283, !llvm.loop !18

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297
  %299 = load <8 x i16>, <8 x i16>* %3, align 16
  %300 = srem <8 x i16> %299, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %300, <8 x i16>* %4, align 16
  br label %301

301:                                              ; preds = %298
  br label %302

302:                                              ; preds = %316, %301
  %.019 = phi i32 [ 0, %301 ], [ %317, %316 ]
  %303 = icmp ult i32 %.019, 8
  br i1 %303, label %304, label %318

304:                                              ; preds = %302
  %305 = zext i32 %.019 to i64
  %306 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %305
  %307 = load i16, i16* %306, align 2
  %308 = sext i16 %307 to i32
  %309 = zext i32 %.019 to i64
  %310 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %309
  %311 = load i16, i16* %310, align 2
  %312 = sext i16 %311 to i32
  %313 = srem i32 %312, 2
  %.not36 = icmp eq i32 %313, %308
  br i1 %.not36, label %315, label %314

314:                                              ; preds = %304
  call void @abort() #2
  br label %UnifiedUnreachableBlock

315:                                              ; preds = %304
  br label %316

316:                                              ; preds = %315
  %317 = add nuw nsw i32 %.019, 1
  br label %302, !llvm.loop !19

318:                                              ; preds = %302
  br label %319

319:                                              ; preds = %318
  %320 = load <8 x i16>, <8 x i16>* %3, align 16
  %321 = xor <8 x i16> %320, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %321, <8 x i16>* %4, align 16
  br label %322

322:                                              ; preds = %319
  br label %323

323:                                              ; preds = %335, %322
  %.020 = phi i32 [ 0, %322 ], [ %336, %335 ]
  %324 = icmp ult i32 %.020, 8
  br i1 %324, label %325, label %337

325:                                              ; preds = %323
  %326 = zext i32 %.020 to i64
  %327 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %326
  %328 = load i16, i16* %327, align 2
  %329 = zext i32 %.020 to i64
  %330 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %329
  %331 = load i16, i16* %330, align 2
  %332 = xor i16 %331, 2
  %.not35 = icmp eq i16 %328, %332
  br i1 %.not35, label %334, label %333

333:                                              ; preds = %325
  call void @abort() #2
  br label %UnifiedUnreachableBlock

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %334
  %336 = add nuw nsw i32 %.020, 1
  br label %323, !llvm.loop !20

337:                                              ; preds = %323
  br label %338

338:                                              ; preds = %337
  %339 = load <8 x i16>, <8 x i16>* %3, align 16
  %340 = and <8 x i16> %339, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %340, <8 x i16>* %4, align 16
  br label %341

341:                                              ; preds = %338
  br label %342

342:                                              ; preds = %356, %341
  %.021 = phi i32 [ 0, %341 ], [ %357, %356 ]
  %343 = icmp ult i32 %.021, 8
  br i1 %343, label %344, label %358

344:                                              ; preds = %342
  %345 = zext i32 %.021 to i64
  %346 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %345
  %347 = load i16, i16* %346, align 2
  %348 = sext i16 %347 to i32
  %349 = zext i32 %.021 to i64
  %350 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %349
  %351 = load i16, i16* %350, align 2
  %352 = and i16 %351, 2
  %353 = zext i16 %352 to i32
  %.not34 = icmp eq i32 %348, %353
  br i1 %.not34, label %355, label %354

354:                                              ; preds = %344
  call void @abort() #2
  br label %UnifiedUnreachableBlock

355:                                              ; preds = %344
  br label %356

356:                                              ; preds = %355
  %357 = add nuw nsw i32 %.021, 1
  br label %342, !llvm.loop !21

358:                                              ; preds = %342
  br label %359

359:                                              ; preds = %358
  %360 = load <8 x i16>, <8 x i16>* %3, align 16
  %361 = or <8 x i16> %360, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  store <8 x i16> %361, <8 x i16>* %4, align 16
  br label %362

362:                                              ; preds = %359
  br label %363

363:                                              ; preds = %375, %362
  %.022 = phi i32 [ 0, %362 ], [ %376, %375 ]
  %364 = icmp ult i32 %.022, 8
  br i1 %364, label %365, label %377

365:                                              ; preds = %363
  %366 = zext i32 %.022 to i64
  %367 = getelementptr inbounds <8 x i16>, <8 x i16>* %4, i64 0, i64 %366
  %368 = load i16, i16* %367, align 2
  %369 = zext i32 %.022 to i64
  %370 = getelementptr inbounds <8 x i16>, <8 x i16>* %3, i64 0, i64 %369
  %371 = load i16, i16* %370, align 2
  %372 = or i16 %371, 2
  %.not = icmp eq i16 %368, %372
  br i1 %.not, label %374, label %373

373:                                              ; preds = %365
  call void @abort() #2
  br label %UnifiedUnreachableBlock

374:                                              ; preds = %365
  br label %375

375:                                              ; preds = %374
  %376 = add nuw nsw i32 %.022, 1
  br label %363, !llvm.loop !22

377:                                              ; preds = %363
  br label %378

378:                                              ; preds = %377
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %6, align 16
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %392, %379
  %.024 = phi i32 [ 0, %379 ], [ %393, %392 ]
  %381 = icmp ult i32 %.024, 4
  br i1 %381, label %382, label %394

382:                                              ; preds = %380
  %383 = zext i32 %.024 to i64
  %384 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %383
  %385 = load float, float* %384, align 4
  %386 = zext i32 %.024 to i64
  %387 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %386
  %388 = load float, float* %387, align 4
  %389 = fcmp une float %385, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  call void @abort() #2
  br label %UnifiedUnreachableBlock

391:                                              ; preds = %382
  br label %392

392:                                              ; preds = %391
  %393 = add nuw nsw i32 %.024, 1
  br label %380, !llvm.loop !23

394:                                              ; preds = %380
  br label %395

395:                                              ; preds = %394
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00>, <4 x float>* %6, align 16
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %409, %396
  %.026 = phi i32 [ 0, %396 ], [ %410, %409 ]
  %398 = icmp ult i32 %.026, 4
  br i1 %398, label %399, label %411

399:                                              ; preds = %397
  %400 = zext i32 %.026 to i64
  %401 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %400
  %402 = load float, float* %401, align 4
  %403 = zext i32 %.026 to i64
  %404 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %403
  %405 = load float, float* %404, align 4
  %406 = fcmp une float %402, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %399
  call void @abort() #2
  br label %UnifiedUnreachableBlock

408:                                              ; preds = %399
  br label %409

409:                                              ; preds = %408
  %410 = add nuw nsw i32 %.026, 1
  br label %397, !llvm.loop !24

411:                                              ; preds = %397
  br label %412

412:                                              ; preds = %411
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %6, align 16
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %426, %413
  %.028 = phi i32 [ 0, %413 ], [ %427, %426 ]
  %415 = icmp ult i32 %.028, 4
  br i1 %415, label %416, label %428

416:                                              ; preds = %414
  %417 = zext i32 %.028 to i64
  %418 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %417
  %419 = load float, float* %418, align 4
  %420 = zext i32 %.028 to i64
  %421 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %420
  %422 = load float, float* %421, align 4
  %423 = fcmp une float %419, %422
  br i1 %423, label %424, label %425

424:                                              ; preds = %416
  call void @abort() #2
  br label %UnifiedUnreachableBlock

425:                                              ; preds = %416
  br label %426

426:                                              ; preds = %425
  %427 = add nuw nsw i32 %.028, 1
  br label %414, !llvm.loop !25

428:                                              ; preds = %414
  br label %429

429:                                              ; preds = %428
  store <4 x float> <float 2.000000e+00, float 1.000000e+00, float 0x3FE5555560000000, float 5.000000e-01>, <4 x float>* %5, align 16
  store <4 x float> <float 2.000000e+00, float 1.000000e+00, float 0x3FE5555560000000, float 5.000000e-01>, <4 x float>* %6, align 16
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %443, %430
  %.030 = phi i32 [ 0, %430 ], [ %444, %443 ]
  %432 = icmp ult i32 %.030, 4
  br i1 %432, label %433, label %445

433:                                              ; preds = %431
  %434 = zext i32 %.030 to i64
  %435 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %434
  %436 = load float, float* %435, align 4
  %437 = zext i32 %.030 to i64
  %438 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %437
  %439 = load float, float* %438, align 4
  %440 = fcmp une float %436, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %433
  call void @abort() #2
  br label %UnifiedUnreachableBlock

442:                                              ; preds = %433
  br label %443

443:                                              ; preds = %442
  %444 = add nuw nsw i32 %.030, 1
  br label %431, !llvm.loop !26

445:                                              ; preds = %431
  br label %446

446:                                              ; preds = %445
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %6, align 16
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %460, %447
  %.032 = phi i32 [ 0, %447 ], [ %461, %460 ]
  %449 = icmp ult i32 %.032, 4
  br i1 %449, label %450, label %462

450:                                              ; preds = %448
  %451 = zext i32 %.032 to i64
  %452 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %451
  %453 = load float, float* %452, align 4
  %454 = zext i32 %.032 to i64
  %455 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %454
  %456 = load float, float* %455, align 4
  %457 = fcmp une float %453, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %450
  call void @abort() #2
  br label %UnifiedUnreachableBlock

459:                                              ; preds = %450
  br label %460

460:                                              ; preds = %459
  %461 = add nuw nsw i32 %.032, 1
  br label %448, !llvm.loop !27

462:                                              ; preds = %448
  br label %463

463:                                              ; preds = %462
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x float>* %6, align 16
  br label %464

464:                                              ; preds = %463
  br label %465

465:                                              ; preds = %477, %464
  %.033 = phi i32 [ 0, %464 ], [ %478, %477 ]
  %466 = icmp ult i32 %.033, 4
  br i1 %466, label %467, label %479

467:                                              ; preds = %465
  %468 = zext i32 %.033 to i64
  %469 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %468
  %470 = load float, float* %469, align 4
  %471 = zext i32 %.033 to i64
  %472 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %471
  %473 = load float, float* %472, align 4
  %474 = fcmp une float %470, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %467
  call void @abort() #2
  br label %UnifiedUnreachableBlock

476:                                              ; preds = %467
  br label %477

477:                                              ; preds = %476
  %478 = add nuw nsw i32 %.033, 1
  br label %465, !llvm.loop !28

479:                                              ; preds = %465
  br label %480

480:                                              ; preds = %479
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %6, align 16
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %494, %481
  %.031 = phi i32 [ 0, %481 ], [ %495, %494 ]
  %483 = icmp ult i32 %.031, 4
  br i1 %483, label %484, label %496

484:                                              ; preds = %482
  %485 = zext i32 %.031 to i64
  %486 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %485
  %487 = load float, float* %486, align 4
  %488 = zext i32 %.031 to i64
  %489 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %488
  %490 = load float, float* %489, align 4
  %491 = fcmp une float %487, %490
  br i1 %491, label %492, label %493

492:                                              ; preds = %484
  call void @abort() #2
  br label %UnifiedUnreachableBlock

493:                                              ; preds = %484
  br label %494

494:                                              ; preds = %493
  %495 = add nuw nsw i32 %.031, 1
  br label %482, !llvm.loop !29

496:                                              ; preds = %482
  br label %497

497:                                              ; preds = %496
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00>, <4 x float>* %5, align 16
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00>, <4 x float>* %6, align 16
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %511, %498
  %.029 = phi i32 [ 0, %498 ], [ %512, %511 ]
  %500 = icmp ult i32 %.029, 4
  br i1 %500, label %501, label %513

501:                                              ; preds = %499
  %502 = zext i32 %.029 to i64
  %503 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 0, i64 %502
  %504 = load float, float* %503, align 4
  %505 = zext i32 %.029 to i64
  %506 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 %505
  %507 = load float, float* %506, align 4
  %508 = fcmp une float %504, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %501
  call void @abort() #2
  br label %UnifiedUnreachableBlock

510:                                              ; preds = %501
  br label %511

511:                                              ; preds = %510
  %512 = add nuw nsw i32 %.029, 1
  br label %499, !llvm.loop !30

513:                                              ; preds = %499
  br label %514

514:                                              ; preds = %513
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %8, align 16
  br label %515

515:                                              ; preds = %514
  br label %516

516:                                              ; preds = %528, %515
  %.027 = phi i32 [ 0, %515 ], [ %529, %528 ]
  %517 = icmp ult i32 %.027, 2
  br i1 %517, label %518, label %530

518:                                              ; preds = %516
  %519 = zext i32 %.027 to i64
  %520 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %519
  %521 = load double, double* %520, align 8
  %522 = zext i32 %.027 to i64
  %523 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %522
  %524 = load double, double* %523, align 8
  %525 = fcmp une double %521, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %518
  call void @abort() #2
  br label %UnifiedUnreachableBlock

527:                                              ; preds = %518
  br label %528

528:                                              ; preds = %527
  %529 = add nuw nsw i32 %.027, 1
  br label %516, !llvm.loop !31

530:                                              ; preds = %516
  br label %531

531:                                              ; preds = %530
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double>* %8, align 16
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %545, %532
  %.025 = phi i32 [ 0, %532 ], [ %546, %545 ]
  %534 = icmp ult i32 %.025, 2
  br i1 %534, label %535, label %547

535:                                              ; preds = %533
  %536 = zext i32 %.025 to i64
  %537 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %536
  %538 = load double, double* %537, align 8
  %539 = zext i32 %.025 to i64
  %540 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %539
  %541 = load double, double* %540, align 8
  %542 = fcmp une double %538, %541
  br i1 %542, label %543, label %544

543:                                              ; preds = %535
  call void @abort() #2
  br label %UnifiedUnreachableBlock

544:                                              ; preds = %535
  br label %545

545:                                              ; preds = %544
  %546 = add nuw nsw i32 %.025, 1
  br label %533, !llvm.loop !32

547:                                              ; preds = %533
  br label %548

548:                                              ; preds = %547
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %8, align 16
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %562, %549
  %.023 = phi i32 [ 0, %549 ], [ %563, %562 ]
  %551 = icmp ult i32 %.023, 2
  br i1 %551, label %552, label %564

552:                                              ; preds = %550
  %553 = zext i32 %.023 to i64
  %554 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %553
  %555 = load double, double* %554, align 8
  %556 = zext i32 %.023 to i64
  %557 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %556
  %558 = load double, double* %557, align 8
  %559 = fcmp une double %555, %558
  br i1 %559, label %560, label %561

560:                                              ; preds = %552
  call void @abort() #2
  br label %UnifiedUnreachableBlock

561:                                              ; preds = %552
  br label %562

562:                                              ; preds = %561
  %563 = add nuw nsw i32 %.023, 1
  br label %550, !llvm.loop !33

564:                                              ; preds = %550
  br label %565

565:                                              ; preds = %564
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double>* %8, align 16
  br label %566

566:                                              ; preds = %565
  br label %567

567:                                              ; preds = %579, %566
  %.04 = phi i32 [ 0, %566 ], [ %580, %579 ]
  %568 = icmp ult i32 %.04, 2
  br i1 %568, label %569, label %581

569:                                              ; preds = %567
  %570 = zext i32 %.04 to i64
  %571 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %570
  %572 = load double, double* %571, align 8
  %573 = zext i32 %.04 to i64
  %574 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %573
  %575 = load double, double* %574, align 8
  %576 = fcmp une double %572, %575
  br i1 %576, label %577, label %578

577:                                              ; preds = %569
  call void @abort() #2
  br label %UnifiedUnreachableBlock

578:                                              ; preds = %569
  br label %579

579:                                              ; preds = %578
  %580 = add nuw nsw i32 %.04, 1
  br label %567, !llvm.loop !34

581:                                              ; preds = %567
  br label %582

582:                                              ; preds = %581
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %8, align 16
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %596, %583
  %.03 = phi i32 [ 0, %583 ], [ %597, %596 ]
  %585 = icmp ult i32 %.03, 2
  br i1 %585, label %586, label %598

586:                                              ; preds = %584
  %587 = zext i32 %.03 to i64
  %588 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %587
  %589 = load double, double* %588, align 8
  %590 = zext i32 %.03 to i64
  %591 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %590
  %592 = load double, double* %591, align 8
  %593 = fcmp une double %589, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %586
  call void @abort() #2
  br label %UnifiedUnreachableBlock

595:                                              ; preds = %586
  br label %596

596:                                              ; preds = %595
  %597 = add nuw nsw i32 %.03, 1
  br label %584, !llvm.loop !35

598:                                              ; preds = %584
  br label %599

599:                                              ; preds = %598
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, <2 x double>* %8, align 16
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %613, %600
  %.02 = phi i32 [ 0, %600 ], [ %614, %613 ]
  %602 = icmp ult i32 %.02, 2
  br i1 %602, label %603, label %615

603:                                              ; preds = %601
  %604 = zext i32 %.02 to i64
  %605 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %604
  %606 = load double, double* %605, align 8
  %607 = zext i32 %.02 to i64
  %608 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %607
  %609 = load double, double* %608, align 8
  %610 = fcmp une double %606, %609
  br i1 %610, label %611, label %612

611:                                              ; preds = %603
  call void @abort() #2
  br label %UnifiedUnreachableBlock

612:                                              ; preds = %603
  br label %613

613:                                              ; preds = %612
  %614 = add nuw nsw i32 %.02, 1
  br label %601, !llvm.loop !36

615:                                              ; preds = %601
  br label %616

616:                                              ; preds = %615
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %8, align 16
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %630, %617
  %.01 = phi i32 [ 0, %617 ], [ %631, %630 ]
  %619 = icmp ult i32 %.01, 2
  br i1 %619, label %620, label %632

620:                                              ; preds = %618
  %621 = zext i32 %.01 to i64
  %622 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %621
  %623 = load double, double* %622, align 8
  %624 = zext i32 %.01 to i64
  %625 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %624
  %626 = load double, double* %625, align 8
  %627 = fcmp une double %623, %626
  br i1 %627, label %628, label %629

628:                                              ; preds = %620
  call void @abort() #2
  br label %UnifiedUnreachableBlock

629:                                              ; preds = %620
  br label %630

630:                                              ; preds = %629
  %631 = add nuw nsw i32 %.01, 1
  br label %618, !llvm.loop !37

632:                                              ; preds = %618
  br label %633

633:                                              ; preds = %632
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double>* %7, align 16
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double>* %8, align 16
  br label %634

634:                                              ; preds = %633
  br label %635

635:                                              ; preds = %647, %634
  %.0 = phi i32 [ 0, %634 ], [ %648, %647 ]
  %636 = icmp ult i32 %.0, 2
  br i1 %636, label %637, label %649

637:                                              ; preds = %635
  %638 = zext i32 %.0 to i64
  %639 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0, i64 %638
  %640 = load double, double* %639, align 8
  %641 = zext i32 %.0 to i64
  %642 = getelementptr inbounds <2 x double>, <2 x double>* %8, i64 0, i64 %641
  %643 = load double, double* %642, align 8
  %644 = fcmp une double %640, %643
  br i1 %644, label %645, label %646

645:                                              ; preds = %637
  call void @abort() #2
  br label %UnifiedUnreachableBlock

646:                                              ; preds = %637
  br label %647

647:                                              ; preds = %646
  %648 = add nuw nsw i32 %.0, 1
  br label %635, !llvm.loop !38

649:                                              ; preds = %635
  br label %650

650:                                              ; preds = %649
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %645, %628, %611, %594, %577, %560, %543, %526, %509, %492, %475, %458, %441, %424, %407, %390, %373, %354, %333, %314, %293, %274, %253, %232, %211, %190, %169, %150, %129, %110, %89, %68, %47, %26
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
