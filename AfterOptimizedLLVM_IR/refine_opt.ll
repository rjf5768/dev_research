; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/refine.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/refine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sorted_block = type { i32, i32 }
%struct.block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], [6 x [2 x [2 x i32]]], [3 x i32], double**** }
%struct.parent = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [3 x i32] }
%struct.object = type { i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@block_change = dso_local global i32 0, align 4
@num_refine = dso_local global i32 0, align 4
@num_blocks = dso_local global i32* null, align 8
@cur_max_level = dso_local global i32 0, align 4
@uniform_refine = dso_local global i32 0, align 4
@sorted_index = dso_local global i32* null, align 8
@sorted_list = dso_local global %struct.sorted_block* null, align 8
@blocks = dso_local global %struct.block* null, align 8
@timer_refine_co = dso_local global double 0.000000e+00, align 8
@timer_refine_mr = dso_local global double 0.000000e+00, align 8
@timer_refine_sb = dso_local global double 0.000000e+00, align 8
@timer_cb_all = dso_local global double 0.000000e+00, align 8
@target_active = dso_local global i32 0, align 4
@target_max = dso_local global i32 0, align 4
@target_min = dso_local global i32 0, align 4
@my_pe = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Number of blocks at level %d before target %d is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@global_active = dso_local global i32 0, align 4
@num_pes = dso_local global i32 0, align 4
@timer_target_all = dso_local global double 0.000000e+00, align 8
@num_active = dso_local global i32 0, align 4
@local_max_b = dso_local global i32 0, align 4
@global_max_b = dso_local global i32 0, align 4
@report_perf = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Number of blocks at level %d at timestep %d is %d\0A\00", align 1
@timer_refine_cc = dso_local global double 0.000000e+00, align 8
@parents = dso_local global %struct.parent* null, align 8
@max_active_parent = dso_local global i32 0, align 4
@max_num_blocks = dso_local global i32 0, align 4
@x_block_size = dso_local global i32 0, align 4
@y_block_size = dso_local global i32 0, align 4
@z_block_size = dso_local global i32 0, align 4
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
@stencil = dso_local global i32 0, align 4
@plot_freq = dso_local global i32 0, align 4
@lb_opt = dso_local global i32 0, align 4
@code = dso_local global i32 0, align 4
@permute = dso_local global i32 0, align 4
@nonblocking = dso_local global i32 0, align 4
@refine_ghost = dso_local global i32 0, align 4
@max_num_parents = dso_local global i32 0, align 4
@num_parents = dso_local global i32 0, align 4
@block_start = dso_local global i32* null, align 8
@max_active_block = dso_local global i32 0, align 4
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
@num_objects = dso_local global i32 0, align 4
@objects = dso_local global %struct.object* null, align 8
@average = dso_local global [128 x double] zeroinitializer, align 16
@stddev = dso_local global [128 x double] zeroinitializer, align 16
@minimum = dso_local global [128 x double] zeroinitializer, align 16
@maximum = dso_local global [128 x double] zeroinitializer, align 16
@timer_all = dso_local global double 0.000000e+00, align 8
@timer_comm_all = dso_local global double 0.000000e+00, align 8
@timer_comm_dir = dso_local global [3 x double] zeroinitializer, align 16
@timer_comm_same = dso_local global [3 x double] zeroinitializer, align 16
@timer_comm_diff = dso_local global [3 x double] zeroinitializer, align 16
@timer_comm_bc = dso_local global [3 x double] zeroinitializer, align 16
@timer_calc_all = dso_local global double 0.000000e+00, align 8
@timer_cs_all = dso_local global double 0.000000e+00, align 8
@timer_cs_calc = dso_local global double 0.000000e+00, align 8
@timer_refine_all = dso_local global double 0.000000e+00, align 8
@timer_target_rb = dso_local global double 0.000000e+00, align 8
@timer_target_dc = dso_local global double 0.000000e+00, align 8
@timer_target_cb = dso_local global double 0.000000e+00, align 8
@timer_target_ab = dso_local global double 0.000000e+00, align 8
@timer_target_da = dso_local global double 0.000000e+00, align 8
@timer_target_sb = dso_local global double 0.000000e+00, align 8
@timer_plot = dso_local global double 0.000000e+00, align 8
@total_blocks = dso_local global i64 0, align 8
@nb_min = dso_local global i32 0, align 4
@nb_max = dso_local global i32 0, align 4
@nrs = dso_local global i32 0, align 4
@nps = dso_local global i32 0, align 4
@num_refined = dso_local global i32 0, align 4
@num_reformed = dso_local global i32 0, align 4
@counter_bc = dso_local global [3 x i32] zeroinitializer, align 4
@counter_same = dso_local global [3 x i32] zeroinitializer, align 4
@counter_diff = dso_local global [3 x i32] zeroinitializer, align 4
@counter_malloc = dso_local global i32 0, align 4
@size_malloc = dso_local global double 0.000000e+00, align 8
@counter_malloc_init = dso_local global i32 0, align 4
@size_malloc_init = dso_local global double 0.000000e+00, align 8
@total_red = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @refine(i32 noundef %0) #0 {
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.block*, align 8
  store i32 %0, i32* %2, align 4
  store double 0.000000e+00, double* %19, align 8
  %22 = call double @timer()
  store double %22, double* %16, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @block_change, align 4
  store i32 %26, i32* %10, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @num_refine, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %27, %25
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %148, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %151

34:                                               ; preds = %30
  %35 = load i32, i32* @num_refine, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32*, i32** @num_blocks, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* @cur_max_level, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %36, !llvm.loop !4

52:                                               ; preds = %46, %36
  call void @reset_all()
  %53 = load i32, i32* @uniform_refine, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %94, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** @sorted_index, align 8
  %59 = load i32, i32* @num_refine, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %56
  %66 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %66, i64 %68
  %70 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.block*, %struct.block** @blocks, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.block, %struct.block* %72, i64 %74
  store %struct.block* %75, %struct.block** %21, align 8
  %76 = load %struct.block*, %struct.block** %21, align 8
  %77 = getelementptr inbounds %struct.block, %struct.block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %65
  %81 = load %struct.block*, %struct.block** %21, align 8
  %82 = getelementptr inbounds %struct.block, %struct.block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @num_refine, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.block*, %struct.block** %21, align 8
  %88 = getelementptr inbounds %struct.block, %struct.block* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.block*, %struct.block** %21, align 8
  %91 = getelementptr inbounds %struct.block, %struct.block* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %56, !llvm.loop !6

97:                                               ; preds = %56
  br label %110

98:                                               ; preds = %52
  %99 = call double @timer()
  store double %99, double* %17, align 8
  call void @check_objects()
  %100 = call double @timer()
  %101 = load double, double* %17, align 8
  %102 = fsub double %100, %101
  %103 = load double, double* @timer_refine_co, align 8
  %104 = fadd double %103, %102
  store double %104, double* @timer_refine_co, align 8
  %105 = call double @timer()
  %106 = load double, double* %17, align 8
  %107 = fsub double %105, %106
  %108 = load double, double* %19, align 8
  %109 = fadd double %108, %107
  store double %109, double* %19, align 8
  br label %110

110:                                              ; preds = %98, %97
  %111 = call double @timer()
  store double %111, double* %17, align 8
  %112 = call i32 @refine_level()
  store i32 %112, i32* %11, align 4
  %113 = call double @timer()
  store double %113, double* %20, align 8
  %114 = load double, double* %20, align 8
  %115 = load double, double* %17, align 8
  %116 = fsub double %114, %115
  %117 = load double, double* @timer_refine_mr, align 8
  %118 = fadd double %117, %116
  store double %118, double* @timer_refine_mr, align 8
  %119 = load double, double* %20, align 8
  %120 = load double, double* %17, align 8
  %121 = fsub double %119, %120
  %122 = load double, double* %19, align 8
  %123 = fadd double %122, %121
  store double %123, double* %19, align 8
  %124 = call double @timer()
  store double %124, double* %17, align 8
  call void @split_blocks()
  %125 = call double @timer()
  store double %125, double* %20, align 8
  %126 = load double, double* %20, align 8
  %127 = load double, double* %17, align 8
  %128 = fsub double %126, %127
  %129 = load double, double* @timer_refine_sb, align 8
  %130 = fadd double %129, %128
  store double %130, double* @timer_refine_sb, align 8
  %131 = load double, double* %20, align 8
  %132 = load double, double* %17, align 8
  %133 = fsub double %131, %132
  %134 = load double, double* %19, align 8
  %135 = fadd double %134, %133
  store double %135, double* %19, align 8
  %136 = call double @timer()
  store double %136, double* %17, align 8
  call void @consolidate_blocks()
  %137 = call double @timer()
  store double %137, double* %20, align 8
  %138 = load double, double* %20, align 8
  %139 = load double, double* %17, align 8
  %140 = fsub double %138, %139
  %141 = load double, double* @timer_cb_all, align 8
  %142 = fadd double %141, %140
  store double %142, double* @timer_cb_all, align 8
  %143 = load double, double* %20, align 8
  %144 = load double, double* %17, align 8
  %145 = fsub double %143, %144
  %146 = load double, double* %19, align 8
  %147 = fadd double %146, %145
  store double %147, double* %19, align 8
  br label %148

148:                                              ; preds = %110
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %30, !llvm.loop !7

151:                                              ; preds = %30
  %152 = load i32, i32* @target_active, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @target_max, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @target_min, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %258

160:                                              ; preds = %157, %154, %151
  %161 = load i32, i32* @my_pe, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %182, label %163

163:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %177, %163
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @num_refine, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %2, align 4
  %171 = load i32*, i32** @num_blocks, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 noundef %169, i32 noundef %170, i32 noundef %175)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %164, !llvm.loop !8

