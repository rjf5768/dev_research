; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/analyze.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@how_many = dso_local global i32* null, align 8
@netarray = external dso_local global %struct.dimbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A\0A*************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"AVERAGE NUMBER OF CELLS PER NET: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*************************************\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Expected Wire Reduction Relative to Random:%6.2f\0A\0A\00", align 1
@qsz = dso_local global i32 0, align 4
@thresh = dso_local global i32 0, align 4
@mthresh = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local double @analyze() #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.netbox*, align 8
  %19 = load i32, i32* @numcells, align 4
  %20 = add nsw i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = call noalias i8* @malloc(i64 noundef %22) #3
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* @numnets, align 4
  %26 = add nsw i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = call noalias i8* @malloc(i64 noundef %28) #3
  %30 = bitcast i8* %29 to i32**
  store i32** %30, i32*** %1, align 8
  %31 = load i32, i32* @numnets, align 4
  %32 = add nsw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call noalias i8* @malloc(i64 noundef %34) #3
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** @how_many, align 8
  %37 = load i32, i32* @numnets, align 4
  %38 = add nsw i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = call noalias i8* @malloc(i64 noundef %40) #3
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %12, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %58, %0
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @numnets, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32, i32* @numcells, align 4
  %49 = add nsw i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = call noalias i8* @malloc(i64 noundef %51) #3
  %53 = bitcast i8* %52 to i32*
  %54 = load i32**, i32*** %1, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* %53, i32** %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %43, !llvm.loop !4

61:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %150, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @numnets, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %153

66:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @numcells, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 0, i32* %75, align 4
  %76 = load i32**, i32*** %1, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %67, !llvm.loop !6

87:                                               ; preds = %67
  %88 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %88, i64 %90
  %92 = load %struct.dimbox*, %struct.dimbox** %91, align 8
  %93 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %92, i32 0, i32 0
  %94 = load %struct.netbox*, %struct.netbox** %93, align 8
  store %struct.netbox* %94, %struct.netbox** %18, align 8
  br label %95

95:                                               ; preds = %112, %87
  %96 = load %struct.netbox*, %struct.netbox** %18, align 8
  %97 = icmp ne %struct.netbox* %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load %struct.netbox*, %struct.netbox** %18, align 8
  %100 = getelementptr inbounds %struct.netbox, %struct.netbox* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @numcells, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.netbox*, %struct.netbox** %18, align 8
  %107 = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %98
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.netbox*, %struct.netbox** %18, align 8
  %114 = getelementptr inbounds %struct.netbox, %struct.netbox* %113, i32 0, i32 0
  %115 = load %struct.netbox*, %struct.netbox** %114, align 8
  store %struct.netbox* %115, %struct.netbox** %18, align 8
  br label %95, !llvm.loop !7

116:                                              ; preds = %95
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @numcells, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %145

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load i32**, i32*** %1, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32**, i32*** %1, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %134, i64 %143
  store i32 %129, i32* %144, align 4
  br label %145

145:                                              ; preds = %128, %121
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %117, !llvm.loop !8

149:                                              ; preds = %117
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %62, !llvm.loop !9

153:                                              ; preds = %62
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %4, align 4
  br label %154

154:                                              ; preds = %180, %153
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @numnets, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = load i32**, i32*** %1, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %180

168:                                              ; preds = %158
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  %171 = load i32**, i32*** %1, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %168, %167
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %4, align 4
  br label %154, !llvm.loop !10

183:                                              ; preds = %154
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sitofp i32 %187 to double
  %189 = load i32, i32* %13, align 4
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %188, %190
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), double noundef %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %193, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %195

195:                                              ; preds = %312, %183
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @numnets, align 4
  %198 = icmp sle i32 %196, %197
  br i1 %198, label %199, label %315

199:                                              ; preds = %195
  %200 = load i32**, i32*** %1, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i32*, i32** @how_many, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 0, i32* %212, align 4
  br label %312

213:                                              ; preds = %199
  %214 = load i32**, i32*** %1, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %233

