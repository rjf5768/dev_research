; ModuleID = './refine.ll'
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
  %2 = call double @timer() #4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.07.in = phi i32* [ @block_change, %3 ], [ @num_refine, %4 ]
  %.07 = load i32, i32* %.07.in, align 4
  br label %6

6:                                                ; preds = %82, %5
  %.03 = phi double [ 0.000000e+00, %5 ], [ %88, %82 ]
  %.0 = phi i32 [ 0, %5 ], [ %89, %82 ]
  %7 = icmp slt i32 %.0, %.07
  br i1 %7, label %8, label %90

8:                                                ; preds = %6
  %9 = load i32, i32* @num_refine, align 4
  br label %10

10:                                               ; preds = %19, %8
  %.01 = phi i32 [ %9, %8 ], [ %20, %19 ]
  %11 = icmp sgt i32 %.01, -1
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = load i32*, i32** @num_blocks, align 8
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %.not27 = icmp eq i32 %16, 0
  br i1 %.not27, label %18, label %17

17:                                               ; preds = %12
  store i32 %.01, i32* @cur_max_level, align 4
  br label %21

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.01, -1
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %21

21:                                               ; preds = %.loopexit, %17
  call void @reset_all()
  %22 = load i32, i32* @uniform_refine, align 4
  %.not26 = icmp eq i32 %22, 0
  br i1 %.not26, label %56, label %23

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %53, %23
  %.06 = phi i32 [ 0, %23 ], [ %54, %53 ]
  %25 = load i32*, i32** @sorted_index, align 8
  %26 = load i32, i32* @num_refine, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %.06, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %34 = zext i32 %.06 to i64
  %35 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %33, i64 %34, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.block*, %struct.block** @blocks, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.block, %struct.block* %37, i64 %38, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.block, %struct.block* %37, i64 %38, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @num_refine, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.block, %struct.block* %37, i64 %38, i32 2
  store i32 1, i32* %48, align 8
  br label %51

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.block, %struct.block* %37, i64 %38, i32 2
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.06, 1
  br label %24, !llvm.loop !6

55:                                               ; preds = %24
  br label %65

56:                                               ; preds = %21
  %57 = call double @timer() #4
  call void @check_objects() #4
  %58 = call double @timer() #4
  %59 = fsub double %58, %57
  %60 = load double, double* @timer_refine_co, align 8
  %61 = fadd double %60, %59
  store double %61, double* @timer_refine_co, align 8
  %62 = call double @timer() #4
  %63 = fsub double %62, %57
  %64 = fadd double %.03, %63
  br label %65

65:                                               ; preds = %56, %55
  %.14 = phi double [ %.03, %55 ], [ %64, %56 ]
  %66 = call double @timer() #4
  %67 = call i32 @refine_level()
  %68 = call double @timer() #4
  %69 = fsub double %68, %66
  %70 = load double, double* @timer_refine_mr, align 8
  %71 = fadd double %70, %69
  store double %71, double* @timer_refine_mr, align 8
  %72 = call double @timer() #4
  call void @split_blocks() #4
  %73 = call double @timer() #4
  %74 = fsub double %73, %72
  %75 = load double, double* @timer_refine_sb, align 8
  %76 = fadd double %75, %74
  store double %76, double* @timer_refine_sb, align 8
  %77 = call double @timer() #4
  call void @consolidate_blocks() #4
  %78 = call double @timer() #4
  %79 = fsub double %78, %77
  %80 = load double, double* @timer_cb_all, align 8
  %81 = fadd double %80, %79
  store double %81, double* @timer_cb_all, align 8
  br label %82

82:                                               ; preds = %65
  %83 = fsub double %68, %66
  %84 = fadd double %.14, %83
  %85 = fsub double %73, %72
  %86 = fadd double %84, %85
  %87 = fsub double %78, %77
  %88 = fadd double %86, %87
  %89 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !7

90:                                               ; preds = %6
  %91 = load i32, i32* @target_active, align 4
  %.not9 = icmp eq i32 %91, 0
  br i1 %.not9, label %92, label %96

92:                                               ; preds = %90
  %93 = load i32, i32* @target_max, align 4
  %.not10 = icmp eq i32 %93, 0
  br i1 %.not10, label %94, label %96

94:                                               ; preds = %92
  %95 = load i32, i32* @target_min, align 4
  %.not11 = icmp eq i32 %95, 0
  br i1 %.not11, label %170, label %96

