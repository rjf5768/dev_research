; ModuleID = './stencil.ll'
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

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @stencil_calc(i32 noundef %0) #0 {
  %2 = load i32, i32* @x_block_size, align 4
  %3 = add nsw i32 %2, 2
  %4 = zext i32 %3 to i64
  %5 = load i32, i32* @y_block_size, align 4
  %6 = add nsw i32 %5, 2
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @z_block_size, align 4
  %9 = add nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = mul nuw i64 %4, %7
  %12 = mul nuw i64 %11, %10
  %13 = alloca double, i64 %12, align 16
  %14 = load i32, i32* @stencil, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %219

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %216, %16
  %.09 = phi i32 [ 0, %16 ], [ %217, %216 ]
  %18 = load i32*, i32** @sorted_index, align 8
  %19 = load i32, i32* @num_refine, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %.09, %23
  br i1 %24, label %25, label %218

25:                                               ; preds = %17
  %26 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %27 = zext i32 %.09 to i64
  %28 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %26, i64 %27, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.block*, %struct.block** @blocks, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %215

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %171, %35
  %.0 = phi i32 [ 1, %35 ], [ %172, %171 ]
  %37 = load i32, i32* @x_block_size, align 4
  %.not16 = icmp sgt i32 %.0, %37
  br i1 %.not16, label %173, label %38

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %168, %38
  %.01 = phi i32 [ 1, %38 ], [ %169, %168 ]
  %40 = load i32, i32* @y_block_size, align 4
  %.not20 = icmp sgt i32 %.01, %40
  br i1 %.not20, label %170, label %41

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %165, %41
  %.05 = phi i32 [ 1, %41 ], [ %166, %165 ]
  %43 = load i32, i32* @z_block_size, align 4
  %.not21 = icmp sgt i32 %.05, %43
  br i1 %.not21, label %167, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %46 = load double****, double***** %45, align 8
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds double***, double**** %46, i64 %47
  %49 = load double***, double**** %48, align 8
  %50 = add nsw i32 %.0, -1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double**, double*** %49, i64 %51
  %53 = load double**, double*** %52, align 8
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds double*, double** %53, i64 %54
  %56 = load double*, double** %55, align 8
  %57 = zext i32 %.05 to i64
  %58 = getelementptr inbounds double, double* %56, i64 %57
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %61 = load double****, double***** %60, align 8
  %62 = sext i32 %0 to i64
  %63 = getelementptr inbounds double***, double**** %61, i64 %62
  %64 = load double***, double**** %63, align 8
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds double**, double*** %64, i64 %65
  %67 = load double**, double*** %66, align 8
  %68 = add nsw i32 %.01, -1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double*, double** %67, i64 %69
  %71 = load double*, double** %70, align 8
  %72 = zext i32 %.05 to i64
  %73 = getelementptr inbounds double, double* %71, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %59, %74
  %76 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %77 = load double****, double***** %76, align 8
  %78 = sext i32 %0 to i64
  %79 = getelementptr inbounds double***, double**** %77, i64 %78
  %80 = load double***, double**** %79, align 8
  %81 = zext i32 %.0 to i64
  %82 = getelementptr inbounds double**, double*** %80, i64 %81
  %83 = load double**, double*** %82, align 8
  %84 = zext i32 %.01 to i64
  %85 = getelementptr inbounds double*, double** %83, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = add nsw i32 %.05, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fadd double %75, %90
  %92 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %93 = load double****, double***** %92, align 8
  %94 = sext i32 %0 to i64
  %95 = getelementptr inbounds double***, double**** %93, i64 %94
  %96 = load double***, double**** %95, align 8
  %97 = zext i32 %.0 to i64
  %98 = getelementptr inbounds double**, double*** %96, i64 %97
  %99 = load double**, double*** %98, align 8
  %100 = zext i32 %.01 to i64
  %101 = getelementptr inbounds double*, double** %99, i64 %100
  %102 = load double*, double** %101, align 8
  %103 = zext i32 %.05 to i64
  %104 = getelementptr inbounds double, double* %102, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fadd double %91, %105
  %107 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %108 = load double****, double***** %107, align 8
  %109 = sext i32 %0 to i64
  %110 = getelementptr inbounds double***, double**** %108, i64 %109
  %111 = load double***, double**** %110, align 8
  %112 = zext i32 %.0 to i64
  %113 = getelementptr inbounds double**, double*** %111, i64 %112
  %114 = load double**, double*** %113, align 8
  %115 = zext i32 %.01 to i64
  %116 = getelementptr inbounds double*, double** %114, i64 %115
  %117 = load double*, double** %116, align 8
  %118 = add nuw nsw i32 %.05, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fadd double %106, %121
  %123 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %124 = load double****, double***** %123, align 8
  %125 = sext i32 %0 to i64
  %126 = getelementptr inbounds double***, double**** %124, i64 %125
  %127 = load double***, double**** %126, align 8
  %128 = zext i32 %.0 to i64
  %129 = getelementptr inbounds double**, double*** %127, i64 %128
  %130 = load double**, double*** %129, align 8
  %131 = add nuw nsw i32 %.01, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds double*, double** %130, i64 %132
  %134 = load double*, double** %133, align 8
  %135 = zext i32 %.05 to i64
  %136 = getelementptr inbounds double, double* %134, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fadd double %122, %137
  %139 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %140 = load double****, double***** %139, align 8
  %141 = sext i32 %0 to i64
  %142 = getelementptr inbounds double***, double**** %140, i64 %141
  %143 = load double***, double**** %142, align 8
  %144 = add nuw nsw i32 %.0, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds double**, double*** %143, i64 %145
  %147 = load double**, double*** %146, align 8
  %148 = zext i32 %.01 to i64
  %149 = getelementptr inbounds double*, double** %147, i64 %148
  %150 = load double*, double** %149, align 8
  %151 = zext i32 %.05 to i64
  %152 = getelementptr inbounds double, double* %150, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fadd double %138, %153
  %155 = fdiv double %154, 7.000000e+00
  %156 = zext i32 %.0 to i64
  %157 = mul nuw i64 %7, %10
  %158 = mul nsw i64 %157, %156
  %159 = getelementptr inbounds double, double* %13, i64 %158
  %160 = zext i32 %.01 to i64
  %161 = mul nuw nsw i64 %160, %10
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = zext i32 %.05 to i64
  %164 = getelementptr inbounds double, double* %162, i64 %163
  store double %155, double* %164, align 8
  br label %165