180:                                              ; preds = %164
  %181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %160
  %183 = call double @timer()
  store double %183, double* %17, align 8
  %184 = load i32*, i32** @num_blocks, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* @global_active, align 4
  store i32 1, i32* %3, align 4
  br label %187

187:                                              ; preds = %199, %182
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @num_refine, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %187
  %192 = load i32*, i32** @num_blocks, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @global_active, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* @global_active, align 4
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  br label %187, !llvm.loop !9

202:                                              ; preds = %187
  %203 = load i32, i32* @target_active, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32, i32* @global_active, align 4
  %207 = load i32, i32* @num_pes, align 4
  %208 = load i32, i32* @target_active, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %209, 3
  %211 = icmp sgt i32 %206, %210
  br i1 %211, label %221, label %212

212:                                              ; preds = %205, %202
  %213 = load i32, i32* @target_max, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i32, i32* @global_active, align 4
  %217 = load i32, i32* @num_pes, align 4
  %218 = load i32, i32* @target_max, align 4
  %219 = mul nsw i32 %217, %218
  %220 = icmp sgt i32 %216, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215, %205
  %222 = call i32 (...) @reduce_blocks()
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %14, align 4
  br label %246

225:                                              ; preds = %215, %212
  %226 = load i32, i32* @target_active, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i32, i32* @global_active, align 4
  %230 = load i32, i32* @num_pes, align 4
  %231 = load i32, i32* @target_active, align 4
  %232 = mul nsw i32 %230, %231
  %233 = sub nsw i32 %232, 3
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %244, label %235