222:                                              ; preds = %213
  %223 = load i32**, i32*** %1, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 0, i32* %228, align 4
  %229 = load i32*, i32** @how_many, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 0, i32* %232, align 4
  br label %312

233:                                              ; preds = %213
  %234 = load i32*, i32** @how_many, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 1, i32* %237, align 4
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %308, %233
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @numnets, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %311

244:                                              ; preds = %240
  %245 = load i32**, i32*** %1, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32**, i32*** %1, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %251, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %244
  br label %308

261:                                              ; preds = %244
  store i32 0, i32* %9, align 4
  store i32 1, i32* %2, align 4
  br label %262

262:                                              ; preds = %288, %261
  %263 = load i32, i32* %2, align 4
  %264 = load i32, i32* @numcells, align 4
  %265 = icmp sle i32 %263, %264
  br i1 %265, label %266, label %291

266:                                              ; preds = %262
  %267 = load i32**, i32*** %1, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %2, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32**, i32*** %1, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %276, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %2, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %275, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %266
  store i32 1, i32* %9, align 4
  br label %291

287:                                              ; preds = %266
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %2, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %2, align 4
  br label %262, !llvm.loop !11

291:                                              ; preds = %286, %262
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %291
  %295 = load i32**, i32*** %1, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 0, i32* %300, align 4
  %301 = load i32*, i32** @how_many, align 8
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %294, %291
  br label %308

308:                                              ; preds = %307, %260
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %5, align 4
  br label %240, !llvm.loop !12

311:                                              ; preds = %240
  br label %312

312:                                              ; preds = %311, %222, %208
  %313 = load i32, i32* %4, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %4, align 4
  br label %195, !llvm.loop !13

315:                                              ; preds = %195
  %316 = load i32*, i32** %12, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  store i32 0, i32* %317, align 4
  store i32 1, i32* %3, align 4
  br label %318

318:                                              ; preds = %339, %315
  %319 = load i32, i32* %3, align 4
  %320 = load i32, i32* @numnets, align 4
  %321 = icmp sle i32 %319, %320
  br i1 %321, label %322, label %342

322:                                              ; preds = %318
  %323 = load i32*, i32** @how_many, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp sle i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  br label %339

330:                                              ; preds = %322
  %331 = load i32, i32* %3, align 4
  %332 = load i32*, i32** %12, align 8
  %333 = load i32*, i32** %12, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %332, i64 %337
  store i32 %331, i32* %338, align 4
  br label %339

339:                                              ; preds = %330, %329
  %340 = load i32, i32* %3, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %3, align 4
  br label %318, !llvm.loop !14

342:                                              ; preds = %318
  %343 = load i32*, i32** %12, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %6, align 4
  %346 = load i32*, i32** %12, align 8
  %347 = load i32*, i32** %12, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %12, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  store i32 %352, i32* %354, align 4
  %355 = load i32*, i32** %12, align 8
  %356 = bitcast i32* %355 to i8*
  %357 = load i32, i32* %6, align 4
  call void @qsortx(i8* noundef %356, i32 noundef %357, i32 noundef 4)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %3, align 4
  br label %358

358:                                              ; preds = %394, %342
  %359 = load i32, i32* %3, align 4
  %360 = load i32, i32* @numnets, align 4
  %361 = icmp sle i32 %359, %360
  br i1 %361, label %362, label %397

362:                                              ; preds = %358
  %363 = load i32**, i32*** %1, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i32, i32* %368, align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %393

371:                                              ; preds = %362
  %372 = load i32**, i32*** %1, align 8
  %373 = load i32, i32* %3, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %372, i64 %374
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = sub nsw i32 %378, 1
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, %379
  store i32 %381, i32* %10, align 4
  %382 = load i32**, i32*** %1, align 8
  %383 = load i32, i32* %3, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, %388
  store i32 %390, i32* %11, align 4
  %391 = load i32, i32* %6, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %6, align 4
  br label %393

393:                                              ; preds = %371, %362
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %3, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %3, align 4
  br label %358, !llvm.loop !15