165:                                              ; preds = %44
  %166 = add nuw nsw i32 %.05, 1
  br label %42, !llvm.loop !4

167:                                              ; preds = %42
  br label %168

168:                                              ; preds = %167
  %169 = add nuw nsw i32 %.01, 1
  br label %39, !llvm.loop !6

170:                                              ; preds = %39
  br label %171

171:                                              ; preds = %170
  %172 = add nuw nsw i32 %.0, 1
  br label %36, !llvm.loop !7

173:                                              ; preds = %36
  br label %174

174:                                              ; preds = %212, %173
  %.1 = phi i32 [ 1, %173 ], [ %213, %212 ]
  %175 = load i32, i32* @x_block_size, align 4
  %.not17 = icmp sgt i32 %.1, %175
  br i1 %.not17, label %214, label %176

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %209, %176
  %.12 = phi i32 [ 1, %176 ], [ %210, %209 ]
  %178 = load i32, i32* @y_block_size, align 4
  %.not18 = icmp sgt i32 %.12, %178
  br i1 %.not18, label %211, label %179

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %206, %179
  %.16 = phi i32 [ 1, %179 ], [ %207, %206 ]
  %181 = load i32, i32* @z_block_size, align 4
  %.not19 = icmp sgt i32 %.16, %181
  br i1 %.not19, label %208, label %182