235:                                              ; preds = %228, %225
  %236 = load i32, i32* @target_min, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load i32, i32* @global_active, align 4
  %240 = load i32, i32* @num_pes, align 4
  %241 = load i32, i32* @target_min, align 4
  %242 = mul nsw i32 %240, %241
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238, %228
  call void (...) @add_blocks()
  br label %245

245:                                              ; preds = %244, %238, %235
  br label %246

246:                                              ; preds = %245, %221
  %247 = call double @timer()
  store double %247, double* %20, align 8
  %248 = load double, double* %20, align 8
  %249 = load double, double* %17, align 8
  %250 = fsub double %248, %249
  %251 = load double, double* @timer_target_all, align 8
  %252 = fadd double %251, %250
  store double %252, double* @timer_target_all, align 8
  %253 = load double, double* %20, align 8
  %254 = load double, double* %17, align 8
  %255 = fsub double %253, %254
  %256 = load double, double* %19, align 8
  %257 = fadd double %256, %255
  store double %257, double* %19, align 8
  br label %258

258:                                              ; preds = %246, %157
  %259 = call double @timer()
  store double %259, double* %17, align 8
  %260 = load i32, i32* @num_active, align 4
  %261 = load i32, i32* @local_max_b, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = load i32, i32* @num_active, align 4
  store i32 %264, i32* @local_max_b, align 4
  br label %265

265:                                              ; preds = %263, %258
  %266 = load i32, i32* @local_max_b, align 4
  %267 = load i32, i32* @global_max_b, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* @local_max_b, align 4
  store i32 %270, i32* @global_max_b, align 4
  br label %271

271:                                              ; preds = %269, %265
  store i32 0, i32* %4, align 4
  br label %272

272:                                              ; preds = %308, %271
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @num_refine, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %311

276:                                              ; preds = %272
  %277 = load i32, i32* %4, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %276
  %280 = load i32*, i32** @num_blocks, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* @global_active, align 4
  br label %291

283:                                              ; preds = %276
  %284 = load i32*, i32** @num_blocks, align 8
  %285 = load i32, i32* %4, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @global_active, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* @global_active, align 4
  br label %291

291:                                              ; preds = %283, %279
  %292 = load i32, i32* @my_pe, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* @report_perf, align 4
  %296 = and i32 %295, 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* %2, align 4
  %301 = load i32*, i32** @num_blocks, align 8
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 noundef %299, i32 noundef %300, i32 noundef %305)
  br label %307

307:                                              ; preds = %298, %294, %291
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %4, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %4, align 4
  br label %272, !llvm.loop !10

311:                                              ; preds = %272
  %312 = load i32, i32* @my_pe, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* @report_perf, align 4
  %316 = and i32 %315, 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318, %314, %311
  %321 = call double @timer()
  %322 = load double, double* %17, align 8
  %323 = fsub double %321, %322
  %324 = load double, double* %19, align 8
  %325 = fadd double %324, %323
  store double %325, double* %19, align 8
  %326 = call double @timer()
  store double %326, double* %20, align 8
  %327 = load double, double* %20, align 8
  %328 = load double, double* %16, align 8
  %329 = fsub double %327, %328
  %330 = load double, double* %19, align 8
  %331 = fsub double %329, %330
  %332 = load double, double* @timer_refine_cc, align 8
  %333 = fadd double %332, %331
  store double %333, double* @timer_refine_cc, align 8
  ret void
}

declare dso_local double @timer() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.parent*, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** @sorted_index, align 8
  %9 = load i32, i32* @num_refine, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %16, i64 %18
  %20 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %1, align 4
  %22 = load %struct.block*, %struct.block** @blocks, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %24
  store %struct.block* %25, %struct.block** %4, align 8
  %26 = getelementptr inbounds %struct.block, %struct.block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.block*, %struct.block** %4, align 8
  %31 = getelementptr inbounds %struct.block, %struct.block* %30, i32 0, i32 2
  store i32 -1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6, !llvm.loop !11

36:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %119, %36
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @max_active_parent, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %122

41:                                               ; preds = %37
  %42 = load %struct.parent*, %struct.parent** @parents, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.parent, %struct.parent* %42, i64 %44
  store %struct.parent* %45, %struct.parent** %5, align 8
  %46 = getelementptr inbounds %struct.parent, %struct.parent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %118

49:                                               ; preds = %41
  %50 = load %struct.parent*, %struct.parent** %5, align 8
  %51 = getelementptr inbounds %struct.parent, %struct.parent* %50, i32 0, i32 5
  store i32 -1, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %67, %49
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.parent*, %struct.parent** %5, align 8
  %57 = getelementptr inbounds %struct.parent, %struct.parent* %56, i32 0, i32 6
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.parent*, %struct.parent** %5, align 8
  %65 = getelementptr inbounds %struct.parent, %struct.parent* %64, i32 0, i32 5
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %52, !llvm.loop !12

70:                                               ; preds = %52
  %71 = load %struct.parent*, %struct.parent** %5, align 8
  %72 = getelementptr inbounds %struct.parent, %struct.parent* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %113, %75
  %77 = load i32, i32* %2, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load %struct.parent*, %struct.parent** %5, align 8
  %81 = getelementptr inbounds %struct.parent, %struct.parent* %80, i32 0, i32 6
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %81, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %79
  %88 = load %struct.block*, %struct.block** @blocks, align 8
  %89 = load %struct.parent*, %struct.parent** %5, align 8
  %90 = getelementptr inbounds %struct.parent, %struct.parent* %89, i32 0, i32 6
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %90, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.block, %struct.block* %88, i64 %95
  %97 = getelementptr inbounds %struct.block, %struct.block* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %111

100:                                              ; preds = %87
  %101 = load %struct.block*, %struct.block** @blocks, align 8
  %102 = load %struct.parent*, %struct.parent** %5, align 8
  %103 = getelementptr inbounds %struct.parent, %struct.parent* %102, i32 0, i32 6
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.block, %struct.block* %101, i64 %108
  %110 = getelementptr inbounds %struct.block, %struct.block* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %100, %87
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %2, align 4
  br label %76, !llvm.loop !13