397:                                              ; preds = %358
  %398 = load i32, i32* %6, align 4
  %399 = sitofp i32 %398 to double
  %400 = load i32, i32* @numcells, align 4
  %401 = sitofp i32 %400 to double
  %402 = fdiv double %399, %401
  store double %402, double* %15, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sitofp i32 %403 to double
  %405 = load i32, i32* %6, align 4
  %406 = sitofp i32 %405 to double
  %407 = fdiv double %404, %406
  store double %407, double* %16, align 8
  %408 = load i32, i32* @numcells, align 4
  %409 = load double, double* %16, align 8
  %410 = load i32, i32* @numnets, align 4
  %411 = sitofp i32 %410 to double
  %412 = load i32, i32* @numcells, align 4
  %413 = sitofp i32 %412 to double
  %414 = fdiv double %411, %413
  %415 = load double, double* %15, align 8
  %416 = fdiv double %414, %415
  %417 = load double, double* %15, align 8
  %418 = call double @wireratio(i32 noundef %408, double noundef %409, double noundef %416, double noundef %417)
  store double %418, double* %17, align 8
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %420 = load double, double* %17, align 8
  %421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %419, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), double noundef %420)
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %423 = call i32 @fflush(%struct._IO_FILE* noundef %422)
  %424 = load double, double* %17, align 8
  ret double %424
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @qsortx(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %146

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* @qsz, align 4
  %19 = load i32, i32* @qsz, align 4
  %20 = mul nsw i32 %19, 4
  store i32 %20, i32* @thresh, align 4
  %21 = load i32, i32* @qsz, align 4
  %22 = mul nsw i32 %21, 6
  store i32 %22, i32* @mthresh, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @qsz, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %13, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %13, align 8
  call void @qst(i8* noundef %32, i8* noundef %33)
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @thresh, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %11, align 8
  br label %40

38:                                               ; preds = %17
  %39 = load i8*, i8** %13, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %10, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %58, %40
  %43 = load i32, i32* @qsz, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = call i32 @comparex(i32* noundef %51, i32* noundef %53)
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %56, %49
  br label %42, !llvm.loop !16

59:                                               ; preds = %42
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @qsz, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8* %68, i8** %11, align 8
  br label %69

69:                                               ; preds = %73, %63
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %7, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i8, i8* %7, align 1
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %8, align 8
  store i8 %80, i8* %81, align 1
  br label %69, !llvm.loop !17

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %12, align 8
  br label %86

86:                                               ; preds = %145, %84
  %87 = load i32, i32* @qsz, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %12, align 8
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32, i32* @qsz, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = sext i32 %95 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8* %99, i8** %11, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = load i8*, i8** %12, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = call i32 @comparex(i32* noundef %100, i32* noundef %102)
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %94, !llvm.loop !18

106:                                              ; preds = %94
  %107 = load i32, i32* @qsz, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %110, %111
  br i1 %112, label %113, label %145

113:                                              ; preds = %106
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* @qsz, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %141, %113
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = icmp uge i8* %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %7, align 1
  %126 = load i8*, i8** %10, align 8
  store i8* %126, i8** %9, align 8
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %139, %123
  %128 = load i32, i32* @qsz, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = sext i32 %128 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = icmp uge i8* %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %8, align 8
  store i8 %137, i8* %138, align 1
  br label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  store i8* %140, i8** %8, align 8
  br label %127, !llvm.loop !19

141:                                              ; preds = %127
  %142 = load i8, i8* %7, align 1
  %143 = load i8*, i8** %8, align 8
  store i8 %142, i8* %143, align 1
  br label %118, !llvm.loop !20

144:                                              ; preds = %118
  br label %145

145:                                              ; preds = %144, %106
  br label %86, !llvm.loop !21

146:                                              ; preds = %16, %86
  ret void
}

