; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/test2loop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/test2loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@totFunc = external dso_local global double, align 8
@totPen = external dso_local global double, align 8
@T = external dso_local global double, align 8
@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@numcells = external dso_local global i32, align 4
@randVar = external dso_local global i32, align 4
@bigcell = external dso_local global i32, align 4
@toobig = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@gridGiven = external dso_local global i32, align 4
@newxx = external dso_local global i32, align 4
@newyy = external dso_local global i32, align 4
@funccost = external dso_local global i32, align 4
@penalty = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2loop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca %struct.cellbox*, align 8
  %5 = alloca %struct.termbox*, align 8
  %6 = alloca %struct.termbox*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* @totFunc, align 8
  store double 0.000000e+00, double* @totPen, align 8
  %31 = load double, double* @T, align 8
  %32 = call double @log10(double noundef %31) #3
  %33 = call double @pow(double noundef 4.000000e+00, double noundef %32) #3
  %34 = fdiv double %33, 1.024000e+03
  %35 = load i32, i32* @bdxlength, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double %34, %36
  %38 = fptosi double %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 3, i32* %9, align 4
  br label %49

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @bdxlength, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @bdxlength, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load double, double* @T, align 8
  %51 = call double @log10(double noundef %50) #3
  %52 = call double @pow(double noundef 4.000000e+00, double noundef %51) #3
  %53 = fdiv double %52, 1.024000e+03
  %54 = load i32, i32* @bdylength, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double %53, %55
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 3, i32* %10, align 4
  br label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @bdylength, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @bdylength, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 3
  store i32 %70, i32* %29, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sdiv i32 %71, 3
  store i32 %72, i32* %30, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %77 = load i32, i32* @bdxlength, align 4
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %83 = load i32, i32* @bdylength, align 4
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %83)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %86 = load i32, i32* %29, align 4
  %87 = load i32, i32* %30, align 4
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %86, i32 noundef %87)
  br label %89

89:                                               ; preds = %696, %454, %319, %150, %132, %68
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %697

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* @numcells, align 4
  %96 = sitofp i32 %95 to double
  %97 = load i32, i32* @randVar, align 4
  %98 = mul nsw i32 %97, 1103515245
  %99 = add nsw i32 %98, 12345
  store i32 %99, i32* @randVar, align 4
  %100 = and i32 %99, 2147483647
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 0x41DFFFFFFFC00000
  %103 = fmul double %96, %102
  %104 = fptosi double %103 to i32
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @numcells, align 4
  %109 = add nsw i32 %108, 1
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %94, label %111, !llvm.loop !4

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* @bigcell, align 4
  %114 = sitofp i32 %113 to double
  %115 = load i32, i32* @randVar, align 4
  %116 = mul nsw i32 %115, 1103515245
  %117 = add nsw i32 %116, 12345
  store i32 %117, i32* @randVar, align 4
  %118 = and i32 %117, 2147483647
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %119, 0x41DFFFFFFFC00000
  %121 = fmul double %114, %120
  %122 = fptosi double %121 to i32
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @toobig, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %112, label %128, !llvm.loop !6

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %89, !llvm.loop !7

133:                                              ; preds = %128
  %134 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %134, i64 %136
  %138 = load %struct.cellbox*, %struct.cellbox** %137, align 8
  store %struct.cellbox* %138, %struct.cellbox** %3, align 8
  %139 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %140 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @numcells, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %431

145:                                              ; preds = %133
  %146 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %147 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %89, !llvm.loop !7

151:                                              ; preds = %145
  %152 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %15, align 4
  %155 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %156 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* @blockl, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %159, %160
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %151
  %164 = load i32, i32* @blockl, align 4
  %165 = load i32, i32* %15, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %29, align 4
  %168 = sdiv i32 %166, %167
  br label %188

169:                                              ; preds = %151
  %170 = load i32, i32* @blockr, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %171, %172
  %174 = icmp sle i32 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32, i32* @blockr, align 4
  %177 = load i32, i32* %15, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load i32, i32* %29, align 4
  %180 = sdiv i32 %178, %179
  br label %186

181:                                              ; preds = %169
  %182 = load i32, i32* %9, align 4
  %183 = sub nsw i32 0, %182
  %184 = load i32, i32* %29, align 4
  %185 = sdiv i32 %183, %184
  br label %186

186:                                              ; preds = %181, %175
  %187 = phi i32 [ %180, %175 ], [ %185, %181 ]
  br label %188

