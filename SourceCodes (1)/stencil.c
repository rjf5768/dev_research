; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/stencil.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sorted_block = type { i32, i32 }
%struct.block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], [6 x [2 x [2 x i32]]], [3 x i32], double**** }
%struct.parent = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [3 x i32] }
%struct.object = type { i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@x_block_size = dso_local global i32 0, align 4
@y_block_size = dso_local global i32 0, align 4
@z_block_size = dso_local global i32 0, align 4
@stencil = dso_local global i32 0, align 4
@sorted_index = dso_local global i32* null, align 8
@num_refine = dso_local global i32 0, align 4
@sorted_list = dso_local global %struct.sorted_block* null, align 8
@blocks = dso_local global %struct.block* null, align 8
@parents = dso_local global %struct.parent* null, align 8
@my_pe = dso_local global i32 0, align 4
@num_pes = dso_local global i32 0, align 4
@max_num_blocks = dso_local global i32 0, align 4
@target_active = dso_local global i32 0, align 4
@target_max = dso_local global i32 0, align 4
@target_min = dso_local global i32 0, align 4
@uniform_refine = dso_local global i32 0, align 4
@num_vars = dso_local global i32 0, align 4
@comm_vars = dso_local global i32 0, align 4
@init_block_x = dso_local global i32 0, align 4
@init_block_y = dso_local global i32 0, align 4
@init_block_z = dso_local global i32 0, align 4
@reorder = dso_local global i32 0, align 4
@npx = dso_local global i32 0, align 4
@npy = dso_local global i32 0, align 4
@npz = dso_local global i32 0, align 4
@inbalance = dso_local global i32 0, align 4
@refine_freq = dso_local global i32 0, align 4
@report_diffusion = dso_local global i32 0, align 4
@checksum_freq = dso_local global i32 0, align 4
@stages_per_ts = dso_local global i32 0, align 4
@error_tol = dso_local global i32 0, align 4
@num_tsteps = dso_local global i32 0, align 4
@report_perf = dso_local global i32 0, align 4
@plot_freq = dso_local global i32 0, align 4
@lb_opt = dso_local global i32 0, align 4
@block_change = dso_local global i32 0, align 4
@code = dso_local global i32 0, align 4
@permute = dso_local global i32 0, align 4
@nonblocking = dso_local global i32 0, align 4
@refine_ghost = dso_local global i32 0, align 4
@max_num_parents = dso_local global i32 0, align 4
@num_parents = dso_local global i32 0, align 4
@max_active_parent = dso_local global i32 0, align 4
@cur_max_level = dso_local global i32 0, align 4
@num_blocks = dso_local global i32* null, align 8
@block_start = dso_local global i32* null, align 8
@num_active = dso_local global i32 0, align 4
@max_active_block = dso_local global i32 0, align 4
@global_active = dso_local global i32 0, align 4
@x_block_half = dso_local global i32 0, align 4
@y_block_half = dso_local global i32 0, align 4
@z_block_half = dso_local global i32 0, align 4
@tol = dso_local global double 0.000000e+00, align 8
@grid_sum = dso_local global double* null, align 8
@p8 = dso_local global i32* null, align 8
@p2 = dso_local global i32* null, align 8
@mesh_size = dso_local global [3 x i32] zeroinitializer, align 4
@max_mesh_size = dso_local global i32 0, align 4
@from = dso_local global i32* null, align 8
@to = dso_local global i32* null, align 8
@msg_len = dso_local global [3 x [4 x i32]] zeroinitializer, align 16
@local_max_b = dso_local global i32 0, align 4
@global_max_b = dso_local global i32 0, align 4
@num_objects = dso_local global i32 0, align 4
@objects = dso_local global %struct.object* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil_calc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.block*, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* @x_block_size, align 4
  %17 = add nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @y_block_size, align 4
  %20 = add nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @z_block_size, align 4
  %23 = add nsw i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = mul nuw i64 %18, %21
  %27 = mul nuw i64 %26, %24
  %28 = alloca double, i64 %27, align 16
  store i64 %18, i64* %12, align 8
  store i64 %21, i64* %13, align 8
  store i64 %24, i64* %14, align 8
  %29 = load i32, i32* @stencil, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %305

31:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %301, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** @sorted_index, align 8
  %35 = load i32, i32* @num_refine, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %33, %39
  br i1 %40, label %41, label %304

41:                                               ; preds = %32
  %42 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %42, i64 %44
  %46 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %3, align 4
  %48 = load %struct.block*, %struct.block** @blocks, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.block, %struct.block* %48, i64 %50
  store %struct.block* %51, %struct.block** %15, align 8
  %52 = load %struct.block*, %struct.block** %15, align 8
  %53 = getelementptr inbounds %struct.block, %struct.block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %300

56:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %238, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @x_block_size, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %241

61:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %234, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @y_block_size, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %237

66:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %230, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @z_block_size, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %233

71:                                               ; preds = %67
  %72 = load %struct.block*, %struct.block** %15, align 8
  %73 = getelementptr inbounds %struct.block, %struct.block* %72, i32 0, i32 11
  %74 = load double****, double***** %73, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double***, double**** %74, i64 %76
  %78 = load double***, double**** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double**, double*** %78, i64 %81
  %83 = load double**, double*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double*, double** %83, i64 %85
  %87 = load double*, double** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  %92 = load %struct.block*, %struct.block** %15, align 8
  %93 = getelementptr inbounds %struct.block, %struct.block* %92, i32 0, i32 11
  %94 = load double****, double***** %93, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double***, double**** %94, i64 %96
  %98 = load double***, double**** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double**, double*** %98, i64 %100
  %102 = load double**, double*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double*, double** %102, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fadd double %91, %111
  %113 = load %struct.block*, %struct.block** %15, align 8
  %114 = getelementptr inbounds %struct.block, %struct.block* %113, i32 0, i32 11
  %115 = load double****, double***** %114, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double***, double**** %115, i64 %117
  %119 = load double***, double**** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double**, double*** %119, i64 %121
  %123 = load double**, double*** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double*, double** %123, i64 %125
  %127 = load double*, double** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %127, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fadd double %112, %132
  %134 = load %struct.block*, %struct.block** %15, align 8
  %135 = getelementptr inbounds %struct.block, %struct.block* %134, i32 0, i32 11
  %136 = load double****, double***** %135, align 8
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double***, double**** %136, i64 %138
  %140 = load double***, double**** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double**, double*** %140, i64 %142
  %144 = load double**, double*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double*, double** %144, i64 %146
  %148 = load double*, double** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fadd double %133, %152
  %154 = load %struct.block*, %struct.block** %15, align 8
  %155 = getelementptr inbounds %struct.block, %struct.block* %154, i32 0, i32 11
  %156 = load double****, double***** %155, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double***, double**** %156, i64 %158
  %160 = load double***, double**** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double**, double*** %160, i64 %162
  %164 = load double**, double*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double*, double** %164, i64 %166
  %168 = load double*, double** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %168, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fadd double %153, %173
  %175 = load %struct.block*, %struct.block** %15, align 8
  %176 = getelementptr inbounds %struct.block, %struct.block* %175, i32 0, i32 11
  %177 = load double****, double***** %176, align 8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double***, double**** %177, i64 %179
  %181 = load double***, double**** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double**, double*** %181, i64 %183
  %185 = load double**, double*** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double*, double** %185, i64 %188
  %190 = load double*, double** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fadd double %174, %194
  %196 = load %struct.block*, %struct.block** %15, align 8
  %197 = getelementptr inbounds %struct.block, %struct.block* %196, i32 0, i32 11
  %198 = load double****, double***** %197, align 8
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double***, double**** %198, i64 %200
  %202 = load double***, double**** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double**, double*** %202, i64 %205
  %207 = load double**, double*** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double*, double** %207, i64 %209
  %211 = load double*, double** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %211, i64 %213
  %215 = load double, double* %214, align 8
  %216 = fadd double %195, %215
  %217 = fdiv double %216, 7.000000e+00
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = mul nuw i64 %21, %24
  %221 = mul nsw i64 %219, %220
  %222 = getelementptr inbounds double, double* %28, i64 %221
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = mul nsw i64 %224, %24
  %226 = getelementptr inbounds double, double* %222, i64 %225
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %226, i64 %228
  store double %217, double* %229, align 8
  br label %230

230:                                              ; preds = %71
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %67, !llvm.loop !4

233:                                              ; preds = %67
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %62, !llvm.loop !6

237:                                              ; preds = %62
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %4, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %4, align 4
  br label %57, !llvm.loop !7

241:                                              ; preds = %57
  store i32 1, i32* %4, align 4
  br label %242

242:                                              ; preds = %296, %241
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @x_block_size, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %299

246:                                              ; preds = %242
  store i32 1, i32* %5, align 4
  br label %247

247:                                              ; preds = %292, %246
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @y_block_size, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %295

251:                                              ; preds = %247
  store i32 1, i32* %6, align 4
  br label %252

252:                                              ; preds = %288, %251
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @z_block_size, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %291

256:                                              ; preds = %252
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nuw i64 %21, %24
  %260 = mul nsw i64 %258, %259
  %261 = getelementptr inbounds double, double* %28, i64 %260
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, %24
  %265 = getelementptr inbounds double, double* %261, i64 %264
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %265, i64 %267
  %269 = load double, double* %268, align 8
  %270 = load %struct.block*, %struct.block** %15, align 8
  %271 = getelementptr inbounds %struct.block, %struct.block* %270, i32 0, i32 11
  %272 = load double****, double***** %271, align 8
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds double***, double**** %272, i64 %274
  %276 = load double***, double**** %275, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double**, double*** %276, i64 %278
  %280 = load double**, double*** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double*, double** %280, i64 %282
  %284 = load double*, double** %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  store double %269, double* %287, align 8
  br label %288

288:                                              ; preds = %256
  %289 = load i32, i32* %6, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %6, align 4
  br label %252, !llvm.loop !8

291:                                              ; preds = %252
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %5, align 4
  br label %247, !llvm.loop !9

295:                                              ; preds = %247
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %4, align 4
  br label %242, !llvm.loop !10

299:                                              ; preds = %242
  br label %300

300:                                              ; preds = %299, %41
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %32, !llvm.loop !11

304:                                              ; preds = %32
  br label %1030

305:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  br label %306

306:                                              ; preds = %1026, %305
  %307 = load i32, i32* %7, align 4
  %308 = load i32*, i32** @sorted_index, align 8
  %309 = load i32, i32* @num_refine, align 4
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %307, %313
  br i1 %314, label %315, label %1029

315:                                              ; preds = %306
  %316 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %316, i64 %318
  %320 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %3, align 4
  %322 = load %struct.block*, %struct.block** @blocks, align 8
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.block, %struct.block* %322, i64 %324
  store %struct.block* %325, %struct.block** %15, align 8
  %326 = load %struct.block*, %struct.block** %15, align 8
  %327 = getelementptr inbounds %struct.block, %struct.block* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp sge i32 %328, 0
  br i1 %329, label %330, label %1025

330:                                              ; preds = %315
  store i32 1, i32* %4, align 4
  br label %331

331:                                              ; preds = %963, %330
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* @x_block_size, align 4
  %334 = icmp sle i32 %332, %333
  br i1 %334, label %335, label %966

335:                                              ; preds = %331
  store i32 1, i32* %5, align 4
  br label %336

336:                                              ; preds = %959, %335
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* @y_block_size, align 4
  %339 = icmp sle i32 %337, %338
  br i1 %339, label %340, label %962

340:                                              ; preds = %336
  store i32 1, i32* %6, align 4
  br label %341

341:                                              ; preds = %955, %340
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* @z_block_size, align 4
  %344 = icmp sle i32 %342, %343
  br i1 %344, label %345, label %958

345:                                              ; preds = %341
  %346 = load %struct.block*, %struct.block** %15, align 8
  %347 = getelementptr inbounds %struct.block, %struct.block* %346, i32 0, i32 11
  %348 = load double****, double***** %347, align 8
  %349 = load i32, i32* %2, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double***, double**** %348, i64 %350
  %352 = load double***, double**** %351, align 8
  %353 = load i32, i32* %4, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds double**, double*** %352, i64 %355
  %357 = load double**, double*** %356, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sub nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double*, double** %357, i64 %360
  %362 = load double*, double** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %362, i64 %365
  %367 = load double, double* %366, align 8
  %368 = load %struct.block*, %struct.block** %15, align 8
  %369 = getelementptr inbounds %struct.block, %struct.block* %368, i32 0, i32 11
  %370 = load double****, double***** %369, align 8
  %371 = load i32, i32* %2, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds double***, double**** %370, i64 %372
  %374 = load double***, double**** %373, align 8
  %375 = load i32, i32* %4, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds double**, double*** %374, i64 %377
  %379 = load double**, double*** %378, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sub nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds double*, double** %379, i64 %382
  %384 = load double*, double** %383, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fadd double %367, %388
  %390 = load %struct.block*, %struct.block** %15, align 8
  %391 = getelementptr inbounds %struct.block, %struct.block* %390, i32 0, i32 11
  %392 = load double****, double***** %391, align 8
  %393 = load i32, i32* %2, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds double***, double**** %392, i64 %394
  %396 = load double***, double**** %395, align 8
  %397 = load i32, i32* %4, align 4
  %398 = sub nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds double**, double*** %396, i64 %399
  %401 = load double**, double*** %400, align 8
  %402 = load i32, i32* %5, align 4
  %403 = sub nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds double*, double** %401, i64 %404
  %406 = load double*, double** %405, align 8
  %407 = load i32, i32* %6, align 4
  %408 = add nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %406, i64 %409
  %411 = load double, double* %410, align 8
  %412 = fadd double %389, %411
  %413 = load %struct.block*, %struct.block** %15, align 8
  %414 = getelementptr inbounds %struct.block, %struct.block* %413, i32 0, i32 11
  %415 = load double****, double***** %414, align 8
  %416 = load i32, i32* %2, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds double***, double**** %415, i64 %417
  %419 = load double***, double**** %418, align 8
  %420 = load i32, i32* %4, align 4
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds double**, double*** %419, i64 %422
  %424 = load double**, double*** %423, align 8
  %425 = load i32, i32* %5, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds double*, double** %424, i64 %426
  %428 = load double*, double** %427, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sub nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds double, double* %428, i64 %431
  %433 = load double, double* %432, align 8
  %434 = fadd double %412, %433
  %435 = load %struct.block*, %struct.block** %15, align 8
  %436 = getelementptr inbounds %struct.block, %struct.block* %435, i32 0, i32 11
  %437 = load double****, double***** %436, align 8
  %438 = load i32, i32* %2, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double***, double**** %437, i64 %439
  %441 = load double***, double**** %440, align 8
  %442 = load i32, i32* %4, align 4
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds double**, double*** %441, i64 %444
  %446 = load double**, double*** %445, align 8
  %447 = load i32, i32* %5, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double*, double** %446, i64 %448
  %450 = load double*, double** %449, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds double, double* %450, i64 %452
  %454 = load double, double* %453, align 8
  %455 = fadd double %434, %454
  %456 = load %struct.block*, %struct.block** %15, align 8
  %457 = getelementptr inbounds %struct.block, %struct.block* %456, i32 0, i32 11
  %458 = load double****, double***** %457, align 8
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double***, double**** %458, i64 %460
  %462 = load double***, double**** %461, align 8
  %463 = load i32, i32* %4, align 4
  %464 = sub nsw i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds double**, double*** %462, i64 %465
  %467 = load double**, double*** %466, align 8
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double*, double** %467, i64 %469
  %471 = load double*, double** %470, align 8
  %472 = load i32, i32* %6, align 4
  %473 = add nsw i32 %472, 1
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %471, i64 %474
  %476 = load double, double* %475, align 8
  %477 = fadd double %455, %476
  %478 = load %struct.block*, %struct.block** %15, align 8
  %479 = getelementptr inbounds %struct.block, %struct.block* %478, i32 0, i32 11
  %480 = load double****, double***** %479, align 8
  %481 = load i32, i32* %2, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds double***, double**** %480, i64 %482
  %484 = load double***, double**** %483, align 8
  %485 = load i32, i32* %4, align 4
  %486 = sub nsw i32 %485, 1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds double**, double*** %484, i64 %487
  %489 = load double**, double*** %488, align 8
  %490 = load i32, i32* %5, align 4
  %491 = add nsw i32 %490, 1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds double*, double** %489, i64 %492
  %494 = load double*, double** %493, align 8
  %495 = load i32, i32* %6, align 4
  %496 = sub nsw i32 %495, 1
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds double, double* %494, i64 %497
  %499 = load double, double* %498, align 8
  %500 = fadd double %477, %499
  %501 = load %struct.block*, %struct.block** %15, align 8
  %502 = getelementptr inbounds %struct.block, %struct.block* %501, i32 0, i32 11
  %503 = load double****, double***** %502, align 8
  %504 = load i32, i32* %2, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds double***, double**** %503, i64 %505
  %507 = load double***, double**** %506, align 8
  %508 = load i32, i32* %4, align 4
  %509 = sub nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds double**, double*** %507, i64 %510
  %512 = load double**, double*** %511, align 8
  %513 = load i32, i32* %5, align 4
  %514 = add nsw i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds double*, double** %512, i64 %515
  %517 = load double*, double** %516, align 8
  %518 = load i32, i32* %6, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds double, double* %517, i64 %519
  %521 = load double, double* %520, align 8
  %522 = fadd double %500, %521
  %523 = load %struct.block*, %struct.block** %15, align 8
  %524 = getelementptr inbounds %struct.block, %struct.block* %523, i32 0, i32 11
  %525 = load double****, double***** %524, align 8
  %526 = load i32, i32* %2, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds double***, double**** %525, i64 %527
  %529 = load double***, double**** %528, align 8
  %530 = load i32, i32* %4, align 4
  %531 = sub nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds double**, double*** %529, i64 %532
  %534 = load double**, double*** %533, align 8
  %535 = load i32, i32* %5, align 4
  %536 = add nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds double*, double** %534, i64 %537
  %539 = load double*, double** %538, align 8
  %540 = load i32, i32* %6, align 4
  %541 = add nsw i32 %540, 1
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds double, double* %539, i64 %542
  %544 = load double, double* %543, align 8
  %545 = fadd double %522, %544
  store double %545, double* %8, align 8
  %546 = load %struct.block*, %struct.block** %15, align 8
  %547 = getelementptr inbounds %struct.block, %struct.block* %546, i32 0, i32 11
  %548 = load double****, double***** %547, align 8
  %549 = load i32, i32* %2, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds double***, double**** %548, i64 %550
  %552 = load double***, double**** %551, align 8
  %553 = load i32, i32* %4, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double**, double*** %552, i64 %554
  %556 = load double**, double*** %555, align 8
  %557 = load i32, i32* %5, align 4
  %558 = sub nsw i32 %557, 1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double*, double** %556, i64 %559
  %561 = load double*, double** %560, align 8
  %562 = load i32, i32* %6, align 4
  %563 = sub nsw i32 %562, 1
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds double, double* %561, i64 %564
  %566 = load double, double* %565, align 8
  %567 = load %struct.block*, %struct.block** %15, align 8
  %568 = getelementptr inbounds %struct.block, %struct.block* %567, i32 0, i32 11
  %569 = load double****, double***** %568, align 8
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds double***, double**** %569, i64 %571
  %573 = load double***, double**** %572, align 8
  %574 = load i32, i32* %4, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds double**, double*** %573, i64 %575
  %577 = load double**, double*** %576, align 8
  %578 = load i32, i32* %5, align 4
  %579 = sub nsw i32 %578, 1
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds double*, double** %577, i64 %580
  %582 = load double*, double** %581, align 8
  %583 = load i32, i32* %6, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = fadd double %566, %586
  %588 = load %struct.block*, %struct.block** %15, align 8
  %589 = getelementptr inbounds %struct.block, %struct.block* %588, i32 0, i32 11
  %590 = load double****, double***** %589, align 8
  %591 = load i32, i32* %2, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds double***, double**** %590, i64 %592
  %594 = load double***, double**** %593, align 8
  %595 = load i32, i32* %4, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double**, double*** %594, i64 %596
  %598 = load double**, double*** %597, align 8
  %599 = load i32, i32* %5, align 4
  %600 = sub nsw i32 %599, 1
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double*, double** %598, i64 %601
  %603 = load double*, double** %602, align 8
  %604 = load i32, i32* %6, align 4
  %605 = add nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds double, double* %603, i64 %606
  %608 = load double, double* %607, align 8
  %609 = fadd double %587, %608
  %610 = load %struct.block*, %struct.block** %15, align 8
  %611 = getelementptr inbounds %struct.block, %struct.block* %610, i32 0, i32 11
  %612 = load double****, double***** %611, align 8
  %613 = load i32, i32* %2, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds double***, double**** %612, i64 %614
  %616 = load double***, double**** %615, align 8
  %617 = load i32, i32* %4, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds double**, double*** %616, i64 %618
  %620 = load double**, double*** %619, align 8
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds double*, double** %620, i64 %622
  %624 = load double*, double** %623, align 8
  %625 = load i32, i32* %6, align 4
  %626 = sub nsw i32 %625, 1
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds double, double* %624, i64 %627
  %629 = load double, double* %628, align 8
  %630 = fadd double %609, %629
  %631 = load %struct.block*, %struct.block** %15, align 8
  %632 = getelementptr inbounds %struct.block, %struct.block* %631, i32 0, i32 11
  %633 = load double****, double***** %632, align 8
  %634 = load i32, i32* %2, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds double***, double**** %633, i64 %635
  %637 = load double***, double**** %636, align 8
  %638 = load i32, i32* %4, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds double**, double*** %637, i64 %639
  %641 = load double**, double*** %640, align 8
  %642 = load i32, i32* %5, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double*, double** %641, i64 %643
  %645 = load double*, double** %644, align 8
  %646 = load i32, i32* %6, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds double, double* %645, i64 %647
  %649 = load double, double* %648, align 8
  %650 = fadd double %630, %649
  %651 = load %struct.block*, %struct.block** %15, align 8
  %652 = getelementptr inbounds %struct.block, %struct.block* %651, i32 0, i32 11
  %653 = load double****, double***** %652, align 8
  %654 = load i32, i32* %2, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds double***, double**** %653, i64 %655
  %657 = load double***, double**** %656, align 8
  %658 = load i32, i32* %4, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds double**, double*** %657, i64 %659
  %661 = load double**, double*** %660, align 8
  %662 = load i32, i32* %5, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds double*, double** %661, i64 %663
  %665 = load double*, double** %664, align 8
  %666 = load i32, i32* %6, align 4
  %667 = add nsw i32 %666, 1
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds double, double* %665, i64 %668
  %670 = load double, double* %669, align 8
  %671 = fadd double %650, %670
  %672 = load %struct.block*, %struct.block** %15, align 8
  %673 = getelementptr inbounds %struct.block, %struct.block* %672, i32 0, i32 11
  %674 = load double****, double***** %673, align 8
  %675 = load i32, i32* %2, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds double***, double**** %674, i64 %676
  %678 = load double***, double**** %677, align 8
  %679 = load i32, i32* %4, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds double**, double*** %678, i64 %680
  %682 = load double**, double*** %681, align 8
  %683 = load i32, i32* %5, align 4
  %684 = add nsw i32 %683, 1
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds double*, double** %682, i64 %685
  %687 = load double*, double** %686, align 8
  %688 = load i32, i32* %6, align 4
  %689 = sub nsw i32 %688, 1
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds double, double* %687, i64 %690
  %692 = load double, double* %691, align 8
  %693 = fadd double %671, %692
  %694 = load %struct.block*, %struct.block** %15, align 8
  %695 = getelementptr inbounds %struct.block, %struct.block* %694, i32 0, i32 11
  %696 = load double****, double***** %695, align 8
  %697 = load i32, i32* %2, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds double***, double**** %696, i64 %698
  %700 = load double***, double**** %699, align 8
  %701 = load i32, i32* %4, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds double**, double*** %700, i64 %702
  %704 = load double**, double*** %703, align 8
  %705 = load i32, i32* %5, align 4
  %706 = add nsw i32 %705, 1
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds double*, double** %704, i64 %707
  %709 = load double*, double** %708, align 8
  %710 = load i32, i32* %6, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds double, double* %709, i64 %711
  %713 = load double, double* %712, align 8
  %714 = fadd double %693, %713
  %715 = load %struct.block*, %struct.block** %15, align 8
  %716 = getelementptr inbounds %struct.block, %struct.block* %715, i32 0, i32 11
  %717 = load double****, double***** %716, align 8
  %718 = load i32, i32* %2, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds double***, double**** %717, i64 %719
  %721 = load double***, double**** %720, align 8
  %722 = load i32, i32* %4, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds double**, double*** %721, i64 %723
  %725 = load double**, double*** %724, align 8
  %726 = load i32, i32* %5, align 4
  %727 = add nsw i32 %726, 1
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds double*, double** %725, i64 %728
  %730 = load double*, double** %729, align 8
  %731 = load i32, i32* %6, align 4
  %732 = add nsw i32 %731, 1
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds double, double* %730, i64 %733
  %735 = load double, double* %734, align 8
  %736 = fadd double %714, %735
  store double %736, double* %9, align 8
  %737 = load %struct.block*, %struct.block** %15, align 8
  %738 = getelementptr inbounds %struct.block, %struct.block* %737, i32 0, i32 11
  %739 = load double****, double***** %738, align 8
  %740 = load i32, i32* %2, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds double***, double**** %739, i64 %741
  %743 = load double***, double**** %742, align 8
  %744 = load i32, i32* %4, align 4
  %745 = add nsw i32 %744, 1
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds double**, double*** %743, i64 %746
  %748 = load double**, double*** %747, align 8
  %749 = load i32, i32* %5, align 4
  %750 = sub nsw i32 %749, 1
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds double*, double** %748, i64 %751
  %753 = load double*, double** %752, align 8
  %754 = load i32, i32* %6, align 4
  %755 = sub nsw i32 %754, 1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds double, double* %753, i64 %756
  %758 = load double, double* %757, align 8
  %759 = load %struct.block*, %struct.block** %15, align 8
  %760 = getelementptr inbounds %struct.block, %struct.block* %759, i32 0, i32 11
  %761 = load double****, double***** %760, align 8
  %762 = load i32, i32* %2, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds double***, double**** %761, i64 %763
  %765 = load double***, double**** %764, align 8
  %766 = load i32, i32* %4, align 4
  %767 = add nsw i32 %766, 1
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds double**, double*** %765, i64 %768
  %770 = load double**, double*** %769, align 8
  %771 = load i32, i32* %5, align 4
  %772 = sub nsw i32 %771, 1
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds double*, double** %770, i64 %773
  %775 = load double*, double** %774, align 8
  %776 = load i32, i32* %6, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds double, double* %775, i64 %777
  %779 = load double, double* %778, align 8
  %780 = fadd double %758, %779
  %781 = load %struct.block*, %struct.block** %15, align 8
  %782 = getelementptr inbounds %struct.block, %struct.block* %781, i32 0, i32 11
  %783 = load double****, double***** %782, align 8
  %784 = load i32, i32* %2, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds double***, double**** %783, i64 %785
  %787 = load double***, double**** %786, align 8
  %788 = load i32, i32* %4, align 4
  %789 = add nsw i32 %788, 1
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds double**, double*** %787, i64 %790
  %792 = load double**, double*** %791, align 8
  %793 = load i32, i32* %5, align 4
  %794 = sub nsw i32 %793, 1
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds double*, double** %792, i64 %795
  %797 = load double*, double** %796, align 8
  %798 = load i32, i32* %6, align 4
  %799 = add nsw i32 %798, 1
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds double, double* %797, i64 %800
  %802 = load double, double* %801, align 8
  %803 = fadd double %780, %802
  %804 = load %struct.block*, %struct.block** %15, align 8
  %805 = getelementptr inbounds %struct.block, %struct.block* %804, i32 0, i32 11
  %806 = load double****, double***** %805, align 8
  %807 = load i32, i32* %2, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds double***, double**** %806, i64 %808
  %810 = load double***, double**** %809, align 8
  %811 = load i32, i32* %4, align 4
  %812 = add nsw i32 %811, 1
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds double**, double*** %810, i64 %813
  %815 = load double**, double*** %814, align 8
  %816 = load i32, i32* %5, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds double*, double** %815, i64 %817
  %819 = load double*, double** %818, align 8
  %820 = load i32, i32* %6, align 4
  %821 = sub nsw i32 %820, 1
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds double, double* %819, i64 %822
  %824 = load double, double* %823, align 8
  %825 = fadd double %803, %824
  %826 = load %struct.block*, %struct.block** %15, align 8
  %827 = getelementptr inbounds %struct.block, %struct.block* %826, i32 0, i32 11
  %828 = load double****, double***** %827, align 8
  %829 = load i32, i32* %2, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds double***, double**** %828, i64 %830
  %832 = load double***, double**** %831, align 8
  %833 = load i32, i32* %4, align 4
  %834 = add nsw i32 %833, 1
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds double**, double*** %832, i64 %835
  %837 = load double**, double*** %836, align 8
  %838 = load i32, i32* %5, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds double*, double** %837, i64 %839
  %841 = load double*, double** %840, align 8
  %842 = load i32, i32* %6, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds double, double* %841, i64 %843
  %845 = load double, double* %844, align 8
  %846 = fadd double %825, %845
  %847 = load %struct.block*, %struct.block** %15, align 8
  %848 = getelementptr inbounds %struct.block, %struct.block* %847, i32 0, i32 11
  %849 = load double****, double***** %848, align 8
  %850 = load i32, i32* %2, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds double***, double**** %849, i64 %851
  %853 = load double***, double**** %852, align 8
  %854 = load i32, i32* %4, align 4
  %855 = add nsw i32 %854, 1
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds double**, double*** %853, i64 %856
  %858 = load double**, double*** %857, align 8
  %859 = load i32, i32* %5, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds double*, double** %858, i64 %860
  %862 = load double*, double** %861, align 8
  %863 = load i32, i32* %6, align 4
  %864 = add nsw i32 %863, 1
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds double, double* %862, i64 %865
  %867 = load double, double* %866, align 8
  %868 = fadd double %846, %867
  %869 = load %struct.block*, %struct.block** %15, align 8
  %870 = getelementptr inbounds %struct.block, %struct.block* %869, i32 0, i32 11
  %871 = load double****, double***** %870, align 8
  %872 = load i32, i32* %2, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds double***, double**** %871, i64 %873
  %875 = load double***, double**** %874, align 8
  %876 = load i32, i32* %4, align 4
  %877 = add nsw i32 %876, 1
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds double**, double*** %875, i64 %878
  %880 = load double**, double*** %879, align 8
  %881 = load i32, i32* %5, align 4
  %882 = add nsw i32 %881, 1
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds double*, double** %880, i64 %883
  %885 = load double*, double** %884, align 8
  %886 = load i32, i32* %6, align 4
  %887 = sub nsw i32 %886, 1
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds double, double* %885, i64 %888
  %890 = load double, double* %889, align 8
  %891 = fadd double %868, %890
  %892 = load %struct.block*, %struct.block** %15, align 8
  %893 = getelementptr inbounds %struct.block, %struct.block* %892, i32 0, i32 11
  %894 = load double****, double***** %893, align 8
  %895 = load i32, i32* %2, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds double***, double**** %894, i64 %896
  %898 = load double***, double**** %897, align 8
  %899 = load i32, i32* %4, align 4
  %900 = add nsw i32 %899, 1
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds double**, double*** %898, i64 %901
  %903 = load double**, double*** %902, align 8
  %904 = load i32, i32* %5, align 4
  %905 = add nsw i32 %904, 1
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds double*, double** %903, i64 %906
  %908 = load double*, double** %907, align 8
  %909 = load i32, i32* %6, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds double, double* %908, i64 %910
  %912 = load double, double* %911, align 8
  %913 = fadd double %891, %912
  %914 = load %struct.block*, %struct.block** %15, align 8
  %915 = getelementptr inbounds %struct.block, %struct.block* %914, i32 0, i32 11
  %916 = load double****, double***** %915, align 8
  %917 = load i32, i32* %2, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds double***, double**** %916, i64 %918
  %920 = load double***, double**** %919, align 8
  %921 = load i32, i32* %4, align 4
  %922 = add nsw i32 %921, 1
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds double**, double*** %920, i64 %923
  %925 = load double**, double*** %924, align 8
  %926 = load i32, i32* %5, align 4
  %927 = add nsw i32 %926, 1
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds double*, double** %925, i64 %928
  %930 = load double*, double** %929, align 8
  %931 = load i32, i32* %6, align 4
  %932 = add nsw i32 %931, 1
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds double, double* %930, i64 %933
  %935 = load double, double* %934, align 8
  %936 = fadd double %913, %935
  store double %936, double* %10, align 8
  %937 = load double, double* %8, align 8
  %938 = load double, double* %9, align 8
  %939 = fadd double %937, %938
  %940 = load double, double* %10, align 8
  %941 = fadd double %939, %940
  %942 = fdiv double %941, 2.700000e+01
  %943 = load i32, i32* %4, align 4
  %944 = sext i32 %943 to i64
  %945 = mul nuw i64 %21, %24
  %946 = mul nsw i64 %944, %945
  %947 = getelementptr inbounds double, double* %28, i64 %946
  %948 = load i32, i32* %5, align 4
  %949 = sext i32 %948 to i64
  %950 = mul nsw i64 %949, %24
  %951 = getelementptr inbounds double, double* %947, i64 %950
  %952 = load i32, i32* %6, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds double, double* %951, i64 %953
  store double %942, double* %954, align 8
  br label %955

955:                                              ; preds = %345
  %956 = load i32, i32* %6, align 4
  %957 = add nsw i32 %956, 1
  store i32 %957, i32* %6, align 4
  br label %341, !llvm.loop !12

958:                                              ; preds = %341
  br label %959

959:                                              ; preds = %958
  %960 = load i32, i32* %5, align 4
  %961 = add nsw i32 %960, 1
  store i32 %961, i32* %5, align 4
  br label %336, !llvm.loop !13

962:                                              ; preds = %336
  br label %963

963:                                              ; preds = %962
  %964 = load i32, i32* %4, align 4
  %965 = add nsw i32 %964, 1
  store i32 %965, i32* %4, align 4
  br label %331, !llvm.loop !14

966:                                              ; preds = %331
  store i32 1, i32* %4, align 4
  br label %967

967:                                              ; preds = %1021, %966
  %968 = load i32, i32* %4, align 4
  %969 = load i32, i32* @x_block_size, align 4
  %970 = icmp sle i32 %968, %969
  br i1 %970, label %971, label %1024

971:                                              ; preds = %967
  store i32 1, i32* %5, align 4
  br label %972

972:                                              ; preds = %1017, %971
  %973 = load i32, i32* %5, align 4
  %974 = load i32, i32* @y_block_size, align 4
  %975 = icmp sle i32 %973, %974
  br i1 %975, label %976, label %1020

976:                                              ; preds = %972
  store i32 1, i32* %6, align 4
  br label %977

977:                                              ; preds = %1013, %976
  %978 = load i32, i32* %6, align 4
  %979 = load i32, i32* @z_block_size, align 4
  %980 = icmp sle i32 %978, %979
  br i1 %980, label %981, label %1016

981:                                              ; preds = %977
  %982 = load i32, i32* %4, align 4
  %983 = sext i32 %982 to i64
  %984 = mul nuw i64 %21, %24
  %985 = mul nsw i64 %983, %984
  %986 = getelementptr inbounds double, double* %28, i64 %985
  %987 = load i32, i32* %5, align 4
  %988 = sext i32 %987 to i64
  %989 = mul nsw i64 %988, %24
  %990 = getelementptr inbounds double, double* %986, i64 %989
  %991 = load i32, i32* %6, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds double, double* %990, i64 %992
  %994 = load double, double* %993, align 8
  %995 = load %struct.block*, %struct.block** %15, align 8
  %996 = getelementptr inbounds %struct.block, %struct.block* %995, i32 0, i32 11
  %997 = load double****, double***** %996, align 8
  %998 = load i32, i32* %2, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds double***, double**** %997, i64 %999
  %1001 = load double***, double**** %1000, align 8
  %1002 = load i32, i32* %4, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds double**, double*** %1001, i64 %1003
  %1005 = load double**, double*** %1004, align 8
  %1006 = load i32, i32* %5, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds double*, double** %1005, i64 %1007
  %1009 = load double*, double** %1008, align 8
  %1010 = load i32, i32* %6, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds double, double* %1009, i64 %1011
  store double %994, double* %1012, align 8
  br label %1013

1013:                                             ; preds = %981
  %1014 = load i32, i32* %6, align 4
  %1015 = add nsw i32 %1014, 1
  store i32 %1015, i32* %6, align 4
  br label %977, !llvm.loop !15

1016:                                             ; preds = %977
  br label %1017

1017:                                             ; preds = %1016
  %1018 = load i32, i32* %5, align 4
  %1019 = add nsw i32 %1018, 1
  store i32 %1019, i32* %5, align 4
  br label %972, !llvm.loop !16

1020:                                             ; preds = %972
  br label %1021

1021:                                             ; preds = %1020
  %1022 = load i32, i32* %4, align 4
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, i32* %4, align 4
  br label %967, !llvm.loop !17

1024:                                             ; preds = %967
  br label %1025

1025:                                             ; preds = %1024, %315
  br label %1026

1026:                                             ; preds = %1025
  %1027 = load i32, i32* %7, align 4
  %1028 = add nsw i32 %1027, 1
  store i32 %1028, i32* %7, align 4
  br label %306, !llvm.loop !18

1029:                                             ; preds = %306
  br label %1030

1030:                                             ; preds = %1029, %304
  %1031 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %1031)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

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