96:                                               ; preds = %94, %92, %90
  %97 = load i32, i32* @my_pe, align 4
  %.not18 = icmp eq i32 %97, 0
  br i1 %.not18, label %98, label %110

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %107, %98
  %.12 = phi i32 [ 0, %98 ], [ %108, %107 ]
  %100 = load i32, i32* @num_refine, align 4
  %.not19 = icmp sgt i32 %.12, %100
  br i1 %.not19, label %109, label %101

101:                                              ; preds = %99
  %102 = load i32*, i32** @num_blocks, align 8
  %103 = zext i32 %.12 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 noundef %.12, i32 noundef %0, i32 noundef %105) #4
  br label %107

107:                                              ; preds = %101
  %108 = add nuw nsw i32 %.12, 1
  br label %99, !llvm.loop !8

109:                                              ; preds = %99
  %putchar20 = call i32 @putchar(i32 10)
  br label %110

110:                                              ; preds = %109, %96
  %111 = call double @timer() #4
  %112 = load i32*, i32** @num_blocks, align 8
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* @global_active, align 4
  br label %114

114:                                              ; preds = %123, %110
  %.1 = phi i32 [ 1, %110 ], [ %124, %123 ]
  %115 = load i32, i32* @num_refine, align 4
  %.not21 = icmp sgt i32 %.1, %115
  br i1 %.not21, label %125, label %116

116:                                              ; preds = %114
  %117 = load i32*, i32** @num_blocks, align 8
  %118 = zext i32 %.1 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @global_active, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* @global_active, align 4
  br label %123

123:                                              ; preds = %116
  %124 = add nuw nsw i32 %.1, 1
  br label %114, !llvm.loop !9

125:                                              ; preds = %114
  %126 = load i32, i32* @target_active, align 4
  %.not22 = icmp eq i32 %126, 0
  br i1 %.not22, label %134, label %127

127:                                              ; preds = %125
  %128 = load i32, i32* @global_active, align 4
  %129 = load i32, i32* @num_pes, align 4
  %130 = load i32, i32* @target_active, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %131, 3
  %133 = icmp sgt i32 %128, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %127, %125
  %135 = load i32, i32* @target_max, align 4
  %.not23 = icmp eq i32 %135, 0
  br i1 %.not23, label %144, label %136

136:                                              ; preds = %134
  %137 = load i32, i32* @global_active, align 4
  %138 = load i32, i32* @num_pes, align 4
  %139 = load i32, i32* @target_max, align 4
  %140 = mul nsw i32 %138, %139
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136, %127
  %143 = call i32 (...) @reduce_blocks() #4
  br label %163

144:                                              ; preds = %136, %134
  %145 = load i32, i32* @target_active, align 4
  %.not24 = icmp eq i32 %145, 0
  br i1 %.not24, label %153, label %146

146:                                              ; preds = %144
  %147 = load i32, i32* @global_active, align 4
  %148 = load i32, i32* @num_pes, align 4
  %149 = load i32, i32* @target_active, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %150, -3
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %161, label %153

153:                                              ; preds = %146, %144
  %154 = load i32, i32* @target_min, align 4
  %.not25 = icmp eq i32 %154, 0
  br i1 %.not25, label %162, label %155

155:                                              ; preds = %153
  %156 = load i32, i32* @global_active, align 4
  %157 = load i32, i32* @num_pes, align 4
  %158 = load i32, i32* @target_min, align 4
  %159 = mul nsw i32 %157, %158
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155, %146
  call void (...) @add_blocks() #4
  br label %162

162:                                              ; preds = %161, %155, %153
  br label %163

163:                                              ; preds = %162, %142
  %164 = call double @timer() #4
  %165 = fsub double %164, %111
  %166 = load double, double* @timer_target_all, align 8
  %167 = fadd double %166, %165
  store double %167, double* @timer_target_all, align 8
  %168 = fsub double %164, %111
  %169 = fadd double %.03, %168
  br label %170

170:                                              ; preds = %163, %94
  %.25 = phi double [ %169, %163 ], [ %.03, %94 ]
  %171 = call double @timer() #4
  %172 = load i32, i32* @num_active, align 4
  %173 = load i32, i32* @local_max_b, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @num_active, align 4
  store i32 %176, i32* @local_max_b, align 4
  br label %177

177:                                              ; preds = %175, %170
  %178 = load i32, i32* @local_max_b, align 4
  %179 = load i32, i32* @global_max_b, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @local_max_b, align 4
  store i32 %182, i32* @global_max_b, align 4
  br label %183

