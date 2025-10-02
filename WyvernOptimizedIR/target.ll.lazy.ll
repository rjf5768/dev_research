; ModuleID = './target.ll'
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
  %1 = call double @timer() #3
  call void @zero_refine()
  %2 = load i32, i32* @target_active, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @global_active, align 4
  %5 = load i32, i32* @num_pes, align 4
  %6 = load i32, i32* @target_active, align 4
  %7 = mul nsw i32 %5, %6
  %8 = sub nsw i32 %4, %7
  %9 = add nsw i32 %8, 3
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @global_active, align 4
  %12 = load i32, i32* @num_pes, align 4
  %13 = load i32, i32* @target_active, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sub nsw i32 %11, %14
  br label %16

16:                                               ; preds = %10, %3
  %.04.in = phi i32 [ %9, %3 ], [ %15, %10 ]
  %.04 = sdiv i32 %.04.in, 7
  %17 = load i32, i32* @num_refine, align 4
  br label %18

18:                                               ; preds = %93, %16
  %.011 = phi double [ undef, %16 ], [ %91, %93 ]
  %.07 = phi i32 [ undef, %16 ], [ %.18, %93 ]
  %.05 = phi i32 [ 0, %16 ], [ %.16, %93 ]
  %.01 = phi double [ 0.000000e+00, %16 ], [ %95, %93 ]
  %.0.in = phi i32 [ %17, %16 ], [ %.0, %93 ]
  %.0 = add nsw i32 %.0.in, -1
  %19 = icmp slt i32 %.05, %.04
  br i1 %19, label %20, label %96

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %38, %20
  %.18 = phi i32 [ %.07, %20 ], [ %.310, %38 ]
  %.02 = phi i32 [ 0, %20 ], [ %39, %38 ]
  %22 = load i32, i32* @max_active_parent, align 4
  %23 = icmp slt i32 %.02, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.parent*, %struct.parent** @parents, align 8
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds %struct.parent, %struct.parent* %25, i64 %26, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.parent, %struct.parent* %25, i64 %26, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, %.0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = add nsw i32 %.18, 1
  br label %36

36:                                               ; preds = %34, %30
  %.29 = phi i32 [ %35, %34 ], [ %.18, %30 ]
  br label %37

37:                                               ; preds = %36, %24
  %.310 = phi i32 [ %.29, %36 ], [ %.18, %24 ]
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.02, 1
  br label %21, !llvm.loop !4

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %87, %40
  %.16 = phi i32 [ %.05, %40 ], [ %.3, %87 ]
  %.1 = phi i32 [ 0, %40 ], [ %88, %87 ]
  %42 = load i32, i32* @max_active_parent, align 4
  %43 = icmp slt i32 %.1, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = icmp slt i32 %.16, %.04
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i1 [ false, %41 ], [ %45, %44 ]
  br i1 %47, label %48, label %89

48:                                               ; preds = %46
  %49 = load %struct.parent*, %struct.parent** @parents, align 8
  %50 = zext i32 %.1 to i64
  %51 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, %.0
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 5
  store i32 -1, i32* %59, align 4
  %60 = add nsw i32 %.16, 1
  br label %61

61:                                               ; preds = %82, %58
  %.03 = phi i32 [ 0, %58 ], [ %83, %82 ]
  %62 = icmp ult i32 %.03, 8
  br i1 %62, label %63, label %84

63:                                               ; preds = %61
  %64 = zext i32 %.03 to i64
  %65 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 7, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @my_pe, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = zext i32 %.03 to i64
  %71 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 6, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.block*, %struct.block** @blocks, align 8
  %76 = zext i32 %.03 to i64
  %77 = getelementptr inbounds %struct.parent, %struct.parent* %49, i64 %50, i32 6, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.block, %struct.block* %75, i64 %79, i32 2
  store i32 -1, i32* %80, align 8
  br label %81

81:                                               ; preds = %74, %69, %63
  br label %82

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %.03, 1
  br label %61, !llvm.loop !6

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %54
  %.2 = phi i32 [ %60, %84 ], [ %.16, %54 ]
  br label %86

86:                                               ; preds = %85, %48
  %.3 = phi i32 [ %.2, %85 ], [ %.16, %48 ]
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.1, 1
  br label %41, !llvm.loop !7

89:                                               ; preds = %46
  %90 = call double @timer() #3
  %91 = fsub double %90, %.011
  call void @consolidate_blocks() #3
  %92 = call double @timer() #3
  br label %93

93:                                               ; preds = %89
  %94 = fsub double %92, %91
  %95 = fadd double %.01, %94
  br label %18, !llvm.loop !8

96:                                               ; preds = %18
  %97 = call double @timer() #3
  %98 = fsub double %97, %1
  %99 = load double, double* @timer_target_rb, align 8
  %100 = fadd double %99, %98
  store double %100, double* @timer_target_rb, align 8
  %101 = call double @timer() #3
  %102 = fsub double %101, %1
  %103 = fsub double %102, %.01
  %104 = load double, double* @timer_target_dc, align 8
  %105 = fadd double %104, %103
  store double %105, double* @timer_target_dc, align 8
  %106 = load double, double* @timer_target_cb, align 8
  %107 = fadd double %106, %.01
  store double %107, double* @timer_target_cb, align 8
  ret i32 0
}

declare dso_local double @timer() #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @zero_refine() #2 {
  br label %1