188:                                              ; preds = %186, %163
  %189 = phi i32 [ %168, %163 ], [ %187, %186 ]
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* @blockr, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %191, %192
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* @blockr, align 4
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, i32* %29, align 4
  %200 = sdiv i32 %198, %199
  br label %219

201:                                              ; preds = %188
  %202 = load i32, i32* @blockl, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %203, %204
  %206 = icmp sge i32 %202, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %201
  %208 = load i32, i32* @blockl, align 4
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %29, align 4
  %212 = sdiv i32 %210, %211
  br label %217

213:                                              ; preds = %201
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %29, align 4
  %216 = sdiv i32 %214, %215
  br label %217

217:                                              ; preds = %213, %207
  %218 = phi i32 [ %212, %207 ], [ %216, %213 ]
  br label %219

219:                                              ; preds = %217, %195
  %220 = phi i32 [ %200, %195 ], [ %218, %217 ]
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* @blockb, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %10, align 4
  %224 = sub nsw i32 %222, %223
  %225 = icmp sgt i32 %221, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load i32, i32* @blockb, align 4
  %228 = load i32, i32* %16, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %30, align 4
  %231 = sdiv i32 %229, %230
  br label %251

232:                                              ; preds = %219
  %233 = load i32, i32* @blockt, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %10, align 4
  %236 = sub nsw i32 %234, %235
  %237 = icmp sle i32 %233, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %232
  %239 = load i32, i32* @blockt, align 4
  %240 = load i32, i32* %16, align 4
  %241 = sub nsw i32 %239, %240
  %242 = load i32, i32* %30, align 4
  %243 = sdiv i32 %241, %242
  br label %249

244:                                              ; preds = %232
  %245 = load i32, i32* %10, align 4
  %246 = sub nsw i32 0, %245
  %247 = load i32, i32* %30, align 4
  %248 = sdiv i32 %246, %247
  br label %249

249:                                              ; preds = %244, %238
  %250 = phi i32 [ %243, %238 ], [ %248, %244 ]
  br label %251

251:                                              ; preds = %249, %226
  %252 = phi i32 [ %231, %226 ], [ %250, %249 ]
  store i32 %252, i32* %23, align 4
  %253 = load i32, i32* @blockt, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %254, %255
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* @blockt, align 4
  %260 = load i32, i32* %16, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load i32, i32* %30, align 4
  %263 = sdiv i32 %261, %262
  br label %282

264:                                              ; preds = %251
  %265 = load i32, i32* @blockb, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %266, %267
  %269 = icmp sge i32 %265, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load i32, i32* @blockb, align 4
  %272 = load i32, i32* %16, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* %30, align 4
  %275 = sdiv i32 %273, %274
  br label %280

276:                                              ; preds = %264
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %30, align 4
  %279 = sdiv i32 %277, %278
  br label %280

280:                                              ; preds = %276, %270
  %281 = phi i32 [ %275, %270 ], [ %279, %276 ]
  br label %282

282:                                              ; preds = %280, %258
  %283 = phi i32 [ %263, %258 ], [ %281, %280 ]
  store i32 %283, i32* %24, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* %21, align 4
  %286 = sub nsw i32 %284, %285
  %287 = add nsw i32 %286, 1
  %288 = sitofp i32 %287 to double
  %289 = load i32, i32* @randVar, align 4
  %290 = mul nsw i32 %289, 1103515245
  %291 = add nsw i32 %290, 12345
  store i32 %291, i32* @randVar, align 4
  %292 = and i32 %291, 2147483647
  %293 = sitofp i32 %292 to double
  %294 = fdiv double %293, 0x41DFFFFFFFC00000
  %295 = fmul double %288, %294
  %296 = fptosi double %295 to i32
  %297 = load i32, i32* %21, align 4
  %298 = add nsw i32 %296, %297
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %24, align 4
  %300 = load i32, i32* %23, align 4
  %301 = sub nsw i32 %299, %300
  %302 = add nsw i32 %301, 1
  %303 = sitofp i32 %302 to double
  %304 = load i32, i32* @randVar, align 4
  %305 = mul nsw i32 %304, 1103515245
  %306 = add nsw i32 %305, 12345
  store i32 %306, i32* @randVar, align 4
  %307 = and i32 %306, 2147483647
  %308 = sitofp i32 %307 to double
  %309 = fdiv double %308, 0x41DFFFFFFFC00000
  %310 = fmul double %303, %309
  %311 = fptosi double %310 to i32
  %312 = load i32, i32* %23, align 4
  %313 = add nsw i32 %311, %312
  store i32 %313, i32* %14, align 4
  %314 = load i32, i32* %13, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %282
  %317 = load i32, i32* %14, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  br label %89, !llvm.loop !7

