; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/target.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parent = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [3 x i32] }
%struct.block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], [6 x [2 x [2 x i32]]], [3 x i32], double**** }
%struct.sorted_block = type { i32, i32 }
%struct.object = type { i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@target_active = dso_local global i32 0, align 4
@global_active = dso_local global i32 0, align 4
@num_pes = dso_local global i32 0, align 4
@num_refine = dso_local global i32 0, align 4
@max_active_parent = dso_local global i32 0, align 4
@parents = dso_local global %struct.parent* null, align 8
@my_pe = dso_local global i32 0, align 4
@blocks = dso_local global %struct.block* null, align 8
@timer_target_rb = dso_local global double 0.000000e+00, align 8
@timer_target_dc = dso_local global double 0.000000e+00, align 8
@timer_target_cb = dso_local global double 0.000000e+00, align 8
@num_blocks = dso_local global i32* null, align 8
@cur_max_level = dso_local global i32 0, align 4
@sorted_index = dso_local global i32* null, align 8
@sorted_list = dso_local global %struct.sorted_block* null, align 8
@timer_target_ab = dso_local global double 0.000000e+00, align 8
@timer_target_da = dso_local global double 0.000000e+00, align 8
@timer_target_sb = dso_local global double 0.000000e+00, align 8
@max_num_blocks = dso_local global i32 0, align 4
@target_max = dso_local global i32 0, align 4
@target_min = dso_local global i32 0, align 4
@uniform_refine = dso_local global i32 0, align 4
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
@block_start = dso_local global i32* null, align 8
@num_active = dso_local global i32 0, align 4
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
@local_max_b = dso_local global i32 0, align 4
@global_max_b = dso_local global i32 0, align 4
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
@timer_refine_co = dso_local global double 0.000000e+00, align 8
@timer_refine_mr = dso_local global double 0.000000e+00, align 8
@timer_refine_sb = dso_local global double 0.000000e+00, align 8
@timer_refine_cc = dso_local global double 0.000000e+00, align 8
@timer_cb_all = dso_local global double 0.000000e+00, align 8
@timer_target_all = dso_local global double 0.000000e+00, align 8
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
define dso_local i32 @reduce_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.parent*, align 8
  store i32 0, i32* %9, align 4
  store double 0.000000e+00, double* %12, align 8
  %14 = call double @timer()
  store double %14, double* %10, align 8
  call void @zero_refine()
  %15 = load i32, i32* @target_active, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load i32, i32* @global_active, align 4
  %19 = load i32, i32* @num_pes, align 4
  %20 = load i32, i32* @target_active, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sub nsw i32 %18, %21
  %23 = add nsw i32 %22, 3
  %24 = sdiv i32 %23, 7
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %0
  %26 = load i32, i32* @global_active, align 4
  %27 = load i32, i32* @num_pes, align 4
  %28 = load i32, i32* @target_active, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sub nsw i32 %26, %29
  %31 = sdiv i32 %30, 7
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %17
  store i32 0, i32* %7, align 4
  %33 = load i32, i32* @num_refine, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %146, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %149

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @max_active_parent, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load %struct.parent*, %struct.parent** @parents, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.parent, %struct.parent* %45, i64 %47
  store %struct.parent* %48, %struct.parent** %13, align 8
  %49 = getelementptr inbounds %struct.parent, %struct.parent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.parent*, %struct.parent** %13, align 8
  %54 = getelementptr inbounds %struct.parent, %struct.parent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %40, !llvm.loop !4

66:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %134, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @max_active_parent, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %77, label %137

77:                                               ; preds = %75
  %78 = load %struct.parent*, %struct.parent** @parents, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.parent, %struct.parent* %78, i64 %80
  store %struct.parent* %81, %struct.parent** %13, align 8
  %82 = getelementptr inbounds %struct.parent, %struct.parent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %77
  %86 = load %struct.parent*, %struct.parent** %13, align 8
  %87 = getelementptr inbounds %struct.parent, %struct.parent* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %1, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %85
  %92 = load %struct.parent*, %struct.parent** %13, align 8
  %93 = getelementptr inbounds %struct.parent, %struct.parent* %92, i32 0, i32 5
  store i32 -1, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %128, %91
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %131

99:                                               ; preds = %96
  %100 = load %struct.parent*, %struct.parent** %13, align 8
  %101 = getelementptr inbounds %struct.parent, %struct.parent* %100, i32 0, i32 7
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %101, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @my_pe, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %99
  %109 = load %struct.parent*, %struct.parent** %13, align 8
  %110 = getelementptr inbounds %struct.parent, %struct.parent* %109, i32 0, i32 6
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %110, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %108
  %117 = load %struct.block*, %struct.block** @blocks, align 8
  %118 = load %struct.parent*, %struct.parent** %13, align 8
  %119 = getelementptr inbounds %struct.parent, %struct.parent* %118, i32 0, i32 6
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %119, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.block, %struct.block* %117, i64 %124
  %126 = getelementptr inbounds %struct.block, %struct.block* %125, i32 0, i32 2
  store i32 -1, i32* %126, align 8
  br label %127

127:                                              ; preds = %116, %108, %99
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %96, !llvm.loop !6

131:                                              ; preds = %96
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %132, %77
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %67, !llvm.loop !7

137:                                              ; preds = %75
  %138 = call double @timer()
  %139 = load double, double* %11, align 8
  %140 = fsub double %138, %139
  store double %140, double* %11, align 8
  call void @consolidate_blocks()
  %141 = call double @timer()
  %142 = load double, double* %11, align 8
  %143 = fsub double %141, %142
  %144 = load double, double* %12, align 8
  %145 = fadd double %144, %143
  store double %145, double* %12, align 8
  br label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %1, align 4
  br label %35, !llvm.loop !8

149:                                              ; preds = %35
  %150 = call double @timer()
  %151 = load double, double* %10, align 8
  %152 = fsub double %150, %151
  %153 = load double, double* @timer_target_rb, align 8
  %154 = fadd double %153, %152
  store double %154, double* @timer_target_rb, align 8
  %155 = call double @timer()
  %156 = load double, double* %10, align 8
  %157 = fsub double %155, %156
  %158 = load double, double* %12, align 8
  %159 = fsub double %157, %158
  %160 = load double, double* @timer_target_dc, align 8
  %161 = fadd double %160, %159
  store double %161, double* @timer_target_dc, align 8
  %162 = load double, double* %12, align 8
  %163 = load double, double* @timer_target_cb, align 8
  %164 = fadd double %163, %162
  store double %164, double* @timer_target_cb, align 8
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local double @timer() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zero_refine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.parent*, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %55, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** @sorted_index, align 8
  %9 = load i32, i32* @num_refine, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %58

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
  br i1 %28, label %29, label %54

29:                                               ; preds = %15
  %30 = load %struct.block*, %struct.block** %4, align 8
  %31 = getelementptr inbounds %struct.block, %struct.block* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %50, %29
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct.block*, %struct.block** %4, align 8
  %37 = getelementptr inbounds %struct.block, %struct.block* %36, i32 0, i32 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %37, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.block*, %struct.block** %4, align 8
  %45 = getelementptr inbounds %struct.block, %struct.block* %44, i32 0, i32 7
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %45, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %32, !llvm.loop !9

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %6, !llvm.loop !10

58:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @max_active_parent, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.parent*, %struct.parent** @parents, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.parent, %struct.parent* %64, i64 %66
  store %struct.parent* %67, %struct.parent** %5, align 8
  %68 = getelementptr inbounds %struct.parent, %struct.parent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.parent*, %struct.parent** %5, align 8
  %73 = getelementptr inbounds %struct.parent, %struct.parent* %72, i32 0, i32 5
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %59, !llvm.loop !11

78:                                               ; preds = %59
  ret void
}

