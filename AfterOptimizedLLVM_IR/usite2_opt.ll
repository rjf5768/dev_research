; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usite2.c"
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
@penalty = external dso_local global i32, align 4
@overlap = external dso_local global i32 (...)*, align 8
@blockarray = external dso_local global i32***, align 8
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@occa1ptr = external dso_local global i32*, align 8
@occb1ptr = external dso_local global i32*, align 8
@occa2ptr = external dso_local global i32*, align 8
@occb2ptr = external dso_local global i32*, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @usite2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cellbox*, align 8
  %15 = alloca %struct.cellbox*, align 8
  %16 = alloca %struct.termbox*, align 8
  %17 = alloca %struct.termbox*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %27, i64 %29
  %31 = load %struct.cellbox*, %struct.cellbox** %30, align 8
  store %struct.cellbox* %31, %struct.cellbox** %14, align 8
  %32 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %21, align 4
  %35 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %22, align 4
  %38 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %25, align 4
  %41 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 21
  %43 = load i32, i32* %25, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %42, i64 0, i64 %44
  %46 = load %struct.tilebox*, %struct.tilebox** %45, align 8
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 17
  %48 = load %struct.termbox*, %struct.termbox** %47, align 8
  store %struct.termbox* %48, %struct.termbox** %16, align 8
  %49 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %49, i64 %51
  %53 = load %struct.cellbox*, %struct.cellbox** %52, align 8
  store %struct.cellbox* %53, %struct.cellbox** %15, align 8
  %54 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %23, align 4
  %57 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %58 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %24, align 4
  %60 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %26, align 4
  %63 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 21
  %65 = load i32, i32* %26, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %64, i64 0, i64 %66
  %68 = load %struct.tilebox*, %struct.tilebox** %67, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 17
  %70 = load %struct.termbox*, %struct.termbox** %69, align 8
  store %struct.termbox* %70, %struct.termbox** %17, align 8
  %71 = load i32, i32* @penalty, align 4
  store i32 %71, i32* %19, align 4
  %72 = load i32 (...)*, i32 (...)** @overlap, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %25, align 4
  %77 = bitcast i32 (...)* %72 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %78 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %77(i32 noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %19, align 4
  %81 = load i32***, i32**** @blockarray, align 8
  %82 = load i32, i32* @binX, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32**, i32*** %81, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* @binY, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** @occa1ptr, align 8
  %90 = load i32 (...)*, i32 (...)** @overlap, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %8, align 4
  %96 = bitcast i32 (...)* %90 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %97 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %96(i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef 1, i32 noundef 0)
  %98 = load i32, i32* %19, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %19, align 4
  %100 = load i32***, i32**** @blockarray, align 8
  %101 = load i32, i32* @binX, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32**, i32*** %100, i64 %102
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* @binY, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** @occb1ptr, align 8
  %109 = load i32 (...)*, i32 (...)** @overlap, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %26, align 4
  %116 = bitcast i32 (...)* %109 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %117 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %116(i32 noundef %110, i32 noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef 0, i32 noundef %115)
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %19, align 4
  %120 = load i32***, i32**** @blockarray, align 8
  %121 = load i32, i32* @binX, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32**, i32*** %120, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* @binY, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** @occa2ptr, align 8
  %129 = load i32 (...)*, i32 (...)** @overlap, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %8, align 4
  %135 = bitcast i32 (...)* %129 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %136 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %135(i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef 1, i32 noundef 0)
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %19, align 4
  %139 = load i32***, i32**** @blockarray, align 8
  %140 = load i32, i32* @binX, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32**, i32*** %139, i64 %141
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* @binY, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** @occb2ptr, align 8
  %148 = load %struct.termbox*, %struct.termbox** %16, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  call void @ufixpin(%struct.termbox* noundef %148, i32 noundef 0, i32 noundef %149, i32 noundef %150)
  %151 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %25, align 4
  call void @usoftpin(%struct.cellbox* noundef %151, i32 noundef 0, i32 noundef %152, i32 noundef %153, i32 noundef %154)
  %155 = load %struct.termbox*, %struct.termbox** %17, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  call void @ufixpin(%struct.termbox* noundef %155, i32 noundef 0, i32 noundef %156, i32 noundef %157)
  %158 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %26, align 4
  call void @usoftpin(%struct.cellbox* noundef %158, i32 noundef 0, i32 noundef %159, i32 noundef %160, i32 noundef %161)
  %162 = load i32, i32* @funccost, align 4
  store i32 %162, i32* %18, align 4
  %163 = load %struct.termbox*, %struct.termbox** %16, align 8
  %164 = call i32 @ufixnet(%struct.termbox* noundef %163)
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %18, align 4
  %167 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %168 = call i32 @usoftnet(%struct.cellbox* noundef %167)
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %18, align 4
  %171 = load %struct.termbox*, %struct.termbox** %17, align 8
  %172 = call i32 @ufixnet(%struct.termbox* noundef %171)
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %18, align 4
  %175 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %176 = call i32 @usoftnet(%struct.cellbox* noundef %175)
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* @funccost, align 4
  %183 = load i32, i32* @penalty, align 4
  %184 = add nsw i32 %182, %183
  %185 = icmp sle i32 %181, %184
  br i1 %185, label %205, label %186

186:                                              ; preds = %6
  %187 = load i32, i32* @funccost, align 4
  %188 = load i32, i32* @penalty, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %18, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* %19, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sitofp i32 %193 to double
  %195 = load double, double* @T, align 8
  %196 = fdiv double %194, %195
  %197 = call double @exp(double noundef %196) #3
  %198 = load i32, i32* @randVar, align 4
  %199 = mul nsw i32 %198, 1103515245
  %200 = add nsw i32 %199, 12345
  store i32 %200, i32* @randVar, align 4
  %201 = and i32 %200, 2147483647
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, 0x41DFFFFFFFC00000
  %204 = fcmp ogt double %197, %203
  br i1 %204, label %205, label %300

205:                                              ; preds = %186, %6
  %206 = load %struct.termbox*, %struct.termbox** %16, align 8
  call void @ufixpin(%struct.termbox* noundef %206, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %207 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  call void @usoftpin(%struct.cellbox* noundef %207, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %208 = load %struct.termbox*, %struct.termbox** %17, align 8
  call void @ufixpin(%struct.termbox* noundef %208, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %209 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  call void @usoftpin(%struct.cellbox* noundef %209, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %210 = load i32*, i32** @occa1ptr, align 8
  %211 = load i32*, i32** @occa2ptr, align 8
  %212 = icmp ne i32* %210, %211
  br i1 %212, label %213, label %247

213:                                              ; preds = %205
  store i32 1, i32* %20, align 4
  br label %214

214:                                              ; preds = %223, %213
  %215 = load i32*, i32** @occa1ptr, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %20, align 4
  br label %214, !llvm.loop !4

226:                                              ; preds = %214
  %227 = load i32*, i32** @occa1ptr, align 8
  %228 = load i32*, i32** @occa1ptr, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %229, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %227, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** @occa1ptr, align 8
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load i32*, i32** @occa2ptr, align 8
  %241 = load i32*, i32** @occa2ptr, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %240, i64 %245
  store i32 %239, i32* %246, align 4
  br label %247

247:                                              ; preds = %226, %205
  %248 = load i32*, i32** @occb1ptr, align 8
  %249 = load i32*, i32** @occb2ptr, align 8
  %250 = icmp ne i32* %248, %249
  br i1 %250, label %251, label %285

251:                                              ; preds = %247
  store i32 1, i32* %20, align 4
  br label %252

252:                                              ; preds = %261, %251
  %253 = load i32*, i32** @occb1ptr, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %20, align 4
  br label %252, !llvm.loop !6

264:                                              ; preds = %252
  %265 = load i32*, i32** @occb1ptr, align 8
  %266 = load i32*, i32** @occb1ptr, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %267, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** @occb1ptr, align 8
  %274 = load i32, i32* %20, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %272, i32* %276, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32*, i32** @occb2ptr, align 8
  %279 = load i32*, i32** @occb2ptr, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  store i32 %277, i32* %284, align 4
  br label %285

285:                                              ; preds = %264, %247
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %288 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.cellbox*, %struct.cellbox** %14, align 8
  %291 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %290, i32 0, i32 3
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %294 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %297 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %18, align 4
  store i32 %298, i32* @funccost, align 4
  %299 = load i32, i32* %19, align 4
  store i32 %299, i32* @penalty, align 4
  store i32 1, i32* %7, align 4
  br label %301

300:                                              ; preds = %186
  store i32 0, i32* %7, align 4
  br label %301

301:                                              ; preds = %300, %285
  %302 = load i32, i32* %7, align 4
  ret i32 %302
}

declare dso_local void @ufixpin(%struct.termbox* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @usoftpin(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @ufixnet(%struct.termbox* noundef) #1

declare dso_local i32 @usoftnet(%struct.cellbox* noundef) #1

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
