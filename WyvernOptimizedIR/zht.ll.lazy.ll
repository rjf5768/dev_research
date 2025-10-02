; ModuleID = './zht.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%_wyvern_thunk_type.0 = type { %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.gs_screen_enum_s = type opaque
%struct.gs_point_s = type { float, float }
%_wyvern_thunk_type.2 = type { %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s*, i1, %struct.ref_s* }

@gs_screen_enum_sizeof = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@igs = external dso_local global %struct.gs_state_s*, align 8
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@zht_op_init.my_defs = internal global [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetscreen }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1
@istate = external dso_local global %struct.int_state_s, align 8
@ostop = external dso_local global %struct.ref_s*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetscreen(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %5 = call i32 @num_params(%struct.ref_s* noundef nonnull %3, i32 noundef 2, float* noundef nonnull %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %63

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %14 [
    i32 0, label %15
    i32 10, label %15
  ]

14:                                               ; preds = %8
  br label %63

15:                                               ; preds = %8, %8
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 3
  %.not = icmp eq i16 %19, 3
  br i1 %.not, label %21, label %20

20:                                               ; preds = %16
  br label %63

21:                                               ; preds = %16
  %22 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %23 = call i8* @alloc(i32 noundef 1, i32 noundef %22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #4
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %63

26:                                               ; preds = %21
  %27 = bitcast i8* %23 to %struct.gs_screen_enum_s*
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %29 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = call i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef nonnull %27, %struct.gs_state_s* noundef %28, double noundef %31, double noundef %34) #4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @gs_screen_enum_sizeof, align 4
  call void @alloc_free(i8* noundef nonnull %23, i32 noundef 1, i32 noundef %38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #4
  br label %63

39:                                               ; preds = %26
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 3
  %42 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %43 = icmp ugt %struct.ref_s* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %63

45:                                               ; preds = %39
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1
  store %struct.ref_s* %47, %struct.ref_s** @esp, align 8
  %48 = bitcast %struct.ref_s* %47 to i16*
  store i16 0, i16* %48, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1, i32 1
  store i16 33, i16* %49, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 2
  store %struct.ref_s* %50, %struct.ref_s** @esp, align 8
  %51 = bitcast %struct.ref_s* %50 to i8*
  %52 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %51, i8* noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false)
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 3
  store %struct.ref_s* %53, %struct.ref_s** @esp, align 8
  %54 = bitcast %struct.ref_s* %53 to i8**
  store i8* %23, i8** %54, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 3, i32 1
  store i16 52, i16* %55, align 8
  %56 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %57 = trunc i32 %56 to i16
  %58 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 0, i32 2
  store i16 %57, i16* %59, align 2
  %60 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -3
  store %struct.ref_s* %61, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zsetscreen_750998211, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %62 = call i32 @_wyvern_calleeclone_screen_sample_0846719828(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %63

63:                                               ; preds = %45, %44, %37, %25, %20, %14, %7
  %.0 = phi i32 [ %5, %7 ], [ -20, %14 ], [ -7, %20 ], [ -25, %25 ], [ %35, %37 ], [ -5, %44 ], [ %62, %45 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @screen_sample(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 4
  %3 = alloca %struct.ref_s, align 8
  %4 = load %struct.gs_screen_enum_s**, %struct.gs_screen_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_screen_enum_s***), align 8
  %5 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %6 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %5, %struct.gs_point_s* noundef nonnull %2) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %15, label %10

10:                                               ; preds = %9
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %13 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -3
  store %struct.ref_s* %14, %struct.ref_s** @esp, align 8
  br label %44

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %18 = icmp ugt %struct.ref_s* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  br label %44

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %26 = bitcast %union.v* %25 to float*
  store float %24, float* %26, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %27, align 8
  %28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = bitcast %struct.ref_s* %16 to float*
  store float %29, float* %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %31, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = bitcast %struct.ref_s* %3 to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %34, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 1
  store %struct.ref_s* %36, %struct.ref_s** @esp, align 8
  %37 = bitcast %struct.ref_s* %36 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @set_screen_continue, i32 (%struct.ref_s*)** %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 1, i32 1
  store i16 37, i16* %38, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 1, i32 2
  store i16 0, i16* %39, align 2
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 1
  store %struct.ref_s* %41, %struct.ref_s** @esp, align 8
  %42 = bitcast %struct.ref_s* %41 to i8*
  %43 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %42, i8* noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false)
  br label %44

44:                                               ; preds = %22, %19, %10, %8
  %.0 = phi i32 [ %6, %8 ], [ 1, %10 ], [ -16, %19 ], [ 1, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zht_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([2 x %struct.op_def], [2 x %struct.op_def]* @zht_op_init.my_defs, i64 0, i64 0)) #4
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_screen_continue(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %2 = alloca float, align 4
  %3 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  %7 = load %struct.gs_screen_enum_s**, %struct.gs_screen_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_screen_enum_s***), align 8
  %8 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %7, align 8
  %9 = load float, float* %2, align 4
  %10 = fpext float %9 to double
  %11 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef %8, double noundef %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %18

14:                                               ; preds = %6
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_set_screen_continue_909683109, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %17 = call i32 @_wyvern_calleeclone_screen_sample_0343098192(%_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca)
  br label %18

18:                                               ; preds = %14, %13, %5
  %.0 = phi i32 [ %3, %5 ], [ %11, %13 ], [ %17, %14 ]
  ret i32 %.0
}

declare dso_local i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef, double noundef) #1

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zsetscreen_750998211(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
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
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -3
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_screen_sample_0846719828(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %1 = alloca %struct.gs_point_s, align 4
  %2 = alloca %struct.ref_s, align 8
  %3 = load %struct.gs_screen_enum_s**, %struct.gs_screen_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_screen_enum_s***), align 8
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %5 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %4, %struct.gs_point_s* noundef nonnull %1) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %43