320:                                              ; preds = %316, %282
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* %29, align 4
  %323 = load i32, i32* %13, align 4
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %321, %324
  store i32 %325, i32* %13, align 4
  %326 = load i32, i32* %16, align 4
  %327 = load i32, i32* %30, align 4
  %328 = load i32, i32* %14, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %14, align 4
  %331 = load i32, i32* @gridGiven, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %362

333:                                              ; preds = %320
  %334 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %335 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %334, i32 0, i32 21
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %335, i64 0, i64 %337
  %339 = load %struct.tilebox*, %struct.tilebox** %338, align 8
  %340 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %339, i32 0, i32 17
  %341 = load %struct.termbox*, %struct.termbox** %340, align 8
  store %struct.termbox* %341, %struct.termbox** %5, align 8
  %342 = load i32, i32* %13, align 4
  %343 = load %struct.termbox*, %struct.termbox** %5, align 8
  %344 = getelementptr inbounds %struct.termbox, %struct.termbox* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %342, %345
  %347 = load i32, i32* %14, align 4
  %348 = load %struct.termbox*, %struct.termbox** %5, align 8
  %349 = getelementptr inbounds %struct.termbox, %struct.termbox* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %347, %350
  call void @forceGrid(i32 noundef %346, i32 noundef %351)
  %352 = load i32, i32* @newxx, align 4
  %353 = load %struct.termbox*, %struct.termbox** %5, align 8
  %354 = getelementptr inbounds %struct.termbox, %struct.termbox* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = sub nsw i32 %352, %355
  store i32 %356, i32* %13, align 4
  %357 = load i32, i32* @newyy, align 4
  %358 = load %struct.termbox*, %struct.termbox** %5, align 8
  %359 = getelementptr inbounds %struct.termbox, %struct.termbox* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %357, %360
  store i32 %361, i32* %14, align 4
  br label %362

