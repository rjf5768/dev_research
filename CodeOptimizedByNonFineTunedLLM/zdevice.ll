; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zdevice.c'
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
define dso_local i32 @zcopypage(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_copypage(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_copypage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopyscanlines(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.gx_device_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** %4, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  store %struct.ref_s* %12, %struct.ref_s** %5, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 252
  %18 = icmp eq i32 %17, 60
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %102

20:                                               ; preds = %1
  %21 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to %struct.gx_device_s**
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %23, align 8
  store %struct.gx_device_s* %24, %struct.gx_device_s** %6, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 252
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i32 -20, i32* %2, align 4
  br label %102

32:                                               ; preds = %20
  %33 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %6, align 8
  %44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38, %32
  store i32 -15, i32* %2, align 4
  br label %102

49:                                               ; preds = %38
  %50 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  %52 = load i16, i16* %51, align 8
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 252
  %55 = icmp eq i32 %54, 52
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 -20, i32* %2, align 4
  br label %102

57:                                               ; preds = %49
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = zext i16 %60 to i32
  %62 = xor i32 %61, -1
  %63 = and i32 %62, 256
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -7, i32* %2, align 4
  br label %102

66:                                               ; preds = %57
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %6, align 8
  %68 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %75 = bitcast %union.v* %74 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 2
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 @gs_copyscanlines(%struct.gx_device_s* noundef %67, i32 noundef %72, i8* noundef %76, i32 noundef %80, i32* noundef null, i32* noundef %8)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  store i32 -20, i32* %2, align 4
  br label %102

85:                                               ; preds = %66
  %86 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %88 = bitcast %struct.ref_s* %86 to i8*
  %89 = bitcast %struct.ref_s* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 16, i1 false)
  %90 = load i32, i32* %8, align 4
  %91 = trunc i32 %90 to i16
  %92 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 2
  store i16 %91, i16* %93, align 2
  %94 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %96 = load i16, i16* %95, align 8
  %97 = zext i16 %96 to i32
  %98 = or i32 %97, 32768
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %95, align 8
  %100 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -2
  store %struct.ref_s* %101, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %85, %84, %65, %56, %48, %31, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @gs_copyscanlines(%struct.gx_device_s* noundef, i32 noundef, i8* noundef, i32 noundef, i32* noundef, i32* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentdevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gx_device_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef %5)
  store %struct.gx_device_s* %6, %struct.gx_device_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  store %struct.ref_s* %8, %struct.ref_s** %3, align 8
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to %struct.gx_device_s**
  store %struct.gx_device_s* %15, %struct.gx_device_s** %18, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 60, i16* %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdevicename(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 60
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to %struct.gx_device_s**
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %18 = call i8* @gs_devicename(%struct.gx_device_s* noundef %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* noundef %19, %struct.ref_s* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i8* @gs_devicename(%struct.gx_device_s* noundef) #1

declare dso_local i32 @string_to_ref(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdeviceparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 252
  %22 = icmp eq i32 %21, 60
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 -20, i32* %2, align 4
  br label %119

24:                                               ; preds = %15
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to %struct.gx_device_s**
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %28, align 8
  call void @gs_deviceparams(%struct.gx_device_s* noundef %29, %struct.gs_matrix_s* noundef %6, i32* noundef %7, i32* noundef %8)
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %32, align 8
  store %struct.ref_s* %33, %struct.ref_s** %5, align 8
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 0
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %39 = bitcast %union.v* %38 to float*
  store float %35, float* %39, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 0
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  store i16 44, i16* %42, align 8
  %43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 2
  %44 = load float, float* %43, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to float*
  store float %44, float* %48, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 1
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  store i16 44, i16* %51, align 8
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 4
  %53 = load float, float* %52, align 8
  %54 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 2
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to float*
  store float %53, float* %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 2
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  store i16 44, i16* %60, align 8
  %61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 6
  %62 = load float, float* %61, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 3
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to float*
  store float %62, float* %66, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 3
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  store i16 44, i16* %69, align 8
  %70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 8
  %71 = load float, float* %70, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 4
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %75 = bitcast %union.v* %74 to float*
  store float %71, float* %75, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 4
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  store i16 44, i16* %78, align 8
  %79 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 10
  %80 = load float, float* %79, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 5
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %84 = bitcast %union.v* %83 to float*
  store float %80, float* %84, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 5
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 1
  store i16 44, i16* %87, align 8
  %88 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 2
  store %struct.ref_s* %89, %struct.ref_s** %3, align 8
  store %struct.ref_s* %89, %struct.ref_s** @osp, align 8
  %90 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %91 = icmp ugt %struct.ref_s* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %24
  %93 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 -2
  store %struct.ref_s* %94, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %119

95:                                               ; preds = %24
  %96 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -3
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %99 = bitcast %union.v* %98 to i64*
  store i64 0, i64* %99, align 8
  %100 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -3
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 1
  store i16 24, i16* %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 -1
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %108 = bitcast %union.v* %107 to i64*
  store i64 %104, i64* %108, align 8
  %109 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -1
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 1
  store i16 20, i16* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 0
  %116 = bitcast %union.v* %115 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 1
  store i16 20, i16* %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %95, %92, %23, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @write_matrix(...) #1

declare dso_local void @gs_deviceparams(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zflushpage(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_flushpage(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_flushpage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgetdevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gx_device_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.gx_device_s* @gs_getdevice(i32 noundef %30)
  store %struct.gx_device_s* %31, %struct.gx_device_s** %4, align 8
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %33 = icmp eq %struct.gx_device_s* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 -15, i32* %2, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %39 = bitcast %union.v* %38 to %struct.gx_device_s**
  store %struct.gx_device_s* %36, %struct.gx_device_s** %39, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  store i16 60, i16* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %34, %24, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 60
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 252
  %22 = icmp eq i32 %21, 20
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 -20, i32* %2, align 4
  br label %86

24:                                               ; preds = %15
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 252
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 -20, i32* %2, align 4
  br label %86

32:                                               ; preds = %24
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %37, 2147483647
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %42 = bitcast %union.v* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %43, 2147483647
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %32
  store i32 -15, i32* %2, align 4
  br label %86

46:                                               ; preds = %39
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -2
  %49 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %48, %struct.gs_matrix_s* noundef %4)
  store i32 %49, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %86

53:                                               ; preds = %46
  %54 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -3
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to %struct.gx_device_s**
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %57, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -1
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %62 = bitcast %union.v* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %67 = bitcast %union.v* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @gs_makedevice(%struct.gx_device_s** noundef %5, %struct.gx_device_s* noundef %58, %struct.gs_matrix_s* noundef %4, i32 noundef %64, i32 noundef %69, i8* (i32, i32, i8*)* noundef @alloc)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %53
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %75 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -3
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %78 = bitcast %union.v* %77 to %struct.gx_device_s**
  store %struct.gx_device_s* %74, %struct.gx_device_s** %78, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -3
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 1
  store i16 60, i16* %81, align 8
  %82 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -3
  store %struct.ref_s* %83, %struct.ref_s** @osp, align 8
  br label %84

84:                                               ; preds = %73, %53
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %51, %45, %31, %23, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @read_matrix(...) #1

declare dso_local i32 @gs_makedevice(%struct.gx_device_s** noundef, %struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32 noundef, i32 noundef, i8* (i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakeimagedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca [768 x float], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca float*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 252
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %145

20:                                               ; preds = %1
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 252
  %27 = icmp eq i32 %26, 20
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 -20, i32* %2, align 4
  br label %145

29:                                               ; preds = %20
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 255
  %35 = ashr i32 %34, 2
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -24, i32* %7, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 8
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 255
  %44 = ashr i32 %43, 2
  switch i32 %44, label %45 [
    i32 0, label %46
    i32 10, label %46
  ]

45:                                               ; preds = %38
  store i32 -20, i32* %2, align 4
  br label %145

46:                                               ; preds = %38, %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -2
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %56 = bitcast %union.v* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %57, 2147483647
  br i1 %58, label %69, label %59

59:                                               ; preds = %52
  %60 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -1
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %64, 2147483647
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 256
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %59, %52
  store i32 -15, i32* %2, align 4
  br label %145

70:                                               ; preds = %66
  %71 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -3
  %73 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %72, %struct.gs_matrix_s* noundef %4)
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %145

77:                                               ; preds = %70
  %78 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %80 = bitcast %union.v* %79 to %struct.ref_s**
  %81 = load %struct.ref_s*, %struct.ref_s** %80, align 8
  store %struct.ref_s* %81, %struct.ref_s** %10, align 8
  %82 = getelementptr inbounds [768 x float], [768 x float]* %6, i64 0, i64 0
  store float* %82, float** %11, align 8
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %107, %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 8
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 252
  %93 = icmp eq i32 %92, 56
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 -20, i32* %2, align 4
  br label %145

95:                                               ; preds = %87
  %96 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %98 = bitcast %union.v* %97 to %struct.gs_color_s**
  %99 = load %struct.gs_color_s*, %struct.gs_color_s** %98, align 8
  %100 = load float*, float** %11, align 8
  %101 = call i32 (%struct.gs_color_s*, float*, ...) bitcast (i32 (...)* @gs_colorrgb to i32 (%struct.gs_color_s*, float*, ...)*)(%struct.gs_color_s* noundef %99, float* noundef %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %145

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 1
  store %struct.ref_s* %111, %struct.ref_s** %10, align 8
  %112 = load float*, float** %11, align 8
  %113 = getelementptr inbounds float, float* %112, i64 3
  store float* %113, float** %11, align 8
  br label %83, !llvm.loop !4

114:                                              ; preds = %83
  %115 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 -2
  %117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 0
  %118 = bitcast %union.v* %117 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i64 -1
  %123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 0
  %124 = bitcast %union.v* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds [768 x float], [768 x float]* %6, i64 0, i64 0
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @gs_makeimagedevice(%struct.gx_device_s** noundef %5, %struct.gs_matrix_s* noundef %4, i32 noundef %120, i32 noundef %126, float* noundef %127, i32 noundef %128, i8* (i32, i32, i8*)* noundef @alloc)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %114
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %5, align 8
  %134 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i64 -3
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i32 0, i32 0
  %137 = bitcast %union.v* %136 to %struct.gx_device_s**
  store %struct.gx_device_s* %133, %struct.gx_device_s** %137, align 8
  %138 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %139 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i64 -3
  %140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 1
  store i16 60, i16* %140, align 8
  %141 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i64 -3
  store %struct.ref_s* %142, %struct.ref_s** @osp, align 8
  br label %143

143:                                              ; preds = %132, %114
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %104, %94, %75, %69, %45, %28, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @gs_colorrgb(...) #1

declare dso_local i32 @gs_makeimagedevice(%struct.gx_device_s** noundef, %struct.gs_matrix_s* noundef, i32 noundef, i32 noundef, float* noundef, i32 noundef, i8* (i32, i32, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znulldevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_nulldevice(%struct.gs_state_s* noundef %3)
  ret i32 0
}

declare dso_local void @gs_nulldevice(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetdevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 60
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to %struct.gx_device_s**
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %16, align 8
  %18 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %13, %struct.gx_device_s* noundef %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef, %struct.gx_device_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zdevice_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zdevice_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

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