116:                                              ; preds = %76
  br label %117

117:                                              ; preds = %116, %70
  br label %118

118:                                              ; preds = %117, %41
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %37, !llvm.loop !14

122:                                              ; preds = %37
  ret void
}

declare dso_local void @check_objects() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @refine_level() #0 {
  %1 = alloca i32, align 4
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
  %14 = alloca %struct.block*, align 8
  %15 = alloca %struct.block*, align 8
  %16 = alloca %struct.parent*, align 8
  %17 = load i32, i32* @cur_max_level, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %689, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %692

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %415, %21
  store i32 0, i32* %9, align 4
  %23 = load i32*, i32** @sorted_index, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %411, %22
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** @sorted_index, align 8
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %37, label %414

37:                                               ; preds = %28
  %38 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %38, i64 %40
  %42 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  %44 = load %struct.block*, %struct.block** @blocks, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.block, %struct.block* %44, i64 %46
  store %struct.block* %47, %struct.block** %14, align 8
  %48 = load %struct.block*, %struct.block** %14, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %410

52:                                               ; preds = %37
  %53 = load %struct.block*, %struct.block** %14, align 8
  %54 = getelementptr inbounds %struct.block, %struct.block* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %410

58:                                               ; preds = %52
  %59 = load %struct.block*, %struct.block** %14, align 8
  %60 = getelementptr inbounds %struct.block, %struct.block* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %307

63:                                               ; preds = %58
  %64 = load %struct.block*, %struct.block** %14, align 8
  %65 = getelementptr inbounds %struct.block, %struct.block* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %141

68:                                               ; preds = %63
  %69 = load %struct.block*, %struct.block** %14, align 8
  %70 = getelementptr inbounds %struct.block, %struct.block* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @my_pe, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %68
  %75 = load %struct.parent*, %struct.parent** @parents, align 8
  %76 = load %struct.block*, %struct.block** %14, align 8
  %77 = getelementptr inbounds %struct.block, %struct.block* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.parent, %struct.parent* %75, i64 %79
  store %struct.parent* %80, %struct.parent** %16, align 8
  %81 = load %struct.parent*, %struct.parent** %16, align 8
  %82 = getelementptr inbounds %struct.parent, %struct.parent* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.parent*, %struct.parent** %16, align 8
  %87 = getelementptr inbounds %struct.parent, %struct.parent* %86, i32 0, i32 5
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %74
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %137, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  %93 = load %struct.parent*, %struct.parent** %16, align 8
  %94 = getelementptr inbounds %struct.parent, %struct.parent* %93, i32 0, i32 7
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %94, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @my_pe, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %136

101:                                              ; preds = %92
  %102 = load %struct.parent*, %struct.parent** %16, align 8
  %103 = getelementptr inbounds %struct.parent, %struct.parent* %102, i32 0, i32 6
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %101
  %110 = load %struct.block*, %struct.block** @blocks, align 8
  %111 = load %struct.parent*, %struct.parent** %16, align 8
  %112 = getelementptr inbounds %struct.parent, %struct.parent* %111, i32 0, i32 6
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %112, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.block, %struct.block* %110, i64 %117
  %119 = getelementptr inbounds %struct.block, %struct.block* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %135

122:                                              ; preds = %109
  %123 = load %struct.block*, %struct.block** @blocks, align 8
  %124 = load %struct.parent*, %struct.parent** %16, align 8
  %125 = getelementptr inbounds %struct.parent, %struct.parent* %124, i32 0, i32 6
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %125, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.block, %struct.block* %123, i64 %130
  %132 = getelementptr inbounds %struct.block, %struct.block* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %122, %109
  br label %136

136:                                              ; preds = %135, %101, %92
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %89, !llvm.loop !15

140:                                              ; preds = %89
  br label %141

141:                                              ; preds = %140, %68, %63
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %303, %141
  %143 = load i32, i32* %4, align 4
  %144 = icmp slt i32 %143, 6
  br i1 %144, label %145, label %306

145:                                              ; preds = %142
  %146 = load %struct.block*, %struct.block** %14, align 8
  %147 = getelementptr inbounds %struct.block, %struct.block* %146, i32 0, i32 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %147, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %1, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %263

154:                                              ; preds = %145
  %155 = load %struct.block*, %struct.block** %14, align 8
  %156 = getelementptr inbounds %struct.block, %struct.block* %155, i32 0, i32 9
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [6 x [2 x [2 x i32]]], [6 x [2 x [2 x i32]]]* %156, i64 0, i64 %158
  %160 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i64 0, i64 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %2, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %262

164:                                              ; preds = %154
  %165 = load %struct.block*, %struct.block** @blocks, align 8
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.block, %struct.block* %165, i64 %167
  %169 = getelementptr inbounds %struct.block, %struct.block* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %261

172:                                              ; preds = %164
  %173 = load %struct.block*, %struct.block** @blocks, align 8
  %174 = load i32, i32* %2, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.block, %struct.block* %173, i64 %175
  %177 = getelementptr inbounds %struct.block, %struct.block* %176, i32 0, i32 2
  store i32 0, i32* %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  %180 = load %struct.block*, %struct.block** @blocks, align 8
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.block, %struct.block* %180, i64 %182
  %184 = getelementptr inbounds %struct.block, %struct.block* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %12, align 4
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %260

187:                                              ; preds = %172
  %188 = load %struct.block*, %struct.block** @blocks, align 8
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.block, %struct.block* %188, i64 %190
  %192 = getelementptr inbounds %struct.block, %struct.block* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @my_pe, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %260

