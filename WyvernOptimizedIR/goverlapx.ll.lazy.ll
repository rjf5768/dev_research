; ModuleID = './goverlapx.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@numcells = external dso_local global i32, align 4
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @goverlapx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5) #0 {
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %8
  %10 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 21, i64 %13
  %15 = load %struct.tilebox*, %struct.tilebox** %14, align 8
  %16 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, %1
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, %5
  %23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = fptosi double %22 to i32
  %26 = sitofp i32 %25 to double
  %27 = fsub double %22, %26
  %28 = fcmp ult double %27, 5.000000e-01
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = fptosi double %22 to i32
  %31 = add nsw i32 %30, 1
  br label %34

32:                                               ; preds = %6
  %33 = fptosi double %22 to i32
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  %36 = add nsw i32 %24, %35
  %37 = sub nsw i32 %36, %3
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 16
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, %2
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, %5
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = fptosi double %44 to i32
  %48 = sitofp i32 %47 to double
  %49 = fsub double %44, %48
  %50 = fcmp ult double %49, 5.000000e-01
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = fptosi double %44 to i32
  %53 = add nsw i32 %52, 1
  br label %56

54:                                               ; preds = %34
  %55 = fptosi double %44 to i32
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %53, %51 ], [ %55, %54 ]
  %58 = add nsw i32 %46, %57
  %59 = sub nsw i32 %58, %4
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, %3
  %63 = sub i32 %17, %62
  %64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %37, %65
  %67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %68, %4
  %70 = sub i32 %39, %69
  %71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %59, %72
  %74 = load i32, i32* @binOffsetX, align 4
  %75 = sub nsw i32 %63, %74
  %76 = load i32, i32* @binWidthX, align 4
  %77 = sdiv i32 %75, %76
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %56
  br label %86

80:                                               ; preds = %56
  %81 = load i32, i32* @numBinsX, align 4
  %82 = icmp sgt i32 %77, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @numBinsX, align 4
  br label %85

85:                                               ; preds = %83, %80
  %.05 = phi i32 [ %84, %83 ], [ %77, %80 ]
  br label %86

86:                                               ; preds = %85, %79
  %.16 = phi i32 [ 1, %79 ], [ %.05, %85 ]
  %87 = load i32, i32* @binOffsetX, align 4
  %88 = sub nsw i32 %66, %87
  %89 = load i32, i32* @binWidthX, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32, i32* @numBinsX, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @numBinsX, align 4
  br label %99

95:                                               ; preds = %86
  %96 = icmp slt i32 %90, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %95
  %.03 = phi i32 [ 1, %97 ], [ %90, %95 ]
  br label %99

99:                                               ; preds = %98, %93
  %.14 = phi i32 [ %94, %93 ], [ %.03, %98 ]
  %100 = load i32, i32* @binOffsetY, align 4
  %101 = sub nsw i32 %70, %100
  %102 = load i32, i32* @binWidthY, align 4
  %103 = sdiv i32 %101, %102
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @numBinsY, align 4
  %108 = icmp sgt i32 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @numBinsY, align 4
  br label %111

111:                                              ; preds = %109, %106
  %.01 = phi i32 [ %110, %109 ], [ %103, %106 ]
  br label %112

112:                                              ; preds = %111, %105
  %.12 = phi i32 [ 1, %105 ], [ %.01, %111 ]
  %113 = load i32, i32* @binOffsetY, align 4
  %114 = sub nsw i32 %73, %113
  %115 = load i32, i32* @binWidthY, align 4
  %116 = sdiv i32 %114, %115
  %117 = load i32, i32* @numBinsY, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @numBinsY, align 4
  br label %125

121:                                              ; preds = %112
  %122 = icmp slt i32 %116, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %121
  %.0 = phi i32 [ 1, %123 ], [ %116, %121 ]
  br label %125

125:                                              ; preds = %124, %119
  %.1 = phi i32 [ %120, %119 ], [ %.0, %124 ]
  %126 = icmp eq i32 %.16, %.14
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = icmp eq i32 %.12, %.1
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  br label %131

130:                                              ; preds = %127, %125
  br label %131

131:                                              ; preds = %130, %129
  %storemerge25 = phi i32 [ 0, %130 ], [ %.16, %129 ]
  %storemerge = phi i32 [ 0, %130 ], [ %.12, %129 ]
  store i32 %storemerge25, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %132

132:                                              ; preds = %411, %131
  %.016 = phi i32 [ 0, %131 ], [ %.7, %411 ]
  %.09 = phi i32 [ 0, %131 ], [ %412, %411 ]
  %.not = icmp sgt i32 %.09, %.14
  br i1 %.not, label %413, label %133

