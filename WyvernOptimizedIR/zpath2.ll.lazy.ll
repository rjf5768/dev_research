; ModuleID = './zpath2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
%_wyvern_thunk_type.0 = type { %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.gs_path_enum_s = type opaque

@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@gs_path_enum_sizeof = external dso_local global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"pathforall\00", align 1
@zpath2_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zclippath }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zeoclip }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zflattenpath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zinitclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zpathbbox }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zpathforall }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zreversepath }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zstrokepath }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"0clip\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0clippath\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0eoclip\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0flattenpath\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0initclip\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0pathbbox\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4pathforall\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0reversepath\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0strokepath\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zflattenpath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_flattenpath(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_flattenpath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zreversepath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_reversepath(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_reversepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstrokepath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_strokepath(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_strokepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclippath(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_clippath(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_clippath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpathbbox(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_rect_s, align 4
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_pathbbox(%struct.gs_state_s* noundef %3, %struct.gs_rect_s* noundef nonnull %2) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 4
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -4
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %34

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %18 = bitcast %union.v* %17 to float*
  store float %16, float* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %19, align 8
  %20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 0
  %23 = bitcast %union.v* %22 to float*
  store float %21, float* %23, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %24, align 8
  %25 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 1, i32 0
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3, i32 0
  %28 = bitcast %union.v* %27 to float*
  store float %26, float* %28, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3, i32 1
  store i16 44, i16* %29, align 8
  %30 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i64 0, i32 1, i32 1
  %31 = load float, float* %30, align 4
  %32 = bitcast %struct.ref_s* %8 to float*
  store float %31, float* %32, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 4, i32 1
  store i16 44, i16* %33, align 8
  br label %34

34:                                               ; preds = %14, %11, %6
  %.0 = phi i32 [ %4, %6 ], [ -16, %11 ], [ 0, %14 ]
  ret i32 %.0
}

declare dso_local i32 @gs_pathbbox(%struct.gs_state_s* noundef, %struct.gs_rect_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpathforall(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 3), align 8
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %44

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 8
  %8 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %44

11:                                               ; preds = %5
  %12 = load i32, i32* @gs_path_enum_sizeof, align 4
  %13 = call i8* @alloc(i32 noundef 1, i32 noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %44

16:                                               ; preds = %11
  %17 = bitcast i8* %13 to %struct.gs_path_enum_s*
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_path_enum_init(%struct.gs_path_enum_s* noundef nonnull %17, %struct.gs_state_s* noundef %18) #5
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %20, %struct.ref_s** @esp, align 8
  %21 = bitcast %struct.ref_s* %20 to i16*
  store i16 2, i16* %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1, i32 1
  store i16 33, i16* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 2
  store %struct.ref_s* %23, %struct.ref_s** @esp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %29, i8* noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 4
  store %struct.ref_s* %31, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %33 = bitcast %struct.ref_s* %31 to i8*
  %34 = bitcast %struct.ref_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %33, i8* noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 5
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  %36 = bitcast %struct.ref_s* %35 to i8*
  %37 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 6
  store %struct.ref_s* %38, %struct.ref_s** @esp, align 8
  %39 = bitcast %struct.ref_s* %38 to i8**
  store i8* %13, i8** %39, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 6, i32 1
  store i16 20, i16* %40, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -4
  store %struct.ref_s* %42, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zpathforall_91975127, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %43 = call i32 @_wyvern_calleeclone_path_continue_0373718254(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %44

44:                                               ; preds = %16, %15, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -5, %10 ], [ -25, %15 ], [ %43, %16 ]
  ret i32 %.0
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @gs_path_enum_init(%struct.gs_path_enum_s* noundef, %struct.gs_state_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @path_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [3 x %struct.gs_point_s], align 16
  %3 = load %struct.gs_path_enum_s**, %struct.gs_path_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_path_enum_s***), align 8
  %4 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %3, align 8
  %5 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %2, i64 0, i64 0
  %6 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef %4, %struct.gs_point_s* noundef nonnull %5) #5
  switch i32 %6, label %12 [
    i32 0, label %7
    i32 1, label %13
    i32 2, label %21
    i32 3, label %29
    i32 4, label %37
  ]

7:                                                ; preds = %1
  %8 = bitcast %struct.gs_path_enum_s* %4 to i8*
  %9 = load i32, i32* @gs_path_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %8, i32 noundef 1, i32 noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -6
  store %struct.ref_s* %11, %struct.ref_s** @esp, align 8
  br label %54

12:                                               ; preds = %1
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 2
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -4
  %17 = bitcast %struct.ref_s* %15 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8* noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %19 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %2, i64 0, i64 0
  %20 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %19, i32 noundef 1, %struct.ref_s* noundef %0)
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 2
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %27 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %2, i64 0, i64 0
  %28 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %27, i32 noundef 1, %struct.ref_s* noundef %0)
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 2
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -2
  %33 = bitcast %struct.ref_s* %31 to i8*
  %34 = bitcast %struct.ref_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %33, i8* noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %2, i64 0, i64 0
  %36 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %35, i32 noundef 3, %struct.ref_s* noundef %0)
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 2
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %41 = bitcast %struct.ref_s* %39 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  br label %43