196:                                              ; preds = %187
  %197 = load %struct.parent*, %struct.parent** @parents, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.parent, %struct.parent* %197, i64 %199
  store %struct.parent* %200, %struct.parent** %16, align 8
  %201 = getelementptr inbounds %struct.parent, %struct.parent* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load %struct.parent*, %struct.parent** %16, align 8
  %206 = getelementptr inbounds %struct.parent, %struct.parent* %205, i32 0, i32 5
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %196
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %256, %207
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 8
  br i1 %210, label %211, label %259

211:                                              ; preds = %208
  %212 = load %struct.parent*, %struct.parent** %16, align 8
  %213 = getelementptr inbounds %struct.parent, %struct.parent* %212, i32 0, i32 7
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %213, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @my_pe, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %255

220:                                              ; preds = %211
  %221 = load %struct.parent*, %struct.parent** %16, align 8
  %222 = getelementptr inbounds %struct.parent, %struct.parent* %221, i32 0, i32 6
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %222, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %255

228:                                              ; preds = %220
  %229 = load %struct.block*, %struct.block** @blocks, align 8
  %230 = load %struct.parent*, %struct.parent** %16, align 8
  %231 = getelementptr inbounds %struct.parent, %struct.parent* %230, i32 0, i32 6
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %231, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.block, %struct.block* %229, i64 %236
  %238 = getelementptr inbounds %struct.block, %struct.block* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %254

241:                                              ; preds = %228
  %242 = load %struct.block*, %struct.block** @blocks, align 8
  %243 = load %struct.parent*, %struct.parent** %16, align 8
  %244 = getelementptr inbounds %struct.parent, %struct.parent* %243, i32 0, i32 6
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i32], [8 x i32]* %244, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.block, %struct.block* %242, i64 %249
  %251 = getelementptr inbounds %struct.block, %struct.block* %250, i32 0, i32 2
  store i32 0, i32* %251, align 8
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %241, %228
  br label %255

255:                                              ; preds = %254, %220, %211
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %6, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %6, align 4
  br label %208, !llvm.loop !16

259:                                              ; preds = %208
  br label %260

260:                                              ; preds = %259, %187, %172
  br label %261

261:                                              ; preds = %260, %164
  br label %262

262:                                              ; preds = %261, %154
  br label %302

263:                                              ; preds = %145
  %264 = load %struct.block*, %struct.block** %14, align 8
  %265 = getelementptr inbounds %struct.block, %struct.block* %264, i32 0, i32 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [6 x i32], [6 x i32]* %265, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %1, align 4
  %271 = sub nsw i32 %270, 1
  %272 = icmp eq i32 %269, %271
  br i1 %272, label %273, label %301

273:                                              ; preds = %263
  %274 = load %struct.block*, %struct.block** %14, align 8
  %275 = getelementptr inbounds %struct.block, %struct.block* %274, i32 0, i32 9
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [6 x [2 x [2 x i32]]], [6 x [2 x [2 x i32]]]* %275, i64 0, i64 %277
  %279 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %278, i64 0, i64 0
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %279, i64 0, i64 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %2, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %273
  %284 = load %struct.block*, %struct.block** @blocks, align 8
  %285 = load i32, i32* %2, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.block, %struct.block* %284, i64 %286
  %288 = getelementptr inbounds %struct.block, %struct.block* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 1
  br i1 %290, label %291, label %299

291:                                              ; preds = %283
  %292 = load %struct.block*, %struct.block** @blocks, align 8
  %293 = load i32, i32* %2, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.block, %struct.block* %292, i64 %294
  %296 = getelementptr inbounds %struct.block, %struct.block* %295, i32 0, i32 2
  store i32 1, i32* %296, align 8
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %299

299:                                              ; preds = %291, %283
  br label %300

300:                                              ; preds = %299, %273
  br label %301

301:                                              ; preds = %300, %263
  br label %302

302:                                              ; preds = %301, %262
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %4, align 4
  br label %142, !llvm.loop !17

306:                                              ; preds = %142
  br label %409

307:                                              ; preds = %58
  %308 = load %struct.block*, %struct.block** %14, align 8
  %309 = getelementptr inbounds %struct.block, %struct.block* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, -1
  br i1 %311, label %312, label %408

312:                                              ; preds = %307
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %404, %312
  %314 = load i32, i32* %4, align 4
  %315 = icmp slt i32 %314, 6
  br i1 %315, label %316, label %407

316:                                              ; preds = %313
  %317 = load %struct.block*, %struct.block** %14, align 8
  %318 = getelementptr inbounds %struct.block, %struct.block* %317, i32 0, i32 8
  %319 = load i32, i32* %4, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [6 x i32], [6 x i32]* %318, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %1, align 4
  %324 = add nsw i32 %323, 1
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %326, label %403

326:                                              ; preds = %316
  %327 = load %struct.block*, %struct.block** %14, align 8
  %328 = getelementptr inbounds %struct.block, %struct.block* %327, i32 0, i32 2
  store i32 0, i32* %328, align 8
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %9, align 4
  %331 = load %struct.block*, %struct.block** %14, align 8
  %332 = getelementptr inbounds %struct.block, %struct.block* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %12, align 4
  %334 = icmp ne i32 %333, -1
  br i1 %334, label %335, label %402

335:                                              ; preds = %326
  %336 = load %struct.block*, %struct.block** %14, align 8
  %337 = getelementptr inbounds %struct.block, %struct.block* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @my_pe, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %402

341:                                              ; preds = %335
  %342 = load %struct.parent*, %struct.parent** @parents, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.parent, %struct.parent* %342, i64 %344
  store %struct.parent* %345, %struct.parent** %16, align 8
  %346 = getelementptr inbounds %struct.parent, %struct.parent* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %352