182:                                              ; preds = %180
  %183 = zext i32 %.1 to i64
  %184 = mul nuw i64 %7, %10
  %185 = mul nsw i64 %184, %183
  %186 = getelementptr inbounds double, double* %13, i64 %185
  %187 = zext i32 %.12 to i64
  %188 = mul nuw nsw i64 %187, %10
  %189 = getelementptr inbounds double, double* %186, i64 %188
  %190 = zext i32 %.16 to i64
  %191 = getelementptr inbounds double, double* %189, i64 %190
  %192 = load double, double* %191, align 8
  %193 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %31, i32 11
  %194 = load double****, double***** %193, align 8
  %195 = sext i32 %0 to i64
  %196 = getelementptr inbounds double***, double**** %194, i64 %195
  %197 = load double***, double**** %196, align 8
  %198 = zext i32 %.1 to i64
  %199 = getelementptr inbounds double**, double*** %197, i64 %198
  %200 = load double**, double*** %199, align 8
  %201 = zext i32 %.12 to i64
  %202 = getelementptr inbounds double*, double** %200, i64 %201
  %203 = load double*, double** %202, align 8
  %204 = zext i32 %.16 to i64
  %205 = getelementptr inbounds double, double* %203, i64 %204
  store double %192, double* %205, align 8
  br label %206

206:                                              ; preds = %182
  %207 = add nuw nsw i32 %.16, 1
  br label %180, !llvm.loop !8

208:                                              ; preds = %180
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i32 %.12, 1
  br label %177, !llvm.loop !9

211:                                              ; preds = %177
  br label %212

212:                                              ; preds = %211
  %213 = add nuw nsw i32 %.1, 1
  br label %174, !llvm.loop !10

214:                                              ; preds = %174
  br label %215

215:                                              ; preds = %214, %25
  br label %216

216:                                              ; preds = %215
  %217 = add nuw nsw i32 %.09, 1
  br label %17, !llvm.loop !11

218:                                              ; preds = %17
  br label %770

219:                                              ; preds = %1
  br label %220

220:                                              ; preds = %767, %219
  %.110 = phi i32 [ 0, %219 ], [ %768, %767 ]
  %221 = load i32*, i32** @sorted_index, align 8
  %222 = load i32, i32* @num_refine, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %.110, %226
  br i1 %227, label %228, label %769

228:                                              ; preds = %220
  %229 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %230 = zext i32 %.110 to i64
  %231 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %229, i64 %230, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.block*, %struct.block** @blocks, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %766

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %722, %238
  %.2 = phi i32 [ 1, %238 ], [ %723, %722 ]
  %240 = load i32, i32* @x_block_size, align 4
  %.not = icmp sgt i32 %.2, %240
  br i1 %.not, label %724, label %241

241:                                              ; preds = %239
  br label %242