43:                                               ; preds = %37, %29, %21, %13
  %.01 = phi i32 [ 0, %37 ], [ %36, %29 ], [ %28, %21 ], [ %20, %13 ]
  %44 = icmp slt i32 %.01, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %54

46:                                               ; preds = %43
  %47 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 1
  store %struct.ref_s* %48, %struct.ref_s** @esp, align 8
  %49 = bitcast %struct.ref_s* %48 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @path_continue, i32 (%struct.ref_s*)** %49, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 1, i32 1
  store i16 37, i16* %50, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 1, i32 2
  store i16 0, i16* %51, align 2
  %52 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 1
  store %struct.ref_s* %53, %struct.ref_s** @esp, align 8
  br label %54

54:                                               ; preds = %46, %45, %12, %7
  %.0 = phi i32 [ %6, %12 ], [ %.01, %45 ], [ 1, %46 ], [ 1, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinitclip(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_initclip(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_initclip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclip(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_clip(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_clip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zeoclip(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_eoclip(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_eoclip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpath2_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zpath2_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef, %struct.gs_point_s* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @pf_push(%struct.gs_point_s* nocapture noundef readonly %0, i32 noundef %1, %struct.ref_s* noundef %2) #3 {
  br label %4

4:                                                ; preds = %13, %3
  %.03 = phi %struct.ref_s* [ %2, %3 ], [ %7, %13 ]
  %.02 = phi i32 [ %1, %3 ], [ %5, %13 ]
  %.01 = phi %struct.gs_point_s* [ %0, %3 ], [ %23, %13 ]
  %5 = add nsw i32 %.02, -1
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %24, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 2
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  br label %25

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %.01, i64 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 1, i32 0
  %17 = bitcast %union.v* %16 to float*
  store float %15, float* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 1, i32 1
  store i16 44, i16* %18, align 8
  %19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %.01, i64 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = bitcast %struct.ref_s* %7 to float*
  store float %20, float* %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 2, i32 1
  store i16 44, i16* %22, align 8
  %23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %.01, i64 1
  br label %4, !llvm.loop !4

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %10
  %.0 = phi i32 [ -16, %10 ], [ 0, %24 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zpathforall_91975127(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_path_continue_0373718254(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %1 = alloca [3 x %struct.gs_point_s], align 16
  %2 = load %struct.gs_path_enum_s**, %struct.gs_path_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_path_enum_s***), align 8
  %3 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %2, align 8
  %4 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %1, i64 0, i64 0
  %5 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef %3, %struct.gs_point_s* noundef nonnull %4) #5
  switch i32 %5, label %11 [
    i32 0, label %6
    i32 1, label %12
    i32 2, label %20
    i32 3, label %28
    i32 4, label %36
  ]

6:                                                ; preds = %0
  %7 = bitcast %struct.gs_path_enum_s* %3 to i8*
  %8 = load i32, i32* @gs_path_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %7, i32 noundef 1, i32 noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -6
  store %struct.ref_s* %10, %struct.ref_s** @esp, align 8
  br label %53

11:                                               ; preds = %0
  br label %53

12:                                               ; preds = %0
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 2
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -4
  %16 = bitcast %struct.ref_s* %14 to i8*
  %17 = bitcast %struct.ref_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %18 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %1, i64 0, i64 0
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %19 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %18, i32 noundef 1, %struct.ref_s* noundef %_wyvern_thunkcall6)
  br label %42

20:                                               ; preds = %0
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 2
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %24 = bitcast %struct.ref_s* %22 to i8*
  %25 = bitcast %struct.ref_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %26 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %1, i64 0, i64 0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %27 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %26, i32 noundef 1, %struct.ref_s* noundef %_wyvern_thunkcall3)
  br label %42

28:                                               ; preds = %0
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 2
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  %32 = bitcast %struct.ref_s* %30 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %32, i8* noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false)
  %34 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %1, i64 0, i64 0
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %35 = call i32 @pf_push(%struct.gs_point_s* noundef nonnull %34, i32 noundef 3, %struct.ref_s* noundef %_wyvern_thunkcall)
  br label %42

36:                                               ; preds = %0
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 2
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %40 = bitcast %struct.ref_s* %38 to i8*
  %41 = bitcast %struct.ref_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %42

42:                                               ; preds = %36, %28, %20, %12
  %.01 = phi i32 [ 0, %36 ], [ %35, %28 ], [ %27, %20 ], [ %19, %12 ]
  %43 = icmp slt i32 %.01, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %53

45:                                               ; preds = %42
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1
  store %struct.ref_s* %47, %struct.ref_s** @esp, align 8
  %48 = bitcast %struct.ref_s* %47 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @path_continue, i32 (%struct.ref_s*)** %48, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1, i32 1
  store i16 37, i16* %49, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 1, i32 2
  store i16 0, i16* %50, align 2
  %51 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 1
  store %struct.ref_s* %52, %struct.ref_s** @esp, align 8
  br label %53

53:                                               ; preds = %45, %44, %11, %6
  %.0 = phi i32 [ %5, %11 ], [ %.01, %44 ], [ 1, %45 ], [ 1, %6 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