183:                                              ; preds = %181, %177
  br label %184

184:                                              ; preds = %209, %183
  %.2 = phi i32 [ 0, %183 ], [ %210, %209 ]
  %185 = load i32, i32* @num_refine, align 4
  %.not12 = icmp sgt i32 %.2, %185
  br i1 %.not12, label %211, label %186

186:                                              ; preds = %184
  %.not15 = icmp eq i32 %.2, 0
  br i1 %.not15, label %187, label %190

187:                                              ; preds = %186
  %188 = load i32*, i32** @num_blocks, align 8
  %189 = load i32, i32* %188, align 4
  br label %197

190:                                              ; preds = %186
  %191 = load i32*, i32** @num_blocks, align 8
  %192 = zext i32 %.2 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @global_active, align 4
  %196 = add nsw i32 %195, %194
  br label %197

197:                                              ; preds = %190, %187
  %storemerge = phi i32 [ %189, %187 ], [ %196, %190 ]
  store i32 %storemerge, i32* @global_active, align 4
  %198 = load i32, i32* @my_pe, align 4
  %.not16 = icmp eq i32 %198, 0
  br i1 %.not16, label %199, label %208

199:                                              ; preds = %197
  %200 = load i32, i32* @report_perf, align 4
  %201 = and i32 %200, 8
  %.not17 = icmp eq i32 %201, 0
  br i1 %.not17, label %208, label %202

202:                                              ; preds = %199
  %203 = load i32*, i32** @num_blocks, align 8
  %204 = zext i32 %.2 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.2, i32 noundef %0, i32 noundef %206) #4
  br label %208

208:                                              ; preds = %202, %199, %197
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i32 %.2, 1
  br label %184, !llvm.loop !10

211:                                              ; preds = %184
  %212 = load i32, i32* @my_pe, align 4
  %.not13 = icmp eq i32 %212, 0
  br i1 %.not13, label %213, label %217

213:                                              ; preds = %211
  %214 = load i32, i32* @report_perf, align 4
  %215 = and i32 %214, 8
  %.not14 = icmp eq i32 %215, 0
  br i1 %.not14, label %217, label %216

216:                                              ; preds = %213
  %putchar = call i32 @putchar(i32 10)
  br label %217

217:                                              ; preds = %216, %213, %211
  %218 = call double @timer() #4
  %219 = fsub double %218, %171
  %220 = fadd double %.25, %219
  %221 = call double @timer() #4
  %222 = fsub double %221, %2
  %223 = fsub double %222, %220
  %224 = load double, double* @timer_refine_cc, align 8
  %225 = fadd double %224, %223
  store double %225, double* @timer_refine_cc, align 8
  ret void
}

declare dso_local double @timer() #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @reset_all() #2 {
  br label %1

1:                                                ; preds = %22, %0
  %.02 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = load i32*, i32** @sorted_index, align 8
  %3 = load i32, i32* @num_refine, align 4
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %2, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %.02, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %11 = zext i32 %.02 to i64
  %12 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %10, i64 %11, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.block*, %struct.block** @blocks, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.block, %struct.block* %14, i64 %15, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.block, %struct.block* %14, i64 %15, i32 2
  store i32 -1, i32* %20, align 8
  br label %21

21:                                               ; preds = %19, %9
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !11

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %83, %24
  %.0 = phi i32 [ 0, %24 ], [ %84, %83 ]
  %26 = load i32, i32* @max_active_parent, align 4
  %27 = icmp slt i32 %.0, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = load %struct.parent*, %struct.parent** @parents, align 8
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %82

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 5
  store i32 -1, i32* %35, align 4
  br label %36

36:                                               ; preds = %46, %34
  %.01 = phi i32 [ 0, %34 ], [ %47, %46 ]
  %37 = icmp ult i32 %.01, 8
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 6, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 5
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.01, 1
  br label %36, !llvm.loop !12

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %78, %52
  %.1 = phi i32 [ 0, %52 ], [ %79, %78 ]
  %54 = icmp ult i32 %.1, 8
  br i1 %54, label %55, label %80

55:                                               ; preds = %53
  %56 = zext i32 %.1 to i64
  %57 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 6, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.block*, %struct.block** @blocks, align 8
  %62 = zext i32 %.1 to i64
  %63 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 6, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.block, %struct.block* %61, i64 %65, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.block*, %struct.block** @blocks, align 8
  %71 = zext i32 %.1 to i64
  %72 = getelementptr inbounds %struct.parent, %struct.parent* %29, i64 %30, i32 6, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.block, %struct.block* %70, i64 %74, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %69, %60
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.1, 1
  br label %53, !llvm.loop !13

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %48
  br label %82

