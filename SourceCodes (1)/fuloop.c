; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/fuloop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/fuloop.c"
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

@flips = external dso_local global i32, align 4
@Tsave = external dso_local global double, align 8
@T = external dso_local global double, align 8
@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@attmax = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@randVar = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@gridGiven = external dso_local global i32, align 4
@newxx = external dso_local global i32, align 4
@newyy = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"acceptance breakdown:\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"              single cell: %d / %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\09no. of accepted flips: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fuloop() #0 {
  %1 = alloca %struct.cellbox*, align 8
  %2 = alloca %struct.termbox*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %20 = alloca double, align 8
  store i32 0, i32* @flips, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load double, double* @Tsave, align 8
  %22 = call double @log10(double noundef %21) #3
  store double %22, double* %20, align 8
  %23 = load double, double* %20, align 8
  %24 = fcmp ogt double %23, 6.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %0
  %26 = load double, double* %20, align 8
  %27 = fsub double %26, 1.000000e+00
  store double %27, double* %20, align 8
  br label %29

28:                                               ; preds = %0
  store double 5.000000e+00, double* %20, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load double, double* %20, align 8
  %31 = call double @pow(double noundef 4.000000e+00, double noundef %30) #3
  store double %31, double* %20, align 8
  %32 = load double, double* @T, align 8
  %33 = call double @log10(double noundef %32) #3
  %34 = call double @pow(double noundef 4.000000e+00, double noundef %33) #3
  %35 = load double, double* %20, align 8
  %36 = fdiv double %34, %35
  %37 = load i32, i32* @bdxlength, align 4
  %38 = sitofp i32 %37 to double
  %39 = fmul double %36, %38
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 3, i32* %4, align 4
  br label %53

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @bdxlength, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @bdxlength, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %45
  %54 = load double, double* @T, align 8
  %55 = call double @log10(double noundef %54) #3
  %56 = call double @pow(double noundef 4.000000e+00, double noundef %55) #3
  %57 = load double, double* %20, align 8
  %58 = fdiv double %56, %57
  %59 = load i32, i32* @bdylength, align 4
  %60 = sitofp i32 %59 to double
  %61 = fmul double %58, %60
  %62 = fptosi double %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 3, i32* %5, align 4
  br label %75

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @bdylength, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @bdylength, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %4, align 4
  %77 = sdiv i32 %76, 3
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sdiv i32 %78, 3
  store i32 %79, i32* %19, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %81)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %84 = load i32, i32* @bdxlength, align 4
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %90 = load i32, i32* @bdylength, align 4
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %90)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %93, i32 noundef %94)
  br label %96

96:                                               ; preds = %375, %297, %128, %75
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @attmax, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %376

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i32, i32* @numcells, align 4
  %103 = sitofp i32 %102 to double
  %104 = load i32, i32* @randVar, align 4
  %105 = mul nsw i32 %104, 1103515245
  %106 = add nsw i32 %105, 12345
  store i32 %106, i32* @randVar, align 4
  %107 = and i32 %106, 2147483647
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %108, 0x41DFFFFFFFC00000
  %110 = fmul double %103, %109
  %111 = fptosi double %110 to i32
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @numcells, align 4
  %116 = add nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %101, label %118, !llvm.loop !4

118:                                              ; preds = %113
  %119 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %119, i64 %121
  %123 = load %struct.cellbox*, %struct.cellbox** %122, align 8
  store %struct.cellbox* %123, %struct.cellbox** %1, align 8
  %124 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %125 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %96, !llvm.loop !6

129:                                              ; preds = %118
  %130 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %131 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  %133 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %134 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @blockl, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %4, align 4
  %139 = sub nsw i32 %137, %138
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %129
  %142 = load i32, i32* @blockl, align 4
  %143 = load i32, i32* %10, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %18, align 4
  %146 = sdiv i32 %144, %145
  br label %166