1:                                                ; preds = %36, %0
  %.02 = phi i32 [ 0, %0 ], [ %37, %36 ]
  %2 = load i32*, i32** @sorted_index, align 8
  %3 = load i32, i32* @num_refine, align 4
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %2, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %.02, %7
  br i1 %8, label %9, label %38

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
  br i1 %18, label %19, label %35

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.block, %struct.block* %14, i64 %15, i32 2
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %32, %19
  %.01 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %22 = icmp ult i32 %.01, 6
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.block, %struct.block* %14, i64 %15, i32 8, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds %struct.block, %struct.block* %14, i64 %15, i32 7, i64 %29
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.01, 1
  br label %21, !llvm.loop !9

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %9
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !10

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %51, %38
  %.0 = phi i32 [ 0, %38 ], [ %52, %51 ]
  %40 = load i32, i32* @max_active_parent, align 4
  %41 = icmp slt i32 %.0, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.parent*, %struct.parent** @parents, align 8
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds %struct.parent, %struct.parent* %43, i64 %44, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.parent, %struct.parent* %43, i64 %44, i32 5
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.0, 1
  br label %39, !llvm.loop !11

53:                                               ; preds = %39
  ret void
}

declare dso_local void @consolidate_blocks() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_blocks() #0 {
  %1 = call double @timer() #3
  %2 = load i32, i32* @target_active, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @num_pes, align 4
  %5 = load i32, i32* @target_active, align 4
  %6 = mul nsw i32 %4, %5
  %7 = add nsw i32 %6, 3
  %8 = load i32, i32* @global_active, align 4
  %9 = sub nsw i32 %7, %8
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @num_pes, align 4
  %12 = load i32, i32* @target_active, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @global_active, align 4
  %15 = sub nsw i32 %13, %14
  br label %16

16:                                               ; preds = %10, %3
  %.05.in = phi i32 [ %9, %3 ], [ %15, %10 ]
  %.05 = sdiv i32 %.05.in, 7
  br label %17

17:                                               ; preds = %69, %16
  %.03 = phi i32 [ 0, %16 ], [ %.1, %69 ]
  %.01 = phi double [ 0.000000e+00, %16 ], [ %71, %69 ]
  %.0 = phi i32 [ 0, %16 ], [ %72, %69 ]
  %18 = icmp slt i32 %.03, %.05
  br i1 %18, label %19, label %73

19:                                               ; preds = %17
  call void @zero_refine()
  %20 = load i32, i32* @num_refine, align 4
  br label %21

21:                                               ; preds = %30, %19
  %.02 = phi i32 [ %20, %19 ], [ %31, %30 ]
  %22 = icmp sgt i32 %.02, -1
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %21
  %24 = load i32*, i32** @num_blocks, align 8
  %25 = sext i32 %.02 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %.not7 = icmp eq i32 %27, 0
  br i1 %.not7, label %29, label %28

28:                                               ; preds = %23
  store i32 %.02, i32* @cur_max_level, align 4
  br label %32

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.02, -1
  br label %21, !llvm.loop !12

.loopexit:                                        ; preds = %21
  br label %32

32:                                               ; preds = %.loopexit, %28
  br label %33

33:                                               ; preds = %64, %32
  %.04 = phi i32 [ 0, %32 ], [ %65, %64 ]
  %.1 = phi i32 [ %.03, %32 ], [ %.3, %64 ]
  %34 = icmp slt i32 %.1, %.05
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = load i32*, i32** @sorted_index, align 8
  %37 = load i32, i32* @num_refine, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %.04, %41
  br label %43

43:                                               ; preds = %35, %33
  %44 = phi i1 [ false, %33 ], [ %42, %35 ]
  br i1 %44, label %45, label %66

45:                                               ; preds = %43
  %46 = load %struct.sorted_block*, %struct.sorted_block** @sorted_list, align 8
  %47 = zext i32 %.04 to i64
  %48 = getelementptr inbounds %struct.sorted_block, %struct.sorted_block* %46, i64 %47, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.block*, %struct.block** @blocks, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.block, %struct.block* %50, i64 %51, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.block, %struct.block* %50, i64 %51, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, %.0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.block, %struct.block* %50, i64 %51, i32 2
  store i32 1, i32* %60, align 8
  %61 = add nsw i32 %.1, 1
  br label %62

62:                                               ; preds = %59, %55
  %.2 = phi i32 [ %61, %59 ], [ %.1, %55 ]
  br label %63

63:                                               ; preds = %62, %45
  %.3 = phi i32 [ %.2, %62 ], [ %.1, %45 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.04, 1
  br label %33, !llvm.loop !13

66:                                               ; preds = %43
  %67 = call double @timer() #3
  call void @split_blocks() #3
  %68 = call double @timer() #3
  br label %69

69:                                               ; preds = %66
  %70 = fsub double %68, %67
  %71 = fadd double %.01, %70
  %72 = add nuw nsw i32 %.0, 1
  br label %17, !llvm.loop !14

73:                                               ; preds = %17
  %74 = call double @timer() #3
  %75 = fsub double %74, %1
  %76 = load double, double* @timer_target_ab, align 8
  %77 = fadd double %76, %75
  store double %77, double* @timer_target_ab, align 8
  %78 = call double @timer() #3
  %79 = fsub double %78, %1
  %80 = fsub double %79, %.01
  %81 = load double, double* @timer_target_da, align 8
  %82 = fadd double %81, %80
  store double %82, double* @timer_target_da, align 8
  %83 = load double, double* @timer_target_sb, align 8
  %84 = fadd double %83, %.01
  store double %84, double* @timer_target_sb, align 8
  ret void
}

declare dso_local void @split_blocks() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