8:                                                ; preds = %0
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %14, label %9

9:                                                ; preds = %8
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %12 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  br label %43

14:                                               ; preds = %8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %17 = icmp ugt %struct.ref_s* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %43

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1, i32 0
  %25 = bitcast %union.v* %24 to float*
  store float %23, float* %25, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1, i32 1
  store i16 44, i16* %26, align 8
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = bitcast %struct.ref_s* %15 to float*
  store float %28, float* %29, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 44, i16* %30, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = bitcast %struct.ref_s* %2 to i8*
  %34 = bitcast %struct.ref_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %33, i8* noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  %36 = bitcast %struct.ref_s* %35 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @set_screen_continue, i32 (%struct.ref_s*)** %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1, i32 1
  store i16 37, i16* %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1, i32 2
  store i16 0, i16* %38, align 2
  %39 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  store %struct.ref_s* %40, %struct.ref_s** @esp, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  br label %43

43:                                               ; preds = %21, %18, %9, %7
  %.0 = phi i32 [ %5, %7 ], [ 1, %9 ], [ -16, %18 ], [ 1, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_set_screen_continue_909683109(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_screen_sample_0343098192(%_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #0 {
  %1 = alloca %struct.gs_point_s, align 4
  %2 = alloca %struct.ref_s, align 8
  %3 = load %struct.gs_screen_enum_s**, %struct.gs_screen_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_screen_enum_s***), align 8
  %4 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %3, align 8
  %5 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %4, %struct.gs_point_s* noundef nonnull %1) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %43

8:                                                ; preds = %0
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %14, label %9

9:                                                ; preds = %8
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %12 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  br label %43

14:                                               ; preds = %8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %17 = icmp ugt %struct.ref_s* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %43

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1, i32 0
  %25 = bitcast %union.v* %24 to float*
  store float %23, float* %25, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1, i32 1
  store i16 44, i16* %26, align 8
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = bitcast %struct.ref_s* %15 to float*
  store float %28, float* %29, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 44, i16* %30, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = bitcast %struct.ref_s* %2 to i8*
  %34 = bitcast %struct.ref_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %33, i8* noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  %36 = bitcast %struct.ref_s* %35 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @set_screen_continue, i32 (%struct.ref_s*)** %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1, i32 1
  store i16 37, i16* %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1, i32 2
  store i16 0, i16* %38, align 2
  %39 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  store %struct.ref_s* %40, %struct.ref_s** @esp, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  br label %43

43:                                               ; preds = %21, %18, %9, %7
  %.0 = phi i32 [ %5, %7 ], [ 1, %9 ], [ -16, %18 ], [ 1, %21 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
