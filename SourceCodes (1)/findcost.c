; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findcost.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findcost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }

@Tsave = external dso_local global double, align 8
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@termarray = external dso_local global %struct.termnets**, align 8
@finalShot = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@penalty = external dso_local global i32, align 4
@overlap = external dso_local global i32 (...)*, align 8
@overfill = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findcost() #0 {
  %1 = alloca %struct.dimbox*, align 8
  %2 = alloca %struct.netbox*, align 8
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca %struct.cellbox*, align 8
  %5 = alloca %struct.termbox*, align 8
  %6 = alloca %struct.termnets*, align 8
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
  %21 = load double, double* @Tsave, align 8
  %22 = fdiv double %21, 1.000000e+05
  store double %22, double* %20, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %169, %0
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @numcells, align 4
  %26 = load i32, i32* @numpads, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %172

29:                                               ; preds = %23
  %30 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %30, i64 %32
  %34 = load %struct.cellbox*, %struct.cellbox** %33, align 8
  store %struct.cellbox* %34, %struct.cellbox** %4, align 8
  %35 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %35, i32 0, i32 21
  %37 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %36, i64 0, i64 %40
  %42 = load %struct.tilebox*, %struct.tilebox** %41, align 8
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 17
  %44 = load %struct.termbox*, %struct.termbox** %43, align 8
  store %struct.termbox* %44, %struct.termbox** %5, align 8
  br label %45

45:                                               ; preds = %78, %29
  %46 = load %struct.termbox*, %struct.termbox** %5, align 8
  %47 = icmp ne %struct.termbox* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %50 = load %struct.termbox*, %struct.termbox** %5, align 8
  %51 = getelementptr inbounds %struct.termbox, %struct.termbox* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.termnets*, %struct.termnets** %49, i64 %53
  %55 = load %struct.termnets*, %struct.termnets** %54, align 8
  store %struct.termnets* %55, %struct.termnets** %6, align 8
  %56 = load %struct.termbox*, %struct.termbox** %5, align 8
  %57 = getelementptr inbounds %struct.termbox, %struct.termbox* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load %struct.termnets*, %struct.termnets** %6, align 8
  %64 = getelementptr inbounds %struct.termnets, %struct.termnets* %63, i32 0, i32 1
  %65 = load %struct.netbox*, %struct.netbox** %64, align 8
  %66 = getelementptr inbounds %struct.netbox, %struct.netbox* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 8
  %67 = load %struct.termbox*, %struct.termbox** %5, align 8
  %68 = getelementptr inbounds %struct.termbox, %struct.termbox* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %71 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  %74 = load %struct.termnets*, %struct.termnets** %6, align 8
  %75 = getelementptr inbounds %struct.termnets, %struct.termnets* %74, i32 0, i32 1
  %76 = load %struct.netbox*, %struct.netbox** %75, align 8
  %77 = getelementptr inbounds %struct.netbox, %struct.netbox* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %48
  %79 = load %struct.termbox*, %struct.termbox** %5, align 8
  %80 = getelementptr inbounds %struct.termbox, %struct.termbox* %79, i32 0, i32 0
  %81 = load %struct.termbox*, %struct.termbox** %80, align 8
  store %struct.termbox* %81, %struct.termbox** %5, align 8
  br label %45, !llvm.loop !4

82:                                               ; preds = %45
  %83 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %168

87:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %164, %87
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 18
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %167

94:                                               ; preds = %88
  %95 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %95, i32 0, i32 20
  %97 = load %struct.uncombox*, %struct.uncombox** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %97, i64 %99
  %101 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  %103 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %104 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %103, i32 0, i32 20
  %105 = load %struct.uncombox*, %struct.uncombox** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %105, i64 %107
  %109 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %111, i32 0, i32 21
  %113 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %112, i64 0, i64 %116
  %118 = load %struct.tilebox*, %struct.tilebox** %117, align 8
  %119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 18
  %120 = load %struct.locbox*, %struct.locbox** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.locbox, %struct.locbox* %120, i64 %122
  %124 = getelementptr inbounds %struct.locbox, %struct.locbox* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %18, align 4
  %126 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %126, i32 0, i32 21
  %128 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %129 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %127, i64 0, i64 %131
  %133 = load %struct.tilebox*, %struct.tilebox** %132, align 8
  %134 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %133, i32 0, i32 18
  %135 = load %struct.locbox*, %struct.locbox** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.locbox, %struct.locbox* %135, i64 %137
  %139 = getelementptr inbounds %struct.locbox, %struct.locbox* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %19, align 4
  %141 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.termnets*, %struct.termnets** %141, i64 %143
  %145 = load %struct.termnets*, %struct.termnets** %144, align 8
  store %struct.termnets* %145, %struct.termnets** %6, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %148 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = load %struct.termnets*, %struct.termnets** %6, align 8
  %152 = getelementptr inbounds %struct.termnets, %struct.termnets* %151, i32 0, i32 1
  %153 = load %struct.netbox*, %struct.netbox** %152, align 8
  %154 = getelementptr inbounds %struct.netbox, %struct.netbox* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %157 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %155, %158
  %160 = load %struct.termnets*, %struct.termnets** %6, align 8
  %161 = getelementptr inbounds %struct.termnets, %struct.termnets* %160, i32 0, i32 1
  %162 = load %struct.netbox*, %struct.netbox** %161, align 8
  %163 = getelementptr inbounds %struct.netbox, %struct.netbox* %162, i32 0, i32 2
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %94
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %88, !llvm.loop !6