declare dso_local double @wireratio(i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @comparex(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** @how_many, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @how_many, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %10, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @qst(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %229, %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @qsz, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @qsz, align 4
  %25 = sdiv i32 %23, %24
  %26 = ashr i32 %25, 1
  %27 = mul nsw i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %21, i64 %28
  store i8* %29, i8** %6, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @mthresh, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %20
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** %8, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @comparex(i32* noundef %35, i32* noundef %37)
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @qsz, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = call i32 @comparex(i32* noundef %47, i32* noundef %53)
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %44
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i8*, i8** %11, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @comparex(i32* noundef %67, i32* noundef %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %72, %64
  br label %75

75:                                               ; preds = %74, %44
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, i32* @qsz, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %91, %79
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %5, align 1
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8, i8* %5, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  store i8 %88, i8* %89, align 1
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %81, label %95, !llvm.loop !22

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %20
  %98 = load i8*, i8** %3, align 8
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* @qsz, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8* %103, i8** %7, align 8
  br label %104

104:                                              ; preds = %189, %97
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i8*, i8** %10, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = call i32 @comparex(i32* noundef %111, i32* noundef %113)
  %115 = icmp sle i32 %114, 0
  br label %116

116:                                              ; preds = %109, %105
  %117 = phi i1 [ false, %105 ], [ %115, %109 ]
  br i1 %117, label %118, label %123

118:                                              ; preds = %116
  %119 = load i32, i32* @qsz, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %6, align 8
  br label %105, !llvm.loop !23

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %135, %123
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %159

128:                                              ; preds = %124
  %129 = load i8*, i8** %10, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i8*, i8** %7, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = call i32 @comparex(i32* noundef %130, i32* noundef %132)
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @qsz, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = sext i32 %136 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %7, align 8
  br label %124, !llvm.loop !24

141:                                              ; preds = %128
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* @qsz, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8* %145, i8** %11, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i8*, i8** %7, align 8
  store i8* %150, i8** %8, align 8
  store i8* %150, i8** %10, align 8
  br label %158

151:                                              ; preds = %141
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %8, align 8
  %153 = load i32, i32* @qsz, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = sub i64 0, %155
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8* %157, i8** %7, align 8
  br label %158

158:                                              ; preds = %151, %149
  br label %173

159:                                              ; preds = %124
  %160 = load i8*, i8** %6, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %191

164:                                              ; preds = %159
  %165 = load i8*, i8** %10, align 8
  store i8* %165, i8** %8, align 8
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %10, align 8
  store i8* %166, i8** %11, align 8
  %167 = load i32, i32* @qsz, align 4
  %168 = load i8*, i8** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = sub i64 0, %169
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %158
  %174 = load i32, i32* @qsz, align 4
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %185, %173
  %176 = load i8*, i8** %6, align 8
  %177 = load i8, i8* %176, align 1
  store i8 %177, i8* %5, align 1
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %6, align 8
  store i8 %179, i8* %180, align 1
  %182 = load i8, i8* %5, align 1
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  store i8 %182, i8* %183, align 1
  br label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %175, label %189, !llvm.loop !25

189:                                              ; preds = %185
  %190 = load i8*, i8** %11, align 8
  store i8* %190, i8** %6, align 8
  br label %104

191:                                              ; preds = %163
  %192 = load i8*, i8** %10, align 8
  store i8* %192, i8** %7, align 8
  %193 = load i32, i32* @qsz, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8* %195, i8** %6, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %3, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i8*, i8** %4, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %13, align 4
  %208 = icmp sle i32 %201, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %191
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @thresh, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i8*, i8** %3, align 8
  %215 = load i8*, i8** %7, align 8
  call void @qst(i8* noundef %214, i8* noundef %215)
  br label %216

216:                                              ; preds = %213, %209
  %217 = load i8*, i8** %6, align 8
  store i8* %217, i8** %3, align 8
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %12, align 4
  br label %228

219:                                              ; preds = %191
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @thresh, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i8*, i8** %6, align 8
  %225 = load i8*, i8** %4, align 8
  call void @qst(i8* noundef %224, i8* noundef %225)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %7, align 8
  store i8* %227, i8** %4, align 8
  br label %228

228:                                              ; preds = %226, %216
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @thresh, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %20, label %233, !llvm.loop !26

233:                                              ; preds = %229
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
