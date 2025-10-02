; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapf.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@cellarray = external dso_local global %struct.cellbox**, align 8
@numcells = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"Overlap condition: cell1:%d cell2:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"   value:%d   amount:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @goverlapf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cellbox*, align 8
  %16 = alloca %struct.cellbox*, align 8
  %17 = alloca %struct.tilebox*, align 8
  %18 = alloca %struct.tilebox*, align 8
  %19 = alloca %struct.tilebox*, align 8
  %20 = alloca %struct.tilebox*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %30, align 4
  %54 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %54, i64 %56
  %58 = load %struct.cellbox*, %struct.cellbox** %57, align 8
  store %struct.cellbox* %58, %struct.cellbox** %15, align 8
  %59 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %59, i32 0, i32 21
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %60, i64 0, i64 %62
  %64 = load %struct.tilebox*, %struct.tilebox** %63, align 8
  store %struct.tilebox* %64, %struct.tilebox** %19, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %77 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @numcells, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %7
  %89 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %21, align 4
  %94 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %22, align 4
  %99 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %23, align 4
  %104 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %105 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %24, align 4
  br label %109

109:                                              ; preds = %88, %7
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @binOffsetX, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @binWidthX, align 4
  %114 = sdiv i32 %112, %113
  store i32 %114, i32* %50, align 4
  %115 = load i32, i32* %50, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %50, align 4
  br label %125

118:                                              ; preds = %109
  %119 = load i32, i32* %50, align 4
  %120 = load i32, i32* @numBinsX, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @numBinsX, align 4
  store i32 %123, i32* %50, align 4
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %117
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* @binOffsetX, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* @binWidthX, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %51, align 4
  %131 = load i32, i32* %51, align 4
  %132 = load i32, i32* @numBinsX, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @numBinsX, align 4
  store i32 %135, i32* %51, align 4
  br label %141

136:                                              ; preds = %125
  %137 = load i32, i32* %51, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 1, i32* %51, align 4
  br label %140

140:                                              ; preds = %139, %136
  br label %141

141:                                              ; preds = %140, %134
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* @binOffsetY, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* @binWidthY, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %52, align 4
  %147 = load i32, i32* %52, align 4
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  store i32 1, i32* %52, align 4
  br label %157

150:                                              ; preds = %141
  %151 = load i32, i32* %52, align 4
  %152 = load i32, i32* @numBinsY, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @numBinsY, align 4
  store i32 %155, i32* %52, align 4
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156, %149
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* @binOffsetY, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* @binWidthY, align 4
  %162 = sdiv i32 %160, %161
  store i32 %162, i32* %53, align 4
  %163 = load i32, i32* %53, align 4
  %164 = load i32, i32* @numBinsY, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* @numBinsY, align 4
  store i32 %167, i32* %53, align 4
  br label %173

168:                                              ; preds = %157
  %169 = load i32, i32* %53, align 4
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 1, i32* %53, align 4
  br label %172

172:                                              ; preds = %171, %168
  br label %173

173:                                              ; preds = %172, %166
  %174 = load i32, i32* %50, align 4
  %175 = load i32, i32* %51, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load i32, i32* %52, align 4
  %179 = load i32, i32* %53, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %50, align 4
  store i32 %182, i32* @binX, align 4
  %183 = load i32, i32* %52, align 4
  store i32 %183, i32* @binY, align 4
  br label %185

184:                                              ; preds = %177, %173
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %185

185:                                              ; preds = %184, %181
  store i32 0, i32* %46, align 4
  br label %186

186:                                              ; preds = %648, %185
  %187 = load i32, i32* %46, align 4
  %188 = load i32, i32* %51, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %651

190:                                              ; preds = %186
  %191 = load i32, i32* %46, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %46, align 4
  %195 = load i32, i32* %50, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  br label %648

198:                                              ; preds = %193, %190
  store i32 0, i32* %47, align 4
  br label %199

199:                                              ; preds = %644, %198
  %200 = load i32, i32* %47, align 4
  %201 = load i32, i32* %53, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %647

203:                                              ; preds = %199
  %204 = load i32, i32* %46, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %47, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %46, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* %47, align 4
  %214 = load i32, i32* %52, align 4
  %215 = icmp sge i32 %213, %214
  br i1 %215, label %217, label %216

216:                                              ; preds = %212, %209
  br label %644