133:                                              ; preds = %132
  %134 = icmp eq i32 %.09, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %.not26 = icmp slt i32 %.09, %.16
  br i1 %.not26, label %136, label %137

136:                                              ; preds = %135
  br label %411

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %408, %137
  %.117 = phi i32 [ %.016, %137 ], [ %.6, %408 ]
  %.08 = phi i32 [ 0, %137 ], [ %409, %408 ]
  %.not27 = icmp sgt i32 %.08, %.1
  br i1 %.not27, label %410, label %139

139:                                              ; preds = %138
  %140 = icmp eq i32 %.09, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = icmp eq i32 %.08, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %141, %139
  %.not28 = icmp eq i32 %.09, 0
  br i1 %.not28, label %145, label %144

144:                                              ; preds = %143
  %.not29 = icmp slt i32 %.08, %.12
  br i1 %.not29, label %145, label %146

145:                                              ; preds = %144, %143
  br label %408

146:                                              ; preds = %144, %141
  %147 = load i32***, i32**** @blockarray, align 8
  %148 = zext i32 %.09 to i64
  %149 = getelementptr inbounds i32**, i32*** %147, i64 %148
  %150 = load i32**, i32*** %149, align 8
  %151 = zext i32 %.08 to i64
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  %153 = load i32*, i32** %152, align 8
  br label %154

154:                                              ; preds = %405, %146
  %.2 = phi i32 [ %.117, %146 ], [ %.5, %405 ]
  %.07 = phi i32 [ 1, %146 ], [ %406, %405 ]
  %155 = load i32, i32* %153, align 4
  %.not30 = icmp sgt i32 %.07, %155
  br i1 %.not30, label %407, label %156

156:                                              ; preds = %154
  %157 = zext i32 %.07 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, %0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %405

162:                                              ; preds = %156
  %163 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %164 = sext i32 %159 to i64
  %165 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %163, i64 %164
  %166 = load %struct.cellbox*, %struct.cellbox** %165, align 8
  %167 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %166, i64 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %166, i64 0, i32 21, i64 %169
  %171 = load %struct.tilebox*, %struct.tilebox** %170, align 8
  %172 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %166, i64 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %166, i64 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %173, %177
  %179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %173, %180
  %182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %175, %183
  %185 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 12
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %175, %186
  %188 = load i32, i32* @numcells, align 4
  %.not31 = icmp sgt i32 %159, %188
  br i1 %.not31, label %202, label %189

189:                                              ; preds = %162
  %190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %178, %191
  %193 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %181, %194
  %196 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %184, %197
  %199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %187, %200
  br label %202

202:                                              ; preds = %189, %162
  %.015 = phi i32 [ %201, %189 ], [ %187, %162 ]
  %.014 = phi i32 [ %198, %189 ], [ %184, %162 ]
  %.013 = phi i32 [ %195, %189 ], [ %181, %162 ]
  %.012 = phi i32 [ %192, %189 ], [ %178, %162 ]
  %.not32 = icmp slt i32 %.012, %66
  br i1 %.not32, label %203, label %206

203:                                              ; preds = %202
  %.not33 = icmp slt i32 %63, %.013
  br i1 %.not33, label %204, label %206

204:                                              ; preds = %203
  %.not34 = icmp slt i32 %.014, %73
  br i1 %.not34, label %205, label %206

205:                                              ; preds = %204
  %.not35 = icmp slt i32 %70, %.015
  br i1 %.not35, label %207, label %206

206:                                              ; preds = %205, %204, %203, %202
  br label %405

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %242

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %166, i64 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %242

215:                                              ; preds = %211
  %.not49 = icmp slt i32 %63, %.012
  br i1 %.not49, label %217, label %216

216:                                              ; preds = %215
  br label %218

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217, %216
  %219 = phi i32 [ %63, %216 ], [ %.012, %217 ]
  %.not50 = icmp sgt i32 %66, %.013
  br i1 %.not50, label %221, label %220

220:                                              ; preds = %218
  br label %222

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221, %220
  %223 = phi i32 [ %66, %220 ], [ %.013, %221 ]
  %.not51 = icmp slt i32 %70, %.014
  br i1 %.not51, label %225, label %224

224:                                              ; preds = %222
  br label %226

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %225, %224
  %227 = phi i32 [ %70, %224 ], [ %.014, %225 ]
  %.not52 = icmp sgt i32 %73, %.015
  br i1 %.not52, label %229, label %228

228:                                              ; preds = %226
  br label %230

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %228
  %231 = phi i32 [ %73, %228 ], [ %.015, %229 ]
  %232 = load double, double* @lapFactor, align 8
  %233 = sub nsw i32 %231, %227
  %234 = sub nsw i32 %223, %219
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* @offset, align 4
  %237 = add nsw i32 %235, %236
  %238 = sitofp i32 %237 to double
  %239 = fmul double %232, %238
  %240 = fptosi double %239 to i32
  %241 = add nsw i32 %.2, %240
  br label %404