82:                                               ; preds = %81, %28
  br label %83

83:                                               ; preds = %82
  %84 = add nuw nsw i32 %.0, 1
  br label %25, !llvm.loop !14

85:                                               ; preds = %25
  ret void
}

declare dso_local void @check_objects() #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @refine_level() #2 {
  %1 = load i32, i32* @cur_max_level, align 4
  br label %2

2:                                                ; preds = %450, %0
  %.0 = phi i32 [ %1, %0 ], [ %451, %450 ]
  %3 = icmp sgt i32 %.0, -1
  br i1 %3, label %4, label %452

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %275, %4
  %6 = load i32*, i32** @sorted_index, align 8
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  br label %10

10:                                               ; preds = %272, %5
  %.016 = phi i32 [ %9, %5 ], [ %273, %272 ]
  %.08 = phi i32 [ 0, %5 ], [ %.20, %272 ]
  %11 = load i32*, i32** @sorted_index, align 8
  %12 = add nsw i32 %.0, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.016, %15
  br i1 %16, label %17, label %274

17:                                               ; preds = %10
  %18 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %19 = sext i32 %.016 to i64
  %20 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %18, i64 %19, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.block*, %struct.block** @blocks, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %271

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, %.0
  br i1 %30, label %31, label %271

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %199

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 4
  %37 = load i32, i32* %36, align 8
  %.not22 = icmp eq i32 %37, -1
  br i1 %.not22, label %89, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @my_pe, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %38
  %44 = load %struct.parent*, %struct.parent** @parents, align 8
  %45 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 5
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %86, %53
  %.19 = phi i32 [ %.08, %53 ], [ %.311, %86 ]
  %.03 = phi i32 [ 0, %53 ], [ %87, %86 ]
  %55 = icmp ult i32 %.03, 8
  br i1 %55, label %56, label %88

56:                                               ; preds = %54
  %57 = zext i32 %.03 to i64
  %58 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 7, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @my_pe, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = zext i32 %.03 to i64
  %64 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 6, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.block*, %struct.block** @blocks, align 8
  %69 = zext i32 %.03 to i64
  %70 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 6, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.block, %struct.block* %68, i64 %72, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.block*, %struct.block** @blocks, align 8
  %78 = zext i32 %.03 to i64
  %79 = getelementptr inbounds %struct.parent, %struct.parent* %44, i64 %47, i32 6, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.block, %struct.block* %77, i64 %81, i32 2
  store i32 0, i32* %82, align 8
  %83 = add nsw i32 %.19, 1
  br label %84

84:                                               ; preds = %76, %67
  %.210 = phi i32 [ %83, %76 ], [ %.19, %67 ]
  br label %85

85:                                               ; preds = %84, %62, %56
  %.311 = phi i32 [ %.210, %84 ], [ %.19, %62 ], [ %.19, %56 ]
  br label %86

86:                                               ; preds = %85
  %87 = add nuw nsw i32 %.03, 1
  br label %54, !llvm.loop !15

88:                                               ; preds = %54
  br label %89

89:                                               ; preds = %88, %38, %35
  %.412 = phi i32 [ %.19, %88 ], [ %.08, %38 ], [ %.08, %35 ]
  br label %90

90:                                               ; preds = %196, %89
  %.5 = phi i32 [ %.412, %89 ], [ %.15, %196 ]
  %.01 = phi i32 [ 0, %89 ], [ %197, %196 ]
  %91 = icmp ult i32 %.01, 6
  br i1 %91, label %92, label %198

92:                                               ; preds = %90
  %93 = zext i32 %.01 to i64
  %94 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 8, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, %.0
  br i1 %96, label %97, label %171

97:                                               ; preds = %92
  %98 = zext i32 %.01 to i64
  %99 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 9, i64 %98, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %170

102:                                              ; preds = %97
  %103 = load %struct.block*, %struct.block** @blocks, align 8
  %104 = sext i32 %100 to i64
  %105 = getelementptr inbounds %struct.block, %struct.block* %103, i64 %104, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %169

