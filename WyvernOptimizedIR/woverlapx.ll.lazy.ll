; ModuleID = './woverlapx.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapx.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlapx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5) #0 {
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
  %18 = sub nsw i32 %17, %3
  %19 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, %1
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, %5
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = fptosi double %23 to i32
  %27 = sitofp i32 %26 to double
  %28 = fsub double %23, %27
  %29 = fcmp ult double %28, 5.000000e-01
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = fptosi double %23 to i32
  %32 = add nsw i32 %31, 1
  br label %35

33:                                               ; preds = %6
  %34 = fptosi double %23 to i32
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  %37 = add nsw i32 %25, %36
  %38 = sub nsw i32 %37, %3
  %39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, %4
  %42 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 16
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, %2
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, %5
  %47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = fptosi double %46 to i32
  %50 = sitofp i32 %49 to double
  %51 = fsub double %46, %50
  %52 = fcmp ult double %51, 5.000000e-01
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = fptosi double %46 to i32
  %55 = add nsw i32 %54, 1
  br label %58

56:                                               ; preds = %35
  %57 = fptosi double %46 to i32
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %55, %53 ], [ %57, %56 ]
  %60 = add nsw i32 %48, %59
  %61 = sub nsw i32 %60, %4
  %62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = call i32 @wireestx(i32 noundef %18, i32 noundef %41, i32 noundef %61, double noundef %63) #2
  %65 = sub nsw i32 %18, %64
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 2
  %67 = load double, double* %66, align 8
  %68 = call i32 @wireestx(i32 noundef %38, i32 noundef %41, i32 noundef %61, double noundef %67) #2
  %69 = add nsw i32 %38, %68
  %70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 3
  %71 = load double, double* %70, align 8
  %72 = call i32 @wireesty(i32 noundef %41, i32 noundef %65, i32 noundef %69, double noundef %71) #2
  %73 = sub nsw i32 %41, %72
  %74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %15, i64 0, i32 4
  %75 = load double, double* %74, align 8
  %76 = call i32 @wireesty(i32 noundef %61, i32 noundef %65, i32 noundef %69, double noundef %75) #2
  %77 = add nsw i32 %61, %76
  %78 = load i32, i32* @binOffsetX, align 4
  %79 = sub nsw i32 %65, %78
  %80 = load i32, i32* @binWidthX, align 4
  %81 = sdiv i32 %79, %80
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %58
  br label %90

84:                                               ; preds = %58
  %85 = load i32, i32* @numBinsX, align 4
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @numBinsX, align 4
  br label %89

89:                                               ; preds = %87, %84
  %.05 = phi i32 [ %88, %87 ], [ %81, %84 ]
  br label %90

90:                                               ; preds = %89, %83
  %.16 = phi i32 [ 1, %83 ], [ %.05, %89 ]
  %91 = load i32, i32* @binOffsetX, align 4
  %92 = sub nsw i32 %69, %91
  %93 = load i32, i32* @binWidthX, align 4
  %94 = sdiv i32 %92, %93
  %95 = load i32, i32* @numBinsX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @numBinsX, align 4
  br label %103

99:                                               ; preds = %90
  %100 = icmp slt i32 %94, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %99
  %.03 = phi i32 [ 1, %101 ], [ %94, %99 ]
  br label %103

103:                                              ; preds = %102, %97
  %.14 = phi i32 [ %98, %97 ], [ %.03, %102 ]
  %104 = load i32, i32* @binOffsetY, align 4
  %105 = sub nsw i32 %73, %104
  %106 = load i32, i32* @binWidthY, align 4
  %107 = sdiv i32 %105, %106
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @numBinsY, align 4
  %112 = icmp sgt i32 %107, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @numBinsY, align 4
  br label %115

115:                                              ; preds = %113, %110
  %.01 = phi i32 [ %114, %113 ], [ %107, %110 ]
  br label %116

116:                                              ; preds = %115, %109
  %.12 = phi i32 [ 1, %109 ], [ %.01, %115 ]
  %117 = load i32, i32* @binOffsetY, align 4
  %118 = sub nsw i32 %77, %117
  %119 = load i32, i32* @binWidthY, align 4
  %120 = sdiv i32 %118, %119
  %121 = load i32, i32* @numBinsY, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @numBinsY, align 4
  br label %129

125:                                              ; preds = %116
  %126 = icmp slt i32 %120, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %125
  %.0 = phi i32 [ 1, %127 ], [ %120, %125 ]
  br label %129