242:                                              ; preds = %211, %207
  br label %243

243:                                              ; preds = %393, %242
  %.018 = phi i32 [ 0, %242 ], [ %.119, %393 ]
  %.pn = phi %struct.tilebox* [ %15, %242 ], [ %.010, %393 ]
  %.010.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.010 = load %struct.tilebox*, %struct.tilebox** %.010.in, align 8
  %.not36 = icmp eq %struct.tilebox* %.010, null
  br i1 %.not36, label %394, label %244

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 13
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, %1
  %248 = sitofp i32 %247 to double
  %249 = fdiv double %248, %5
  %250 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = fptosi double %249 to i32
  %253 = sitofp i32 %252 to double
  %254 = fsub double %249, %253
  %255 = fcmp ult double %254, 5.000000e-01
  br i1 %255, label %259, label %256

256:                                              ; preds = %244
  %257 = fptosi double %249 to i32
  %258 = add nsw i32 %257, 1
  br label %261

259:                                              ; preds = %244
  %260 = fptosi double %249 to i32
  br label %261

261:                                              ; preds = %259, %256
  %262 = phi i32 [ %258, %256 ], [ %260, %259 ]
  %263 = add nsw i32 %251, %262
  %264 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 14
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %265, %1
  %267 = sitofp i32 %266 to double
  %268 = fdiv double %267, %5
  %269 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = fptosi double %268 to i32
  %272 = sitofp i32 %271 to double
  %273 = fsub double %268, %272
  %274 = fcmp ult double %273, 5.000000e-01
  br i1 %274, label %278, label %275

275:                                              ; preds = %261
  %276 = fptosi double %268 to i32
  %277 = add nsw i32 %276, 1
  br label %280

278:                                              ; preds = %261
  %279 = fptosi double %268 to i32
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i32 [ %277, %275 ], [ %279, %278 ]
  %282 = add nsw i32 %270, %281
  %283 = sub nsw i32 %282, %3
  %284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 15
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %285, %2
  %287 = sitofp i32 %286 to double
  %288 = fmul double %287, %5
  %289 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = fptosi double %288 to i32
  %292 = sitofp i32 %291 to double
  %293 = fsub double %288, %292
  %294 = fcmp ult double %293, 5.000000e-01
  br i1 %294, label %298, label %295

295:                                              ; preds = %280
  %296 = fptosi double %288 to i32
  %297 = add nsw i32 %296, 1
  br label %300

298:                                              ; preds = %280
  %299 = fptosi double %288 to i32
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi i32 [ %297, %295 ], [ %299, %298 ]
  %302 = add nsw i32 %290, %301
  %303 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 16
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %304, %2
  %306 = sitofp i32 %305 to double
  %307 = fmul double %306, %5
  %308 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = fptosi double %307 to i32
  %311 = sitofp i32 %310 to double
  %312 = fsub double %307, %311
  %313 = fcmp ult double %312, 5.000000e-01
  br i1 %313, label %317, label %314

314:                                              ; preds = %300
  %315 = fptosi double %307 to i32
  %316 = add nsw i32 %315, 1
  br label %319

317:                                              ; preds = %300
  %318 = fptosi double %307 to i32
  br label %319

319:                                              ; preds = %317, %314
  %320 = phi i32 [ %316, %314 ], [ %318, %317 ]
  %321 = add nsw i32 %309, %320
  %322 = sub nsw i32 %321, %4
  %323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = add i32 %324, %3
  %326 = sub i32 %263, %325
  %327 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 6
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %283, %328
  %330 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = add i32 %331, %4
  %333 = sub i32 %302, %332
  %334 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 8
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %322, %335
  br label %337

337:                                              ; preds = %391, %319
  %.119 = phi i32 [ %.018, %319 ], [ %.220, %391 ]
  %.pn48 = phi %struct.tilebox* [ %171, %319 ], [ %.011, %391 ]
  %.011.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn48, i64 0, i32 0
  %.011 = load %struct.tilebox*, %struct.tilebox** %.011.in, align 8
  %.not38 = icmp eq %struct.tilebox* %.011, null
  br i1 %.not38, label %392, label %338

338:                                              ; preds = %337
  %339 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 9
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %173, %340
  %342 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 10
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %173, %343
  %345 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 11
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %175, %346
  %348 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 12
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %175, %349
  %351 = load i32, i32* @numcells, align 4
  %.not39 = icmp sgt i32 %159, %351
  br i1 %.not39, label %365, label %352