108:                                              ; preds = %102
  %109 = load %struct.block*, %struct.block** @blocks, align 8
  %110 = sext i32 %100 to i64
  %111 = getelementptr inbounds %struct.block, %struct.block* %109, i64 %110, i32 2
  store i32 0, i32* %111, align 8
  %112 = add nsw i32 %.5, 1
  %113 = load %struct.block*, %struct.block** @blocks, align 8
  %114 = sext i32 %100 to i64
  %115 = getelementptr inbounds %struct.block, %struct.block* %113, i64 %114, i32 4
  %116 = load i32, i32* %115, align 8
  %.not24 = icmp eq i32 %116, -1
  br i1 %.not24, label %168, label %117

117:                                              ; preds = %108
  %118 = load %struct.block*, %struct.block** @blocks, align 8
  %119 = sext i32 %100 to i64
  %120 = getelementptr inbounds %struct.block, %struct.block* %118, i64 %119, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @my_pe, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %168

124:                                              ; preds = %117
  %125 = load %struct.parent*, %struct.parent** @parents, align 8
  %126 = sext i32 %116 to i64
  %127 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 5
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %124
  br label %133

133:                                              ; preds = %165, %132
  %.6 = phi i32 [ %112, %132 ], [ %.8, %165 ]
  %.14 = phi i32 [ 0, %132 ], [ %166, %165 ]
  %134 = icmp ult i32 %.14, 8
  br i1 %134, label %135, label %167

135:                                              ; preds = %133
  %136 = zext i32 %.14 to i64
  %137 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 7, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @my_pe, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %135
  %142 = zext i32 %.14 to i64
  %143 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 6, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load %struct.block*, %struct.block** @blocks, align 8
  %148 = zext i32 %.14 to i64
  %149 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 6, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.block, %struct.block* %147, i64 %151, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load %struct.block*, %struct.block** @blocks, align 8
  %157 = zext i32 %.14 to i64
  %158 = getelementptr inbounds %struct.parent, %struct.parent* %125, i64 %126, i32 6, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.block, %struct.block* %156, i64 %160, i32 2
  store i32 0, i32* %161, align 8
  %162 = add nsw i32 %.6, 1
  br label %163

163:                                              ; preds = %155, %146
  %.7 = phi i32 [ %162, %155 ], [ %.6, %146 ]
  br label %164

164:                                              ; preds = %163, %141, %135
  %.8 = phi i32 [ %.7, %163 ], [ %.6, %141 ], [ %.6, %135 ]
  br label %165

165:                                              ; preds = %164
  %166 = add nuw nsw i32 %.14, 1
  br label %133, !llvm.loop !16

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %167, %117, %108
  %.9 = phi i32 [ %.6, %167 ], [ %112, %117 ], [ %112, %108 ]
  br label %169

169:                                              ; preds = %168, %102
  %.10 = phi i32 [ %.9, %168 ], [ %.5, %102 ]
  br label %170

170:                                              ; preds = %169, %97
  %.11 = phi i32 [ %.10, %169 ], [ %.5, %97 ]
  br label %195

171:                                              ; preds = %92
  %172 = zext i32 %.01 to i64
  %173 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 8, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %.0, -1
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = zext i32 %.01 to i64
  %179 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 9, i64 %178, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load %struct.block*, %struct.block** @blocks, align 8
  %184 = sext i32 %180 to i64
  %185 = getelementptr inbounds %struct.block, %struct.block* %183, i64 %184, i32 2
  %186 = load i32, i32* %185, align 8
  %.not23 = icmp eq i32 %186, 1
  br i1 %.not23, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.block*, %struct.block** @blocks, align 8
  %189 = sext i32 %180 to i64
  %190 = getelementptr inbounds %struct.block, %struct.block* %188, i64 %189, i32 2
  store i32 1, i32* %190, align 8
  %191 = add nsw i32 %.5, 1
  br label %192

192:                                              ; preds = %187, %182
  %.12 = phi i32 [ %191, %187 ], [ %.5, %182 ]
  br label %193

193:                                              ; preds = %192, %177
  %.13 = phi i32 [ %.12, %192 ], [ %.5, %177 ]
  br label %194

194:                                              ; preds = %193, %171
  %.1413 = phi i32 [ %.13, %193 ], [ %.5, %171 ]
  br label %195

195:                                              ; preds = %194, %170
  %.15 = phi i32 [ %.11, %170 ], [ %.1413, %194 ]
  br label %196

196:                                              ; preds = %195
  %197 = add nuw nsw i32 %.01, 1
  br label %90, !llvm.loop !17