147:                                              ; preds = %129
  %148 = load i32, i32* @blockr, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %149, %150
  %152 = icmp sle i32 %148, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i32, i32* @blockr, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %18, align 4
  %158 = sdiv i32 %156, %157
  br label %164

159:                                              ; preds = %147
  %160 = load i32, i32* %4, align 4
  %161 = sub nsw i32 0, %160
  %162 = load i32, i32* %18, align 4
  %163 = sdiv i32 %161, %162
  br label %164

164:                                              ; preds = %159, %153
  %165 = phi i32 [ %158, %153 ], [ %163, %159 ]
  br label %166

166:                                              ; preds = %164, %141
  %167 = phi i32 [ %146, %141 ], [ %165, %164 ]
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* @blockr, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %169, %170
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* @blockr, align 4
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %18, align 4
  %178 = sdiv i32 %176, %177
  br label %197

179:                                              ; preds = %166
  %180 = load i32, i32* @blockl, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %181, %182
  %184 = icmp sge i32 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @blockl, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %18, align 4
  %190 = sdiv i32 %188, %189
  br label %195

191:                                              ; preds = %179
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %18, align 4
  %194 = sdiv i32 %192, %193
  br label %195

195:                                              ; preds = %191, %185
  %196 = phi i32 [ %190, %185 ], [ %194, %191 ]
  br label %197

197:                                              ; preds = %195, %173
  %198 = phi i32 [ %178, %173 ], [ %196, %195 ]
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* @blockb, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %5, align 4
  %202 = sub nsw i32 %200, %201
  %203 = icmp sgt i32 %199, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load i32, i32* @blockb, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32, i32* %19, align 4
  %209 = sdiv i32 %207, %208
  br label %229

210:                                              ; preds = %197
  %211 = load i32, i32* @blockt, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %5, align 4
  %214 = sub nsw i32 %212, %213
  %215 = icmp sle i32 %211, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load i32, i32* @blockt, align 4
  %218 = load i32, i32* %11, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i32, i32* %19, align 4
  %221 = sdiv i32 %219, %220
  br label %227

222:                                              ; preds = %210
  %223 = load i32, i32* %5, align 4
  %224 = sub nsw i32 0, %223
  %225 = load i32, i32* %19, align 4
  %226 = sdiv i32 %224, %225
  br label %227

227:                                              ; preds = %222, %216
  %228 = phi i32 [ %221, %216 ], [ %226, %222 ]
  br label %229

229:                                              ; preds = %227, %204
  %230 = phi i32 [ %209, %204 ], [ %228, %227 ]
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* @blockt, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %232, %233
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %229
  %237 = load i32, i32* @blockt, align 4
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load i32, i32* %19, align 4
  %241 = sdiv i32 %239, %240
  br label %260

242:                                              ; preds = %229
  %243 = load i32, i32* @blockb, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %244, %245
  %247 = icmp sge i32 %243, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i32, i32* @blockb, align 4
  %250 = load i32, i32* %11, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load i32, i32* %19, align 4
  %253 = sdiv i32 %251, %252
  br label %258

254:                                              ; preds = %242
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %19, align 4
  %257 = sdiv i32 %255, %256
  br label %258

258:                                              ; preds = %254, %248
  %259 = phi i32 [ %253, %248 ], [ %257, %254 ]
  br label %260

