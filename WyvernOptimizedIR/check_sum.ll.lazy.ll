; ModuleID = './check_sum.ll'
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
  %2 = call double @timer() #2
  br label %3

3:                                                ; preds = %57, %1
  %.03 = phi i32 [ 0, %1 ], [ %58, %57 ]
  %.01 = phi double [ 0.000000e+00, %1 ], [ %.12, %57 ]
  %4 = load i32*, i32** @sorted_index, align 8
  %5 = load i32, i32* @num_refine, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %.03, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %3
  %12 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %12, i64 %13, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.block*, %struct.block** @blocks, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.block, %struct.block* %16, i64 %17, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %56

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %52, %21
  %.04 = phi i32 [ 1, %21 ], [ %53, %52 ]
  %.0 = phi double [ 0.000000e+00, %21 ], [ %.1, %52 ]
  %23 = load i32, i32* @x_block_size, align 4
  %.not = icmp sgt i32 %.04, %23
  br i1 %.not, label %54, label %24

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %49, %24
  %.05 = phi i32 [ 1, %24 ], [ %50, %49 ]
  %.1 = phi double [ %.0, %24 ], [ %.2, %49 ]
  %26 = load i32, i32* @y_block_size, align 4
  %.not7 = icmp sgt i32 %.05, %26
  br i1 %.not7, label %51, label %27

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %31, %27
  %.06 = phi i32 [ 1, %27 ], [ %47, %31 ]
  %.2 = phi double [ %.1, %27 ], [ %46, %31 ]
  %29 = load i32, i32* @z_block_size, align 4
  %.not8 = icmp sgt i32 %.06, %29
  br i1 %.not8, label %48, label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.block, %struct.block* %16, i64 %17, i32 11
  %33 = load double****, double***** %32, align 8
  %34 = sext i32 %0 to i64
  %35 = getelementptr inbounds double***, double**** %33, i64 %34
  %36 = load double***, double**** %35, align 8
  %37 = zext i32 %.04 to i64
  %38 = getelementptr inbounds double**, double*** %36, i64 %37
  %39 = load double**, double*** %38, align 8
  %40 = zext i32 %.05 to i64
  %41 = getelementptr inbounds double*, double** %39, i64 %40
  %42 = load double*, double** %41, align 8
  %43 = zext i32 %.06 to i64
  %44 = getelementptr inbounds double, double* %42, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fadd double %.2, %45
  %47 = add nuw nsw i32 %.06, 1
  br label %28, !llvm.loop !4

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.05, 1
  br label %25, !llvm.loop !6

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.04, 1
  br label %22, !llvm.loop !7

54:                                               ; preds = %22
  %55 = fadd double %.01, %.0
  br label %56

56:                                               ; preds = %54, %11
  %.12 = phi double [ %55, %54 ], [ %.01, %11 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.03, 1
  br label %3, !llvm.loop !8

59:                                               ; preds = %3
  %60 = call double @timer() #2
  %61 = fsub double %60, %2
  %62 = load double, double* @timer_cs_calc, align 8
  %63 = fadd double %62, %61
  store double %63, double* @timer_cs_calc, align 8
  %64 = load i32, i32* @total_red, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @total_red, align 4
  ret double %.01
}

declare dso_local double @timer() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
