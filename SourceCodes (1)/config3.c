; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config3.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numpads = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockl = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @config3() #0 {
  %1 = alloca %struct.cellbox*, align 8
  %2 = alloca i32, align 4
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
  store i32 1000000, i32* %3, align 4
  store i32 1000000, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %15

15:                                               ; preds = %153, %0
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @numcells, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %156

19:                                               ; preds = %15
  %20 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %20, i64 %22
  %24 = load %struct.cellbox*, %struct.cellbox** %23, align 8
  store %struct.cellbox* %24, %struct.cellbox** %1, align 8
  %25 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 21
  %30 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %29, i64 0, i64 %33
  %35 = load %struct.tilebox*, %struct.tilebox** %34, align 8
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %27, %37
  %39 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %40 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i32 0, i32 21
  %41 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %40, i64 0, i64 %44
  %46 = load %struct.tilebox*, %struct.tilebox** %45, align 8
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 2, %48
  %50 = sub nsw i32 %38, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 21
  %56 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %55, i64 0, i64 %59
  %61 = load %struct.tilebox*, %struct.tilebox** %60, align 8
  %62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %53, %63
  %65 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %66 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %65, i32 0, i32 21
  %67 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %66, i64 0, i64 %70
  %72 = load %struct.tilebox*, %struct.tilebox** %71, align 8
  %73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 2, %74
  %76 = add nsw i32 %64, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %78 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %81 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %80, i32 0, i32 21
  %82 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %81, i64 0, i64 %85
  %87 = load %struct.tilebox*, %struct.tilebox** %86, align 8
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %79, %89
  %91 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %92 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %91, i32 0, i32 21
  %93 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %92, i64 0, i64 %96
  %98 = load %struct.tilebox*, %struct.tilebox** %97, align 8
  %99 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 2, %100
  %102 = sub nsw i32 %90, %101
  store i32 %102, i32* %13, align 4
  %103 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %104 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %107 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i32 0, i32 21
  %108 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %109 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %107, i64 0, i64 %111
  %113 = load %struct.tilebox*, %struct.tilebox** %112, align 8
  %114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %105, %115
  %117 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %117, i32 0, i32 21
  %119 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %120 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %118, i64 0, i64 %122
  %124 = load %struct.tilebox*, %struct.tilebox** %123, align 8
  %125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 %116, %127
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %19
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %19
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %146
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %15, !llvm.loop !4

156:                                              ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %157 = load i32, i32* @numcells, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %197, %156
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* @numcells, align 4
  %162 = load i32, i32* @numpads, align 4
  %163 = add nsw i32 %161, %162
  %164 = icmp sle i32 %160, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %159
  %166 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %167 = load i32, i32* %2, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %166, i64 %168
  %170 = load %struct.cellbox*, %struct.cellbox** %169, align 8
  store %struct.cellbox* %170, %struct.cellbox** %1, align 8
  %171 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %172 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 4
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %197

176:                                              ; preds = %165
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %9, align 4
  %180 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %181 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %184 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %183, i32 0, i32 21
  %185 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %186 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %184, i64 0, i64 %188
  %190 = load %struct.tilebox*, %struct.tilebox** %189, align 8
  %191 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %182, %192
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %13, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %176, %175
  %198 = load i32, i32* %2, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %2, align 4
  br label %159, !llvm.loop !6

200:                                              ; preds = %159
  %201 = load i32, i32* @numcells, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %241, %200
  %204 = load i32, i32* %2, align 4
  %205 = load i32, i32* @numcells, align 4
  %206 = load i32, i32* @numpads, align 4
  %207 = add nsw i32 %205, %206
  %208 = icmp sle i32 %204, %207
  br i1 %208, label %209, label %244

209:                                              ; preds = %203
  %210 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %210, i64 %212
  %214 = load %struct.cellbox*, %struct.cellbox** %213, align 8
  store %struct.cellbox* %214, %struct.cellbox** %1, align 8
  %215 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %216 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %215, i32 0, i32 11
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 2
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %241