167:                                              ; preds = %88
  br label %168

168:                                              ; preds = %167, %82
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %23, !llvm.loop !7

172:                                              ; preds = %23
  %173 = load i32, i32* @finalShot, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* @numnets, align 4
  %177 = load i32, i32* @numcells, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %17, align 4
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @numnets, align 4
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %179, %175
  store i32 1, i32* %8, align 4
  br label %182

182:                                              ; preds = %330, %181
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %333

186:                                              ; preds = %182
  %187 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %187, i64 %189
  %191 = load %struct.dimbox*, %struct.dimbox** %190, align 8
  store %struct.dimbox* %191, %struct.dimbox** %1, align 8
  %192 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %193 = icmp eq %struct.dimbox* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %330

195:                                              ; preds = %186
  %196 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %197 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %330

201:                                              ; preds = %195
  %202 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %203 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %202, i32 0, i32 0
  %204 = load %struct.netbox*, %struct.netbox** %203, align 8
  store %struct.netbox* %204, %struct.netbox** %2, align 8
  br label %205

205:                                              ; preds = %233, %201
  %206 = load %struct.netbox*, %struct.netbox** %2, align 8
  %207 = icmp eq %struct.netbox* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %237

209:                                              ; preds = %205
  %210 = load %struct.netbox*, %struct.netbox** %2, align 8
  %211 = getelementptr inbounds %struct.netbox, %struct.netbox* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %233

215:                                              ; preds = %209
  %216 = load %struct.netbox*, %struct.netbox** %2, align 8
  %217 = getelementptr inbounds %struct.netbox, %struct.netbox* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %220 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %222 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %221, i32 0, i32 2
  store i32 %218, i32* %222, align 4
  %223 = load %struct.netbox*, %struct.netbox** %2, align 8
  %224 = getelementptr inbounds %struct.netbox, %struct.netbox* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %227 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 8
  %228 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %229 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %228, i32 0, i32 6
  store i32 %225, i32* %229, align 4
  %230 = load %struct.netbox*, %struct.netbox** %2, align 8
  %231 = getelementptr inbounds %struct.netbox, %struct.netbox* %230, i32 0, i32 0
  %232 = load %struct.netbox*, %struct.netbox** %231, align 8
  store %struct.netbox* %232, %struct.netbox** %2, align 8
  br label %237

233:                                              ; preds = %214
  %234 = load %struct.netbox*, %struct.netbox** %2, align 8
  %235 = getelementptr inbounds %struct.netbox, %struct.netbox* %234, i32 0, i32 0
  %236 = load %struct.netbox*, %struct.netbox** %235, align 8
  store %struct.netbox* %236, %struct.netbox** %2, align 8
  br label %205

237:                                              ; preds = %215, %208
  br label %238

238:                                              ; preds = %296, %237
  %239 = load %struct.netbox*, %struct.netbox** %2, align 8
  %240 = icmp ne %struct.netbox* %239, null
  br i1 %240, label %241, label %300

241:                                              ; preds = %238
  %242 = load %struct.netbox*, %struct.netbox** %2, align 8
  %243 = getelementptr inbounds %struct.netbox, %struct.netbox* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %296

247:                                              ; preds = %241
  %248 = load %struct.netbox*, %struct.netbox** %2, align 8
  %249 = getelementptr inbounds %struct.netbox, %struct.netbox* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %11, align 4
  %251 = load %struct.netbox*, %struct.netbox** %2, align 8
  %252 = getelementptr inbounds %struct.netbox, %struct.netbox* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %256 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %247
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %262 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  br label %274

263:                                              ; preds = %247
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %266 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = icmp sgt i32 %264, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i32, i32* %11, align 4
  %271 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %272 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %269, %263
  br label %274

274:                                              ; preds = %273, %259
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %277 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %282, i32 0, i32 6
  store i32 %281, i32* %283, align 4
  br label %295

284:                                              ; preds = %274
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %287 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = icmp sgt i32 %285, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load i32, i32* %12, align 4
  %292 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %293 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %292, i32 0, i32 9
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %290, %284
  br label %295

295:                                              ; preds = %294, %280
  br label %296

296:                                              ; preds = %295, %246
  %297 = load %struct.netbox*, %struct.netbox** %2, align 8
  %298 = getelementptr inbounds %struct.netbox, %struct.netbox* %297, i32 0, i32 0
  %299 = load %struct.netbox*, %struct.netbox** %298, align 8
  store %struct.netbox* %299, %struct.netbox** %2, align 8
  br label %238, !llvm.loop !8