349:                                              ; preds = %341
  %350 = load %struct.parent*, %struct.parent** %16, align 8
  %351 = getelementptr inbounds %struct.parent, %struct.parent* %350, i32 0, i32 5
  store i32 0, i32* %351, align 4
  br label %352

352:                                              ; preds = %349, %341
  store i32 0, i32* %6, align 4
  br label %353

353:                                              ; preds = %398, %352
  %354 = load i32, i32* %6, align 4
  %355 = icmp slt i32 %354, 8
  br i1 %355, label %356, label %401

356:                                              ; preds = %353
  %357 = load %struct.parent*, %struct.parent** %16, align 8
  %358 = getelementptr inbounds %struct.parent, %struct.parent* %357, i32 0, i32 7
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [8 x i32], [8 x i32]* %358, i64 0, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @my_pe, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %397

365:                                              ; preds = %356
  %366 = load %struct.parent*, %struct.parent** %16, align 8
  %367 = getelementptr inbounds %struct.parent, %struct.parent* %366, i32 0, i32 6
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [8 x i32], [8 x i32]* %367, i64 0, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp sge i32 %371, 0
  br i1 %372, label %373, label %397

373:                                              ; preds = %365
  %374 = load %struct.block*, %struct.block** @blocks, align 8
  %375 = load %struct.parent*, %struct.parent** %16, align 8
  %376 = getelementptr inbounds %struct.parent, %struct.parent* %375, i32 0, i32 6
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [8 x i32], [8 x i32]* %376, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.block, %struct.block* %374, i64 %381
  %383 = getelementptr inbounds %struct.block, %struct.block* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %386, label %397

386:                                              ; preds = %373
  %387 = load %struct.block*, %struct.block** @blocks, align 8
  %388 = load %struct.parent*, %struct.parent** %16, align 8
  %389 = getelementptr inbounds %struct.parent, %struct.parent* %388, i32 0, i32 6
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [8 x i32], [8 x i32]* %389, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.block, %struct.block* %387, i64 %394
  %396 = getelementptr inbounds %struct.block, %struct.block* %395, i32 0, i32 2
  store i32 0, i32* %396, align 8
  br label %397

397:                                              ; preds = %386, %373, %365, %356
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %6, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %6, align 4
  br label %353, !llvm.loop !18

401:                                              ; preds = %353
  br label %402

402:                                              ; preds = %401, %335, %326
  br label %403

403:                                              ; preds = %402, %316
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %4, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %4, align 4
  br label %313, !llvm.loop !19

407:                                              ; preds = %313
  br label %408

408:                                              ; preds = %407, %307
  br label %409

409:                                              ; preds = %408, %306
  br label %410

410:                                              ; preds = %409, %52, %37
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %13, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %13, align 4
  br label %28, !llvm.loop !20

414:                                              ; preds = %28
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %9, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %22, label %418, !llvm.loop !21

418:                                              ; preds = %415
  br label %419

419:                                              ; preds = %685, %418
  store i32 0, i32* %9, align 4
  %420 = load i32*, i32** @sorted_index, align 8
  %421 = load i32, i32* %1, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %13, align 4
  br label %425

425:                                              ; preds = %681, %419
  %426 = load i32, i32* %13, align 4
  %427 = load i32*, i32** @sorted_index, align 8
  %428 = load i32, i32* %1, align 4
  %429 = add nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = icmp slt i32 %426, %432
  br i1 %433, label %434, label %684

434:                                              ; preds = %425
  %435 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %436 = load i32, i32* %13, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %435, i64 %437
  %439 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %3, align 4
  %441 = load %struct.block*, %struct.block** @blocks, align 8
  %442 = load i32, i32* %3, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.block, %struct.block* %441, i64 %443
  store %struct.block* %444, %struct.block** %14, align 8
  %445 = load %struct.block*, %struct.block** %14, align 8
  %446 = getelementptr inbounds %struct.block, %struct.block* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp sge i32 %447, 0
  br i1 %448, label %449, label %680

449:                                              ; preds = %434
  %450 = load %struct.block*, %struct.block** %14, align 8
  %451 = getelementptr inbounds %struct.block, %struct.block* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %1, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %679

455:                                              ; preds = %449
  %456 = load %struct.block*, %struct.block** %14, align 8
  %457 = getelementptr inbounds %struct.block, %struct.block* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %679

460:                                              ; preds = %455
  store i32 0, i32* %7, align 4
  br label %461

461:                                              ; preds = %675, %460
  %462 = load i32, i32* %7, align 4
  %463 = icmp slt i32 %462, 6
  br i1 %463, label %464, label %678

464:                                              ; preds = %461
  %465 = load %struct.block*, %struct.block** %14, align 8
  %466 = getelementptr inbounds %struct.block, %struct.block* %465, i32 0, i32 8
  %467 = load i32, i32* %7, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [6 x i32], [6 x i32]* %466, i64 0, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %1, align 4
  %472 = sub nsw i32 %471, 1
  %473 = icmp eq i32 %470, %472
  br i1 %473, label %474, label %580

474:                                              ; preds = %464
  %475 = load %struct.block*, %struct.block** %14, align 8
  %476 = getelementptr inbounds %struct.block, %struct.block* %475, i32 0, i32 9
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [6 x [2 x [2 x i32]]], [6 x [2 x [2 x i32]]]* %476, i64 0, i64 %478
  %480 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %479, i64 0, i64 0
  %481 = getelementptr inbounds [2 x i32], [2 x i32]* %480, i64 0, i64 0
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* %2, align 4
  %483 = icmp sge i32 %482, 0
  br i1 %483, label %484, label %579

484:                                              ; preds = %474
  %485 = load %struct.block*, %struct.block** @blocks, align 8
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.block, %struct.block* %485, i64 %487
  %489 = getelementptr inbounds %struct.block, %struct.block* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %492, label %578