217:                                              ; preds = %212, %206
  %218 = load i32***, i32**** @blockarray, align 8
  %219 = load i32, i32* %46, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32**, i32*** %218, i64 %220
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %47, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %49, align 8
  store i32 1, i32* %48, align 4
  br label %227

227:                                              ; preds = %640, %217
  %228 = load i32, i32* %48, align 4
  %229 = load i32*, i32** %49, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp sle i32 %228, %231
  br i1 %232, label %233, label %643

233:                                              ; preds = %227
  %234 = load i32*, i32** %49, align 8
  %235 = load i32, i32* %48, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %25, align 4
  %239 = load i32, i32* %25, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %640

243:                                              ; preds = %233
  %244 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %245 = load i32, i32* %25, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %244, i64 %246
  %248 = load %struct.cellbox*, %struct.cellbox** %247, align 8
  store %struct.cellbox* %248, %struct.cellbox** %16, align 8
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %243
  %253 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %254 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %253, i32 0, i32 21
  %255 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %256 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %254, i64 0, i64 %258
  %260 = load %struct.tilebox*, %struct.tilebox** %259, align 8
  store %struct.tilebox* %260, %struct.tilebox** %20, align 8
  %261 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %262 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %44, align 4
  %264 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %265 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  store i32 %266, i32* %45, align 4
  br label %285

267:                                              ; preds = %243
  %268 = load i32, i32* %13, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 21
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %272, i64 0, i64 %274
  %276 = load %struct.tilebox*, %struct.tilebox** %275, align 8
  store %struct.tilebox* %276, %struct.tilebox** %20, align 8
  %277 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %44, align 4
  %280 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %281 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %45, align 4
  br label %284

283:                                              ; preds = %267
  br label %640

284:                                              ; preds = %270
  br label %285

285:                                              ; preds = %284, %252
  %286 = load i32, i32* %44, align 4
  %287 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %286, %289
  store i32 %290, i32* %26, align 4
  %291 = load i32, i32* %44, align 4
  %292 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %293 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %291, %294
  store i32 %295, i32* %27, align 4
  %296 = load i32, i32* %45, align 4
  %297 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %298 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %296, %299
  store i32 %300, i32* %28, align 4
  %301 = load i32, i32* %45, align 4
  %302 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %303 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %301, %304
  store i32 %305, i32* %29, align 4
  %306 = load i32, i32* %25, align 4
  %307 = load i32, i32* @numcells, align 4
  %308 = icmp sle i32 %306, %307
  br i1 %308, label %309, label %330

309:                                              ; preds = %285
  %310 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %311 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %26, align 4
  %314 = sub nsw i32 %313, %312
  store i32 %314, i32* %26, align 4
  %315 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %316 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %27, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* %27, align 4
  %320 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %321 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %28, align 4
  %324 = sub nsw i32 %323, %322
  store i32 %324, i32* %28, align 4
  %325 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %326 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %325, i32 0, i32 8
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %29, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %29, align 4
  br label %330

330:                                              ; preds = %309, %285
  %331 = load i32, i32* %26, align 4
  %332 = load i32, i32* %22, align 4
  %333 = icmp sge i32 %331, %332
  br i1 %333, label %346, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* %27, align 4
  %337 = icmp sge i32 %335, %336
  br i1 %337, label %346, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* %28, align 4
  %340 = load i32, i32* %24, align 4
  %341 = icmp sge i32 %339, %340
  br i1 %341, label %346, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* %23, align 4
  %344 = load i32, i32* %29, align 4
  %345 = icmp sge i32 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %342, %338, %334, %330
  br label %640

347:                                              ; preds = %342
  %348 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %349 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %435

352:                                              ; preds = %347
  %353 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %354 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %435

357:                                              ; preds = %352
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %26, align 4
  %360 = icmp sge i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = load i32, i32* %21, align 4
  br label %365

363:                                              ; preds = %357
  %364 = load i32, i32* %26, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  store i32 %366, i32* %40, align 4
  %367 = load i32, i32* %22, align 4
  %368 = load i32, i32* %27, align 4
  %369 = icmp sle i32 %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = load i32, i32* %22, align 4
  br label %374

372:                                              ; preds = %365
  %373 = load i32, i32* %27, align 4
  br label %374