129:                                              ; preds = %128, %123
  %.1 = phi i32 [ %124, %123 ], [ %.0, %128 ]
  %130 = icmp eq i32 %.16, %.14
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = icmp eq i32 %.12, %.1
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  br label %135

134:                                              ; preds = %131, %129
  br label %135

135:                                              ; preds = %134, %133
  %storemerge25 = phi i32 [ 0, %134 ], [ %.16, %133 ]
  %storemerge = phi i32 [ 0, %134 ], [ %.12, %133 ]
  store i32 %storemerge25, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %136

136:                                              ; preds = %427, %135
  %.016 = phi i32 [ 0, %135 ], [ %.7, %427 ]
  %.09 = phi i32 [ 0, %135 ], [ %428, %427 ]
  %.not = icmp sgt i32 %.09, %.14
  br i1 %.not, label %429, label %137

137:                                              ; preds = %136
  %138 = icmp eq i32 %.09, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %.not26 = icmp slt i32 %.09, %.16
  br i1 %.not26, label %140, label %141

140:                                              ; preds = %139
  br label %427

141:                                              ; preds = %139, %137
  br label %142

142:                                              ; preds = %424, %141
  %.117 = phi i32 [ %.016, %141 ], [ %.6, %424 ]
  %.08 = phi i32 [ 0, %141 ], [ %425, %424 ]
  %.not27 = icmp sgt i32 %.08, %.1
  br i1 %.not27, label %426, label %143

143:                                              ; preds = %142
  %144 = icmp eq i32 %.09, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  %146 = icmp eq i32 %.08, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %145, %143
  %.not28 = icmp eq i32 %.09, 0
  br i1 %.not28, label %149, label %148

148:                                              ; preds = %147
  %.not29 = icmp slt i32 %.08, %.12
  br i1 %.not29, label %149, label %150

149:                                              ; preds = %148, %147
  br label %424

150:                                              ; preds = %148, %145
  %151 = load i32***, i32**** @blockarray, align 8
  %152 = zext i32 %.09 to i64
  %153 = getelementptr inbounds i32**, i32*** %151, i64 %152
  %154 = load i32**, i32*** %153, align 8
  %155 = zext i32 %.08 to i64
  %156 = getelementptr inbounds i32*, i32** %154, i64 %155
  %157 = load i32*, i32** %156, align 8
  br label %158

158:                                              ; preds = %421, %150
  %.2 = phi i32 [ %.117, %150 ], [ %.5, %421 ]
  %.07 = phi i32 [ 1, %150 ], [ %422, %421 ]
  %159 = load i32, i32* %157, align 4
  %.not30 = icmp sgt i32 %.07, %159
  br i1 %.not30, label %423, label %160

160:                                              ; preds = %158
  %161 = zext i32 %.07 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, %0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %421

166:                                              ; preds = %160
  %167 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %168 = sext i32 %163 to i64
  %169 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %167, i64 %168
  %170 = load %struct.cellbox*, %struct.cellbox** %169, align 8
  %171 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i64 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i64 0, i32 21, i64 %173
  %175 = load %struct.tilebox*, %struct.tilebox** %174, align 8
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i64 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i64 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 9
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %177, %181
  %183 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 10
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %177, %184
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 11
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %179, %187
  %189 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 12
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %179, %190
  %192 = load i32, i32* @numcells, align 4
  %.not31 = icmp sgt i32 %163, %192
  br i1 %.not31, label %210, label %193

193:                                              ; preds = %166
  %194 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 1
  %195 = load double, double* %194, align 8
  %196 = call i32 @wireestx(i32 noundef %182, i32 noundef %188, i32 noundef %191, double noundef %195) #2
  %197 = sub nsw i32 %182, %196
  %198 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 2
  %199 = load double, double* %198, align 8
  %200 = call i32 @wireestx(i32 noundef %185, i32 noundef %188, i32 noundef %191, double noundef %199) #2
  %201 = add nsw i32 %185, %200
  %202 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 3
  %203 = load double, double* %202, align 8
  %204 = call i32 @wireesty(i32 noundef %188, i32 noundef %197, i32 noundef %201, double noundef %203) #2
  %205 = sub nsw i32 %188, %204
  %206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i64 0, i32 4
  %207 = load double, double* %206, align 8
  %208 = call i32 @wireesty(i32 noundef %191, i32 noundef %197, i32 noundef %201, double noundef %207) #2
  %209 = add nsw i32 %191, %208
  br label %210