492:                                              ; preds = %484
  %493 = load %struct.block*, %struct.block** @blocks, align 8
  %494 = load i32, i32* %2, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.block, %struct.block* %493, i64 %495
  %497 = getelementptr inbounds %struct.block, %struct.block* %496, i32 0, i32 2
  store i32 0, i32* %497, align 8
  %498 = load i32, i32* %9, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %9, align 4
  %500 = load %struct.block*, %struct.block** @blocks, align 8
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.block, %struct.block* %500, i64 %502
  %504 = getelementptr inbounds %struct.block, %struct.block* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 8
  store i32 %505, i32* %12, align 4
  %506 = icmp ne i32 %505, -1
  br i1 %506, label %507, label %577

507:                                              ; preds = %492
  %508 = load %struct.block*, %struct.block** @blocks, align 8
  %509 = load i32, i32* %2, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.block, %struct.block* %508, i64 %510
  %512 = getelementptr inbounds %struct.block, %struct.block* %511, i32 0, i32 5
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @my_pe, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %577

516:                                              ; preds = %507
  %517 = load %struct.parent*, %struct.parent** @parents, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.parent, %struct.parent* %517, i64 %519
  store %struct.parent* %520, %struct.parent** %16, align 8
  %521 = getelementptr inbounds %struct.parent, %struct.parent* %520, i32 0, i32 5
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, -1
  br i1 %523, label %524, label %576

524:                                              ; preds = %516
  %525 = load %struct.parent*, %struct.parent** %16, align 8
  %526 = getelementptr inbounds %struct.parent, %struct.parent* %525, i32 0, i32 5
  store i32 0, i32* %526, align 4
  store i32 0, i32* %6, align 4
  br label %527

527:                                              ; preds = %572, %524
  %528 = load i32, i32* %6, align 4
  %529 = icmp slt i32 %528, 8
  br i1 %529, label %530, label %575

530:                                              ; preds = %527
  %531 = load %struct.parent*, %struct.parent** %16, align 8
  %532 = getelementptr inbounds %struct.parent, %struct.parent* %531, i32 0, i32 7
  %533 = load i32, i32* %6, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [8 x i32], [8 x i32]* %532, i64 0, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @my_pe, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %571

539:                                              ; preds = %530
  %540 = load %struct.parent*, %struct.parent** %16, align 8
  %541 = getelementptr inbounds %struct.parent, %struct.parent* %540, i32 0, i32 6
  %542 = load i32, i32* %6, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [8 x i32], [8 x i32]* %541, i64 0, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = icmp sge i32 %545, 0
  br i1 %546, label %547, label %571

547:                                              ; preds = %539
  %548 = load %struct.block*, %struct.block** @blocks, align 8
  %549 = load %struct.parent*, %struct.parent** %16, align 8
  %550 = getelementptr inbounds %struct.parent, %struct.parent* %549, i32 0, i32 6
  %551 = load i32, i32* %6, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [8 x i32], [8 x i32]* %550, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.block, %struct.block* %548, i64 %555
  %557 = getelementptr inbounds %struct.block, %struct.block* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = icmp eq i32 %558, -1
  br i1 %559, label %560, label %571

560:                                              ; preds = %547
  %561 = load %struct.block*, %struct.block** @blocks, align 8
  %562 = load %struct.parent*, %struct.parent** %16, align 8
  %563 = getelementptr inbounds %struct.parent, %struct.parent* %562, i32 0, i32 6
  %564 = load i32, i32* %6, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [8 x i32], [8 x i32]* %563, i64 0, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.block, %struct.block* %561, i64 %568
  %570 = getelementptr inbounds %struct.block, %struct.block* %569, i32 0, i32 2
  store i32 0, i32* %570, align 8
  br label %571

571:                                              ; preds = %560, %547, %539, %530
  br label %572

572:                                              ; preds = %571
  %573 = load i32, i32* %6, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %6, align 4
  br label %527, !llvm.loop !22

575:                                              ; preds = %527
  br label %576

576:                                              ; preds = %575, %516
  br label %577

577:                                              ; preds = %576, %507, %492
  br label %578

578:                                              ; preds = %577, %484
  br label %579

579:                                              ; preds = %578, %474
  br label %674

580:                                              ; preds = %464
  %581 = load %struct.block*, %struct.block** %14, align 8
  %582 = getelementptr inbounds %struct.block, %struct.block* %581, i32 0, i32 8
  %583 = load i32, i32* %7, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [6 x i32], [6 x i32]* %582, i64 0, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* %1, align 4
  %588 = icmp eq i32 %586, %587
  br i1 %588, label %589, label %615

589:                                              ; preds = %580
  %590 = load %struct.block*, %struct.block** %14, align 8
  %591 = getelementptr inbounds %struct.block, %struct.block* %590, i32 0, i32 9
  %592 = load i32, i32* %7, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [6 x [2 x [2 x i32]]], [6 x [2 x [2 x i32]]]* %591, i64 0, i64 %593
  %595 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %594, i64 0, i64 0
  %596 = getelementptr inbounds [2 x i32], [2 x i32]* %595, i64 0, i64 0
  %597 = load i32, i32* %596, align 4
  store i32 %597, i32* %2, align 4
  %598 = icmp sge i32 %597, 0
  br i1 %598, label %599, label %614

599:                                              ; preds = %589
  %600 = load %struct.block*, %struct.block** @blocks, align 8
  %601 = load i32, i32* %2, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.block, %struct.block* %600, i64 %602
  %604 = getelementptr inbounds %struct.block, %struct.block* %603, i32 0, i32 7
  %605 = load i32, i32* %7, align 4
  %606 = sdiv i32 %605, 2
  %607 = mul nsw i32 %606, 2
  %608 = load i32, i32* %7, align 4
  %609 = add nsw i32 %608, 1
  %610 = srem i32 %609, 2
  %611 = add nsw i32 %607, %610
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [6 x i32], [6 x i32]* %604, i64 0, i64 %612
  store i32 0, i32* %613, align 4
  br label %614