declare dso_local void @consolidate_blocks() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.block*, align 8
  store double 0.000000e+00, double* %10, align 8
  %12 = call double @timer()
  store double %12, double* %8, align 8
  %13 = load i32, i32* @target_active, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %0
  %16 = load i32, i32* @num_pes, align 4
  %17 = load i32, i32* @target_active, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %18, 3
  %20 = load i32, i32* @global_active, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sdiv i32 %21, 7
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %0
  %24 = load i32, i32* @num_pes, align 4
  %25 = load i32, i32* @target_active, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @global_active, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sdiv i32 %28, 7
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %15
  store i32 0, i32* %1, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %106, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %109

35:                                               ; preds = %31
  call void @zero_refine()
  %36 = load i32, i32* @num_refine, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %50, %35
  %38 = load i32, i32* %3, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32*, i32** @num_blocks, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* @cur_max_level, align 4
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %3, align 4
  br label %37, !llvm.loop !12

53:                                               ; preds = %47, %37
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %96, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** @sorted_index, align 8
  %61 = load i32, i32* @num_refine, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %59, %65
  br label %67

67:                                               ; preds = %58, %54
  %68 = phi i1 [ false, %54 ], [ %66, %58 ]
  br i1 %68, label %69, label %99

69:                                               ; preds = %67
  %70 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %70, i64 %72
  %74 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %4, align 4
  %76 = load %struct.block*, %struct.block** @blocks, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.block, %struct.block* %76, i64 %78
  store %struct.block* %79, %struct.block** %11, align 8
  %80 = getelementptr inbounds %struct.block, %struct.block* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %69
  %84 = load %struct.block*, %struct.block** %11, align 8
  %85 = getelementptr inbounds %struct.block, %struct.block* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %1, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.block*, %struct.block** %11, align 8
  %91 = getelementptr inbounds %struct.block, %struct.block* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %89, %83
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %54, !llvm.loop !13

99:                                               ; preds = %67
  %100 = call double @timer()
  store double %100, double* %9, align 8
  call void @split_blocks()
  %101 = call double @timer()
  %102 = load double, double* %9, align 8
  %103 = fsub double %101, %102
  %104 = load double, double* %10, align 8
  %105 = fadd double %104, %103
  store double %105, double* %10, align 8
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %1, align 4
  br label %31, !llvm.loop !14

109:                                              ; preds = %31
  %110 = call double @timer()
  %111 = load double, double* %8, align 8
  %112 = fsub double %110, %111
  %113 = load double, double* @timer_target_ab, align 8
  %114 = fadd double %113, %112
  store double %114, double* @timer_target_ab, align 8
  %115 = call double @timer()
  %116 = load double, double* %8, align 8
  %117 = fsub double %115, %116
  %118 = load double, double* %10, align 8
  %119 = fsub double %117, %118
  %120 = load double, double* @timer_target_da, align 8
  %121 = fadd double %120, %119
  store double %121, double* @timer_target_da, align 8
  %122 = load double, double* %10, align 8
  %123 = load double, double* @timer_target_sb, align 8
  %124 = fadd double %123, %122
  store double %124, double* @timer_target_sb, align 8
  ret void
}

declare dso_local void @split_blocks() #1

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
