; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/check_sum.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/check_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sorted_block = type { i32, i32 }
%struct.block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], [6 x [2 x [2 x i32]]], [3 x i32], double**** }
%struct.parent = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [3 x i32] }
%struct.object = type { i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@sorted_index = dso_local global i32* null, align 8
@num_refine = dso_local global i32 0, align 4
@sorted_list = dso_local global %struct.sorted_block* null, align 8
@blocks = dso_local global %struct.block* null, align 8
@x_block_size = dso_local global i32 0, align 4
@y_block_size = dso_local global i32 0, align 4
@z_block_size = dso_local global i32 0, align 4
@timer_cs_calc = dso_local global double 0.000000e+00, align 8
@total_red = dso_local global i32 0, align 4
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
@timer_refine_all = dso_local global double 0.000000e+00, align 8
@timer_refine_co = dso_local global double 0.000000e+00, align 8
@timer_refine_mr = dso_local global double 0.000000e+00, align 8
@timer_refine_sb = dso_local global double 0.000000e+00, align 8
@timer_refine_cc = dso_local global double 0.000000e+00, align 8
@timer_cb_all = dso_local global double 0.000000e+00, align 8
@timer_target_all = dso_local global double 0.000000e+00, align 8
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

; Function Attrs: noinline nounwind uwtable
define dso_local double @check_sum(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.block*, align 8
  store i32 %0, i32* %2, align 4
  %13 = call double @timer()
  store double %13, double* %10, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %91, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** @sorted_index, align 8
  %17 = load i32, i32* @num_refine, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %14
  %24 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %24, i64 %26
  %28 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  %30 = load %struct.block*, %struct.block** @blocks, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.block, %struct.block* %30, i64 %32
  store %struct.block* %33, %struct.block** %12, align 8
  %34 = load %struct.block*, %struct.block** %12, align 8
  %35 = getelementptr inbounds %struct.block, %struct.block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %23
  store double 0.000000e+00, double* %9, align 8
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %83, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @x_block_size, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %79, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @y_block_size, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @z_block_size, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.block*, %struct.block** %12, align 8
  %55 = getelementptr inbounds %struct.block, %struct.block* %54, i32 0, i32 11
  %56 = load double****, double***** %55, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double***, double**** %56, i64 %58
  %60 = load double***, double**** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double**, double*** %60, i64 %62
  %64 = load double**, double*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double*, double** %64, i64 %66
  %68 = load double*, double** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = load double, double* %9, align 8
  %74 = fadd double %73, %72
  store double %74, double* %9, align 8
  br label %75

75:                                               ; preds = %53
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %49, !llvm.loop !4

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %44, !llvm.loop !6

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %39, !llvm.loop !7

86:                                               ; preds = %39
  %87 = load double, double* %9, align 8
  %88 = load double, double* %8, align 8
  %89 = fadd double %88, %87
  store double %89, double* %8, align 8
  br label %90

90:                                               ; preds = %86, %23
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %14, !llvm.loop !8

94:                                               ; preds = %14
  %95 = call double @timer()
  store double %95, double* %11, align 8
  %96 = load double, double* %11, align 8
  %97 = load double, double* %10, align 8
  %98 = fsub double %96, %97
  %99 = load double, double* @timer_cs_calc, align 8
  %100 = fadd double %99, %98
  store double %100, double* @timer_cs_calc, align 8
  %101 = load i32, i32* @total_red, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @total_red, align 4
  %103 = load double, double* %8, align 8
  ret double %103
}

declare dso_local double @timer() #1

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