198:                                              ; preds = %90
  br label %270

199:                                              ; preds = %31
  %200 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %269

203:                                              ; preds = %199
  br label %204

204:                                              ; preds = %266, %203
  %.16 = phi i32 [ %.08, %203 ], [ %.17, %266 ]
  %.1 = phi i32 [ 0, %203 ], [ %267, %266 ]
  %205 = icmp ult i32 %.1, 6
  br i1 %205, label %206, label %268

206:                                              ; preds = %204
  %207 = zext i32 %.1 to i64
  %208 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 8, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %.0, 1
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %265

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 2
  store i32 0, i32* %213, align 8
  %214 = add nsw i32 %.16, 1
  %215 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 4
  %216 = load i32, i32* %215, align 8
  %.not21 = icmp eq i32 %216, -1
  br i1 %.not21, label %264, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.block, %struct.block* %22, i64 %23, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @my_pe, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %264

222:                                              ; preds = %217
  %223 = load %struct.parent*, %struct.parent** @parents, align 8
  %224 = sext i32 %216 to i64
  %225 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 5
  store i32 0, i32* %229, align 4
  br label %230

230:                                              ; preds = %228, %222
  br label %231

231:                                              ; preds = %261, %230
  %.25 = phi i32 [ 0, %230 ], [ %262, %261 ]
  %232 = icmp ult i32 %.25, 8
  br i1 %232, label %233, label %263

233:                                              ; preds = %231
  %234 = zext i32 %.25 to i64
  %235 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 7, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @my_pe, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %233
  %240 = zext i32 %.25 to i64
  %241 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 6, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %242, -1
  br i1 %243, label %244, label %260

244:                                              ; preds = %239
  %245 = load %struct.block*, %struct.block** @blocks, align 8
  %246 = zext i32 %.25 to i64
  %247 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 6, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.block, %struct.block* %245, i64 %249, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %260

253:                                              ; preds = %244
  %254 = load %struct.block*, %struct.block** @blocks, align 8
  %255 = zext i32 %.25 to i64
  %256 = getelementptr inbounds %struct.parent, %struct.parent* %223, i64 %224, i32 6, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.block, %struct.block* %254, i64 %258, i32 2
  store i32 0, i32* %259, align 8
  br label %260

260:                                              ; preds = %253, %244, %239, %233
  br label %261

261:                                              ; preds = %260
  %262 = add nuw nsw i32 %.25, 1
  br label %231, !llvm.loop !18

263:                                              ; preds = %231
  br label %264

264:                                              ; preds = %263, %217, %212
  br label %265

265:                                              ; preds = %264, %206
  %.17 = phi i32 [ %214, %264 ], [ %.16, %206 ]
  br label %266

266:                                              ; preds = %265
  %267 = add nuw nsw i32 %.1, 1
  br label %204, !llvm.loop !19

268:                                              ; preds = %204
  br label %269

269:                                              ; preds = %268, %199
  %.18 = phi i32 [ %.16, %268 ], [ %.08, %199 ]
  br label %270

270:                                              ; preds = %269, %198
  %.1914 = phi i32 [ %.5, %198 ], [ %.18, %269 ]
  br label %271

271:                                              ; preds = %270, %27, %17
  %.20 = phi i32 [ %.1914, %270 ], [ %.08, %27 ], [ %.08, %17 ]
  br label %272

272:                                              ; preds = %271
  %273 = add nsw i32 %.016, 1
  br label %10, !llvm.loop !20

274:                                              ; preds = %10
  br label %275

275:                                              ; preds = %274
  %.not = icmp eq i32 %.08, 0
  br i1 %.not, label %276, label %5, !llvm.loop !21

276:                                              ; preds = %275
  br label %277

277:                                              ; preds = %448, %276
  %278 = load i32*, i32** @sorted_index, align 8
  %279 = sext i32 %.0 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  %281 = load i32, i32* %280, align 4
  br label %282

282:                                              ; preds = %445, %277
  %.117 = phi i32 [ %281, %277 ], [ %446, %445 ]
  %.21 = phi i32 [ 0, %277 ], [ %.27, %445 ]
  %283 = load i32*, i32** @sorted_index, align 8
  %284 = add nsw i32 %.0, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %.117, %287
  br i1 %288, label %289, label %447

289:                                              ; preds = %282
  %290 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %291 = sext i32 %.117 to i64
  %292 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %290, i64 %291, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.block*, %struct.block** @blocks, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %297, -1
  br i1 %298, label %299, label %444