374:                                              ; preds = %372, %370
  %375 = phi i32 [ %371, %370 ], [ %373, %372 ]
  store i32 %375, i32* %41, align 4
  %376 = load i32, i32* %23, align 4
  %377 = load i32, i32* %28, align 4
  %378 = icmp sge i32 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %374
  %380 = load i32, i32* %23, align 4
  br label %383

381:                                              ; preds = %374
  %382 = load i32, i32* %28, align 4
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi i32 [ %380, %379 ], [ %382, %381 ]
  store i32 %384, i32* %42, align 4
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %29, align 4
  %387 = icmp sle i32 %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load i32, i32* %24, align 4
  br label %392

390:                                              ; preds = %383
  %391 = load i32, i32* %29, align 4
  br label %392

392:                                              ; preds = %390, %388
  %393 = phi i32 [ %389, %388 ], [ %391, %390 ]
  store i32 %393, i32* %43, align 4
  %394 = load double, double* @lapFactor, align 8
  %395 = load i32, i32* %43, align 4
  %396 = load i32, i32* %42, align 4
  %397 = sub nsw i32 %395, %396
  %398 = load i32, i32* %41, align 4
  %399 = load i32, i32* %40, align 4
  %400 = sub nsw i32 %398, %399
  %401 = mul nsw i32 %397, %400
  %402 = load i32, i32* @offset, align 4
  %403 = add nsw i32 %401, %402
  %404 = sitofp i32 %403 to double
  %405 = fmul double %394, %404
  %406 = fptosi double %405 to i32
  %407 = load i32, i32* %30, align 4
  %408 = add nsw i32 %407, %406
  store i32 %408, i32* %30, align 4
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %25, align 4
  %412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %409, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %410, i32 noundef %411)
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %414 = load double, double* @lapFactor, align 8
  %415 = load i32, i32* %43, align 4
  %416 = load i32, i32* %42, align 4
  %417 = sub nsw i32 %415, %416
  %418 = load i32, i32* %41, align 4
  %419 = load i32, i32* %40, align 4
  %420 = sub nsw i32 %418, %419
  %421 = mul nsw i32 %417, %420
  %422 = load i32, i32* @offset, align 4
  %423 = add nsw i32 %421, %422
  %424 = sitofp i32 %423 to double
  %425 = fmul double %414, %424
  %426 = fptosi double %425 to i32
  %427 = load i32, i32* %43, align 4
  %428 = load i32, i32* %42, align 4
  %429 = sub nsw i32 %427, %428
  %430 = load i32, i32* %41, align 4
  %431 = load i32, i32* %40, align 4
  %432 = sub nsw i32 %430, %431
  %433 = mul nsw i32 %429, %432
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %413, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %426, i32 noundef %433)
  br label %639

435:                                              ; preds = %352, %347
  store i32 0, i32* %31, align 4
  %436 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %437 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %436, i32 0, i32 0
  %438 = load %struct.tilebox*, %struct.tilebox** %437, align 8
  store %struct.tilebox* %438, %struct.tilebox** %17, align 8
  br label %439

439:                                              ; preds = %607, %435
  %440 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %441 = icmp ne %struct.tilebox* %440, null
  br i1 %441, label %442, label %611

442:                                              ; preds = %439
  %443 = load i32, i32* %9, align 4
  %444 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %445 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %444, i32 0, i32 9
  %446 = load i32, i32* %445, align 8
  %447 = add nsw i32 %443, %446
  store i32 %447, i32* %32, align 4
  %448 = load i32, i32* %9, align 4
  %449 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %450 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %449, i32 0, i32 10
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %448, %451
  store i32 %452, i32* %33, align 4
  %453 = load i32, i32* %10, align 4
  %454 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %455 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %454, i32 0, i32 11
  %456 = load i32, i32* %455, align 8
  %457 = add nsw i32 %453, %456
  store i32 %457, i32* %34, align 4
  %458 = load i32, i32* %10, align 4
  %459 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %460 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %459, i32 0, i32 12
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %458, %461
  store i32 %462, i32* %35, align 4
  %463 = load i32, i32* %8, align 4
  %464 = load i32, i32* @numcells, align 4
  %465 = icmp sle i32 %463, %464
  br i1 %465, label %466, label %487