210:                                              ; preds = %193, %166
  %.015 = phi i32 [ %209, %193 ], [ %191, %166 ]
  %.014 = phi i32 [ %205, %193 ], [ %188, %166 ]
  %.013 = phi i32 [ %201, %193 ], [ %185, %166 ]
  %.012 = phi i32 [ %197, %193 ], [ %182, %166 ]
  %.not32 = icmp slt i32 %.012, %69
  br i1 %.not32, label %211, label %214

211:                                              ; preds = %210
  %.not33 = icmp slt i32 %65, %.013
  br i1 %.not33, label %212, label %214

212:                                              ; preds = %211
  %.not34 = icmp slt i32 %.014, %77
  br i1 %.not34, label %213, label %214

213:                                              ; preds = %212
  %.not35 = icmp slt i32 %73, %.015
  br i1 %.not35, label %215, label %214

214:                                              ; preds = %213, %212, %211, %210
  br label %421

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %250

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %170, i64 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %250

223:                                              ; preds = %219
  %.not49 = icmp slt i32 %65, %.012
  br i1 %.not49, label %225, label %224

224:                                              ; preds = %223
  br label %226

225:                                              ; preds = %223
  br label %226

226:                                              ; preds = %225, %224
  %227 = phi i32 [ %65, %224 ], [ %.012, %225 ]
  %.not50 = icmp sgt i32 %69, %.013
  br i1 %.not50, label %229, label %228

228:                                              ; preds = %226
  br label %230

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %228
  %231 = phi i32 [ %69, %228 ], [ %.013, %229 ]
  %.not51 = icmp slt i32 %73, %.014
  br i1 %.not51, label %233, label %232

232:                                              ; preds = %230
  br label %234

233:                                              ; preds = %230
  br label %234

234:                                              ; preds = %233, %232
  %235 = phi i32 [ %73, %232 ], [ %.014, %233 ]
  %.not52 = icmp sgt i32 %77, %.015
  br i1 %.not52, label %237, label %236

236:                                              ; preds = %234
  br label %238

237:                                              ; preds = %234
  br label %238

238:                                              ; preds = %237, %236
  %239 = phi i32 [ %77, %236 ], [ %.015, %237 ]
  %240 = load double, double* @lapFactor, align 8
  %241 = sub nsw i32 %239, %235
  %242 = sub nsw i32 %231, %227
  %243 = mul nsw i32 %241, %242
  %244 = load i32, i32* @offset, align 4
  %245 = add nsw i32 %243, %244
  %246 = sitofp i32 %245 to double
  %247 = fmul double %240, %246
  %248 = fptosi double %247 to i32
  %249 = add nsw i32 %.2, %248
  br label %420

250:                                              ; preds = %219, %215
  br label %251

251:                                              ; preds = %409, %250
  %.018 = phi i32 [ 0, %250 ], [ %.119, %409 ]
  %.pn = phi %struct.tilebox* [ %15, %250 ], [ %.010, %409 ]
  %.010.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.010 = load %struct.tilebox*, %struct.tilebox** %.010.in, align 8
  %.not36 = icmp eq %struct.tilebox* %.010, null
  br i1 %.not36, label %410, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 13
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, %1
  %256 = sitofp i32 %255 to double
  %257 = fdiv double %256, %5
  %258 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = fptosi double %257 to i32
  %261 = sitofp i32 %260 to double
  %262 = fsub double %257, %261
  %263 = fcmp ult double %262, 5.000000e-01
  br i1 %263, label %267, label %264

264:                                              ; preds = %252
  %265 = fptosi double %257 to i32
  %266 = add nsw i32 %265, 1
  br label %269

267:                                              ; preds = %252
  %268 = fptosi double %257 to i32
  br label %269

269:                                              ; preds = %267, %264
  %270 = phi i32 [ %266, %264 ], [ %268, %267 ]
  %271 = add nsw i32 %259, %270
  %272 = sub nsw i32 %271, %3
  %273 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 14
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, %1
  %276 = sitofp i32 %275 to double
  %277 = fdiv double %276, %5
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = fptosi double %277 to i32
  %281 = sitofp i32 %280 to double
  %282 = fsub double %277, %281
  %283 = fcmp ult double %282, 5.000000e-01
  br i1 %283, label %287, label %284

284:                                              ; preds = %269
  %285 = fptosi double %277 to i32
  %286 = add nsw i32 %285, 1
  br label %289