242:                                              ; preds = %719, %241
  %.23 = phi i32 [ 1, %241 ], [ %720, %719 ]
  %243 = load i32, i32* @y_block_size, align 4
  %.not14 = icmp sgt i32 %.23, %243
  br i1 %.not14, label %721, label %244

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %716, %244
  %.27 = phi i32 [ 1, %244 ], [ %717, %716 ]
  %246 = load i32, i32* @z_block_size, align 4
  %.not15 = icmp sgt i32 %.27, %246
  br i1 %.not15, label %718, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %249 = load double****, double***** %248, align 8
  %250 = sext i32 %0 to i64
  %251 = getelementptr inbounds double***, double**** %249, i64 %250
  %252 = load double***, double**** %251, align 8
  %253 = add nsw i32 %.2, -1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double**, double*** %252, i64 %254
  %256 = load double**, double*** %255, align 8
  %257 = add nsw i32 %.23, -1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double*, double** %256, i64 %258
  %260 = load double*, double** %259, align 8
  %261 = add nsw i32 %.27, -1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  %264 = load double, double* %263, align 8
  %265 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %266 = load double****, double***** %265, align 8
  %267 = sext i32 %0 to i64
  %268 = getelementptr inbounds double***, double**** %266, i64 %267
  %269 = load double***, double**** %268, align 8
  %270 = add nsw i32 %.2, -1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double**, double*** %269, i64 %271
  %273 = load double**, double*** %272, align 8
  %274 = add nsw i32 %.23, -1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds double*, double** %273, i64 %275
  %277 = load double*, double** %276, align 8
  %278 = zext i32 %.27 to i64
  %279 = getelementptr inbounds double, double* %277, i64 %278
  %280 = load double, double* %279, align 8
  %281 = fadd double %264, %280
  %282 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %283 = load double****, double***** %282, align 8
  %284 = sext i32 %0 to i64
  %285 = getelementptr inbounds double***, double**** %283, i64 %284
  %286 = load double***, double**** %285, align 8
  %287 = add nsw i32 %.2, -1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double**, double*** %286, i64 %288
  %290 = load double**, double*** %289, align 8
  %291 = add nsw i32 %.23, -1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds double*, double** %290, i64 %292
  %294 = load double*, double** %293, align 8
  %295 = add nuw nsw i32 %.27, 1
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds double, double* %294, i64 %296
  %298 = load double, double* %297, align 8
  %299 = fadd double %281, %298
  %300 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %301 = load double****, double***** %300, align 8
  %302 = sext i32 %0 to i64
  %303 = getelementptr inbounds double***, double**** %301, i64 %302
  %304 = load double***, double**** %303, align 8
  %305 = add nsw i32 %.2, -1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double**, double*** %304, i64 %306
  %308 = load double**, double*** %307, align 8
  %309 = zext i32 %.23 to i64
  %310 = getelementptr inbounds double*, double** %308, i64 %309
  %311 = load double*, double** %310, align 8
  %312 = add nsw i32 %.27, -1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  %316 = fadd double %299, %315
  %317 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %318 = load double****, double***** %317, align 8
  %319 = sext i32 %0 to i64
  %320 = getelementptr inbounds double***, double**** %318, i64 %319
  %321 = load double***, double**** %320, align 8
  %322 = add nsw i32 %.2, -1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double**, double*** %321, i64 %323
  %325 = load double**, double*** %324, align 8
  %326 = zext i32 %.23 to i64
  %327 = getelementptr inbounds double*, double** %325, i64 %326
  %328 = load double*, double** %327, align 8
  %329 = zext i32 %.27 to i64
  %330 = getelementptr inbounds double, double* %328, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fadd double %316, %331
  %333 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %334 = load double****, double***** %333, align 8
  %335 = sext i32 %0 to i64
  %336 = getelementptr inbounds double***, double**** %334, i64 %335
  %337 = load double***, double**** %336, align 8
  %338 = add nsw i32 %.2, -1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double**, double*** %337, i64 %339
  %341 = load double**, double*** %340, align 8
  %342 = zext i32 %.23 to i64
  %343 = getelementptr inbounds double*, double** %341, i64 %342
  %344 = load double*, double** %343, align 8
  %345 = add nuw nsw i32 %.27, 1
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load double, double* %347, align 8
  %349 = fadd double %332, %348
  %350 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %351 = load double****, double***** %350, align 8
  %352 = sext i32 %0 to i64
  %353 = getelementptr inbounds double***, double**** %351, i64 %352
  %354 = load double***, double**** %353, align 8
  %355 = add nsw i32 %.2, -1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds double**, double*** %354, i64 %356
  %358 = load double**, double*** %357, align 8
  %359 = add nuw nsw i32 %.23, 1
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds double*, double** %358, i64 %360
  %362 = load double*, double** %361, align 8
  %363 = add nsw i32 %.27, -1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %362, i64 %364
  %366 = load double, double* %365, align 8
  %367 = fadd double %349, %366
  %368 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %369 = load double****, double***** %368, align 8
  %370 = sext i32 %0 to i64
  %371 = getelementptr inbounds double***, double**** %369, i64 %370
  %372 = load double***, double**** %371, align 8
  %373 = add nsw i32 %.2, -1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds double**, double*** %372, i64 %374
  %376 = load double**, double*** %375, align 8
  %377 = add nuw nsw i32 %.23, 1
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds double*, double** %376, i64 %378
  %380 = load double*, double** %379, align 8
  %381 = zext i32 %.27 to i64
  %382 = getelementptr inbounds double, double* %380, i64 %381
  %383 = load double, double* %382, align 8
  %384 = fadd double %367, %383
  %385 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %386 = load double****, double***** %385, align 8
  %387 = sext i32 %0 to i64
  %388 = getelementptr inbounds double***, double**** %386, i64 %387
  %389 = load double***, double**** %388, align 8
  %390 = add nsw i32 %.2, -1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double**, double*** %389, i64 %391
  %393 = load double**, double*** %392, align 8
  %394 = add nuw nsw i32 %.23, 1
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds double*, double** %393, i64 %395
  %397 = load double*, double** %396, align 8
  %398 = add nuw nsw i32 %.27, 1
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds double, double* %397, i64 %399
  %401 = load double, double* %400, align 8
  %402 = fadd double %384, %401
  %403 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %404 = load double****, double***** %403, align 8
  %405 = sext i32 %0 to i64
  %406 = getelementptr inbounds double***, double**** %404, i64 %405
  %407 = load double***, double**** %406, align 8
  %408 = zext i32 %.2 to i64
  %409 = getelementptr inbounds double**, double*** %407, i64 %408
  %410 = load double**, double*** %409, align 8
  %411 = add nsw i32 %.23, -1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double*, double** %410, i64 %412
  %414 = load double*, double** %413, align 8
  %415 = add nsw i32 %.27, -1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds double, double* %414, i64 %416
  %418 = load double, double* %417, align 8
  %419 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %420 = load double****, double***** %419, align 8
  %421 = sext i32 %0 to i64
  %422 = getelementptr inbounds double***, double**** %420, i64 %421
  %423 = load double***, double**** %422, align 8
  %424 = zext i32 %.2 to i64
  %425 = getelementptr inbounds double**, double*** %423, i64 %424
  %426 = load double**, double*** %425, align 8
  %427 = add nsw i32 %.23, -1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double*, double** %426, i64 %428
  %430 = load double*, double** %429, align 8
  %431 = zext i32 %.27 to i64
  %432 = getelementptr inbounds double, double* %430, i64 %431
  %433 = load double, double* %432, align 8
  %434 = fadd double %418, %433
  %435 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %436 = load double****, double***** %435, align 8
  %437 = sext i32 %0 to i64
  %438 = getelementptr inbounds double***, double**** %436, i64 %437
  %439 = load double***, double**** %438, align 8
  %440 = zext i32 %.2 to i64
  %441 = getelementptr inbounds double**, double*** %439, i64 %440
  %442 = load double**, double*** %441, align 8
  %443 = add nsw i32 %.23, -1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds double*, double** %442, i64 %444
  %446 = load double*, double** %445, align 8
  %447 = add nuw nsw i32 %.27, 1
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds double, double* %446, i64 %448
  %450 = load double, double* %449, align 8
  %451 = fadd double %434, %450
  %452 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %453 = load double****, double***** %452, align 8
  %454 = sext i32 %0 to i64
  %455 = getelementptr inbounds double***, double**** %453, i64 %454
  %456 = load double***, double**** %455, align 8
  %457 = zext i32 %.2 to i64
  %458 = getelementptr inbounds double**, double*** %456, i64 %457
  %459 = load double**, double*** %458, align 8
  %460 = zext i32 %.23 to i64
  %461 = getelementptr inbounds double*, double** %459, i64 %460
  %462 = load double*, double** %461, align 8
  %463 = add nsw i32 %.27, -1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %462, i64 %464
  %466 = load double, double* %465, align 8
  %467 = fadd double %451, %466
  %468 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %469 = load double****, double***** %468, align 8
  %470 = sext i32 %0 to i64
  %471 = getelementptr inbounds double***, double**** %469, i64 %470
  %472 = load double***, double**** %471, align 8
  %473 = zext i32 %.2 to i64
  %474 = getelementptr inbounds double**, double*** %472, i64 %473
  %475 = load double**, double*** %474, align 8
  %476 = zext i32 %.23 to i64
  %477 = getelementptr inbounds double*, double** %475, i64 %476
  %478 = load double*, double** %477, align 8
  %479 = zext i32 %.27 to i64
  %480 = getelementptr inbounds double, double* %478, i64 %479
  %481 = load double, double* %480, align 8
  %482 = fadd double %467, %481
  %483 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %484 = load double****, double***** %483, align 8
  %485 = sext i32 %0 to i64
  %486 = getelementptr inbounds double***, double**** %484, i64 %485
  %487 = load double***, double**** %486, align 8
  %488 = zext i32 %.2 to i64
  %489 = getelementptr inbounds double**, double*** %487, i64 %488
  %490 = load double**, double*** %489, align 8
  %491 = zext i32 %.23 to i64
  %492 = getelementptr inbounds double*, double** %490, i64 %491
  %493 = load double*, double** %492, align 8
  %494 = add nuw nsw i32 %.27, 1
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds double, double* %493, i64 %495
  %497 = load double, double* %496, align 8
  %498 = fadd double %482, %497
  %499 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %500 = load double****, double***** %499, align 8
  %501 = sext i32 %0 to i64
  %502 = getelementptr inbounds double***, double**** %500, i64 %501
  %503 = load double***, double**** %502, align 8
  %504 = zext i32 %.2 to i64
  %505 = getelementptr inbounds double**, double*** %503, i64 %504
  %506 = load double**, double*** %505, align 8
  %507 = add nuw nsw i32 %.23, 1
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds double*, double** %506, i64 %508
  %510 = load double*, double** %509, align 8
  %511 = add nsw i32 %.27, -1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %510, i64 %512
  %514 = load double, double* %513, align 8
  %515 = fadd double %498, %514
  %516 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %517 = load double****, double***** %516, align 8
  %518 = sext i32 %0 to i64
  %519 = getelementptr inbounds double***, double**** %517, i64 %518
  %520 = load double***, double**** %519, align 8
  %521 = zext i32 %.2 to i64
  %522 = getelementptr inbounds double**, double*** %520, i64 %521
  %523 = load double**, double*** %522, align 8
  %524 = add nuw nsw i32 %.23, 1
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds double*, double** %523, i64 %525
  %527 = load double*, double** %526, align 8
  %528 = zext i32 %.27 to i64
  %529 = getelementptr inbounds double, double* %527, i64 %528
  %530 = load double, double* %529, align 8
  %531 = fadd double %515, %530
  %532 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %533 = load double****, double***** %532, align 8
  %534 = sext i32 %0 to i64
  %535 = getelementptr inbounds double***, double**** %533, i64 %534
  %536 = load double***, double**** %535, align 8
  %537 = zext i32 %.2 to i64
  %538 = getelementptr inbounds double**, double*** %536, i64 %537
  %539 = load double**, double*** %538, align 8
  %540 = add nuw nsw i32 %.23, 1
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds double*, double** %539, i64 %541
  %543 = load double*, double** %542, align 8
  %544 = add nuw nsw i32 %.27, 1
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds double, double* %543, i64 %545
  %547 = load double, double* %546, align 8
  %548 = fadd double %531, %547
  %549 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %550 = load double****, double***** %549, align 8
  %551 = sext i32 %0 to i64
  %552 = getelementptr inbounds double***, double**** %550, i64 %551
  %553 = load double***, double**** %552, align 8
  %554 = add nuw nsw i32 %.2, 1
  %555 = zext i32 %554 to i64
  %556 = getelementptr inbounds double**, double*** %553, i64 %555
  %557 = load double**, double*** %556, align 8
  %558 = add nsw i32 %.23, -1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double*, double** %557, i64 %559
  %561 = load double*, double** %560, align 8
  %562 = add nsw i32 %.27, -1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds double, double* %561, i64 %563
  %565 = load double, double* %564, align 8
  %566 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %567 = load double****, double***** %566, align 8
  %568 = sext i32 %0 to i64
  %569 = getelementptr inbounds double***, double**** %567, i64 %568
  %570 = load double***, double**** %569, align 8
  %571 = add nuw nsw i32 %.2, 1
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds double**, double*** %570, i64 %572
  %574 = load double**, double*** %573, align 8
  %575 = add nsw i32 %.23, -1
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds double*, double** %574, i64 %576
  %578 = load double*, double** %577, align 8
  %579 = zext i32 %.27 to i64
  %580 = getelementptr inbounds double, double* %578, i64 %579
  %581 = load double, double* %580, align 8
  %582 = fadd double %565, %581
  %583 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %584 = load double****, double***** %583, align 8
  %585 = sext i32 %0 to i64
  %586 = getelementptr inbounds double***, double**** %584, i64 %585
  %587 = load double***, double**** %586, align 8
  %588 = add nuw nsw i32 %.2, 1
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds double**, double*** %587, i64 %589
  %591 = load double**, double*** %590, align 8
  %592 = add nsw i32 %.23, -1
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds double*, double** %591, i64 %593
  %595 = load double*, double** %594, align 8
  %596 = add nuw nsw i32 %.27, 1
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds double, double* %595, i64 %597
  %599 = load double, double* %598, align 8
  %600 = fadd double %582, %599
  %601 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %602 = load double****, double***** %601, align 8
  %603 = sext i32 %0 to i64
  %604 = getelementptr inbounds double***, double**** %602, i64 %603
  %605 = load double***, double**** %604, align 8
  %606 = add nuw nsw i32 %.2, 1
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds double**, double*** %605, i64 %607
  %609 = load double**, double*** %608, align 8
  %610 = zext i32 %.23 to i64
  %611 = getelementptr inbounds double*, double** %609, i64 %610
  %612 = load double*, double** %611, align 8
  %613 = add nsw i32 %.27, -1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds double, double* %612, i64 %614
  %616 = load double, double* %615, align 8
  %617 = fadd double %600, %616
  %618 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %619 = load double****, double***** %618, align 8
  %620 = sext i32 %0 to i64
  %621 = getelementptr inbounds double***, double**** %619, i64 %620
  %622 = load double***, double**** %621, align 8
  %623 = add nuw nsw i32 %.2, 1
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds double**, double*** %622, i64 %624
  %626 = load double**, double*** %625, align 8
  %627 = zext i32 %.23 to i64
  %628 = getelementptr inbounds double*, double** %626, i64 %627
  %629 = load double*, double** %628, align 8
  %630 = zext i32 %.27 to i64
  %631 = getelementptr inbounds double, double* %629, i64 %630
  %632 = load double, double* %631, align 8
  %633 = fadd double %617, %632
  %634 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %635 = load double****, double***** %634, align 8
  %636 = sext i32 %0 to i64
  %637 = getelementptr inbounds double***, double**** %635, i64 %636
  %638 = load double***, double**** %637, align 8
  %639 = add nuw nsw i32 %.2, 1
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds double**, double*** %638, i64 %640
  %642 = load double**, double*** %641, align 8
  %643 = zext i32 %.23 to i64
  %644 = getelementptr inbounds double*, double** %642, i64 %643
  %645 = load double*, double** %644, align 8
  %646 = add nuw nsw i32 %.27, 1
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds double, double* %645, i64 %647
  %649 = load double, double* %648, align 8
  %650 = fadd double %633, %649
  %651 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %652 = load double****, double***** %651, align 8
  %653 = sext i32 %0 to i64
  %654 = getelementptr inbounds double***, double**** %652, i64 %653
  %655 = load double***, double**** %654, align 8
  %656 = add nuw nsw i32 %.2, 1
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds double**, double*** %655, i64 %657
  %659 = load double**, double*** %658, align 8
  %660 = add nuw nsw i32 %.23, 1
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds double*, double** %659, i64 %661
  %663 = load double*, double** %662, align 8
  %664 = add nsw i32 %.27, -1
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds double, double* %663, i64 %665
  %667 = load double, double* %666, align 8
  %668 = fadd double %650, %667
  %669 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %670 = load double****, double***** %669, align 8
  %671 = sext i32 %0 to i64
  %672 = getelementptr inbounds double***, double**** %670, i64 %671
  %673 = load double***, double**** %672, align 8
  %674 = add nuw nsw i32 %.2, 1
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds double**, double*** %673, i64 %675
  %677 = load double**, double*** %676, align 8
  %678 = add nuw nsw i32 %.23, 1
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds double*, double** %677, i64 %679
  %681 = load double*, double** %680, align 8
  %682 = zext i32 %.27 to i64
  %683 = getelementptr inbounds double, double* %681, i64 %682
  %684 = load double, double* %683, align 8
  %685 = fadd double %668, %684
  %686 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %687 = load double****, double***** %686, align 8
  %688 = sext i32 %0 to i64
  %689 = getelementptr inbounds double***, double**** %687, i64 %688
  %690 = load double***, double**** %689, align 8
  %691 = add nuw nsw i32 %.2, 1
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds double**, double*** %690, i64 %692
  %694 = load double**, double*** %693, align 8
  %695 = add nuw nsw i32 %.23, 1
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds double*, double** %694, i64 %696
  %698 = load double*, double** %697, align 8
  %699 = add nuw nsw i32 %.27, 1
  %700 = zext i32 %699 to i64
  %701 = getelementptr inbounds double, double* %698, i64 %700
  %702 = load double, double* %701, align 8
  %703 = fadd double %685, %702
  %704 = fadd double %402, %548
  %705 = fadd double %704, %703
  %706 = fdiv double %705, 2.700000e+01
  %707 = zext i32 %.2 to i64
  %708 = mul nuw i64 %7, %10
  %709 = mul nsw i64 %708, %707
  %710 = getelementptr inbounds double, double* %13, i64 %709
  %711 = zext i32 %.23 to i64
  %712 = mul nuw nsw i64 %711, %10
  %713 = getelementptr inbounds double, double* %710, i64 %712
  %714 = zext i32 %.27 to i64
  %715 = getelementptr inbounds double, double* %713, i64 %714
  store double %706, double* %715, align 8
  br label %716