362:                                              ; preds = %333, %320
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* %14, align 4
  %366 = call i32 @usite1(i32 noundef %363, i32 noundef %364, i32 noundef %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = load i32, i32* %11, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* @funccost, align 4
  %372 = sitofp i32 %371 to double
  %373 = load double, double* @totFunc, align 8
  %374 = fadd double %373, %372
  store double %374, double* @totFunc, align 8
  %375 = load i32, i32* @penalty, align 4
  %376 = sitofp i32 %375 to double
  %377 = load double, double* @totPen, align 8
  %378 = fadd double %377, %376
  store double %378, double* @totPen, align 8
  br label %430

379:                                              ; preds = %362
  %380 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %381 = call i32 @newOrient(%struct.cellbox* noundef %380, i32 noundef 4)
  store i32 %381, i32* %19, align 4
  store i32 1, i32* %12, align 4
  %382 = load i32, i32* %19, align 4
  %383 = icmp sge i32 %382, 0
  br i1 %383, label %384, label %403

384:                                              ; preds = %379
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* %19, align 4
  %389 = call i32 @usiteo1(i32 noundef %385, i32 noundef %386, i32 noundef %387, i32 noundef %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %384
  %392 = load i32, i32* %11, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %11, align 4
  %394 = load i32, i32* @funccost, align 4
  %395 = sitofp i32 %394 to double
  %396 = load double, double* @totFunc, align 8
  %397 = fadd double %396, %395
  store double %397, double* @totFunc, align 8
  %398 = load i32, i32* @penalty, align 4
  %399 = sitofp i32 %398 to double
  %400 = load double, double* @totPen, align 8
  %401 = fadd double %400, %399
  store double %401, double* @totPen, align 8
  store i32 0, i32* %12, align 4
  br label %402

402:                                              ; preds = %391, %384
  br label %403

403:                                              ; preds = %402, %379
  %404 = load i32, i32* %12, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %429

406:                                              ; preds = %403
  %407 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %408 = call i32 @newOrient(%struct.cellbox* noundef %407, i32 noundef 8)
  store i32 %408, i32* %19, align 4
  %409 = load i32, i32* %19, align 4
  %410 = icmp sge i32 %409, 0
  br i1 %410, label %411, label %428

411:                                              ; preds = %406
  %412 = load i32, i32* %7, align 4
  %413 = load i32, i32* %19, align 4
  %414 = call i32 @usite0(i32 noundef %412, i32 noundef %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %411
  %417 = load i32, i32* %11, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %11, align 4
  %419 = load i32, i32* @funccost, align 4
  %420 = sitofp i32 %419 to double
  %421 = load double, double* @totFunc, align 8
  %422 = fadd double %421, %420
  store double %422, double* @totFunc, align 8
  %423 = load i32, i32* @penalty, align 4
  %424 = sitofp i32 %423 to double
  %425 = load double, double* @totPen, align 8
  %426 = fadd double %425, %424
  store double %426, double* @totPen, align 8
  store i32 0, i32* %12, align 4
  br label %427

427:                                              ; preds = %416, %411
  br label %428

428:                                              ; preds = %427, %406
  br label %429

429:                                              ; preds = %428, %403
  br label %430

430:                                              ; preds = %429, %368
  br label %696

431:                                              ; preds = %133
  %432 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %432, i64 %434
  %436 = load %struct.cellbox*, %struct.cellbox** %435, align 8
  store %struct.cellbox* %436, %struct.cellbox** %4, align 8
  %437 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %438 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, -1
  br i1 %440, label %454, label %441

441:                                              ; preds = %431
  %442 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %443 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = icmp eq i32 %444, -1
  br i1 %445, label %454, label %446

446:                                              ; preds = %441
  %447 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %448 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %451 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 8
  %453 = icmp ne i32 %449, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %446, %441, %431
  br label %89, !llvm.loop !7

455:                                              ; preds = %446
  %456 = load i32, i32* @gridGiven, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %525

458:                                              ; preds = %455
  %459 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %460 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %459, i32 0, i32 21
  %461 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %462 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %460, i64 0, i64 %464
  %466 = load %struct.tilebox*, %struct.tilebox** %465, align 8
  %467 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %466, i32 0, i32 17
  %468 = load %struct.termbox*, %struct.termbox** %467, align 8
  store %struct.termbox* %468, %struct.termbox** %6, align 8
  %469 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %470 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %469, i32 0, i32 21
  %471 = load i32, i32* %17, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %470, i64 0, i64 %472
  %474 = load %struct.tilebox*, %struct.tilebox** %473, align 8
  %475 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %474, i32 0, i32 17
  %476 = load %struct.termbox*, %struct.termbox** %475, align 8
  store %struct.termbox* %476, %struct.termbox** %5, align 8
  %477 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %478 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.termbox*, %struct.termbox** %5, align 8
  %481 = getelementptr inbounds %struct.termbox, %struct.termbox* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %479, %482
  %484 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %485 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.termbox*, %struct.termbox** %5, align 8
  %488 = getelementptr inbounds %struct.termbox, %struct.termbox* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %486, %489
  call void @forceGrid(i32 noundef %483, i32 noundef %490)
  %491 = load i32, i32* @newxx, align 4
  %492 = load %struct.termbox*, %struct.termbox** %5, align 8
  %493 = getelementptr inbounds %struct.termbox, %struct.termbox* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = sub nsw i32 %491, %494
  store i32 %495, i32* %25, align 4
  %496 = load i32, i32* @newyy, align 4
  %497 = load %struct.termbox*, %struct.termbox** %5, align 8
  %498 = getelementptr inbounds %struct.termbox, %struct.termbox* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 4
  %500 = sub nsw i32 %496, %499
  store i32 %500, i32* %26, align 4
  %501 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %502 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.termbox*, %struct.termbox** %6, align 8
  %505 = getelementptr inbounds %struct.termbox, %struct.termbox* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = add nsw i32 %503, %506
  %508 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %509 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.termbox*, %struct.termbox** %6, align 8
  %512 = getelementptr inbounds %struct.termbox, %struct.termbox* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %510, %513
  call void @forceGrid(i32 noundef %507, i32 noundef %514)
  %515 = load i32, i32* @newxx, align 4
  %516 = load %struct.termbox*, %struct.termbox** %6, align 8
  %517 = getelementptr inbounds %struct.termbox, %struct.termbox* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = sub nsw i32 %515, %518
  store i32 %519, i32* %27, align 4
  %520 = load i32, i32* @newyy, align 4
  %521 = load %struct.termbox*, %struct.termbox** %6, align 8
  %522 = getelementptr inbounds %struct.termbox, %struct.termbox* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = sub nsw i32 %520, %523
  store i32 %524, i32* %28, align 4
  br label %538

525:                                              ; preds = %455
  %526 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %527 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 4
  store i32 %528, i32* %25, align 4
  %529 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %530 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  store i32 %531, i32* %26, align 4
  %532 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %533 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* %27, align 4
  %535 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %536 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 8
  store i32 %537, i32* %28, align 4
  br label %538

538:                                              ; preds = %525, %458
  %539 = load i32, i32* %7, align 4
  %540 = load i32, i32* %8, align 4
  %541 = load i32, i32* %25, align 4
  %542 = load i32, i32* %26, align 4
  %543 = load i32, i32* %27, align 4
  %544 = load i32, i32* %28, align 4
  %545 = call i32 @usite2(i32 noundef %539, i32 noundef %540, i32 noundef %541, i32 noundef %542, i32 noundef %543, i32 noundef %544)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %538
  %548 = load i32, i32* %11, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %11, align 4
  %550 = load i32, i32* @funccost, align 4
  %551 = sitofp i32 %550 to double
  %552 = load double, double* @totFunc, align 8
  %553 = fadd double %552, %551
  store double %553, double* @totFunc, align 8
  %554 = load i32, i32* @penalty, align 4
  %555 = sitofp i32 %554 to double
  %556 = load double, double* @totPen, align 8
  %557 = fadd double %556, %555
  store double %557, double* @totPen, align 8
  br label %695

558:                                              ; preds = %538
  %559 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %560 = call i32 @newOrient(%struct.cellbox* noundef %559, i32 noundef 4)
  store i32 %560, i32* %19, align 4
  %561 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %562 = load i32, i32* %8, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %561, i64 %563
  %565 = load %struct.cellbox*, %struct.cellbox** %564, align 8
  %566 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 8
  store i32 %567, i32* %18, align 4
  %568 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %569 = load i32, i32* %8, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %568, i64 %570
  %572 = load %struct.cellbox*, %struct.cellbox** %571, align 8
  %573 = call i32 @newOrient(%struct.cellbox* noundef %572, i32 noundef 4)
  store i32 %573, i32* %20, align 4
  %574 = load i32, i32* %19, align 4
  %575 = icmp sge i32 %574, 0
  br i1 %575, label %579, label %576

576:                                              ; preds = %558
  %577 = load i32, i32* %20, align 4
  %578 = icmp sge i32 %577, 0
  br i1 %578, label %579, label %694

579:                                              ; preds = %576, %558
  %580 = load i32, i32* %19, align 4
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  %583 = load i32, i32* %17, align 4
  store i32 %583, i32* %19, align 4
  br label %590

584:                                              ; preds = %579
  %585 = load i32, i32* %20, align 4
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %584
  %588 = load i32, i32* %18, align 4
  store i32 %588, i32* %20, align 4
  br label %589

589:                                              ; preds = %587, %584
  br label %590

590:                                              ; preds = %589, %582
  %591 = load i32, i32* @gridGiven, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %658

593:                                              ; preds = %590
  %594 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %595 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %594, i32 0, i32 21
  %596 = load i32, i32* %20, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %595, i64 0, i64 %597
  %599 = load %struct.tilebox*, %struct.tilebox** %598, align 8
  %600 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %599, i32 0, i32 17
  %601 = load %struct.termbox*, %struct.termbox** %600, align 8
  store %struct.termbox* %601, %struct.termbox** %6, align 8
  %602 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %603 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %602, i32 0, i32 21
  %604 = load i32, i32* %19, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %603, i64 0, i64 %605
  %607 = load %struct.tilebox*, %struct.tilebox** %606, align 8
  %608 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %607, i32 0, i32 17
  %609 = load %struct.termbox*, %struct.termbox** %608, align 8
  store %struct.termbox* %609, %struct.termbox** %5, align 8
  %610 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %611 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.termbox*, %struct.termbox** %5, align 8
  %614 = getelementptr inbounds %struct.termbox, %struct.termbox* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 8
  %616 = add nsw i32 %612, %615
  %617 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %618 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %617, i32 0, i32 3
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.termbox*, %struct.termbox** %5, align 8
  %621 = getelementptr inbounds %struct.termbox, %struct.termbox* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  %623 = add nsw i32 %619, %622
  call void @forceGrid(i32 noundef %616, i32 noundef %623)
  %624 = load i32, i32* @newxx, align 4
  %625 = load %struct.termbox*, %struct.termbox** %5, align 8
  %626 = getelementptr inbounds %struct.termbox, %struct.termbox* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 8
  %628 = sub nsw i32 %624, %627
  store i32 %628, i32* %25, align 4
  %629 = load i32, i32* @newyy, align 4
  %630 = load %struct.termbox*, %struct.termbox** %5, align 8
  %631 = getelementptr inbounds %struct.termbox, %struct.termbox* %630, i32 0, i32 2
  %632 = load i32, i32* %631, align 4
  %633 = sub nsw i32 %629, %632
  store i32 %633, i32* %26, align 4
  %634 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %635 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.termbox*, %struct.termbox** %6, align 8
  %638 = getelementptr inbounds %struct.termbox, %struct.termbox* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 8
  %640 = add nsw i32 %636, %639
  %641 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %642 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %641, i32 0, i32 3
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.termbox*, %struct.termbox** %6, align 8
  %645 = getelementptr inbounds %struct.termbox, %struct.termbox* %644, i32 0, i32 2
  %646 = load i32, i32* %645, align 4
  %647 = add nsw i32 %643, %646
  call void @forceGrid(i32 noundef %640, i32 noundef %647)
  %648 = load i32, i32* @newxx, align 4
  %649 = load %struct.termbox*, %struct.termbox** %6, align 8
  %650 = getelementptr inbounds %struct.termbox, %struct.termbox* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 8
  %652 = sub nsw i32 %648, %651
  store i32 %652, i32* %27, align 4
  %653 = load i32, i32* @newyy, align 4
  %654 = load %struct.termbox*, %struct.termbox** %6, align 8
  %655 = getelementptr inbounds %struct.termbox, %struct.termbox* %654, i32 0, i32 2
  %656 = load i32, i32* %655, align 4
  %657 = sub nsw i32 %653, %656
  store i32 %657, i32* %28, align 4
  br label %671

658:                                              ; preds = %590
  %659 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %660 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  store i32 %661, i32* %25, align 4
  %662 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %663 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 8
  store i32 %664, i32* %26, align 4
  %665 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %666 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %665, i32 0, i32 2
  %667 = load i32, i32* %666, align 4
  store i32 %667, i32* %27, align 4
  %668 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %669 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %668, i32 0, i32 3
  %670 = load i32, i32* %669, align 8
  store i32 %670, i32* %28, align 4
  br label %671

671:                                              ; preds = %658, %593
  %672 = load i32, i32* %7, align 4
  %673 = load i32, i32* %8, align 4
  %674 = load i32, i32* %25, align 4
  %675 = load i32, i32* %26, align 4
  %676 = load i32, i32* %27, align 4
  %677 = load i32, i32* %28, align 4
  %678 = load i32, i32* %19, align 4
  %679 = load i32, i32* %20, align 4
  %680 = call i32 @usiteo2(i32 noundef %672, i32 noundef %673, i32 noundef %674, i32 noundef %675, i32 noundef %676, i32 noundef %677, i32 noundef %678, i32 noundef %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %693

682:                                              ; preds = %671
  %683 = load i32, i32* %11, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %11, align 4
  %685 = load i32, i32* @funccost, align 4
  %686 = sitofp i32 %685 to double
  %687 = load double, double* @totFunc, align 8
  %688 = fadd double %687, %686
  store double %688, double* @totFunc, align 8
  %689 = load i32, i32* @penalty, align 4
  %690 = sitofp i32 %689 to double
  %691 = load double, double* @totPen, align 8
  %692 = fadd double %691, %690
  store double %692, double* @totPen, align 8
  br label %693

693:                                              ; preds = %682, %671
  br label %694

694:                                              ; preds = %693, %576
  br label %695

695:                                              ; preds = %694, %547
  br label %696

696:                                              ; preds = %695, %430
  br label %89, !llvm.loop !7

697:                                              ; preds = %89
  %698 = load i32, i32* %11, align 4
  ret i32 %698
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @forceGrid(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @newOrient(%struct.cellbox* noundef, i32 noundef) #2

declare dso_local i32 @usiteo1(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @usite0(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @usiteo2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

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