352:                                              ; preds = %338
  %353 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = sub nsw i32 %341, %354
  %356 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 6
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %344, %357
  %359 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 7
  %360 = load i32, i32* %359, align 8
  %361 = sub nsw i32 %347, %360
  %362 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 8
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %350, %363
  br label %365

365:                                              ; preds = %352, %338
  %.024 = phi i32 [ %364, %352 ], [ %350, %338 ]
  %.023 = phi i32 [ %361, %352 ], [ %347, %338 ]
  %.022 = phi i32 [ %358, %352 ], [ %344, %338 ]
  %.021 = phi i32 [ %355, %352 ], [ %341, %338 ]
  %.not40 = icmp slt i32 %.021, %329
  br i1 %.not40, label %366, label %369

366:                                              ; preds = %365
  %.not41 = icmp slt i32 %326, %.022
  br i1 %.not41, label %367, label %369

367:                                              ; preds = %366
  %.not42 = icmp slt i32 %.023, %336
  br i1 %.not42, label %368, label %369

368:                                              ; preds = %367
  %.not43 = icmp slt i32 %333, %.024
  br i1 %.not43, label %370, label %369

369:                                              ; preds = %368, %367, %366, %365
  br label %391

370:                                              ; preds = %368
  %.not44 = icmp slt i32 %326, %.021
  br i1 %.not44, label %372, label %371

371:                                              ; preds = %370
  br label %373

372:                                              ; preds = %370
  br label %373

373:                                              ; preds = %372, %371
  %374 = phi i32 [ %326, %371 ], [ %.021, %372 ]
  %.not45 = icmp sgt i32 %329, %.022
  br i1 %.not45, label %376, label %375

375:                                              ; preds = %373
  br label %377

376:                                              ; preds = %373
  br label %377

377:                                              ; preds = %376, %375
  %378 = phi i32 [ %329, %375 ], [ %.022, %376 ]
  %.not46 = icmp slt i32 %333, %.023
  br i1 %.not46, label %380, label %379

379:                                              ; preds = %377
  br label %381

380:                                              ; preds = %377
  br label %381

381:                                              ; preds = %380, %379
  %382 = phi i32 [ %333, %379 ], [ %.023, %380 ]
  %.not47 = icmp sgt i32 %336, %.024
  br i1 %.not47, label %384, label %383

383:                                              ; preds = %381
  br label %385

384:                                              ; preds = %381
  br label %385

385:                                              ; preds = %384, %383
  %386 = phi i32 [ %336, %383 ], [ %.024, %384 ]
  %387 = sub nsw i32 %386, %382
  %388 = sub nsw i32 %378, %374
  %389 = mul nsw i32 %387, %388
  %390 = add nsw i32 %.119, %389
  br label %391

391:                                              ; preds = %385, %369
  %.220 = phi i32 [ %.119, %369 ], [ %390, %385 ]
  br label %337, !llvm.loop !4

392:                                              ; preds = %337
  br label %393

393:                                              ; preds = %392
  br label %243, !llvm.loop !6

394:                                              ; preds = %243
  %.not37 = icmp eq i32 %.018, 0
  br i1 %.not37, label %403, label %395

395:                                              ; preds = %394
  %396 = load double, double* @lapFactor, align 8
  %397 = load i32, i32* @offset, align 4
  %398 = add nsw i32 %.018, %397
  %399 = sitofp i32 %398 to double
  %400 = fmul double %396, %399
  %401 = fptosi double %400 to i32
  %402 = add nsw i32 %.2, %401
  br label %403

403:                                              ; preds = %395, %394
  %.3 = phi i32 [ %402, %395 ], [ %.2, %394 ]
  br label %404

404:                                              ; preds = %403, %230
  %.4 = phi i32 [ %241, %230 ], [ %.3, %403 ]
  br label %405

405:                                              ; preds = %404, %206, %161
  %.5 = phi i32 [ %.2, %161 ], [ %.2, %206 ], [ %.4, %404 ]
  %406 = add nuw nsw i32 %.07, 1
  br label %154, !llvm.loop !7

407:                                              ; preds = %154
  br label %408

408:                                              ; preds = %407, %145
  %.6 = phi i32 [ %.2, %407 ], [ %.117, %145 ]
  %409 = add nuw nsw i32 %.08, 1
  br label %138, !llvm.loop !8

410:                                              ; preds = %138
  br label %411

411:                                              ; preds = %410, %136
  %.7 = phi i32 [ %.117, %410 ], [ %.016, %136 ]
  %412 = add nuw nsw i32 %.09, 1
  br label %132, !llvm.loop !9

413:                                              ; preds = %132
  ret i32 %.016
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