220:                                              ; preds = %209
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %221, %222
  store i32 %223, i32* %9, align 4
  %224 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %228 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %227, i32 0, i32 21
  %229 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %230 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %228, i64 0, i64 %232
  %234 = load %struct.tilebox*, %struct.tilebox** %233, align 8
  %235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %234, i32 0, i32 11
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %226, %236
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %14, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %14, align 4
  br label %241

241:                                              ; preds = %220, %219
  %242 = load i32, i32* %2, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %2, align 4
  br label %203, !llvm.loop !7

244:                                              ; preds = %203
  %245 = load i32, i32* @numcells, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %285, %244
  %248 = load i32, i32* %2, align 4
  %249 = load i32, i32* @numcells, align 4
  %250 = load i32, i32* @numpads, align 4
  %251 = add nsw i32 %249, %250
  %252 = icmp sle i32 %248, %251
  br i1 %252, label %253, label %288

253:                                              ; preds = %247
  %254 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %255 = load i32, i32* %2, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %254, i64 %256
  %258 = load %struct.cellbox*, %struct.cellbox** %257, align 8
  store %struct.cellbox* %258, %struct.cellbox** %1, align 8
  %259 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %260 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 1
  br i1 %262, label %263, label %264

263:                                              ; preds = %253
  br label %285

264:                                              ; preds = %253
  %265 = load i32, i32* %3, align 4
  %266 = load i32, i32* %7, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %9, align 4
  %268 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %269 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 21
  %273 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %274 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %272, i64 0, i64 %276
  %278 = load %struct.tilebox*, %struct.tilebox** %277, align 8
  %279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %270, %280
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* %11, align 4
  %284 = sub nsw i32 %282, %283
  store i32 %284, i32* %11, align 4
  br label %285

285:                                              ; preds = %264, %263
  %286 = load i32, i32* %2, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %2, align 4
  br label %247, !llvm.loop !8

288:                                              ; preds = %247
  %289 = load i32, i32* @numcells, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %329, %288
  %292 = load i32, i32* %2, align 4
  %293 = load i32, i32* @numcells, align 4
  %294 = load i32, i32* @numpads, align 4
  %295 = add nsw i32 %293, %294
  %296 = icmp sle i32 %292, %295
  br i1 %296, label %297, label %332

297:                                              ; preds = %291
  %298 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %299 = load i32, i32* %2, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %298, i64 %300
  %302 = load %struct.cellbox*, %struct.cellbox** %301, align 8
  store %struct.cellbox* %302, %struct.cellbox** %1, align 8
  %303 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %304 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 3
  br i1 %306, label %307, label %308

307:                                              ; preds = %297
  br label %329

308:                                              ; preds = %297
  %309 = load i32, i32* %4, align 4
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %309, %310
  store i32 %311, i32* %9, align 4
  %312 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %313 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %316 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %315, i32 0, i32 21
  %317 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %318 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %316, i64 0, i64 %320
  %322 = load %struct.tilebox*, %struct.tilebox** %321, align 8
  %323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %322, i32 0, i32 9
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %314, %324
  store i32 %325, i32* %12, align 4
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %12, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %12, align 4
  br label %329

329:                                              ; preds = %308, %307
  %330 = load i32, i32* %2, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %2, align 4
  br label %291, !llvm.loop !9

332:                                              ; preds = %291
  %333 = load i32, i32* @numcells, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %2, align 4
  br label %335

335:                                              ; preds = %421, %332
  %336 = load i32, i32* %2, align 4
  %337 = load i32, i32* @numcells, align 4
  %338 = load i32, i32* @numpads, align 4
  %339 = add nsw i32 %337, %338
  %340 = icmp sle i32 %336, %339
  br i1 %340, label %341, label %424

341:                                              ; preds = %335
  %342 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %343 = load i32, i32* %2, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %342, i64 %344
  %346 = load %struct.cellbox*, %struct.cellbox** %345, align 8
  %347 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %346, i32 0, i32 11
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %348, 4
  br i1 %349, label %350, label %360

