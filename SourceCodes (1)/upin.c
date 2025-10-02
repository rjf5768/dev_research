; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/upin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/upin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@Tsave = external dso_local global double, align 8
@overfill = external dso_local global i32, align 4
@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @upin(%struct.cellbox* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cellbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dimbox*, align 8
  %13 = alloca %struct.netbox*, align 8
  %14 = alloca %struct.termnets*, align 8
  %15 = alloca %struct.tilebox*, align 8
  %16 = alloca %struct.uncombox*, align 8
  %17 = alloca %struct.locbox*, align 8
  %18 = alloca %struct.contentbox*, align 8
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
  %31 = alloca double, align 8
  store %struct.cellbox* %0, %struct.cellbox** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %32 = load double, double* @Tsave, align 8
  %33 = fdiv double %32, 1.000000e+05
  store double %33, double* %31, align 8
  %34 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %35 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %29, align 4
  %37 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %30, align 4
  %40 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 21
  %42 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %41, i64 0, i64 %45
  %47 = load %struct.tilebox*, %struct.tilebox** %46, align 8
  store %struct.tilebox* %47, %struct.tilebox** %15, align 8
  %48 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 20
  %50 = load %struct.uncombox*, %struct.uncombox** %49, align 8
  store %struct.uncombox* %50, %struct.uncombox** %16, align 8
  %51 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %51, i32 0, i32 19
  %53 = load %struct.contentbox*, %struct.contentbox** %52, align 8
  store %struct.contentbox* %53, %struct.contentbox** %18, align 8
  %54 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %54, i32 0, i32 18
  %56 = load %struct.locbox*, %struct.locbox** %55, align 8
  store %struct.locbox* %56, %struct.locbox** %17, align 8
  %57 = load i32, i32* @overfill, align 4
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %75, %5
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %64, i64 %66
  %68 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %70, i64 %72
  %74 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %20, align 4
  br label %59, !llvm.loop !4

78:                                               ; preds = %59
  %79 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %79, i64 %81
  %83 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %109, %78
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %87, i64 %92
  %94 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %86, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %85
  %98 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %98, i64 %100
  %102 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %104, i64 %106
  %108 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %85, !llvm.loop !6

112:                                              ; preds = %85
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %176, %112
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %179

120:                                              ; preds = %114
  %121 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %121, i64 %123
  %125 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %20, align 4
  %127 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %127, i64 %129
  %131 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %134, i64 %136
  %138 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %132, %139
  store i32 %140, i32* %28, align 4
  %141 = load i32, i32* %28, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %120
  %144 = load i32, i32* %28, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load double, double* %31, align 8
  %148 = fmul double %147, 1.000000e+01
  %149 = fptosi double %148 to i32
  %150 = load i32, i32* %22, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %22, align 4
  br label %174

152:                                              ; preds = %143
  %153 = load double, double* %31, align 8
  %154 = fmul double %153, 1.000000e+01
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %28, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sitofp i32 %157 to double
  %159 = fmul double %154, %158
  %160 = fptosi double %159 to i32
  %161 = load double, double* %31, align 8
  %162 = fmul double %161, 1.000000e+01
  %163 = load i32, i32* %28, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load i32, i32* %28, align 4
  %166 = sub nsw i32 %165, 1
  %167 = mul nsw i32 %164, %166
  %168 = sitofp i32 %167 to double
  %169 = fmul double %162, %168
  %170 = fptosi double %169 to i32
  %171 = sub nsw i32 %160, %170
  %172 = load i32, i32* %22, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %22, align 4
  br label %174

174:                                              ; preds = %152, %146
  br label %175

175:                                              ; preds = %174, %120
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %19, align 4
  br label %114, !llvm.loop !7

179:                                              ; preds = %114
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %19, align 4
  br label %183

183:                                              ; preds = %255, %179
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %185, %186
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %258

189:                                              ; preds = %183
  %190 = load i32, i32* %24, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %23, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %20, align 4
  store i32 1, i32* %24, align 4
  %198 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %198, i64 %200
  %202 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %23, align 4
  br label %204

204:                                              ; preds = %195, %189
  %205 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %205, i64 %207
  %209 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %23, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %28, align 4
  %214 = load i32, i32* %28, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %248

216:                                              ; preds = %204
  %217 = load i32, i32* %28, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load double, double* %31, align 8
  %221 = fmul double %220, 1.000000e+01
  %222 = fptosi double %221 to i32
  %223 = load i32, i32* %22, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %22, align 4
  br label %247

225:                                              ; preds = %216
  %226 = load double, double* %31, align 8
  %227 = fmul double %226, 1.000000e+01
  %228 = load i32, i32* %28, align 4
  %229 = load i32, i32* %28, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sitofp i32 %230 to double
  %232 = fmul double %227, %231
  %233 = fptosi double %232 to i32
  %234 = load double, double* %31, align 8
  %235 = fmul double %234, 1.000000e+01
  %236 = load i32, i32* %28, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load i32, i32* %28, align 4
  %239 = sub nsw i32 %238, 1
  %240 = mul nsw i32 %237, %239
  %241 = sitofp i32 %240 to double
  %242 = fmul double %235, %241
  %243 = fptosi double %242 to i32
  %244 = sub nsw i32 %233, %243
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %22, align 4
  br label %247

247:                                              ; preds = %225, %219
  br label %248

248:                                              ; preds = %247, %204
  %249 = load i32, i32* %20, align 4
  %250 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %250, i64 %252
  %254 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %253, i32 0, i32 2
  store i32 %249, i32* %254, align 4
  br label %255

255:                                              ; preds = %248
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  br label %183, !llvm.loop !8

258:                                              ; preds = %183
  %259 = load i32, i32* %8, align 4
  store i32 %259, i32* %19, align 4
  br label %260

260:                                              ; preds = %321, %258
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %262, %263
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %324

266:                                              ; preds = %260
  %267 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %268 = load i32, i32* %19, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %267, i64 %269
  %271 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %27, align 4
  %273 = load %struct.locbox*, %struct.locbox** %17, align 8
  %274 = load i32, i32* %27, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.locbox, %struct.locbox* %273, i64 %275
  %277 = getelementptr inbounds %struct.locbox, %struct.locbox* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %29, align 4
  %280 = add nsw i32 %278, %279
  store i32 %280, i32* %25, align 4
  %281 = load %struct.locbox*, %struct.locbox** %17, align 8
  %282 = load i32, i32* %27, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.locbox, %struct.locbox* %281, i64 %283
  %285 = getelementptr inbounds %struct.locbox, %struct.locbox* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %30, align 4
  %288 = add nsw i32 %286, %287
  store i32 %288, i32* %26, align 4
  %289 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %290 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %290, i64 %292
  %294 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.termnets*, %struct.termnets** %289, i64 %296
  %298 = load %struct.termnets*, %struct.termnets** %297, align 8
  store %struct.termnets* %298, %struct.termnets** %14, align 8
  %299 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %300 = load %struct.termnets*, %struct.termnets** %14, align 8
  %301 = getelementptr inbounds %struct.termnets, %struct.termnets* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %299, i64 %303
  %305 = load %struct.dimbox*, %struct.dimbox** %304, align 8
  %306 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %305, i32 0, i32 7
  store i32 1, i32* %306, align 8
  %307 = load %struct.termnets*, %struct.termnets** %14, align 8
  %308 = getelementptr inbounds %struct.termnets, %struct.termnets* %307, i32 0, i32 1
  %309 = load %struct.netbox*, %struct.netbox** %308, align 8
  %310 = getelementptr inbounds %struct.netbox, %struct.netbox* %309, i32 0, i32 6
  store i32 1, i32* %310, align 4
  %311 = load i32, i32* %25, align 4
  %312 = load %struct.termnets*, %struct.termnets** %14, align 8
  %313 = getelementptr inbounds %struct.termnets, %struct.termnets* %312, i32 0, i32 1
  %314 = load %struct.netbox*, %struct.netbox** %313, align 8
  %315 = getelementptr inbounds %struct.netbox, %struct.netbox* %314, i32 0, i32 3
  store i32 %311, i32* %315, align 8
  %316 = load i32, i32* %26, align 4
  %317 = load %struct.termnets*, %struct.termnets** %14, align 8
  %318 = getelementptr inbounds %struct.termnets, %struct.termnets* %317, i32 0, i32 1
  %319 = load %struct.netbox*, %struct.netbox** %318, align 8
  %320 = getelementptr inbounds %struct.netbox, %struct.netbox* %319, i32 0, i32 4
  store i32 %316, i32* %320, align 4
  br label %321

321:                                              ; preds = %266
  %322 = load i32, i32* %19, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %19, align 4
  br label %260, !llvm.loop !9

324:                                              ; preds = %260
  %325 = load i32, i32* @funccost, align 4
  store i32 %325, i32* %21, align 4
  %326 = load i32, i32* %8, align 4
  store i32 %326, i32* %19, align 4
  br label %327

327:                                              ; preds = %558, %324
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %329, %330
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %561

333:                                              ; preds = %327
  %334 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %335 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %336 = load i32, i32* %19, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %335, i64 %337
  %339 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.termnets*, %struct.termnets** %334, i64 %341
  %343 = load %struct.termnets*, %struct.termnets** %342, align 8
  store %struct.termnets* %343, %struct.termnets** %14, align 8
  %344 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %345 = load %struct.termnets*, %struct.termnets** %14, align 8
  %346 = getelementptr inbounds %struct.termnets, %struct.termnets* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %344, i64 %348
  %350 = load %struct.dimbox*, %struct.dimbox** %349, align 8
  store %struct.dimbox* %350, %struct.dimbox** %12, align 8
  %351 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %352 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 8
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %333
  %356 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %357 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %361

360:                                              ; preds = %355, %333
  br label %558

361:                                              ; preds = %355
  %362 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %363 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %362, i32 0, i32 7
  store i32 0, i32* %363, align 8
  %364 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %365 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %364, i32 0, i32 0
  %366 = load %struct.netbox*, %struct.netbox** %365, align 8
  store %struct.netbox* %366, %struct.netbox** %13, align 8
  br label %367

367:                                              ; preds = %418, %361
  %368 = load %struct.netbox*, %struct.netbox** %13, align 8
  %369 = icmp eq %struct.netbox* %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  br label %422

371:                                              ; preds = %367
  %372 = load %struct.netbox*, %struct.netbox** %13, align 8
  %373 = getelementptr inbounds %struct.netbox, %struct.netbox* %372, i32 0, i32 9
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  br label %418

377:                                              ; preds = %371
  %378 = load %struct.netbox*, %struct.netbox** %13, align 8
  %379 = getelementptr inbounds %struct.netbox, %struct.netbox* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %399

382:                                              ; preds = %377
  %383 = load %struct.netbox*, %struct.netbox** %13, align 8
  %384 = getelementptr inbounds %struct.netbox, %struct.netbox* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %387 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %386, i32 0, i32 5
  store i32 %385, i32* %387, align 8
  %388 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %389 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %388, i32 0, i32 3
  store i32 %385, i32* %389, align 8
  %390 = load %struct.netbox*, %struct.netbox** %13, align 8
  %391 = getelementptr inbounds %struct.netbox, %struct.netbox* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %394 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %393, i32 0, i32 10
  store i32 %392, i32* %394, align 4
  %395 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %396 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %395, i32 0, i32 8
  store i32 %392, i32* %396, align 4
  %397 = load %struct.netbox*, %struct.netbox** %13, align 8
  %398 = getelementptr inbounds %struct.netbox, %struct.netbox* %397, i32 0, i32 6
  store i32 0, i32* %398, align 4
  br label %414

399:                                              ; preds = %377
  %400 = load %struct.netbox*, %struct.netbox** %13, align 8
  %401 = getelementptr inbounds %struct.netbox, %struct.netbox* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %404 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %403, i32 0, i32 5
  store i32 %402, i32* %404, align 8
  %405 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %406 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %405, i32 0, i32 3
  store i32 %402, i32* %406, align 8
  %407 = load %struct.netbox*, %struct.netbox** %13, align 8
  %408 = getelementptr inbounds %struct.netbox, %struct.netbox* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %411 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %410, i32 0, i32 10
  store i32 %409, i32* %411, align 4
  %412 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %413 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %412, i32 0, i32 8
  store i32 %409, i32* %413, align 4
  br label %414

414:                                              ; preds = %399, %382
  %415 = load %struct.netbox*, %struct.netbox** %13, align 8
  %416 = getelementptr inbounds %struct.netbox, %struct.netbox* %415, i32 0, i32 0
  %417 = load %struct.netbox*, %struct.netbox** %416, align 8
  store %struct.netbox* %417, %struct.netbox** %13, align 8
  br label %422

418:                                              ; preds = %376
  %419 = load %struct.netbox*, %struct.netbox** %13, align 8
  %420 = getelementptr inbounds %struct.netbox, %struct.netbox* %419, i32 0, i32 0
  %421 = load %struct.netbox*, %struct.netbox** %420, align 8
  store %struct.netbox* %421, %struct.netbox** %13, align 8
  br label %367

422:                                              ; preds = %414, %370
  br label %423

423:                                              ; preds = %496, %422
  %424 = load %struct.netbox*, %struct.netbox** %13, align 8
  %425 = icmp ne %struct.netbox* %424, null
  br i1 %425, label %426, label %500

426:                                              ; preds = %423
  %427 = load %struct.netbox*, %struct.netbox** %13, align 8
  %428 = getelementptr inbounds %struct.netbox, %struct.netbox* %427, i32 0, i32 9
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %432

431:                                              ; preds = %426
  br label %496

432:                                              ; preds = %426
  %433 = load %struct.netbox*, %struct.netbox** %13, align 8
  %434 = getelementptr inbounds %struct.netbox, %struct.netbox* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 1
  br i1 %436, label %437, label %446

437:                                              ; preds = %432
  %438 = load %struct.netbox*, %struct.netbox** %13, align 8
  %439 = getelementptr inbounds %struct.netbox, %struct.netbox* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  store i32 %440, i32* %25, align 4
  %441 = load %struct.netbox*, %struct.netbox** %13, align 8
  %442 = getelementptr inbounds %struct.netbox, %struct.netbox* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %26, align 4
  %444 = load %struct.netbox*, %struct.netbox** %13, align 8
  %445 = getelementptr inbounds %struct.netbox, %struct.netbox* %444, i32 0, i32 6
  store i32 0, i32* %445, align 4
  br label %453

446:                                              ; preds = %432
  %447 = load %struct.netbox*, %struct.netbox** %13, align 8
  %448 = getelementptr inbounds %struct.netbox, %struct.netbox* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  store i32 %449, i32* %25, align 4
  %450 = load %struct.netbox*, %struct.netbox** %13, align 8
  %451 = getelementptr inbounds %struct.netbox, %struct.netbox* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* %26, align 4
  br label %453

453:                                              ; preds = %446, %437
  %454 = load i32, i32* %25, align 4
  %455 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %456 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = icmp slt i32 %454, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %453
  %460 = load i32, i32* %25, align 4
  %461 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %462 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %461, i32 0, i32 3
  store i32 %460, i32* %462, align 8
  br label %474

463:                                              ; preds = %453
  %464 = load i32, i32* %25, align 4
  %465 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %466 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 8
  %468 = icmp sgt i32 %464, %467
  br i1 %468, label %469, label %473

469:                                              ; preds = %463
  %470 = load i32, i32* %25, align 4
  %471 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %472 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %471, i32 0, i32 5
  store i32 %470, i32* %472, align 8
  br label %473

473:                                              ; preds = %469, %463
  br label %474

474:                                              ; preds = %473, %459
  %475 = load i32, i32* %26, align 4
  %476 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %477 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %476, i32 0, i32 8
  %478 = load i32, i32* %477, align 4
  %479 = icmp slt i32 %475, %478
  br i1 %479, label %480, label %484

480:                                              ; preds = %474
  %481 = load i32, i32* %26, align 4
  %482 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %483 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %482, i32 0, i32 8
  store i32 %481, i32* %483, align 4
  br label %495

484:                                              ; preds = %474
  %485 = load i32, i32* %26, align 4
  %486 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %487 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %486, i32 0, i32 10
  %488 = load i32, i32* %487, align 4
  %489 = icmp sgt i32 %485, %488
  br i1 %489, label %490, label %494

490:                                              ; preds = %484
  %491 = load i32, i32* %26, align 4
  %492 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %493 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %492, i32 0, i32 10
  store i32 %491, i32* %493, align 4
  br label %494

494:                                              ; preds = %490, %484
  br label %495

495:                                              ; preds = %494, %480
  br label %496

496:                                              ; preds = %495, %431
  %497 = load %struct.netbox*, %struct.netbox** %13, align 8
  %498 = getelementptr inbounds %struct.netbox, %struct.netbox* %497, i32 0, i32 0
  %499 = load %struct.netbox*, %struct.netbox** %498, align 8
  store %struct.netbox* %499, %struct.netbox** %13, align 8
  br label %423, !llvm.loop !10

500:                                              ; preds = %423
  %501 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %502 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %501, i32 0, i32 11
  %503 = load double, double* %502, align 8
  %504 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %505 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %508 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 8
  %510 = sub nsw i32 %506, %509
  %511 = sitofp i32 %510 to double
  %512 = fmul double %503, %511
  %513 = fptosi double %512 to i32
  %514 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %515 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %514, i32 0, i32 11
  %516 = load double, double* %515, align 8
  %517 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %518 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %521 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %519, %522
  %524 = sitofp i32 %523 to double
  %525 = fmul double %516, %524
  %526 = fptosi double %525 to i32
  %527 = sub nsw i32 %513, %526
  %528 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %529 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %528, i32 0, i32 12
  %530 = load double, double* %529, align 8
  %531 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %532 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %531, i32 0, i32 10
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %535 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 4
  %537 = sub nsw i32 %533, %536
  %538 = sitofp i32 %537 to double
  %539 = fmul double %530, %538
  %540 = fptosi double %539 to i32
  %541 = add nsw i32 %527, %540
  %542 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %543 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %542, i32 0, i32 12
  %544 = load double, double* %543, align 8
  %545 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %546 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %545, i32 0, i32 9
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %549 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %548, i32 0, i32 6
  %550 = load i32, i32* %549, align 4
  %551 = sub nsw i32 %547, %550
  %552 = sitofp i32 %551 to double
  %553 = fmul double %544, %552
  %554 = fptosi double %553 to i32
  %555 = sub nsw i32 %541, %554
  %556 = load i32, i32* %21, align 4
  %557 = add nsw i32 %556, %555
  store i32 %557, i32* %21, align 4
  br label %558

558:                                              ; preds = %500, %360
  %559 = load i32, i32* %19, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %19, align 4
  br label %327, !llvm.loop !11

561:                                              ; preds = %327
  %562 = load i32, i32* %21, align 4
  %563 = load i32, i32* %22, align 4
  %564 = add nsw i32 %562, %563
  %565 = load i32, i32* @funccost, align 4
  %566 = load i32, i32* @overfill, align 4
  %567 = add nsw i32 %565, %566
  %568 = icmp sle i32 %564, %567
  br i1 %568, label %588, label %569

569:                                              ; preds = %561
  %570 = load i32, i32* @funccost, align 4
  %571 = load i32, i32* @overfill, align 4
  %572 = add nsw i32 %570, %571
  %573 = load i32, i32* %21, align 4
  %574 = sub nsw i32 %572, %573
  %575 = load i32, i32* %22, align 4
  %576 = sub nsw i32 %574, %575
  %577 = sitofp i32 %576 to double
  %578 = load double, double* @T, align 8
  %579 = fdiv double %577, %578
  %580 = call double @exp(double noundef %579) #2
  %581 = load i32, i32* @randVar, align 4
  %582 = mul nsw i32 %581, 1103515245
  %583 = add nsw i32 %582, 12345
  store i32 %583, i32* @randVar, align 4
  %584 = and i32 %583, 2147483647
  %585 = sitofp i32 %584 to double
  %586 = fdiv double %585, 0x41DFFFFFFFC00000
  %587 = fcmp ogt double %580, %586
  br i1 %587, label %588, label %736

588:                                              ; preds = %569, %561
  %589 = load i32, i32* %8, align 4
  store i32 %589, i32* %19, align 4
  br label %590

590:                                              ; preds = %652, %588
  %591 = load i32, i32* %19, align 4
  %592 = load i32, i32* %8, align 4
  %593 = load i32, i32* %9, align 4
  %594 = add nsw i32 %592, %593
  %595 = icmp slt i32 %591, %594
  br i1 %595, label %596, label %655

596:                                              ; preds = %590
  %597 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %598 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %599 = load i32, i32* %19, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %598, i64 %600
  %602 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.termnets*, %struct.termnets** %597, i64 %604
  %606 = load %struct.termnets*, %struct.termnets** %605, align 8
  store %struct.termnets* %606, %struct.termnets** %14, align 8
  %607 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %608 = load %struct.termnets*, %struct.termnets** %14, align 8
  %609 = getelementptr inbounds %struct.termnets, %struct.termnets* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %607, i64 %611
  %613 = load %struct.dimbox*, %struct.dimbox** %612, align 8
  store %struct.dimbox* %613, %struct.dimbox** %12, align 8
  %614 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %615 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %614, i32 0, i32 3
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %618 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %617, i32 0, i32 2
  store i32 %616, i32* %618, align 4
  %619 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %620 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %619, i32 0, i32 5
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %623 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %622, i32 0, i32 4
  store i32 %621, i32* %623, align 4
  %624 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %625 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %624, i32 0, i32 8
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %628 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %627, i32 0, i32 6
  store i32 %626, i32* %628, align 4
  %629 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %630 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %629, i32 0, i32 10
  %631 = load i32, i32* %630, align 4
  %632 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %633 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %632, i32 0, i32 9
  store i32 %631, i32* %633, align 8
  %634 = load %struct.termnets*, %struct.termnets** %14, align 8
  %635 = getelementptr inbounds %struct.termnets, %struct.termnets* %634, i32 0, i32 1
  %636 = load %struct.netbox*, %struct.netbox** %635, align 8
  %637 = getelementptr inbounds %struct.netbox, %struct.netbox* %636, i32 0, i32 3
  %638 = load i32, i32* %637, align 8
  %639 = load %struct.termnets*, %struct.termnets** %14, align 8
  %640 = getelementptr inbounds %struct.termnets, %struct.termnets* %639, i32 0, i32 1
  %641 = load %struct.netbox*, %struct.netbox** %640, align 8
  %642 = getelementptr inbounds %struct.netbox, %struct.netbox* %641, i32 0, i32 1
  store i32 %638, i32* %642, align 8
  %643 = load %struct.termnets*, %struct.termnets** %14, align 8
  %644 = getelementptr inbounds %struct.termnets, %struct.termnets* %643, i32 0, i32 1
  %645 = load %struct.netbox*, %struct.netbox** %644, align 8
  %646 = getelementptr inbounds %struct.netbox, %struct.netbox* %645, i32 0, i32 4
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.termnets*, %struct.termnets** %14, align 8
  %649 = getelementptr inbounds %struct.termnets, %struct.termnets* %648, i32 0, i32 1
  %650 = load %struct.netbox*, %struct.netbox** %649, align 8
  %651 = getelementptr inbounds %struct.netbox, %struct.netbox* %650, i32 0, i32 2
  store i32 %647, i32* %651, align 4
  br label %652

652:                                              ; preds = %596
  %653 = load i32, i32* %19, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %19, align 4
  br label %590, !llvm.loop !12

655:                                              ; preds = %590
  %656 = load i32, i32* %10, align 4
  store i32 %656, i32* %20, align 4
  br label %657

657:                                              ; preds = %673, %655
  %658 = load i32, i32* %20, align 4
  %659 = load i32, i32* %11, align 4
  %660 = icmp sle i32 %658, %659
  br i1 %660, label %661, label %676

661:                                              ; preds = %657
  %662 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %663 = load i32, i32* %20, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %662, i64 %664
  %666 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %669 = load i32, i32* %20, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %668, i64 %670
  %672 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %671, i32 0, i32 0
  store i32 %667, i32* %672, align 4
  br label %673

673:                                              ; preds = %661
  %674 = load i32, i32* %20, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %20, align 4
  br label %657, !llvm.loop !13

676:                                              ; preds = %657
  %677 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %678 = load i32, i32* %8, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %677, i64 %679
  %681 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 4
  store i32 %682, i32* %20, align 4
  br label %683

683:                                              ; preds = %707, %676
  %684 = load i32, i32* %20, align 4
  %685 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %686 = load i32, i32* %8, align 4
  %687 = load i32, i32* %9, align 4
  %688 = add nsw i32 %686, %687
  %689 = sub nsw i32 %688, 1
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %685, i64 %690
  %692 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = icmp sle i32 %684, %693
  br i1 %694, label %695, label %710

695:                                              ; preds = %683
  %696 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %697 = load i32, i32* %20, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %696, i64 %698
  %700 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = load %struct.contentbox*, %struct.contentbox** %18, align 8
  %703 = load i32, i32* %20, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %702, i64 %704
  %706 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %705, i32 0, i32 0
  store i32 %701, i32* %706, align 4
  br label %707

707:                                              ; preds = %695
  %708 = load i32, i32* %20, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %20, align 4
  br label %683, !llvm.loop !14

710:                                              ; preds = %683
  %711 = load i32, i32* %8, align 4
  store i32 %711, i32* %19, align 4
  br label %712

712:                                              ; preds = %730, %710
  %713 = load i32, i32* %19, align 4
  %714 = load i32, i32* %8, align 4
  %715 = load i32, i32* %9, align 4
  %716 = add nsw i32 %714, %715
  %717 = icmp slt i32 %713, %716
  br i1 %717, label %718, label %733

718:                                              ; preds = %712
  %719 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %720 = load i32, i32* %19, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %719, i64 %721
  %723 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %722, i32 0, i32 2
  %724 = load i32, i32* %723, align 4
  %725 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %726 = load i32, i32* %19, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %725, i64 %727
  %729 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %728, i32 0, i32 1
  store i32 %724, i32* %729, align 4
  br label %730

730:                                              ; preds = %718
  %731 = load i32, i32* %19, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %19, align 4
  br label %712, !llvm.loop !15

733:                                              ; preds = %712
  %734 = load i32, i32* %21, align 4
  store i32 %734, i32* @funccost, align 4
  %735 = load i32, i32* %22, align 4
  store i32 %735, i32* @overfill, align 4
  store i32 1, i32* %6, align 4
  br label %737

736:                                              ; preds = %569
  store i32 0, i32* %6, align 4
  br label %737

737:                                              ; preds = %736, %733
  %738 = load i32, i32* %6, align 4
  ret i32 %738
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