287:                                              ; preds = %269
  %288 = fptosi double %277 to i32
  br label %289

289:                                              ; preds = %287, %284
  %290 = phi i32 [ %286, %284 ], [ %288, %287 ]
  %291 = add nsw i32 %279, %290
  %292 = sub nsw i32 %291, %3
  %293 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 15
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, %2
  %296 = sitofp i32 %295 to double
  %297 = fmul double %296, %5
  %298 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = fptosi double %297 to i32
  %301 = sitofp i32 %300 to double
  %302 = fsub double %297, %301
  %303 = fcmp ult double %302, 5.000000e-01
  br i1 %303, label %307, label %304

304:                                              ; preds = %289
  %305 = fptosi double %297 to i32
  %306 = add nsw i32 %305, 1
  br label %309

307:                                              ; preds = %289
  %308 = fptosi double %297 to i32
  br label %309

309:                                              ; preds = %307, %304
  %310 = phi i32 [ %306, %304 ], [ %308, %307 ]
  %311 = add nsw i32 %299, %310
  %312 = sub nsw i32 %311, %4
  %313 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 16
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %314, %2
  %316 = sitofp i32 %315 to double
  %317 = fmul double %316, %5
  %318 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i64 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = fptosi double %317 to i32
  %321 = sitofp i32 %320 to double
  %322 = fsub double %317, %321
  %323 = fcmp ult double %322, 5.000000e-01
  br i1 %323, label %327, label %324

324:                                              ; preds = %309
  %325 = fptosi double %317 to i32
  %326 = add nsw i32 %325, 1
  br label %329

327:                                              ; preds = %309
  %328 = fptosi double %317 to i32
  br label %329

329:                                              ; preds = %327, %324
  %330 = phi i32 [ %326, %324 ], [ %328, %327 ]
  %331 = add nsw i32 %319, %330
  %332 = sub nsw i32 %331, %4
  %333 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 1
  %334 = load double, double* %333, align 8
  %335 = call i32 @wireestx(i32 noundef %272, i32 noundef %312, i32 noundef %332, double noundef %334) #2
  %336 = sub nsw i32 %272, %335
  %337 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 2
  %338 = load double, double* %337, align 8
  %339 = call i32 @wireestx(i32 noundef %292, i32 noundef %312, i32 noundef %332, double noundef %338) #2
  %340 = add nsw i32 %292, %339
  %341 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 3
  %342 = load double, double* %341, align 8
  %343 = call i32 @wireesty(i32 noundef %312, i32 noundef %336, i32 noundef %340, double noundef %342) #2
  %344 = sub nsw i32 %312, %343
  %345 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.010, i64 0, i32 4
  %346 = load double, double* %345, align 8
  %347 = call i32 @wireesty(i32 noundef %332, i32 noundef %336, i32 noundef %340, double noundef %346) #2
  %348 = add nsw i32 %332, %347
  br label %349

349:                                              ; preds = %407, %329
  %.119 = phi i32 [ %.018, %329 ], [ %.220, %407 ]
  %.pn48 = phi %struct.tilebox* [ %175, %329 ], [ %.011, %407 ]
  %.011.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn48, i64 0, i32 0
  %.011 = load %struct.tilebox*, %struct.tilebox** %.011.in, align 8
  %.not38 = icmp eq %struct.tilebox* %.011, null
  br i1 %.not38, label %408, label %350

350:                                              ; preds = %349
  %351 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %177, %352
  %354 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 10
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %177, %355
  %357 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 11
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %179, %358
  %360 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 12
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %179, %361
  %363 = load i32, i32* @numcells, align 4
  %.not39 = icmp sgt i32 %163, %363
  br i1 %.not39, label %381, label %364

364:                                              ; preds = %350
  %365 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 1
  %366 = load double, double* %365, align 8
  %367 = call i32 @wireestx(i32 noundef %353, i32 noundef %359, i32 noundef %362, double noundef %366) #2
  %368 = sub nsw i32 %353, %367
  %369 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 2
  %370 = load double, double* %369, align 8
  %371 = call i32 @wireestx(i32 noundef %356, i32 noundef %359, i32 noundef %362, double noundef %370) #2
  %372 = add nsw i32 %356, %371
  %373 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 3
  %374 = load double, double* %373, align 8
  %375 = call i32 @wireesty(i32 noundef %359, i32 noundef %368, i32 noundef %372, double noundef %374) #2
  %376 = sub nsw i32 %359, %375
  %377 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.011, i64 0, i32 4
  %378 = load double, double* %377, align 8
  %379 = call i32 @wireesty(i32 noundef %362, i32 noundef %368, i32 noundef %372, double noundef %378) #2
  %380 = add nsw i32 %362, %379
  br label %381

