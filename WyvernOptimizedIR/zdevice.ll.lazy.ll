; ModuleID = './zdevice.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque
%struct.gs_color_s = type opaque

@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [11 x i8] c"devicename\00", align 1
@zdevice_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopypage }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopyscanlines }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdevicename }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zdeviceparams }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zflushpage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetdevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakedevice }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakeimagedevice }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @znulldevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdevice }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"0copypage\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"3copyscanlines\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"0currentdevice\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1devicename\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"1deviceparams\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"0flushpage\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"1getdevice\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"4makedevice\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"4makeimagedevice\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"0.nulldevice\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"1.setdevice\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopypage(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_copypage(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_copypage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopyscanlines(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 60
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = bitcast %struct.ref_s* %4 to %struct.gx_device_s**
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = and i16 %14, 252
  %16 = icmp eq i16 %15, 20
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %64

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i64 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18
  br label %64

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %32 = load i16, i16* %31, align 8
  %33 = and i16 %32, 252
  %34 = icmp eq i16 %33, 52
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %64

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %38 = load i16, i16* %37, align 8
  %39 = and i16 %38, 256
  %.not.not = icmp eq i16 %39, 0
  br i1 %.not.not, label %40, label %41

40:                                               ; preds = %36
  br label %64

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = bitcast %struct.ref_s* %0 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = call i32 @gs_copyscanlines(%struct.gx_device_s* noundef %12, i32 noundef %44, i8* noundef %46, i32 noundef %49, i32* noundef null, i32* noundef nonnull %2) #3
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %64

53:                                               ; preds = %41
  %54 = bitcast %struct.ref_s* %4 to i8*
  %55 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8* noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false)
  %56 = load i32, i32* %2, align 4
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  store i16 %57, i16* %58, align 2
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = or i16 %60, -32768
  store i16 %61, i16* %59, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -2
  store %struct.ref_s* %63, %struct.ref_s** @osp, align 8
  br label %64

64:                                               ; preds = %53, %52, %40, %35, %29, %17, %9
  %.0 = phi i32 [ -15, %29 ], [ -7, %40 ], [ -20, %52 ], [ 0, %53 ], [ -20, %35 ], [ -20, %17 ], [ -20, %9 ]
  ret i32 %.0
}

declare dso_local i32 @gs_copyscanlines(%struct.gx_device_s* noundef, i32 noundef, i8* noundef, i32 noundef, i32* noundef, i32* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentdevice(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef %2) #3
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %4, %struct.ref_s** @osp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %6 = icmp ugt %struct.ref_s* %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  br label %13

10:                                               ; preds = %1
  %11 = bitcast %struct.ref_s* %4 to %struct.gx_device_s**
  store %struct.gx_device_s* %3, %struct.gx_device_s** %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 60, i16* %12, align 8
  br label %13

13:                                               ; preds = %10, %7
  %.0 = phi i32 [ -16, %7 ], [ 0, %10 ]
  ret i32 %.0
}

declare dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdevicename(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 60
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %15

7:                                                ; preds = %1
  %8 = bitcast %struct.ref_s* %0 to %struct.gx_device_s**
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %8, align 8
  %10 = call i8* @gs_devicename(%struct.gx_device_s* noundef %9) #3
  %11 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* noundef %10, %struct.ref_s* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #3
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %13, %6
  %.0 = phi i32 [ %11, %13 ], [ 0, %14 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i8* @gs_devicename(%struct.gx_device_s* noundef) #1

declare dso_local i32 @string_to_ref(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdeviceparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 252
  %12 = icmp eq i16 %11, 60
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %66

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %16 = bitcast %union.v* %15 to %struct.gx_device_s**
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  call void @gs_deviceparams(%struct.gx_device_s* noundef %17, %struct.gs_matrix_s* noundef nonnull %2, i32* noundef nonnull %3, i32* noundef nonnull %4) #3
  %18 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %18, align 8
  %20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = bitcast %struct.ref_s* %19 to float*
  store float %21, float* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 0, i32 1
  store i16 44, i16* %23, align 8
  %24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 2
  %25 = load float, float* %24, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1, i32 0
  %27 = bitcast %union.v* %26 to float*
  store float %25, float* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1, i32 1
  store i16 44, i16* %28, align 8
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 4
  %30 = load float, float* %29, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 2, i32 0
  %32 = bitcast %union.v* %31 to float*
  store float %30, float* %32, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 2, i32 1
  store i16 44, i16* %33, align 8
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 6
  %35 = load float, float* %34, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3, i32 0
  %37 = bitcast %union.v* %36 to float*
  store float %35, float* %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3, i32 1
  store i16 44, i16* %38, align 8
  %39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 8
  %40 = load float, float* %39, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 4, i32 0
  %42 = bitcast %union.v* %41 to float*
  store float %40, float* %42, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 4, i32 1
  store i16 44, i16* %43, align 8
  %44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i64 0, i32 10
  %45 = load float, float* %44, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 5, i32 0
  %47 = bitcast %union.v* %46 to float*
  store float %45, float* %47, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 5, i32 1
  store i16 44, i16* %48, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %49, %struct.ref_s** @osp, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %51 = icmp ugt %struct.ref_s* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %14
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -2
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  br label %66

55:                                               ; preds = %14
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 24, i16* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 0, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 20, i16* %65, align 8
  br label %66

66:                                               ; preds = %55, %52, %13, %7
  %.0 = phi i32 [ %5, %7 ], [ -16, %52 ], [ 0, %55 ], [ -20, %13 ]
  ret i32 %.0
}

declare dso_local i32 @write_matrix(...) #1

declare dso_local void @gs_deviceparams(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zflushpage(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_flushpage(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_flushpage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgetdevice(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %23

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call %struct.gx_device_s* @gs_getdevice(i32 noundef %16) #3
  %18 = icmp eq %struct.gx_device_s* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %23

20:                                               ; preds = %13
  %21 = bitcast %struct.ref_s* %0 to %struct.gx_device_s**
  store %struct.gx_device_s* %17, %struct.gx_device_s** %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 60, i16* %22, align 8
  br label %23

23:                                               ; preds = %20, %19, %12, %6
  %.0 = phi i32 [ -15, %12 ], [ -15, %19 ], [ 0, %20 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 60
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 252
  %13 = icmp eq i16 %12, 20
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %55

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 252
  %19 = icmp eq i16 %18, 20
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %55

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %23, 2147483647
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %27, 2147483647
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  br label %55

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %32 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %31, %struct.gs_matrix_s* noundef nonnull %2) #3
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %55

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0
  %37 = bitcast %union.v* %36 to %struct.gx_device_s**
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %37, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @gs_makedevice(%struct.gx_device_s** noundef nonnull %3, %struct.gx_device_s* noundef %38, %struct.gs_matrix_s* noundef nonnull %2, i32 noundef %41, i32 noundef %44, i8* (i32, i32, i8*)* noundef nonnull @alloc) #3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0
  %50 = bitcast %union.v* %49 to %struct.gx_device_s**
  store %struct.gx_device_s* %48, %struct.gx_device_s** %50, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  store i16 60, i16* %51, align 8
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -3
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %54

54:                                               ; preds = %47, %35
  br label %55

55:                                               ; preds = %54, %34, %29, %20, %14, %8
  %.0 = phi i32 [ -15, %29 ], [ %32, %34 ], [ %45, %54 ], [ -20, %20 ], [ -20, %14 ], [ -20, %8 ]
  ret i32 %.0
}

declare dso_local i32 @read_matrix(...) #1

declare dso_local i32 @gs_makedevice(%struct.gx_device_s** noundef, %struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32 noundef, i32 noundef, i8* (i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakeimagedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = alloca [768 x float], align 16
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 20
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %91

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 252
  %14 = icmp eq i16 %13, 20
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %91

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 252
  %20 = icmp eq i16 %19, 32
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = lshr i16 %24, 2
  %26 = and i16 %25, 63
  %27 = zext i16 %26 to i32
  switch i32 %27, label %28 [
    i32 0, label %29
    i32 10, label %29
  ]

28:                                               ; preds = %22
  br label %91

29:                                               ; preds = %22, %22
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %30, %21
  %.02 = phi i32 [ -24, %21 ], [ %33, %30 ]
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %36, 2147483647
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %40, 2147483647
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = icmp sgt i32 %.02, 256
  br i1 %43, label %44, label %45

44:                                               ; preds = %42, %38, %34
  br label %91

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %47 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %46, %struct.gs_matrix_s* noundef nonnull %2) #3
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %91

50:                                               ; preds = %45
  %51 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %52 = load %struct.ref_s*, %struct.ref_s** %51, align 8
  %53 = getelementptr inbounds [768 x float], [768 x float]* %4, i64 0, i64 0
  br label %54

54:                                               ; preds = %69, %50
  %.04 = phi %struct.ref_s* [ %52, %50 ], [ %71, %69 ]
  %.03 = phi i32 [ 0, %50 ], [ %70, %69 ]
  %.01 = phi float* [ %53, %50 ], [ %72, %69 ]
  %55 = icmp slt i32 %.03, %.02
  br i1 %55, label %56, label %73

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.04, i64 0, i32 1
  %58 = load i16, i16* %57, align 8
  %59 = and i16 %58, 252
  %60 = icmp eq i16 %59, 56
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %91

62:                                               ; preds = %56
  %63 = bitcast %struct.ref_s* %.04 to %struct.gs_color_s**
  %64 = load %struct.gs_color_s*, %struct.gs_color_s** %63, align 8
  %65 = call i32 (%struct.gs_color_s*, float*, ...) bitcast (i32 (...)* @gs_colorrgb to i32 (%struct.gs_color_s*, float*, ...)*)(%struct.gs_color_s* noundef %64, float* noundef %.01) #3
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %91

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = add nuw nsw i32 %.03, 1
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.04, i64 1
  %72 = getelementptr inbounds float, float* %.01, i64 3
  br label %54, !llvm.loop !4

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds [768 x float], [768 x float]* %4, i64 0, i64 0
  %81 = call i32 @gs_makeimagedevice(%struct.gx_device_s** noundef nonnull %3, %struct.gs_matrix_s* noundef nonnull %2, i32 noundef %76, i32 noundef %79, float* noundef nonnull %80, i32 noundef %.02, i8* (i32, i32, i8*)* noundef nonnull @alloc) #3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0
  %86 = bitcast %union.v* %85 to %struct.gx_device_s**
  store %struct.gx_device_s* %84, %struct.gx_device_s** %86, align 8
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  store i16 60, i16* %87, align 8
  %88 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -3
  store %struct.ref_s* %89, %struct.ref_s** @osp, align 8
  br label %90

90:                                               ; preds = %83, %73
  br label %91

91:                                               ; preds = %90, %67, %61, %49, %44, %28, %15, %9
  %.0 = phi i32 [ -15, %44 ], [ %47, %49 ], [ %65, %67 ], [ -20, %61 ], [ %81, %90 ], [ -20, %28 ], [ -20, %15 ], [ -20, %9 ]
  ret i32 %.0
}

declare dso_local i32 @gs_colorrgb(...) #1

declare dso_local i32 @gs_makeimagedevice(%struct.gx_device_s** noundef, %struct.gs_matrix_s* noundef, i32 noundef, i32 noundef, float* noundef, i32 noundef, i8* (i32, i32, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znulldevice(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_nulldevice(%struct.gs_state_s* noundef %2) #3
  ret i32 0
}

declare dso_local void @gs_nulldevice(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetdevice(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 60
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = bitcast %struct.ref_s* %0 to %struct.gx_device_s**
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %11 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %8, %struct.gx_device_s* noundef %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  br label %16

16:                                               ; preds = %13, %7
  br label %17

17:                                               ; preds = %16, %6
  %.0 = phi i32 [ %11, %16 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef, %struct.gx_device_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zdevice_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zdevice_op_init.my_defs, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