300:                                              ; preds = %238
  %301 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %302 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %301, i32 0, i32 11
  %303 = load double, double* %302, align 8
  %304 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %305 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %308 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %306, %309
  %311 = sitofp i32 %310 to double
  %312 = fmul double %303, %311
  %313 = fptosi double %312 to i32
  %314 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %315 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %314, i32 0, i32 12
  %316 = load double, double* %315, align 8
  %317 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %318 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %321 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %319, %322
  %324 = sitofp i32 %323 to double
  %325 = fmul double %316, %324
  %326 = fptosi double %325 to i32
  %327 = add nsw i32 %313, %326
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %300, %200, %194
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %182, !llvm.loop !9

333:                                              ; preds = %182
  store i32 0, i32* @penalty, align 4
  store i32 1, i32* %7, align 4
  br label %334

334:                                              ; preds = %380, %333
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* @numcells, align 4
  %337 = load i32, i32* @numpads, align 4
  %338 = add nsw i32 %336, %337
  %339 = add nsw i32 %338, 4
  %340 = icmp sle i32 %335, %339
  br i1 %340, label %341, label %383

341:                                              ; preds = %334
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* @numcells, align 4
  %344 = icmp sgt i32 %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %341
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* @numcells, align 4
  %348 = load i32, i32* @numpads, align 4
  %349 = add nsw i32 %347, %348
  %350 = icmp sle i32 %346, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  br label %380

352:                                              ; preds = %345, %341
  %353 = load i32 (...)*, i32 (...)** @overlap, align 8
  %354 = load i32, i32* %7, align 4
  %355 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %355, i64 %357
  %359 = load %struct.cellbox*, %struct.cellbox** %358, align 8
  %360 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %363 = load i32, i32* %7, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %362, i64 %364
  %366 = load %struct.cellbox*, %struct.cellbox** %365, align 8
  %367 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %369, i64 %371
  %373 = load %struct.cellbox*, %struct.cellbox** %372, align 8
  %374 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = bitcast i32 (...)* %353 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %377 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %376(i32 noundef %354, i32 noundef %361, i32 noundef %368, i32 noundef %375, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %378 = load i32, i32* @penalty, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* @penalty, align 4
  br label %380

380:                                              ; preds = %352, %351
  %381 = load i32, i32* %7, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %7, align 4
  br label %334, !llvm.loop !10

383:                                              ; preds = %334
  %384 = load i32, i32* @penalty, align 4
  %385 = sdiv i32 %384, 2
  store i32 %385, i32* @penalty, align 4
  store i32 0, i32* @overfill, align 4
  store i32 1, i32* %7, align 4
  br label %386

386:                                              ; preds = %451, %383
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @numcells, align 4
  %389 = icmp sle i32 %387, %388
  br i1 %389, label %390, label %454

390:                                              ; preds = %386
  %391 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %391, i64 %393
  %395 = load %struct.cellbox*, %struct.cellbox** %394, align 8
  %396 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %390
  br label %451

400:                                              ; preds = %390
  %401 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %402 = load i32, i32* %7, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %401, i64 %403
  %405 = load %struct.cellbox*, %struct.cellbox** %404, align 8
  store %struct.cellbox* %405, %struct.cellbox** %3, align 8
  store i32 1, i32* %14, align 4
  br label %406

406:                                              ; preds = %447, %400
  %407 = load i32, i32* %14, align 4
  %408 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %409 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %408, i32 0, i32 17
  %410 = load i32, i32* %409, align 8
  %411 = icmp sle i32 %407, %410
  br i1 %411, label %412, label %450

412:                                              ; preds = %406
  %413 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %414 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %413, i32 0, i32 19
  %415 = load %struct.contentbox*, %struct.contentbox** %414, align 8
  %416 = load i32, i32* %14, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %415, i64 %417
  %419 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %15, align 4
  %421 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %422 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %421, i32 0, i32 19
  %423 = load %struct.contentbox*, %struct.contentbox** %422, align 8
  %424 = load i32, i32* %14, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %423, i64 %425
  %427 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %16, align 4
  %429 = load i32, i32* %15, align 4
  %430 = load i32, i32* %16, align 4
  %431 = icmp sgt i32 %429, %430
  br i1 %431, label %432, label %446

432:                                              ; preds = %412
  %433 = load i32, i32* %15, align 4
  %434 = load i32, i32* %16, align 4
  %435 = sub nsw i32 %433, %434
  store i32 %435, i32* %17, align 4
  %436 = load double, double* %20, align 8
  %437 = fmul double %436, 1.000000e+01
  %438 = load i32, i32* %17, align 4
  %439 = load i32, i32* %17, align 4
  %440 = mul nsw i32 %438, %439
  %441 = sitofp i32 %440 to double
  %442 = fmul double %437, %441
  %443 = fptosi double %442 to i32
  %444 = load i32, i32* @overfill, align 4
  %445 = add nsw i32 %444, %443
  store i32 %445, i32* @overfill, align 4
  br label %446

446:                                              ; preds = %432, %412
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %14, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %14, align 4
  br label %406, !llvm.loop !11

450:                                              ; preds = %406
  br label %451

451:                                              ; preds = %450, %399
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %7, align 4
  br label %386, !llvm.loop !12

454:                                              ; preds = %386
  %455 = load i32, i32* %13, align 4
  ret i32 %455
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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