381:                                              ; preds = %364, %350
  %.024 = phi i32 [ %380, %364 ], [ %362, %350 ]
  %.023 = phi i32 [ %376, %364 ], [ %359, %350 ]
  %.022 = phi i32 [ %372, %364 ], [ %356, %350 ]
  %.021 = phi i32 [ %368, %364 ], [ %353, %350 ]
  %.not40 = icmp slt i32 %.021, %340
  br i1 %.not40, label %382, label %385

382:                                              ; preds = %381
  %.not41 = icmp slt i32 %336, %.022
  br i1 %.not41, label %383, label %385

383:                                              ; preds = %382
  %.not42 = icmp slt i32 %.023, %348
  br i1 %.not42, label %384, label %385

384:                                              ; preds = %383
  %.not43 = icmp slt i32 %344, %.024
  br i1 %.not43, label %386, label %385

385:                                              ; preds = %384, %383, %382, %381
  br label %407

386:                                              ; preds = %384
  %.not44 = icmp slt i32 %336, %.021
  br i1 %.not44, label %388, label %387

387:                                              ; preds = %386
  br label %389

388:                                              ; preds = %386
  br label %389

389:                                              ; preds = %388, %387
  %390 = phi i32 [ %336, %387 ], [ %.021, %388 ]
  %.not45 = icmp sgt i32 %340, %.022
  br i1 %.not45, label %392, label %391

391:                                              ; preds = %389
  br label %393

392:                                              ; preds = %389
  br label %393

393:                                              ; preds = %392, %391
  %394 = phi i32 [ %340, %391 ], [ %.022, %392 ]
  %.not46 = icmp slt i32 %344, %.023
  br i1 %.not46, label %396, label %395

395:                                              ; preds = %393
  br label %397

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %396, %395
  %398 = phi i32 [ %344, %395 ], [ %.023, %396 ]
  %.not47 = icmp sgt i32 %348, %.024
  br i1 %.not47, label %400, label %399

399:                                              ; preds = %397
  br label %401

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %400, %399
  %402 = phi i32 [ %348, %399 ], [ %.024, %400 ]
  %403 = sub nsw i32 %402, %398
  %404 = sub nsw i32 %394, %390
  %405 = mul nsw i32 %403, %404
  %406 = add nsw i32 %.119, %405
  br label %407

407:                                              ; preds = %401, %385
  %.220 = phi i32 [ %.119, %385 ], [ %406, %401 ]
  br label %349, !llvm.loop !4

408:                                              ; preds = %349
  br label %409

409:                                              ; preds = %408
  br label %251, !llvm.loop !6

410:                                              ; preds = %251
  %.not37 = icmp eq i32 %.018, 0
  br i1 %.not37, label %419, label %411

411:                                              ; preds = %410
  %412 = load double, double* @lapFactor, align 8
  %413 = load i32, i32* @offset, align 4
  %414 = add nsw i32 %.018, %413
  %415 = sitofp i32 %414 to double
  %416 = fmul double %412, %415
  %417 = fptosi double %416 to i32
  %418 = add nsw i32 %.2, %417
  br label %419

419:                                              ; preds = %411, %410
  %.3 = phi i32 [ %418, %411 ], [ %.2, %410 ]
  br label %420

420:                                              ; preds = %419, %238
  %.4 = phi i32 [ %249, %238 ], [ %.3, %419 ]
  br label %421

421:                                              ; preds = %420, %214, %165
  %.5 = phi i32 [ %.2, %165 ], [ %.2, %214 ], [ %.4, %420 ]
  %422 = add nuw nsw i32 %.07, 1
  br label %158, !llvm.loop !7

423:                                              ; preds = %158
  br label %424

424:                                              ; preds = %423, %149
  %.6 = phi i32 [ %.2, %423 ], [ %.117, %149 ]
  %425 = add nuw nsw i32 %.08, 1
  br label %142, !llvm.loop !8

426:                                              ; preds = %142
  br label %427

427:                                              ; preds = %426, %140
  %.7 = phi i32 [ %.117, %426 ], [ %.016, %140 ]
  %428 = add nuw nsw i32 %.09, 1
  br label %136, !llvm.loop !9

429:                                              ; preds = %136
  ret i32 %.016
}

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

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