466:                                              ; preds = %442
  %467 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %468 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* %32, align 4
  %471 = sub nsw i32 %470, %469
  store i32 %471, i32* %32, align 4
  %472 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %473 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %33, align 4
  %476 = add nsw i32 %475, %474
  store i32 %476, i32* %33, align 4
  %477 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %478 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* %34, align 4
  %481 = sub nsw i32 %480, %479
  store i32 %481, i32* %34, align 4
  %482 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %483 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %35, align 4
  %486 = add nsw i32 %485, %484
  store i32 %486, i32* %35, align 4
  br label %487

487:                                              ; preds = %466, %442
  %488 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %489 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %488, i32 0, i32 0
  %490 = load %struct.tilebox*, %struct.tilebox** %489, align 8
  store %struct.tilebox* %490, %struct.tilebox** %18, align 8
  br label %491

491:                                              ; preds = %602, %487
  %492 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %493 = icmp ne %struct.tilebox* %492, null
  br i1 %493, label %494, label %606

494:                                              ; preds = %491
  %495 = load i32, i32* %44, align 4
  %496 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %497 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %496, i32 0, i32 9
  %498 = load i32, i32* %497, align 8
  %499 = add nsw i32 %495, %498
  store i32 %499, i32* %36, align 4
  %500 = load i32, i32* %44, align 4
  %501 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %502 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %501, i32 0, i32 10
  %503 = load i32, i32* %502, align 4
  %504 = add nsw i32 %500, %503
  store i32 %504, i32* %37, align 4
  %505 = load i32, i32* %45, align 4
  %506 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %507 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %506, i32 0, i32 11
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %505, %508
  store i32 %509, i32* %38, align 4
  %510 = load i32, i32* %45, align 4
  %511 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %512 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %511, i32 0, i32 12
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %510, %513
  store i32 %514, i32* %39, align 4
  %515 = load i32, i32* %25, align 4
  %516 = load i32, i32* @numcells, align 4
  %517 = icmp sle i32 %515, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %494
  %519 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %520 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %519, i32 0, i32 5
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* %36, align 4
  %523 = sub nsw i32 %522, %521
  store i32 %523, i32* %36, align 4
  %524 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %525 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %524, i32 0, i32 6
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* %37, align 4
  %528 = add nsw i32 %527, %526
  store i32 %528, i32* %37, align 4
  %529 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %530 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %529, i32 0, i32 7
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* %38, align 4
  %533 = sub nsw i32 %532, %531
  store i32 %533, i32* %38, align 4
  %534 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %535 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %39, align 4
  %538 = add nsw i32 %537, %536
  store i32 %538, i32* %39, align 4
  br label %539

539:                                              ; preds = %518, %494
  %540 = load i32, i32* %36, align 4
  %541 = load i32, i32* %33, align 4
  %542 = icmp sge i32 %540, %541
  br i1 %542, label %555, label %543

543:                                              ; preds = %539
  %544 = load i32, i32* %32, align 4
  %545 = load i32, i32* %37, align 4
  %546 = icmp sge i32 %544, %545
  br i1 %546, label %555, label %547

547:                                              ; preds = %543
  %548 = load i32, i32* %38, align 4
  %549 = load i32, i32* %35, align 4
  %550 = icmp sge i32 %548, %549
  br i1 %550, label %555, label %551

551:                                              ; preds = %547
  %552 = load i32, i32* %34, align 4
  %553 = load i32, i32* %39, align 4
  %554 = icmp sge i32 %552, %553
  br i1 %554, label %555, label %556

555:                                              ; preds = %551, %547, %543, %539
  br label %602

556:                                              ; preds = %551
  %557 = load i32, i32* %32, align 4
  %558 = load i32, i32* %36, align 4
  %559 = icmp sge i32 %557, %558
  br i1 %559, label %560, label %562

560:                                              ; preds = %556
  %561 = load i32, i32* %32, align 4
  br label %564

562:                                              ; preds = %556
  %563 = load i32, i32* %36, align 4
  br label %564

564:                                              ; preds = %562, %560
  %565 = phi i32 [ %561, %560 ], [ %563, %562 ]
  store i32 %565, i32* %40, align 4
  %566 = load i32, i32* %33, align 4
  %567 = load i32, i32* %37, align 4
  %568 = icmp sle i32 %566, %567
  br i1 %568, label %569, label %571

569:                                              ; preds = %564
  %570 = load i32, i32* %33, align 4
  br label %573