299:                                              ; preds = %289
  %300 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, %.0
  br i1 %302, label %303, label %443

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %443

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %440, %307
  %.22 = phi i32 [ %.21, %307 ], [ %.2515, %440 ]
  %.07 = phi i32 [ 0, %307 ], [ %441, %440 ]
  %309 = icmp ult i32 %.07, 6
  br i1 %309, label %310, label %442

310:                                              ; preds = %308
  %311 = zext i32 %.07 to i64
  %312 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 8, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %.0, -1
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %388

316:                                              ; preds = %310
  %317 = zext i32 %.07 to i64
  %318 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 9, i64 %317, i64 0, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %387

321:                                              ; preds = %316
  %322 = load %struct.block*, %struct.block** @blocks, align 8
  %323 = sext i32 %319 to i64
  %324 = getelementptr inbounds %struct.block, %struct.block* %322, i64 %323, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %327, label %386

327:                                              ; preds = %321
  %328 = load %struct.block*, %struct.block** @blocks, align 8
  %329 = sext i32 %319 to i64
  %330 = getelementptr inbounds %struct.block, %struct.block* %328, i64 %329, i32 2
  store i32 0, i32* %330, align 8
  %331 = add nsw i32 %.22, 1
  %332 = load %struct.block*, %struct.block** @blocks, align 8
  %333 = sext i32 %319 to i64
  %334 = getelementptr inbounds %struct.block, %struct.block* %332, i64 %333, i32 4
  %335 = load i32, i32* %334, align 8
  %.not20 = icmp eq i32 %335, -1
  br i1 %.not20, label %385, label %336

336:                                              ; preds = %327
  %337 = load %struct.block*, %struct.block** @blocks, align 8
  %338 = sext i32 %319 to i64
  %339 = getelementptr inbounds %struct.block, %struct.block* %337, i64 %338, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @my_pe, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %385

343:                                              ; preds = %336
  %344 = load %struct.parent*, %struct.parent** @parents, align 8
  %345 = sext i32 %335 to i64
  %346 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %384

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 5
  store i32 0, i32* %350, align 4
  br label %351

351:                                              ; preds = %381, %349
  %.36 = phi i32 [ 0, %349 ], [ %382, %381 ]
  %352 = icmp ult i32 %.36, 8
  br i1 %352, label %353, label %383

353:                                              ; preds = %351
  %354 = zext i32 %.36 to i64
  %355 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 7, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @my_pe, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %380

359:                                              ; preds = %353
  %360 = zext i32 %.36 to i64
  %361 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 6, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %362, -1
  br i1 %363, label %364, label %380

364:                                              ; preds = %359
  %365 = load %struct.block*, %struct.block** @blocks, align 8
  %366 = zext i32 %.36 to i64
  %367 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 6, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.block, %struct.block* %365, i64 %369, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %373, label %380

373:                                              ; preds = %364
  %374 = load %struct.block*, %struct.block** @blocks, align 8
  %375 = zext i32 %.36 to i64
  %376 = getelementptr inbounds %struct.parent, %struct.parent* %344, i64 %345, i32 6, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.block, %struct.block* %374, i64 %378, i32 2
  store i32 0, i32* %379, align 8
  br label %380

380:                                              ; preds = %373, %364, %359, %353
  br label %381

381:                                              ; preds = %380
  %382 = add nuw nsw i32 %.36, 1
  br label %351, !llvm.loop !22

383:                                              ; preds = %351
  br label %384

384:                                              ; preds = %383, %343
  br label %385

385:                                              ; preds = %384, %336, %327
  br label %386

386:                                              ; preds = %385, %321
  %.23 = phi i32 [ %331, %385 ], [ %.22, %321 ]
  br label %387

387:                                              ; preds = %386, %316
  %.24 = phi i32 [ %.23, %386 ], [ %.22, %316 ]
  br label %439

388:                                              ; preds = %310
  %389 = zext i32 %.07 to i64
  %390 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 8, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = icmp eq i32 %391, %.0
  br i1 %392, label %393, label %405

393:                                              ; preds = %388
  %394 = zext i32 %.07 to i64
  %395 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 9, i64 %394, i64 0, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp sgt i32 %396, -1
  br i1 %397, label %398, label %404

398:                                              ; preds = %393
  %399 = load %struct.block*, %struct.block** @blocks, align 8
  %400 = sext i32 %396 to i64
  %401 = xor i32 %.07, 1
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds %struct.block, %struct.block* %399, i64 %400, i32 7, i64 %402
  store i32 0, i32* %403, align 4
  br label %404