350:                                              ; preds = %341
  %351 = load i32, i32* %13, align 4
  %352 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %353 = load i32, i32* %2, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %352, i64 %354
  %356 = load %struct.cellbox*, %struct.cellbox** %355, align 8
  %357 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %358, %351
  store i32 %359, i32* %357, align 8
  br label %420

360:                                              ; preds = %341
  %361 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %362 = load i32, i32* %2, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %361, i64 %363
  %365 = load %struct.cellbox*, %struct.cellbox** %364, align 8
  %366 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %365, i32 0, i32 11
  %367 = load i32, i32* %366, align 8
  %368 = icmp eq i32 %367, 2
  br i1 %368, label %369, label %379

369:                                              ; preds = %360
  %370 = load i32, i32* %14, align 4
  %371 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %372 = load i32, i32* %2, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %371, i64 %373
  %375 = load %struct.cellbox*, %struct.cellbox** %374, align 8
  %376 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = sub nsw i32 %377, %370
  store i32 %378, i32* %376, align 8
  br label %419

379:                                              ; preds = %360
  %380 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %381 = load i32, i32* %2, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %380, i64 %382
  %384 = load %struct.cellbox*, %struct.cellbox** %383, align 8
  %385 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %384, i32 0, i32 11
  %386 = load i32, i32* %385, align 8
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %398

388:                                              ; preds = %379
  %389 = load i32, i32* %11, align 4
  %390 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %391 = load i32, i32* %2, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %390, i64 %392
  %394 = load %struct.cellbox*, %struct.cellbox** %393, align 8
  %395 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, %389
  store i32 %397, i32* %395, align 4
  br label %418

398:                                              ; preds = %379
  %399 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %400 = load i32, i32* %2, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %399, i64 %401
  %403 = load %struct.cellbox*, %struct.cellbox** %402, align 8
  %404 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %403, i32 0, i32 11
  %405 = load i32, i32* %404, align 8
  %406 = icmp eq i32 %405, 3
  br i1 %406, label %407, label %417

407:                                              ; preds = %398
  %408 = load i32, i32* %12, align 4
  %409 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %410 = load i32, i32* %2, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %409, i64 %411
  %413 = load %struct.cellbox*, %struct.cellbox** %412, align 8
  %414 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = sub nsw i32 %415, %408
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %407, %398
  br label %418

418:                                              ; preds = %417, %388
  br label %419

419:                                              ; preds = %418, %369
  br label %420

420:                                              ; preds = %419, %350
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %2, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %2, align 4
  br label %335, !llvm.loop !10

424:                                              ; preds = %335
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @reconfigSides(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = load i32, i32* @blockr, align 4
  %8 = load i32, i32* @blockl, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sitofp i32 %9 to double
  %11 = fmul double %6, %10
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load double, double* %2, align 8
  %14 = load i32, i32* @blockt, align 4
  %15 = load i32, i32* @blockb, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sitofp i32 %16 to double
  %18 = fmul double %13, %17
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %21 = load i32, i32* @numcells, align 4
  %22 = load i32, i32* @numpads, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %20, i64 %25
  %27 = load %struct.cellbox*, %struct.cellbox** %26, align 8
  store %struct.cellbox* %27, %struct.cellbox** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %34 = load i32, i32* @numcells, align 4
  %35 = load i32, i32* @numpads, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %33, i64 %38
  %40 = load %struct.cellbox*, %struct.cellbox** %39, align 8
  store %struct.cellbox* %40, %struct.cellbox** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %47 = load i32, i32* @numcells, align 4
  %48 = load i32, i32* @numpads, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %46, i64 %51
  %53 = load %struct.cellbox*, %struct.cellbox** %52, align 8
  store %struct.cellbox* %53, %struct.cellbox** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %56 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %60 = load i32, i32* @numcells, align 4
  %61 = load i32, i32* @numpads, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %59, i64 %64
  %66 = load %struct.cellbox*, %struct.cellbox** %65, align 8
  store %struct.cellbox* %66, %struct.cellbox** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %69 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
