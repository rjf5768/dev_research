; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
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
define dso_local i32 @zflattenpath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_flattenpath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_flattenpath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zreversepath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_reversepath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_reversepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstrokepath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_strokepath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_strokepath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclippath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_clippath(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_clippath(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpathbbox(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_rect_s, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = call i32 @gs_pathbbox(%struct.gs_state_s* noundef %6, %struct.gs_rect_s* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 4
  store %struct.ref_s* %14, %struct.ref_s** %3, align 8
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -4
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %59

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -3
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to float*
  store float %23, float* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -3
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  store i16 44, i16* %30, align 8
  %31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to float*
  store float %33, float* %37, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -2
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  store i16 44, i16* %40, align 8
  %41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 1
  %42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to float*
  store float %43, float* %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  store i16 44, i16* %50, align 8
  %51 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %56 = bitcast %union.v* %55 to float*
  store float %53, float* %56, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  store i16 44, i16* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %20, %17, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @gs_pathbbox(%struct.gs_state_s* noundef, %struct.gs_rect_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpathforall(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_path_enum_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 3), align 8
  %7 = icmp ult %struct.ref_s* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 8
  %12 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %13 = icmp ugt %struct.ref_s* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 -5, i32* %2, align 4
  br label %69

15:                                               ; preds = %9
  %16 = load i32, i32* @gs_path_enum_sizeof, align 4
  %17 = call i8* @alloc(i32 noundef 1, i32 noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast i8* %17 to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %18, %struct.gs_path_enum_s** %4, align 8
  %19 = icmp eq %struct.gs_path_enum_s* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -25, i32* %2, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_path_enum_init(%struct.gs_path_enum_s* noundef %22, %struct.gs_state_s* noundef %23)
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to i16*
  store i16 2, i16* %28, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  store i16 33, i16* %30, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 1
  store %struct.ref_s* %32, %struct.ref_s** @esp, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -3
  %35 = bitcast %struct.ref_s* %32 to i8*
  %36 = bitcast %struct.ref_s* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 1
  store %struct.ref_s* %38, %struct.ref_s** @esp, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -2
  %41 = bitcast %struct.ref_s* %38 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 1
  store %struct.ref_s* %44, %struct.ref_s** @esp, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %47 = bitcast %struct.ref_s* %44 to i8*
  %48 = bitcast %struct.ref_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 1
  store %struct.ref_s* %50, %struct.ref_s** @esp, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = bitcast %struct.ref_s* %50 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 1
  store %struct.ref_s* %55, %struct.ref_s** @esp, align 8
  %56 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %57 = bitcast %struct.gs_path_enum_s* %56 to i8*
  %58 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %60 = bitcast %union.v* %59 to i8**
  store i8* %57, i8** %60, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  store i16 20, i16* %62, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -4
  store %struct.ref_s* %64, %struct.ref_s** @osp, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -4
  store %struct.ref_s* %66, %struct.ref_s** %3, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = call i32 @path_continue(%struct.ref_s* noundef %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %21, %20, %14, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @gs_path_enum_init(%struct.gs_path_enum_s* noundef, %struct.gs_state_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @path_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_path_enum_s*, align 8
  %5 = alloca [3 x %struct.gs_point_s], align 16
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %9 = bitcast %union.v* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %11, %struct.gs_path_enum_s** %4, align 8
  %12 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %13 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %5, i64 0, i64 0
  %14 = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef %12, %struct.gs_point_s* noundef %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %22 [
    i32 0, label %16
    i32 1, label %24
    i32 2, label %34
    i32 3, label %44
    i32 4, label %54
  ]

16:                                               ; preds = %1
  %17 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %4, align 8
  %18 = bitcast %struct.gs_path_enum_s* %17 to i8*
  %19 = load i32, i32* @gs_path_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %18, i32 noundef 1, i32 noundef %19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -6
  store %struct.ref_s* %21, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %78

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -4
  %29 = bitcast %struct.ref_s* %26 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %5, i64 0, i64 0
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = call i32 @pf_push(%struct.gs_point_s* noundef %31, i32 noundef 1, %struct.ref_s* noundef %32)
  store i32 %33, i32* %6, align 4
  br label %61

34:                                               ; preds = %1
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 2
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -3
  %39 = bitcast %struct.ref_s* %36 to i8*
  %40 = bitcast %struct.ref_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %5, i64 0, i64 0
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = call i32 @pf_push(%struct.gs_point_s* noundef %41, i32 noundef 1, %struct.ref_s* noundef %42)
  store i32 %43, i32* %6, align 4
  br label %61

44:                                               ; preds = %1
  %45 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 2
  %47 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -2
  %49 = bitcast %struct.ref_s* %46 to i8*
  %50 = bitcast %struct.ref_s* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %5, i64 0, i64 0
  %52 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %53 = call i32 @pf_push(%struct.gs_point_s* noundef %51, i32 noundef 3, %struct.ref_s* noundef %52)
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %1
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 2
  %57 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  %59 = bitcast %struct.ref_s* %56 to i8*
  %60 = bitcast %struct.ref_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %44, %34, %24
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %61
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %71 = bitcast %union.v* %70 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @path_continue, i32 (%struct.ref_s*)** %71, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  store i16 37, i16* %73, align 8
  %74 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 2
  store i16 0, i16* %75, align 2
  %76 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 1
  store %struct.ref_s* %77, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %66, %64, %22, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinitclip(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_initclip(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_initclip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclip(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_clip(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_clip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zeoclip(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_eoclip(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_eoclip(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpath2_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zpath2_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @gs_path_enum_next(%struct.gs_path_enum_s* noundef, %struct.gs_point_s* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pf_push(%struct.gs_point_s* noundef %0, i32 noundef %1, %struct.ref_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_point_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s*, align 8
  store %struct.gs_point_s* %0, %struct.gs_point_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ref_s* %2, %struct.ref_s** %7, align 8
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 2
  store %struct.ref_s* %14, %struct.ref_s** %7, align 8
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %4, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to float*
  store float %23, float* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  store i16 44, i16* %30, align 8
  %31 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to float*
  store float %33, float* %36, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  store i16 44, i16* %38, align 8
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %5, align 8
  %40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i32 1
  store %struct.gs_point_s* %40, %struct.gs_point_s** %5, align 8
  br label %8, !llvm.loop !4

41:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