571:                                              ; preds = %564
  %572 = load i32, i32* %37, align 4
  br label %573

573:                                              ; preds = %571, %569
  %574 = phi i32 [ %570, %569 ], [ %572, %571 ]
  store i32 %574, i32* %41, align 4
  %575 = load i32, i32* %34, align 4
  %576 = load i32, i32* %38, align 4
  %577 = icmp sge i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %573
  %579 = load i32, i32* %34, align 4
  br label %582

580:                                              ; preds = %573
  %581 = load i32, i32* %38, align 4
  br label %582

582:                                              ; preds = %580, %578
  %583 = phi i32 [ %579, %578 ], [ %581, %580 ]
  store i32 %583, i32* %42, align 4
  %584 = load i32, i32* %35, align 4
  %585 = load i32, i32* %39, align 4
  %586 = icmp sle i32 %584, %585
  br i1 %586, label %587, label %589

587:                                              ; preds = %582
  %588 = load i32, i32* %35, align 4
  br label %591

589:                                              ; preds = %582
  %590 = load i32, i32* %39, align 4
  br label %591

591:                                              ; preds = %589, %587
  %592 = phi i32 [ %588, %587 ], [ %590, %589 ]
  store i32 %592, i32* %43, align 4
  %593 = load i32, i32* %43, align 4
  %594 = load i32, i32* %42, align 4
  %595 = sub nsw i32 %593, %594
  %596 = load i32, i32* %41, align 4
  %597 = load i32, i32* %40, align 4
  %598 = sub nsw i32 %596, %597
  %599 = mul nsw i32 %595, %598
  %600 = load i32, i32* %31, align 4
  %601 = add nsw i32 %600, %599
  store i32 %601, i32* %31, align 4
  br label %602

602:                                              ; preds = %591, %555
  %603 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %604 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %603, i32 0, i32 0
  %605 = load %struct.tilebox*, %struct.tilebox** %604, align 8
  store %struct.tilebox* %605, %struct.tilebox** %18, align 8
  br label %491, !llvm.loop !4

606:                                              ; preds = %491
  br label %607

607:                                              ; preds = %606
  %608 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %609 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %608, i32 0, i32 0
  %610 = load %struct.tilebox*, %struct.tilebox** %609, align 8
  store %struct.tilebox* %610, %struct.tilebox** %17, align 8
  br label %439, !llvm.loop !6

611:                                              ; preds = %439
  %612 = load i32, i32* %31, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %638

614:                                              ; preds = %611
  %615 = load double, double* @lapFactor, align 8
  %616 = load i32, i32* %31, align 4
  %617 = load i32, i32* @offset, align 4
  %618 = add nsw i32 %616, %617
  %619 = sitofp i32 %618 to double
  %620 = fmul double %615, %619
  %621 = fptosi double %620 to i32
  %622 = load i32, i32* %30, align 4
  %623 = add nsw i32 %622, %621
  store i32 %623, i32* %30, align 4
  %624 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %625 = load i32, i32* %8, align 4
  %626 = load i32, i32* %25, align 4
  %627 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %624, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %625, i32 noundef %626)
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %629 = load double, double* @lapFactor, align 8
  %630 = load i32, i32* %31, align 4
  %631 = load i32, i32* @offset, align 4
  %632 = add nsw i32 %630, %631
  %633 = sitofp i32 %632 to double
  %634 = fmul double %629, %633
  %635 = fptosi double %634 to i32
  %636 = load i32, i32* %31, align 4
  %637 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %628, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %635, i32 noundef %636)
  br label %638

638:                                              ; preds = %614, %611
  br label %639

639:                                              ; preds = %638, %392
  br label %640

640:                                              ; preds = %639, %346, %283, %242
  %641 = load i32, i32* %48, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %48, align 4
  br label %227, !llvm.loop !7

643:                                              ; preds = %227
  br label %644

644:                                              ; preds = %643, %216
  %645 = load i32, i32* %47, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %47, align 4
  br label %199, !llvm.loop !8

647:                                              ; preds = %199
  br label %648

648:                                              ; preds = %647, %197
  %649 = load i32, i32* %46, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %46, align 4
  br label %186, !llvm.loop !9

651:                                              ; preds = %186
  %652 = load i32, i32* %30, align 4
  ret i32 %652
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