614:                                              ; preds = %599, %589
  br label %673

615:                                              ; preds = %580
  %616 = load %struct.block*, %struct.block** %14, align 8
  %617 = getelementptr inbounds %struct.block, %struct.block* %616, i32 0, i32 8
  %618 = load i32, i32* %7, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [6 x i32], [6 x i32]* %617, i64 0, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* %1, align 4
  %623 = add nsw i32 %622, 1
  %624 = icmp eq i32 %621, %623
  br i1 %624, label %625, label %672

625:                                              ; preds = %615
  %626 = load i32, i32* %7, align 4
  %627 = sdiv i32 %626, 2
  %628 = mul nsw i32 %627, 2
  %629 = load i32, i32* %7, align 4
  %630 = add nsw i32 %629, 1
  %631 = srem i32 %630, 2
  %632 = add nsw i32 %628, %631
  store i32 %632, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %633

633:                                              ; preds = %668, %625
  %634 = load i32, i32* %4, align 4
  %635 = icmp slt i32 %634, 2
  br i1 %635, label %636, label %671

636:                                              ; preds = %633
  store i32 0, i32* %5, align 4
  br label %637

637:                                              ; preds = %664, %636
  %638 = load i32, i32* %5, align 4
  %639 = icmp slt i32 %638, 2
  br i1 %639, label %640, label %667

640:                                              ; preds = %637
  %641 = load %struct.block*, %struct.block** %14, align 8
  %642 = getelementptr inbounds %struct.block, %struct.block* %641, i32 0, i32 9
  %643 = load i32, i32* %7, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [6 x [2 x [2 x i32]]], [6 x [2 x [2 x i32]]]* %642, i64 0, i64 %644
  %646 = load i32, i32* %4, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %645, i64 0, i64 %647
  %649 = load i32, i32* %5, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [2 x i32], [2 x i32]* %648, i64 0, i64 %650
  %652 = load i32, i32* %651, align 4
  store i32 %652, i32* %2, align 4
  %653 = icmp sge i32 %652, 0
  br i1 %653, label %654, label %663

654:                                              ; preds = %640
  %655 = load %struct.block*, %struct.block** @blocks, align 8
  %656 = load i32, i32* %2, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.block, %struct.block* %655, i64 %657
  %659 = getelementptr inbounds %struct.block, %struct.block* %658, i32 0, i32 7
  %660 = load i32, i32* %8, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [6 x i32], [6 x i32]* %659, i64 0, i64 %661
  store i32 0, i32* %662, align 4
  br label %663

663:                                              ; preds = %654, %640
  br label %664

664:                                              ; preds = %663
  %665 = load i32, i32* %5, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %5, align 4
  br label %637, !llvm.loop !23

667:                                              ; preds = %637
  br label %668

668:                                              ; preds = %667
  %669 = load i32, i32* %4, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %4, align 4
  br label %633, !llvm.loop !24

671:                                              ; preds = %633
  br label %672

672:                                              ; preds = %671, %615
  br label %673

673:                                              ; preds = %672, %614
  br label %674

674:                                              ; preds = %673, %579
  br label %675

675:                                              ; preds = %674
  %676 = load i32, i32* %7, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %7, align 4
  br label %461, !llvm.loop !25

678:                                              ; preds = %461
  br label %679

679:                                              ; preds = %678, %455, %449
  br label %680

680:                                              ; preds = %679, %434
  br label %681

681:                                              ; preds = %680
  %682 = load i32, i32* %13, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %13, align 4
  br label %425, !llvm.loop !26

684:                                              ; preds = %425
  br label %685

685:                                              ; preds = %684
  %686 = load i32, i32* %9, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %419, label %688, !llvm.loop !27

688:                                              ; preds = %685
  br label %689

689:                                              ; preds = %688
  %690 = load i32, i32* %1, align 4
  %691 = add nsw i32 %690, -1
  store i32 %691, i32* %1, align 4
  br label %18, !llvm.loop !28

692:                                              ; preds = %18
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %693

693:                                              ; preds = %719, %692
  %694 = load i32, i32* %13, align 4
  %695 = load i32*, i32** @sorted_index, align 8
  %696 = load i32, i32* @num_refine, align 4
  %697 = add nsw i32 %696, 1
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %695, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = icmp slt i32 %694, %700
  br i1 %701, label %702, label %722

702:                                              ; preds = %693
  %703 = load %struct.block*, %struct.block** @blocks, align 8
  %704 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %705 = load i32, i32* %13, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %704, i64 %706
  %708 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.block, %struct.block* %703, i64 %710
  %712 = getelementptr inbounds %struct.block, %struct.block* %711, i32 0, i32 2
  %713 = load i32, i32* %712, align 8
  %714 = icmp eq i32 %713, 1
  br i1 %714, label %715, label %718

715:                                              ; preds = %702
  %716 = load i32, i32* %4, align 4
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %4, align 4
  br label %718

718:                                              ; preds = %715, %702
  br label %719

719:                                              ; preds = %718
  %720 = load i32, i32* %13, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %13, align 4
  br label %693, !llvm.loop !29

722:                                              ; preds = %693
  %723 = load i32, i32* %4, align 4
  ret i32 %723
}

declare dso_local void @split_blocks() #1

declare dso_local void @consolidate_blocks() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @reduce_blocks(...) #1

declare dso_local void @add_blocks(...) #1

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
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
!153 = distinct !{!153, !5}
!154 = distinct !{!154, !5}
!155 = distinct !{!155, !5}
!156 = distinct !{!156, !5}
!157 = distinct !{!157, !5}
