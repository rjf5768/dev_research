; ModuleID = './zcontrol.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%_wyvern_thunk_type.0 = type { %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s*, i1, %struct.ref_s* }

@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@estack = external dso_local global [0 x %struct.ref_s], align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zcontrol_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcountexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zexec }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zexit }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zif }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zifelse }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zfor }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zloop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zquit }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zrepeat }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zstop }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zstopped }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0execstack\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0quit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zexec(%struct.ref_s* noundef readonly %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %17

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  %8 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %17

11:                                               ; preds = %5
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  %.cast = bitcast %struct.ref_s* %13 to i8*
  %14 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %.cast, i8* noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false)
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  br label %17

17:                                               ; preds = %11, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -5, %10 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zif(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %9 = bitcast %union.v* %8 to i16*
  %10 = load i16, i16* %9, align 8
  %.not = icmp eq i16 %10, 0
  br i1 %.not, label %21, label %11

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  %14 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %15 = icmp ugt %struct.ref_s* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  %18 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 1
  store %struct.ref_s* %19, %struct.ref_s** @esp, align 8
  %.cast = bitcast %struct.ref_s* %19 to i8*
  %20 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %.cast, i8* noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false)
  br label %21

21:                                               ; preds = %17, %7
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  br label %24

24:                                               ; preds = %21, %16, %6
  %.0 = phi i32 [ -5, %16 ], [ 1, %21 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zifelse(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  %10 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %11 = icmp ugt %struct.ref_s* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  store %struct.ref_s* %15, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0
  %17 = bitcast %union.v* %16 to i16*
  %18 = load i16, i16* %17, align 8
  %.not = icmp eq i16 %18, 0
  br i1 %.not, label %23, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %22 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8* noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  br label %26

23:                                               ; preds = %13
  %24 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %25 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -3
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  br label %29

29:                                               ; preds = %26, %12, %6
  %.0 = phi i32 [ -5, %12 ], [ 1, %26 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zfor(%struct.ref_s* noundef %0) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = call i32 @num_params(%struct.ref_s* noundef nonnull %2, i32 noundef 3, float* noundef null) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %72

6:                                                ; preds = %1
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 7
  %9 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %72

12:                                               ; preds = %6
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  store %struct.ref_s* %14, %struct.ref_s** @esp, align 8
  %15 = bitcast %struct.ref_s* %14 to i16*
  store i16 2, i16* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1, i32 1
  store i16 33, i16* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %19 = bitcast %struct.ref_s* %17 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %19, i8* noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 3
  store %struct.ref_s* %21, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %23 = bitcast %struct.ref_s* %21 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 4
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %27 = bitcast %struct.ref_s* %25 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %27, i8* noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 5
  store %struct.ref_s* %29, %struct.ref_s** @esp, align 8
  %30 = bitcast %struct.ref_s* %29 to i8*
  %31 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %30, i8* noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -4
  store %struct.ref_s* %33, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zfor_702266879, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %34 = icmp eq i32 %3, 7
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = call i32 @_wyvern_calleeclone_for_int_continue_0523831540(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %72

37:                                               ; preds = %12
  %38 = and i32 %3, 1
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %48, label %39

39:                                               ; preds = %37
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -3, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -3, i32 0
  %45 = bitcast %union.v* %44 to float*
  store float %43, float* %45, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -3, i32 1
  store i16 44, i16* %47, align 8
  br label %48

48:                                               ; preds = %39, %37
  %49 = and i32 %3, 2
  %.not1 = icmp eq i32 %49, 0
  br i1 %.not1, label %59, label %50

50:                                               ; preds = %48
  %51 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -2, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sitofp i64 %53 to float
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -2, i32 0
  %56 = bitcast %union.v* %55 to float*
  store float %54, float* %56, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -2, i32 1
  store i16 44, i16* %58, align 8
  br label %59

59:                                               ; preds = %50, %48
  %60 = and i32 %3, 4
  %.not2 = icmp eq i32 %60, 0
  br i1 %.not2, label %70, label %61

61:                                               ; preds = %59
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to float
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1, i32 0
  %67 = bitcast %union.v* %66 to float*
  store float %65, float* %67, align 8
  %68 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1, i32 1
  store i16 44, i16* %69, align 8
  br label %70

70:                                               ; preds = %61, %59
  %_wyvern_thunkcall = call %struct.ref_s* @_wyvern_slice_memo_zfor_702266879(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %71 = call i32 @for_real_continue(%struct.ref_s* noundef %_wyvern_thunkcall)
  br label %72

72:                                               ; preds = %70, %35, %11, %5
  %.0 = phi i32 [ %3, %5 ], [ -5, %11 ], [ %36, %35 ], [ %71, %70 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @for_int_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %5, %12
  br i1 %13, label %19, label %22

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %5, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %9
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -5
  store %struct.ref_s* %21, %struct.ref_s** @esp, align 8
  br label %48

22:                                               ; preds = %14, %9
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %25 = icmp ugt %struct.ref_s* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  br label %48

29:                                               ; preds = %22
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3
  %32 = bitcast %struct.ref_s* %23 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %32, i8* noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false)
  %34 = add nsw i64 %5, %7
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %37 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %37, i8* noundef nonnull align 8 dereferenceable(16) %36, i64 16, i1 false)
  %38 = getelementptr inbounds i8, i8* %36, i64 16
  store i8* %38, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %39 = bitcast i8* %38 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_int_continue, i32 (%struct.ref_s*)** %39, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 24
  %41 = bitcast i8* %40 to i16*
  store i16 37, i16* %41, align 8
  %42 = getelementptr inbounds i8, i8* %36, i64 26
  %43 = bitcast i8* %42 to i16*
  store i16 0, i16* %43, align 2
  %44 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 1
  store %struct.ref_s* %45, %struct.ref_s** @esp, align 8
  %46 = bitcast %struct.ref_s* %45 to i8*
  %47 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %46, i8* noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false)
  br label %48

48:                                               ; preds = %29, %26, %19
  %.0 = phi i32 [ 1, %19 ], [ -16, %26 ], [ 1, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @for_real_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -3, i32 0
  %5 = bitcast %union.v* %4 to float*
  %6 = load float, float* %5, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2, i32 0
  %8 = bitcast %union.v* %7 to float*
  %9 = load float, float* %8, align 8
  %10 = fcmp ult float %9, 0.000000e+00
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1, i32 0
  %14 = bitcast %union.v* %13 to float*
  %15 = load float, float* %14, align 8
  %16 = fcmp ogt float %6, %15
  br i1 %16, label %23, label %26

17:                                               ; preds = %1
  %18 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1, i32 0
  %20 = bitcast %union.v* %19 to float*
  %21 = load float, float* %20, align 8
  %22 = fcmp olt float %6, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -5
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  br label %53

26:                                               ; preds = %17, %11
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %27, %struct.ref_s** @osp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %29 = icmp ugt %struct.ref_s* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %53

33:                                               ; preds = %26
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -3
  %36 = bitcast %struct.ref_s* %27 to i8*
  %37 = bitcast %struct.ref_s* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false)
  %38 = fadd float %6, %9
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -3, i32 0
  %40 = bitcast %union.v* %39 to float*
  store float %38, float* %40, align 8
  %41 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %42 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %42, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  %43 = getelementptr inbounds i8, i8* %41, i64 16
  store i8* %43, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %44 = bitcast i8* %43 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_real_continue, i32 (%struct.ref_s*)** %44, align 8
  %45 = getelementptr inbounds i8, i8* %41, i64 24
  %46 = bitcast i8* %45 to i16*
  store i16 37, i16* %46, align 8
  %47 = getelementptr inbounds i8, i8* %41, i64 26
  %48 = bitcast i8* %47 to i16*
  store i16 0, i16* %48, align 2
  %49 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 1
  store %struct.ref_s* %50, %struct.ref_s** @esp, align 8
  %51 = bitcast %struct.ref_s* %50 to i8*
  %52 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %51, i8* noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false)
  br label %53

53:                                               ; preds = %33, %30, %23
  %.0 = phi i32 [ 1, %23 ], [ -16, %30 ], [ 1, %33 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zrepeat(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %34

12:                                               ; preds = %7
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 5
  %15 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %20, %struct.ref_s** @esp, align 8
  %21 = bitcast %struct.ref_s* %20 to i16*
  store i16 2, i16* %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1, i32 1
  store i16 33, i16* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 2
  store %struct.ref_s* %23, %struct.ref_s** @esp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = bitcast %struct.ref_s* %27 to i8*
  %29 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8* noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  %30 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -2
  store %struct.ref_s* %31, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %33 = call i32 @repeat_continue(%struct.ref_s* noundef nonnull %32)
  br label %34

34:                                               ; preds = %18, %17, %11, %6
  %.0 = phi i32 [ -15, %11 ], [ -5, %17 ], [ %33, %18 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @repeat_continue(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %4 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %5 = getelementptr inbounds i8, i8* %3, i64 -16
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp sgt i64 %7, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  store %struct.ref_s* %12, %struct.ref_s** @esp, align 8
  %13 = bitcast %struct.ref_s* %12 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @repeat_continue, i32 (%struct.ref_s*)** %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1, i32 1
  store i16 37, i16* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1, i32 2
  store i16 0, i16* %15, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  store %struct.ref_s* %17, %struct.ref_s** @esp, align 8
  %18 = bitcast %struct.ref_s* %17 to i8*
  %19 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %18, i8* noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false)
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  store %struct.ref_s* %22, %struct.ref_s** @esp, align 8
  br label %23

23:                                               ; preds = %20, %10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zloop(%struct.ref_s* noundef readonly %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %23

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 4
  %8 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %23

11:                                               ; preds = %5
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  %14 = bitcast %struct.ref_s* %13 to i16*
  store i16 2, i16* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1, i32 1
  store i16 33, i16* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 2
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = bitcast %struct.ref_s* %16 to i8*
  %18 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8* noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %22 = call i32 @loop_continue(%struct.ref_s* noundef nonnull %21)
  br label %23

23:                                               ; preds = %11, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -5, %10 ], [ %22, %11 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @loop_continue(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %4 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %5 = getelementptr inbounds i8, i8* %3, i64 16
  store i8* %5, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %6 = bitcast i8* %5 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @loop_continue, i32 (%struct.ref_s*)** %6, align 8
  %7 = getelementptr inbounds i8, i8* %3, i64 24
  %8 = bitcast i8* %7 to i16*
  store i16 37, i16* %8, align 8
  %9 = getelementptr inbounds i8, i8* %3, i64 26
  %10 = bitcast i8* %9 to i16*
  store i16 0, i16* %10, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  store %struct.ref_s* %12, %struct.ref_s** @esp, align 8
  %13 = bitcast %struct.ref_s* %12 to i8*
  %14 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8* noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false)
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @zexit(%struct.ref_s* nocapture noundef readnone %0) #4 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  br label %3

3:                                                ; preds = %18, %1
  %.01 = phi %struct.ref_s* [ %2, %1 ], [ %.1, %18 ]
  %.not = icmp ult %struct.ref_s* %.01, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %.not, label %19, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 32
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  %11 = bitcast %struct.ref_s* %.01 to i16*
  %12 = load i16, i16* %11, align 8
  switch i16 %12, label %15 [
    i16 2, label %13
    i16 3, label %14
  ]

13:                                               ; preds = %9
  store %struct.ref_s* %10, %struct.ref_s** @esp, align 8
  br label %20

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  br label %18

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  br label %18

18:                                               ; preds = %16, %15
  %.1 = phi %struct.ref_s* [ %10, %15 ], [ %17, %16 ]
  br label %3, !llvm.loop !4

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %14, %13
  %.0 = phi i32 [ -8, %14 ], [ 1, %13 ], [ -8, %19 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @zstop(%struct.ref_s* noundef %0) #4 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  br label %3

3:                                                ; preds = %24, %1
  %.01 = phi %struct.ref_s* [ %2, %1 ], [ %25, %24 ]
  %.not = icmp ult %struct.ref_s* %.01, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %.not, label %26, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 32
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = bitcast %struct.ref_s* %.01 to i16*
  %11 = load i16, i16* %10, align 8
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  store %struct.ref_s* %14, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %17 = icmp ugt %struct.ref_s* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %27

21:                                               ; preds = %13
  %22 = bitcast %struct.ref_s* %15 to i16*
  store i16 1, i16* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 4, i16* %23, align 8
  br label %27

24:                                               ; preds = %9, %4
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  br label %3, !llvm.loop !6

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21, %18
  %.0 = phi i32 [ -16, %18 ], [ 1, %21 ], [ -8, %26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zstopped(%struct.ref_s* noundef readonly %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %24

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 3
  %8 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %24

11:                                               ; preds = %5
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  %14 = bitcast %struct.ref_s* %13 to i16*
  store i16 3, i16* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1, i32 1
  store i16 33, i16* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 2
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = bitcast %struct.ref_s* %16 to i16*
  store i16 0, i16* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 2, i32 1
  store i16 4, i16* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 3
  store %struct.ref_s* %19, %struct.ref_s** @esp, align 8
  %20 = bitcast %struct.ref_s* %19 to i8*
  %21 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8* noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  br label %24

24:                                               ; preds = %11, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -5, %10 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zcountexecstack(%struct.ref_s* noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = ptrtoint %struct.ref_s* %9 to i64
  %11 = sub i64 %10, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %12 = ashr exact i64 %11, 4
  %13 = add nsw i64 %12, 1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %15, align 8
  br label %16

16:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zexecstack(%struct.ref_s* nocapture noundef %0) #5 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %3 = ptrtoint %struct.ref_s* %2 to i64
  %4 = sub i64 %3, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %5 = lshr exact i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, 256
  %.not.not = icmp eq i16 %16, 0
  br i1 %.not.not, label %17, label %18

17:                                               ; preds = %13
  br label %38

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sgt i32 %7, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %38

24:                                               ; preds = %18
  %25 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not = icmp ugt %struct.ref_s* %25, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %.not, label %27, label %26

26:                                               ; preds = %24
  br label %38

27:                                               ; preds = %24
  %28 = trunc i32 %7 to i16
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %28, i16* %29, align 2
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = or i16 %31, -32768
  store i16 %32, i16* %30, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @continue_execstack, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  br label %38

38:                                               ; preds = %27, %26, %23, %17, %12
  %.0 = phi i32 [ -7, %17 ], [ -15, %23 ], [ -5, %26 ], [ 1, %27 ], [ -20, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @continue_execstack(%struct.ref_s* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %6 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %7 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %6, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0), i32 noundef %4) #7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zquit(%struct.ref_s* nocapture noundef readnone %0) #2 {
  %2 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 noundef 0) #7
  ret i32 undef
}

declare dso_local i32 @gs_exit(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @zcontrol_op_init() #2 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zcontrol_op_init.my_defs, i64 0, i64 0)) #7
  ret void
}

declare dso_local i32 @z_op_init(...) #3

declare dso_local i32 @refcpy(...) #3

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zfor_702266879(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -4
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @_wyvern_calleeclone_for_int_continue_0523831540(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %1 = alloca %struct.ref_s, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %4, %11
  br i1 %12, label %18, label %21

13:                                               ; preds = %0
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %4, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %8
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -5
  store %struct.ref_s* %20, %struct.ref_s** @esp, align 8
  br label %47

21:                                               ; preds = %13, %8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %24 = icmp ugt %struct.ref_s* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  store %struct.ref_s* %27, %struct.ref_s** @osp, align 8
  br label %47

28:                                               ; preds = %21
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -3
  %31 = bitcast %struct.ref_s* %22 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %31, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false)
  %33 = add nsw i64 %4, %6
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -3, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %36 = bitcast %struct.ref_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  store i8* %37, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %38 = bitcast i8* %37 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_int_continue, i32 (%struct.ref_s*)** %38, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 24
  %40 = bitcast i8* %39 to i16*
  store i16 37, i16* %40, align 8
  %41 = getelementptr inbounds i8, i8* %35, i64 26
  %42 = bitcast i8* %41 to i16*
  store i16 0, i16* %42, align 2
  %43 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 1
  store %struct.ref_s* %44, %struct.ref_s** @esp, align 8
  %45 = bitcast %struct.ref_s* %44 to i8*
  %46 = bitcast %struct.ref_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %45, i8* noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false)
  br label %47

47:                                               ; preds = %28, %25, %18
  %.0 = phi i32 [ 1, %18 ], [ -16, %25 ], [ 1, %28 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