716:                                              ; preds = %247
  %717 = add nuw nsw i32 %.27, 1
  br label %245, !llvm.loop !12

718:                                              ; preds = %245
  br label %719

719:                                              ; preds = %718
  %720 = add nuw nsw i32 %.23, 1
  br label %242, !llvm.loop !13

721:                                              ; preds = %242
  br label %722

722:                                              ; preds = %721
  %723 = add nuw nsw i32 %.2, 1
  br label %239, !llvm.loop !14

724:                                              ; preds = %239
  br label %725

725:                                              ; preds = %763, %724
  %.3 = phi i32 [ 1, %724 ], [ %764, %763 ]
  %726 = load i32, i32* @x_block_size, align 4
  %.not11 = icmp sgt i32 %.3, %726
  br i1 %.not11, label %765, label %727

727:                                              ; preds = %725
  br label %728

728:                                              ; preds = %760, %727
  %.34 = phi i32 [ 1, %727 ], [ %761, %760 ]
  %729 = load i32, i32* @y_block_size, align 4
  %.not12 = icmp sgt i32 %.34, %729
  br i1 %.not12, label %762, label %730

730:                                              ; preds = %728
  br label %731

731:                                              ; preds = %757, %730
  %.38 = phi i32 [ 1, %730 ], [ %758, %757 ]
  %732 = load i32, i32* @z_block_size, align 4
  %.not13 = icmp sgt i32 %.38, %732
  br i1 %.not13, label %759, label %733