404:                                              ; preds = %398, %393
  br label %438

405:                                              ; preds = %388
  %406 = zext i32 %.07 to i64
  %407 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 8, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %.0, 1
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %437

411:                                              ; preds = %405
  %412 = xor i32 %.07, 1
  br label %413

413:                                              ; preds = %434, %411
  %.2 = phi i32 [ 0, %411 ], [ %435, %434 ]
  %414 = icmp ult i32 %.2, 2
  br i1 %414, label %415, label %436

415:                                              ; preds = %413
  br label %416

416:                                              ; preds = %431, %415
  %.02 = phi i32 [ 0, %415 ], [ %432, %431 ]
  %417 = icmp ult i32 %.02, 2
  br i1 %417, label %418, label %433

418:                                              ; preds = %416
  %419 = zext i32 %.07 to i64
  %420 = zext i32 %.2 to i64
  %421 = zext i32 %.02 to i64
  %422 = getelementptr inbounds %struct.block, %struct.block* %294, i64 %295, i32 9, i64 %419, i64 %420, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = icmp sgt i32 %423, -1
  br i1 %424, label %425, label %430

425:                                              ; preds = %418
  %426 = load %struct.block*, %struct.block** @blocks, align 8
  %427 = sext i32 %423 to i64
  %428 = zext i32 %412 to i64
  %429 = getelementptr inbounds %struct.block, %struct.block* %426, i64 %427, i32 7, i64 %428
  store i32 0, i32* %429, align 4
  br label %430

430:                                              ; preds = %425, %418
  br label %431

431:                                              ; preds = %430
  %432 = add nuw nsw i32 %.02, 1
  br label %416, !llvm.loop !23

433:                                              ; preds = %416
  br label %434

434:                                              ; preds = %433
  %435 = add nuw nsw i32 %.2, 1
  br label %413, !llvm.loop !24

436:                                              ; preds = %413
  br label %437

437:                                              ; preds = %436, %405
  br label %438

438:                                              ; preds = %437, %404
  br label %439

439:                                              ; preds = %438, %387
  %.2515 = phi i32 [ %.24, %387 ], [ %.22, %438 ]
  br label %440

440:                                              ; preds = %439
  %441 = add nuw nsw i32 %.07, 1
  br label %308, !llvm.loop !25

442:                                              ; preds = %308
  br label %443

443:                                              ; preds = %442, %303, %299
  %.26 = phi i32 [ %.22, %442 ], [ %.21, %303 ], [ %.21, %299 ]
  br label %444

444:                                              ; preds = %443, %289
  %.27 = phi i32 [ %.26, %443 ], [ %.21, %289 ]
  br label %445

445:                                              ; preds = %444
  %446 = add nsw i32 %.117, 1
  br label %282, !llvm.loop !26

447:                                              ; preds = %282
  br label %448

448:                                              ; preds = %447
  %.not19 = icmp eq i32 %.21, 0
  br i1 %.not19, label %449, label %277, !llvm.loop !27

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  %451 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !28

452:                                              ; preds = %2
  br label %453

453:                                              ; preds = %474, %452
  %.218 = phi i32 [ 0, %452 ], [ %475, %474 ]
  %.3 = phi i32 [ 0, %452 ], [ %.4, %474 ]
  %454 = load i32*, i32** @sorted_index, align 8
  %455 = load i32, i32* @num_refine, align 4
  %456 = add nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = icmp slt i32 %.218, %459
  br i1 %460, label %461, label %476

461:                                              ; preds = %453
  %462 = load %struct.block*, %struct.block** @blocks, align 8
  %463 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %464 = zext i32 %.218 to i64
  %465 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %463, i64 %464, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.block, %struct.block* %462, i64 %467, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %471, label %473

471:                                              ; preds = %461
  %472 = add nsw i32 %.3, 1
  br label %473

473:                                              ; preds = %471, %461
  %.4 = phi i32 [ %472, %471 ], [ %.3, %461 ]
  br label %474

474:                                              ; preds = %473
  %475 = add nuw nsw i32 %.218, 1
  br label %453, !llvm.loop !29

476:                                              ; preds = %453
  ret i32 %.3
}

declare dso_local void @split_blocks() #1

declare dso_local void @consolidate_blocks() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @reduce_blocks(...) #1

declare dso_local void @add_blocks(...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