260:                                              ; preds = %258, %236
  %261 = phi i32 [ %241, %236 ], [ %259, %258 ]
  store i32 %261, i32* %17, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %14, align 4
  %264 = sub nsw i32 %262, %263
  %265 = add nsw i32 %264, 1
  %266 = sitofp i32 %265 to double
  %267 = load i32, i32* @randVar, align 4
  %268 = mul nsw i32 %267, 1103515245
  %269 = add nsw i32 %268, 12345
  store i32 %269, i32* @randVar, align 4
  %270 = and i32 %269, 2147483647
  %271 = sitofp i32 %270 to double
  %272 = fdiv double %271, 0x41DFFFFFFFC00000
  %273 = fmul double %266, %272
  %274 = fptosi double %273 to i32
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %274, %275
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %16, align 4
  %279 = sub nsw i32 %277, %278
  %280 = add nsw i32 %279, 1
  %281 = sitofp i32 %280 to double
  %282 = load i32, i32* @randVar, align 4
  %283 = mul nsw i32 %282, 1103515245
  %284 = add nsw i32 %283, 12345
  store i32 %284, i32* @randVar, align 4
  %285 = and i32 %284, 2147483647
  %286 = sitofp i32 %285 to double
  %287 = fdiv double %286, 0x41DFFFFFFFC00000
  %288 = fmul double %281, %287
  %289 = fptosi double %288 to i32
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %289, %290
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %260
  %295 = load i32, i32* %9, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  br label %96, !llvm.loop !6

298:                                              ; preds = %294, %260
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %8, align 4
  %302 = mul nsw i32 %300, %301
  %303 = add nsw i32 %299, %302
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* %9, align 4
  %307 = mul nsw i32 %305, %306
  %308 = add nsw i32 %304, %307
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* @gridGiven, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %342

311:                                              ; preds = %298
  %312 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %313 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %312, i32 0, i32 21
  %314 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %315 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %313, i64 0, i64 %317
  %319 = load %struct.tilebox*, %struct.tilebox** %318, align 8
  %320 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %319, i32 0, i32 17
  %321 = load %struct.termbox*, %struct.termbox** %320, align 8
  store %struct.termbox* %321, %struct.termbox** %2, align 8
  %322 = load i32, i32* %8, align 4
  %323 = load %struct.termbox*, %struct.termbox** %2, align 8
  %324 = getelementptr inbounds %struct.termbox, %struct.termbox* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %322, %325
  %327 = load i32, i32* %9, align 4
  %328 = load %struct.termbox*, %struct.termbox** %2, align 8
  %329 = getelementptr inbounds %struct.termbox, %struct.termbox* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %327, %330
  call void @forceGrid(i32 noundef %326, i32 noundef %331)
  %332 = load i32, i32* @newxx, align 4
  %333 = load %struct.termbox*, %struct.termbox** %2, align 8
  %334 = getelementptr inbounds %struct.termbox, %struct.termbox* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %332, %335
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* @newyy, align 4
  %338 = load %struct.termbox*, %struct.termbox** %2, align 8
  %339 = getelementptr inbounds %struct.termbox, %struct.termbox* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %337, %340
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %311, %298
  %343 = load i32, i32* %3, align 4
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @usite1(i32 noundef %343, i32 noundef %344, i32 noundef %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %342
  %349 = load i32, i32* @flips, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* @flips, align 4
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %12, align 4
  br label %353

353:                                              ; preds = %348, %342
  %354 = load i32, i32* %6, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %6, align 4
  %356 = load i32, i32* %13, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %13, align 4
  %358 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %359 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %358, i32 0, i32 18
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %353
  store i32 1, i32* %7, align 4
  br label %363

363:                                              ; preds = %371, %362
  %364 = load i32, i32* %7, align 4
  %365 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %366 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 8
  %368 = icmp sle i32 %364, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %363
  %370 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  call void @selectpin(%struct.cellbox* noundef %370)
  br label %371

371:                                              ; preds = %369
  %372 = load i32, i32* %7, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %7, align 4
  br label %363, !llvm.loop !7

374:                                              ; preds = %363
  br label %375

375:                                              ; preds = %374, %353
  br label %96, !llvm.loop !6

376:                                              ; preds = %96
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %377, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %13, align 4
  %382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %379, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 noundef %380, i32 noundef %381)
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %384 = load i32, i32* @flips, align 4
  %385 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %383, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 noundef %384)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @forceGrid(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @selectpin(%struct.cellbox* noundef) #2

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