733:                                              ; preds = %731
  %734 = zext i32 %.3 to i64
  %735 = mul nuw i64 %7, %10
  %736 = mul nsw i64 %735, %734
  %737 = getelementptr inbounds double, double* %13, i64 %736
  %738 = zext i32 %.34 to i64
  %739 = mul nuw nsw i64 %738, %10
  %740 = getelementptr inbounds double, double* %737, i64 %739
  %741 = zext i32 %.38 to i64
  %742 = getelementptr inbounds double, double* %740, i64 %741
  %743 = load double, double* %742, align 8
  %744 = getelementptr inbounds %struct.block, %struct.block* %233, i64 %234, i32 11
  %745 = load double****, double***** %744, align 8
  %746 = sext i32 %0 to i64
  %747 = getelementptr inbounds double***, double**** %745, i64 %746
  %748 = load double***, double**** %747, align 8
  %749 = zext i32 %.3 to i64
  %750 = getelementptr inbounds double**, double*** %748, i64 %749
  %751 = load double**, double*** %750, align 8
  %752 = zext i32 %.34 to i64
  %753 = getelementptr inbounds double*, double** %751, i64 %752
  %754 = load double*, double** %753, align 8
  %755 = zext i32 %.38 to i64
  %756 = getelementptr inbounds double, double* %754, i64 %755
  store double %743, double* %756, align 8
  br label %757

757:                                              ; preds = %733
  %758 = add nuw nsw i32 %.38, 1
  br label %731, !llvm.loop !15

759:                                              ; preds = %731
  br label %760

760:                                              ; preds = %759
  %761 = add nuw nsw i32 %.34, 1
  br label %728, !llvm.loop !16

762:                                              ; preds = %728
  br label %763

763:                                              ; preds = %762
  %764 = add nuw nsw i32 %.3, 1
  br label %725, !llvm.loop !17

765:                                              ; preds = %725
  br label %766

766:                                              ; preds = %765, %228
  br label %767

767:                                              ; preds = %766
  %768 = add nuw nsw i32 %.110, 1
  br label %220, !llvm.loop !18

769:                                              ; preds = %220
  br label %770

770:                                              ; preds = %769, %218
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }

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
