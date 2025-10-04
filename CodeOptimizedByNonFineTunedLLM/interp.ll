; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/interp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@ostack = internal global [520 x %struct.ref_s] zeroinitializer, align 16
@osbot = dso_local global %struct.ref_s* null, align 8
@osp = dso_local global %struct.ref_s* null, align 8
@ostop = dso_local global %struct.ref_s* null, align 8
@osp_nargs = dso_local global [6 x %struct.ref_s*] zeroinitializer, align 16
@estack = dso_local global [151 x %struct.ref_s] zeroinitializer, align 16
@esp = dso_local global %struct.ref_s* null, align 8
@estop = dso_local global %struct.ref_s* null, align 8
@dstack = dso_local global [20 x %struct.ref_s] zeroinitializer, align 16
@dsp = dso_local global %struct.ref_s* null, align 8
@dstop = dso_local global %struct.ref_s* null, align 8
@special_ops = internal global [7 x i32 (%struct.ref_s*)*] [i32 (%struct.ref_s*)* @zadd, i32 (%struct.ref_s*)* @zdup, i32 (%struct.ref_s*)* @zexch, i32 (%struct.ref_s*)* @zifelse, i32 (%struct.ref_s*)* @zle, i32 (%struct.ref_s*)* @zpop, i32 (%struct.ref_s*)* @zsub], align 16
@name_errordict = external dso_local global %struct.ref_s, align 8
@name_ErrorNames = external dso_local global %struct.ref_s, align 8
@error_object = dso_local global %struct.ref_s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @interp_init(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 10), %struct.ref_s** @osbot, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 499
  store %struct.ref_s* %8, %struct.ref_s** @ostop, align 8
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 0), %struct.ref_s** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %12 = icmp ult %struct.ref_s* %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i16*
  store i16 0, i16* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 -4, i16* %18, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 1
  store %struct.ref_s* %21, %struct.ref_s** %3, align 8
  br label %9, !llvm.loop !4

22:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 %29
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 %33
  store %struct.ref_s* %31, %struct.ref_s** %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %23, !llvm.loop !6

38:                                               ; preds = %23
  store %struct.ref_s* getelementptr inbounds ([151 x %struct.ref_s], [151 x %struct.ref_s]* @estack, i64 0, i64 0), %struct.ref_s** @esp, align 8
  store %struct.ref_s* getelementptr inbounds ([151 x %struct.ref_s], [151 x %struct.ref_s]* @estack, i64 0, i64 150), %struct.ref_s** @estop, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), i64 %40
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  store %struct.ref_s* %42, %struct.ref_s** @dsp, align 8
  store %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 19), %struct.ref_s** @dstop, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @interp_fix_op(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.ref_s*)*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  store i32 7, i32* %3, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  store i32 (%struct.ref_s*)* %8, i32 (%struct.ref_s*)** %4, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [7 x i32 (%struct.ref_s*)*], [7 x i32 (%struct.ref_s*)*]* @special_ops, i64 0, i64 %16
  %18 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %17, align 8
  %19 = icmp ne i32 (%struct.ref_s*)* %14, %18
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i1 [ false, %9 ], [ %19, %13 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %9, !llvm.loop !7

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %4, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %27, i32 (%struct.ref_s*)** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 16, %31
  %33 = shl i32 %32, 2
  %34 = add nsw i32 %33, 1
  %35 = trunc i32 %34 to i16
  %36 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  store i16 %35, i16* %37, align 8
  br label %38

38:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interpret(%struct.ref_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca %struct.ref_s*, align 8
  %10 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  store %struct.ref_s* %11, %struct.ref_s** %6, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %13, %struct.ref_s** @esp, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @interp_exit, i32 (%struct.ref_s*)** %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 37, i16* %18, align 8
  br label %19

19:                                               ; preds = %81, %2
  %20 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %21 = call i32 @interp(%struct.ref_s* noundef %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -100
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %88

25:                                               ; preds = %19
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %29 = icmp ult %struct.ref_s* %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %33
  %39 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef @name_errordict, %struct.ref_s** noundef %8)
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %44 = call i32 @dict_lookup(%struct.ref_s* noundef %42, %struct.ref_s* noundef %43, %struct.ref_s* noundef @name_ErrorNames, %struct.ref_s** noundef %9)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %52 [
    i32 -3, label %50
    i32 -5, label %50
    i32 -16, label %50
    i32 -25, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, -2
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %88

65:                                               ; preds = %55
  %66 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %68 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to %struct.ref_s**
  %71 = load %struct.ref_s*, %struct.ref_s** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 0, %72
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 %75
  %77 = call i32 @dict_lookup(%struct.ref_s* noundef %66, %struct.ref_s* noundef %67, %struct.ref_s* noundef %76, %struct.ref_s** noundef %6)
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %65
  %82 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %83 = bitcast %struct.ref_s* %7 to i8*
  %84 = bitcast %struct.ref_s* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  store %struct.ref_s* %7, %struct.ref_s** %6, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 1
  store %struct.ref_s* %86, %struct.ref_s** @osp, align 8
  %87 = bitcast %struct.ref_s* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i64 16, i1 false)
  br label %19

88:                                               ; preds = %79, %63, %50, %46, %36, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @interp_exit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  ret i32 -100
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @interp(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_s, align 8
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca %struct.ref_s*, align 8
  %12 = alloca %struct.ref_s*, align 8
  %13 = alloca %struct.ref_s*, align 8
  %14 = alloca %struct.stream_s*, align 8
  %15 = alloca %struct.stream_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  store %struct.ref_s* %16, %struct.ref_s** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %17, %struct.ref_s** %6, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %18, %struct.ref_s** %7, align 8
  store %struct.ref_s* %9, %struct.ref_s** %10, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %21 = icmp uge %struct.ref_s* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %23, %struct.ref_s** @esp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %25, i64 16, i1 false)
  store i32 -5, i32* %2, align 4
  br label %729

26:                                               ; preds = %1
  %27 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 1
  store %struct.ref_s* %28, %struct.ref_s** %7, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = bitcast %struct.ref_s* %28 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %681

32:                                               ; preds = %728, %704, %692, %685, %631, %573, %532, %513, %491, %425, %345, %275, %256, %238, %214, %179, %115, %83, %59
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 255
  switch i32 %38, label %666 [
    i32 0, label %39
    i32 1, label %39
    i32 8, label %39
    i32 9, label %39
    i32 12, label %39
    i32 13, label %39
    i32 40, label %39
    i32 41, label %39
    i32 52, label %39
    i32 53, label %39
    i32 2, label %43
    i32 4, label %43
    i32 5, label %43
    i32 10, label %43
    i32 14, label %43
    i32 16, label %43
    i32 17, label %43
    i32 20, label %43
    i32 21, label %43
    i32 24, label %43
    i32 25, label %43
    i32 28, label %43
    i32 32, label %43
    i32 36, label %43
    i32 42, label %43
    i32 44, label %43
    i32 45, label %43
    i32 48, label %43
    i32 49, label %43
    i32 54, label %43
    i32 56, label %43
    i32 57, label %43
    i32 60, label %43
    i32 61, label %43
    i32 65, label %44
    i32 69, label %63
    i32 73, label %87
    i32 77, label %119
    i32 81, label %215
    i32 85, label %242
    i32 89, label %260
    i32 33, label %279
    i32 37, label %280
    i32 29, label %349
    i32 15, label %535
    i32 55, label %596
  ]

39:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %40 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %40, %struct.ref_s** @esp, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %42 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %42, i64 16, i1 false)
  store i32 -7, i32* %2, align 4
  br label %729

43:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  br label %666

44:                                               ; preds = %33
  %45 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %46 = call i32 @zadd(%struct.ref_s* noundef %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %49, %struct.ref_s** @esp, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %51 = bitcast %struct.ref_s* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %51, i64 16, i1 false)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %729

53:                                               ; preds = %44
  %54 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 -1
  store %struct.ref_s* %55, %struct.ref_s** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 1
  store %struct.ref_s* %61, %struct.ref_s** %4, align 8
  br label %32

62:                                               ; preds = %53
  br label %689

63:                                               ; preds = %33
  %64 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %66 = icmp ult %struct.ref_s* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %70 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %70, i64 16, i1 false)
  store i32 -17, i32* %2, align 4
  br label %729

71:                                               ; preds = %63
  %72 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 1
  store %struct.ref_s* %73, %struct.ref_s** %6, align 8
  %74 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 0
  %76 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  %78 = bitcast %struct.ref_s* %75 to i8*
  %79 = bitcast %struct.ref_s* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %5, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 1
  store %struct.ref_s* %85, %struct.ref_s** %4, align 8
  br label %32

86:                                               ; preds = %71
  br label %689

87:                                               ; preds = %33
  %88 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %89 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 2), align 16
  %90 = icmp ult %struct.ref_s* %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %92, %struct.ref_s** @esp, align 8
  %93 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %94 = bitcast %struct.ref_s* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %94, i64 16, i1 false)
  store i32 -17, i32* %2, align 4
  br label %729

95:                                               ; preds = %87
  %96 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %97 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %98 = bitcast %struct.ref_s* %96 to i8*
  %99 = bitcast %struct.ref_s* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 0
  %102 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -1
  %104 = bitcast %struct.ref_s* %101 to i8*
  %105 = bitcast %struct.ref_s* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  %106 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i64 -1
  %108 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i64 0
  %110 = bitcast %struct.ref_s* %107 to i8*
  %111 = bitcast %struct.ref_s* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %95
  %116 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 1
  store %struct.ref_s* %117, %struct.ref_s** %4, align 8
  br label %32

118:                                              ; preds = %95
  br label %689

119:                                              ; preds = %33
  %120 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 -2
  %122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 0, i32 1
  %123 = load i16, i16* %122, align 8
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 255
  %126 = ashr i32 %125, 2
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %129, %struct.ref_s** @esp, align 8
  %130 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %131 = bitcast %struct.ref_s* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %131, i64 16, i1 false)
  store i32 -20, i32* %2, align 4
  br label %729

132:                                              ; preds = %119
  %133 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %134 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %135 = icmp uge %struct.ref_s* %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %137, %struct.ref_s** @esp, align 8
  %138 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %139 = bitcast %struct.ref_s* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %139, i64 16, i1 false)
  store i32 -5, i32* %2, align 4
  br label %729

140:                                              ; preds = %132
  %141 = load i32, i32* %5, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i64 1
  %146 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 0
  %148 = bitcast %union.v* %147 to %struct.ref_s**
  store %struct.ref_s* %145, %struct.ref_s** %148, align 8
  %149 = load i32, i32* %5, align 4
  %150 = trunc i32 %149 to i16
  %151 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = zext i16 %150 to i32
  br label %155

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %143
  %156 = phi i32 [ %153, %143 ], [ 0, %154 ]
  %157 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i64 -3
  store %struct.ref_s* %158, %struct.ref_s** %6, align 8
  %159 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i64 1
  %161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %160, i32 0, i32 0
  %162 = bitcast %union.v* %161 to i16*
  %163 = load i16, i16* %162, align 8
  %164 = zext i16 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %155
  %167 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i64 2
  br label %172

169:                                              ; preds = %155
  %170 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i64 3
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi %struct.ref_s* [ %168, %166 ], [ %171, %169 ]
  store %struct.ref_s* %173, %struct.ref_s** %11, align 8
  %174 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %174, i32 0, i32 1
  %176 = load i16, i16* %175, align 8
  %177 = zext i16 %176 to i32
  %178 = and i32 %177, 255
  switch i32 %178, label %179 [
    i32 3, label %188
    i32 43, label %189
  ]

179:                                              ; preds = %172
  %180 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i64 1
  %182 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %183 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %182, i64 0
  %184 = bitcast %struct.ref_s* %181 to i8*
  %185 = bitcast %struct.ref_s* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 16, i1 false)
  %186 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %187 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %186, i64 1
  store %struct.ref_s* %187, %struct.ref_s** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %172, %188
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %191, i32 0, i32 0
  %193 = bitcast %union.v* %192 to %struct.ref_s**
  %194 = load %struct.ref_s*, %struct.ref_s** %193, align 8
  store %struct.ref_s* %194, %struct.ref_s** %4, align 8
  %195 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %195, i32 0, i32 2
  %197 = load i16, i16* %196, align 2
  %198 = zext i16 %197 to i32
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %5, align 4
  %201 = icmp sle i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %190
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %698

206:                                              ; preds = %202
  br label %214

207:                                              ; preds = %190
  %208 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %208, i32 1
  store %struct.ref_s* %209, %struct.ref_s** %7, align 8
  %210 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %211 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %212 = bitcast %struct.ref_s* %210 to i8*
  %213 = bitcast %struct.ref_s* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 %213, i64 16, i1 false)
  br label %214

214:                                              ; preds = %207, %206
  br label %32

215:                                              ; preds = %33
  %216 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %217 = call i32 (%struct.ref_s*, i32, ...) bitcast (i32 (...)* @obj_compare to i32 (%struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %216, i32 noundef 3)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %221, %struct.ref_s** @esp, align 8
  %222 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %223 = bitcast %struct.ref_s* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %223, i64 16, i1 false)
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %2, align 4
  br label %729

225:                                              ; preds = %215
  %226 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %226, i32 -1
  store %struct.ref_s* %227, %struct.ref_s** %6, align 8
  %228 = load i32, i32* %8, align 4
  %229 = trunc i32 %228 to i16
  %230 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %231 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %230, i32 0, i32 0
  %232 = bitcast %union.v* %231 to i16*
  store i16 %229, i16* %232, align 8
  %233 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %234 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %233, i32 0, i32 1
  store i16 4, i16* %234, align 8
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %5, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %225
  %239 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %240 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %239, i32 1
  store %struct.ref_s* %240, %struct.ref_s** %4, align 8
  br label %32

241:                                              ; preds = %225
  br label %689

242:                                              ; preds = %33
  %243 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %244 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %245 = icmp ult %struct.ref_s* %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %247, %struct.ref_s** @esp, align 8
  %248 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %249 = bitcast %struct.ref_s* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %249, i64 16, i1 false)
  store i32 -17, i32* %2, align 4
  br label %729

250:                                              ; preds = %242
  %251 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %252 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %251, i32 -1
  store %struct.ref_s* %252, %struct.ref_s** %6, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %5, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %257, i32 1
  store %struct.ref_s* %258, %struct.ref_s** %4, align 8
  br label %32

259:                                              ; preds = %250
  br label %689

260:                                              ; preds = %33
  %261 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %262 = call i32 @zsub(%struct.ref_s* noundef %261)
  store i32 %262, i32* %8, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %265, %struct.ref_s** @esp, align 8
  %266 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %267 = bitcast %struct.ref_s* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %267, i64 16, i1 false)
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %2, align 4
  br label %729

269:                                              ; preds = %260
  %270 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %271 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %270, i32 -1
  store %struct.ref_s* %271, %struct.ref_s** %6, align 8
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %5, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %276, i32 1
  store %struct.ref_s* %277, %struct.ref_s** %4, align 8
  br label %32

278:                                              ; preds = %269
  br label %689

279:                                              ; preds = %33
  br label %681

280:                                              ; preds = %33
  %281 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %281, %struct.ref_s** @esp, align 8
  %282 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  store %struct.ref_s* %282, %struct.ref_s** @osp, align 8
  %283 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %284 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %283, i32 0, i32 0
  %285 = bitcast %union.v* %284 to i32 (%struct.ref_s*)**
  %286 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %285, align 8
  %287 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %288 = call i32 %286(%struct.ref_s* noundef %287)
  store i32 %288, i32* %8, align 4
  %289 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %289, %struct.ref_s** %6, align 8
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %341

292:                                              ; preds = %280
  %293 = load i32, i32* %8, align 4
  switch i32 %293, label %336 [
    i32 1, label %294
    i32 -20, label %323
  ]

294:                                              ; preds = %292
  %295 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %296 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %297 = icmp ugt %struct.ref_s* %295, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %294
  %299 = load i32, i32* %5, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %303 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %302, i64 1
  %304 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %305 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %304, i32 0, i32 0
  %306 = bitcast %union.v* %305 to %struct.ref_s**
  store %struct.ref_s* %303, %struct.ref_s** %306, align 8
  %307 = load i32, i32* %5, align 4
  %308 = trunc i32 %307 to i16
  %309 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %310 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %309, i32 0, i32 2
  store i16 %308, i16* %310, align 2
  %311 = zext i16 %308 to i32
  br label %313

312:                                              ; preds = %298
  br label %313

313:                                              ; preds = %312, %301
  %314 = phi i32 [ %311, %301 ], [ 0, %312 ]
  br label %321

315:                                              ; preds = %294
  %316 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %317 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %318 = icmp eq %struct.ref_s* %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  br label %681

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320, %313
  %322 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %322, %struct.ref_s** %7, align 8
  br label %698

323:                                              ; preds = %292
  %324 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %325 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %326 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %325, i64 -1
  %327 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %327, i32 0, i32 2
  %329 = load i16, i16* %328, align 2
  %330 = zext i16 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %326, i64 %331
  %333 = icmp ult %struct.ref_s* %324, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  store i32 -17, i32* %8, align 4
  br label %335

335:                                              ; preds = %334, %323
  br label %336

336:                                              ; preds = %292, %335
  %337 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %337, %struct.ref_s** @esp, align 8
  %338 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %339 = bitcast %struct.ref_s* %338 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %339, i64 16, i1 false)
  %340 = load i32, i32* %8, align 4
  store i32 %340, i32* %2, align 4
  br label %729

341:                                              ; preds = %280
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %5, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  %346 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %347 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %346, i32 1
  store %struct.ref_s* %347, %struct.ref_s** %4, align 8
  br label %32

348:                                              ; preds = %341
  br label %689

349:                                              ; preds = %33
  %350 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %351 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %350, i32 0, i32 0
  %352 = bitcast %union.v* %351 to %struct.name_s**
  %353 = load %struct.name_s*, %struct.name_s** %352, align 8
  %354 = getelementptr inbounds %struct.name_s, %struct.name_s* %353, i32 0, i32 4
  %355 = load %struct.ref_s*, %struct.ref_s** %354, align 8
  store %struct.ref_s* %355, %struct.ref_s** %12, align 8
  %356 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %357 = ptrtoint %struct.ref_s* %356 to i64
  %358 = icmp ugt i64 %357, 1
  br i1 %358, label %370, label %359

359:                                              ; preds = %349
  %360 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %361 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %362 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %360, %struct.ref_s* noundef %361, %struct.ref_s** noundef %13)
  %363 = icmp sle i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %365, %struct.ref_s** @esp, align 8
  %366 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %367 = bitcast %struct.ref_s* %366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %367, i64 16, i1 false)
  store i32 -21, i32* %2, align 4
  br label %729

368:                                              ; preds = %359
  %369 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  store %struct.ref_s* %369, %struct.ref_s** %12, align 8
  br label %370

370:                                              ; preds = %368, %349
  %371 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %372 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %371, i32 0, i32 1
  %373 = load i16, i16* %372, align 8
  %374 = zext i16 %373 to i32
  %375 = and i32 %374, 255
  switch i32 %375, label %517 [
    i32 3, label %376
    i32 43, label %376
    i32 37, label %426
    i32 2, label %495
    i32 4, label %495
    i32 20, label %495
    i32 42, label %495
    i32 44, label %495
    i32 54, label %495
  ]

376:                                              ; preds = %370, %370
  %377 = load i32, i32* %5, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %376
  %380 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %381 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %380, i64 1
  %382 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %383 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %382, i32 0, i32 0
  %384 = bitcast %union.v* %383 to %struct.ref_s**
  store %struct.ref_s* %381, %struct.ref_s** %384, align 8
  %385 = load i32, i32* %5, align 4
  %386 = trunc i32 %385 to i16
  %387 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %388 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %387, i32 0, i32 2
  store i16 %386, i16* %388, align 2
  %389 = zext i16 %386 to i32
  br label %391

390:                                              ; preds = %376
  br label %391

391:                                              ; preds = %390, %379
  %392 = phi i32 [ %389, %379 ], [ 0, %390 ]
  %393 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %394 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %395 = icmp uge %struct.ref_s* %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %391
  %397 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %397, %struct.ref_s** @esp, align 8
  %398 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %399 = bitcast %struct.ref_s* %398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %399, i64 16, i1 false)
  store i32 -5, i32* %2, align 4
  br label %729

400:                                              ; preds = %391
  %401 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %402 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %401, i32 1
  store %struct.ref_s* %402, %struct.ref_s** %7, align 8
  %403 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %404 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %405 = bitcast %struct.ref_s* %403 to i8*
  %406 = bitcast %struct.ref_s* %404 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %405, i8* align 8 %406, i64 16, i1 false)
  %407 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %408 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %407, i32 0, i32 0
  %409 = bitcast %union.v* %408 to %struct.ref_s**
  %410 = load %struct.ref_s*, %struct.ref_s** %409, align 8
  store %struct.ref_s* %410, %struct.ref_s** %4, align 8
  %411 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %412 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %411, i32 0, i32 2
  %413 = load i16, i16* %412, align 2
  %414 = zext i16 %413 to i32
  %415 = sub nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %5, align 4
  %417 = icmp sle i32 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %400
  %419 = load i32, i32* %5, align 4
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  br label %698

422:                                              ; preds = %418
  %423 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %424 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %423, i32 -1
  store %struct.ref_s* %424, %struct.ref_s** %7, align 8
  br label %425

425:                                              ; preds = %422, %400
  br label %32

426:                                              ; preds = %370
  %427 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %427, %struct.ref_s** @esp, align 8
  %428 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  store %struct.ref_s* %428, %struct.ref_s** @osp, align 8
  %429 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %430 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %429, i32 0, i32 0
  %431 = bitcast %union.v* %430 to i32 (%struct.ref_s*)**
  %432 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %431, align 8
  %433 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %434 = call i32 %432(%struct.ref_s* noundef %433)
  store i32 %434, i32* %8, align 4
  %435 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  store %struct.ref_s* %435, %struct.ref_s** %6, align 8
  %436 = load i32, i32* %8, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %487

438:                                              ; preds = %426
  %439 = load i32, i32* %8, align 4
  switch i32 %439, label %482 [
    i32 1, label %440
    i32 -20, label %469
  ]

440:                                              ; preds = %438
  %441 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %442 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %443 = icmp ugt %struct.ref_s* %441, %442
  br i1 %443, label %444, label %461

444:                                              ; preds = %440
  %445 = load i32, i32* %5, align 4
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %458

447:                                              ; preds = %444
  %448 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %449 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %448, i64 1
  %450 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %451 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %450, i32 0, i32 0
  %452 = bitcast %union.v* %451 to %struct.ref_s**
  store %struct.ref_s* %449, %struct.ref_s** %452, align 8
  %453 = load i32, i32* %5, align 4
  %454 = trunc i32 %453 to i16
  %455 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %456 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %455, i32 0, i32 2
  store i16 %454, i16* %456, align 2
  %457 = zext i16 %454 to i32
  br label %459

458:                                              ; preds = %444
  br label %459

459:                                              ; preds = %458, %447
  %460 = phi i32 [ %457, %447 ], [ 0, %458 ]
  br label %467

461:                                              ; preds = %440
  %462 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %463 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %464 = icmp eq %struct.ref_s* %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %461
  br label %681

466:                                              ; preds = %461
  br label %467

467:                                              ; preds = %466, %459
  %468 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %468, %struct.ref_s** %7, align 8
  br label %698

469:                                              ; preds = %438
  %470 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %471 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %472 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %471, i64 -1
  %473 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %474 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %473, i32 0, i32 2
  %475 = load i16, i16* %474, align 2
  %476 = zext i16 %475 to i32
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %472, i64 %477
  %479 = icmp ult %struct.ref_s* %470, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %469
  store i32 -17, i32* %8, align 4
  br label %481

481:                                              ; preds = %480, %469
  br label %482

482:                                              ; preds = %481, %438
  %483 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %483, %struct.ref_s** @esp, align 8
  %484 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %485 = bitcast %struct.ref_s* %484 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %485, i64 16, i1 false)
  %486 = load i32, i32* %8, align 4
  store i32 %486, i32* %2, align 4
  br label %729

487:                                              ; preds = %426
  %488 = load i32, i32* %5, align 4
  %489 = add nsw i32 %488, -1
  store i32 %489, i32* %5, align 4
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %487
  %492 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %493 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %492, i32 1
  store %struct.ref_s* %493, %struct.ref_s** %4, align 8
  br label %32

494:                                              ; preds = %487
  br label %689

495:                                              ; preds = %370, %370, %370, %370, %370, %370
  %496 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %497 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %498 = icmp uge %struct.ref_s* %496, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %495
  %500 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %500, %struct.ref_s** @esp, align 8
  %501 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %502 = bitcast %struct.ref_s* %501 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %502, i64 16, i1 false)
  store i32 -16, i32* %2, align 4
  br label %729

503:                                              ; preds = %495
  %504 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %505 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %504, i32 1
  store %struct.ref_s* %505, %struct.ref_s** %6, align 8
  %506 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %507 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %508 = bitcast %struct.ref_s* %506 to i8*
  %509 = bitcast %struct.ref_s* %507 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %508, i8* align 8 %509, i64 16, i1 false)
  %510 = load i32, i32* %5, align 4
  %511 = add nsw i32 %510, -1
  store i32 %511, i32* %5, align 4
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %503
  %514 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %515 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %514, i32 1
  store %struct.ref_s* %515, %struct.ref_s** %4, align 8
  br label %32

516:                                              ; preds = %503
  br label %689

517:                                              ; preds = %370
  %518 = load i32, i32* %5, align 4
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %520, label %531

520:                                              ; preds = %517
  %521 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %522 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %521, i64 1
  %523 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %524 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %523, i32 0, i32 0
  %525 = bitcast %union.v* %524 to %struct.ref_s**
  store %struct.ref_s* %522, %struct.ref_s** %525, align 8
  %526 = load i32, i32* %5, align 4
  %527 = trunc i32 %526 to i16
  %528 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %529 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %528, i32 0, i32 2
  store i16 %527, i16* %529, align 2
  %530 = zext i16 %527 to i32
  br label %532

531:                                              ; preds = %517
  br label %532

532:                                              ; preds = %531, %520
  %533 = phi i32 [ %530, %520 ], [ 0, %531 ]
  store i32 0, i32* %5, align 4
  %534 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  store %struct.ref_s* %534, %struct.ref_s** %4, align 8
  br label %32

535:                                              ; preds = %33
  %536 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %537 = call i32 (%struct.ref_s*, %struct.stream_s**, ...) bitcast (i32 (...)* @file_check_read to i32 (%struct.ref_s*, %struct.stream_s**, ...)*)(%struct.ref_s* noundef %536, %struct.stream_s** noundef %14)
  store i32 %537, i32* %8, align 4
  %538 = load i32, i32* %8, align 4
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %535
  %541 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %541, %struct.ref_s** @esp, align 8
  %542 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %543 = bitcast %struct.ref_s* %542 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %543, i64 16, i1 false)
  %544 = load i32, i32* %8, align 4
  store i32 %544, i32* %2, align 4
  br label %729

545:                                              ; preds = %535
  %546 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  store %struct.ref_s* %546, %struct.ref_s** @osp, align 8
  %547 = load %struct.stream_s*, %struct.stream_s** %14, align 8
  %548 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %547, i32 noundef 0, %struct.ref_s* noundef %9)
  store i32 %548, i32* %8, align 4
  switch i32 %548, label %591 [
    i32 0, label %549
    i32 1, label %579
  ]

549:                                              ; preds = %545
  %550 = load i32, i32* %5, align 4
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %563

552:                                              ; preds = %549
  %553 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %554 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %553, i64 1
  %555 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %556 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %555, i32 0, i32 0
  %557 = bitcast %union.v* %556 to %struct.ref_s**
  store %struct.ref_s* %554, %struct.ref_s** %557, align 8
  %558 = load i32, i32* %5, align 4
  %559 = trunc i32 %558 to i16
  %560 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %561 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %560, i32 0, i32 2
  store i16 %559, i16* %561, align 2
  %562 = zext i16 %559 to i32
  br label %564

563:                                              ; preds = %549
  br label %564

564:                                              ; preds = %563, %552
  %565 = phi i32 [ %562, %552 ], [ 0, %563 ]
  %566 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %567 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %568 = icmp uge %struct.ref_s* %566, %567
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %570, %struct.ref_s** @esp, align 8
  %571 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %572 = bitcast %struct.ref_s* %571 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %572, i64 16, i1 false)
  store i32 -5, i32* %2, align 4
  br label %729

573:                                              ; preds = %564
  %574 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %575 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %574, i32 1
  store %struct.ref_s* %575, %struct.ref_s** %7, align 8
  %576 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %577 = bitcast %struct.ref_s* %575 to i8*
  %578 = bitcast %struct.ref_s* %576 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %577, i8* align 8 %578, i64 16, i1 false)
  store %struct.ref_s* %9, %struct.ref_s** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

579:                                              ; preds = %545
  %580 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %581 = load %struct.stream_s*, %struct.stream_s** %14, align 8
  %582 = call i32 (%struct.ref_s*, %struct.stream_s*, ...) bitcast (i32 (...)* @file_close to i32 (%struct.ref_s*, %struct.stream_s*, ...)*)(%struct.ref_s* noundef %580, %struct.stream_s* noundef %581)
  store i32 %582, i32* %8, align 4
  %583 = load i32, i32* %8, align 4
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %585, label %590

585:                                              ; preds = %579
  %586 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %586, %struct.ref_s** @esp, align 8
  %587 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %588 = bitcast %struct.ref_s* %587 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %588, i64 16, i1 false)
  %589 = load i32, i32* %8, align 4
  store i32 %589, i32* %2, align 4
  br label %729

590:                                              ; preds = %579
  br label %681

591:                                              ; preds = %545
  %592 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %592, %struct.ref_s** @esp, align 8
  %593 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %594 = bitcast %struct.ref_s* %593 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %594, i64 16, i1 false)
  %595 = load i32, i32* %8, align 4
  store i32 %595, i32* %2, align 4
  br label %729

596:                                              ; preds = %33
  %597 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %598 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %597, i32 0, i32 0
  %599 = bitcast %union.v* %598 to i8**
  %600 = load i8*, i8** %599, align 8
  %601 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %602 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %601, i32 0, i32 2
  %603 = load i16, i16* %602, align 2
  %604 = zext i16 %603 to i32
  call void @sread_string(%struct.stream_s* noundef %15, i8* noundef %600, i32 noundef %604)
  %605 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  store %struct.ref_s* %605, %struct.ref_s** @osp, align 8
  %606 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %15, i32 noundef 1, %struct.ref_s* noundef %9)
  store i32 %606, i32* %8, align 4
  switch i32 %606, label %661 [
    i32 0, label %607
    i32 1, label %660
  ]

607:                                              ; preds = %596
  %608 = load i32, i32* %5, align 4
  %609 = icmp sgt i32 %608, 0
  br i1 %609, label %610, label %621

610:                                              ; preds = %607
  %611 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %612 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %611, i64 1
  %613 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %614 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %613, i32 0, i32 0
  %615 = bitcast %union.v* %614 to %struct.ref_s**
  store %struct.ref_s* %612, %struct.ref_s** %615, align 8
  %616 = load i32, i32* %5, align 4
  %617 = trunc i32 %616 to i16
  %618 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %619 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %618, i32 0, i32 2
  store i16 %617, i16* %619, align 2
  %620 = zext i16 %617 to i32
  br label %622

621:                                              ; preds = %607
  br label %622

622:                                              ; preds = %621, %610
  %623 = phi i32 [ %620, %610 ], [ 0, %621 ]
  %624 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %625 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %626 = icmp uge %struct.ref_s* %624, %625
  br i1 %626, label %627, label %631

627:                                              ; preds = %622
  %628 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %628, %struct.ref_s** @esp, align 8
  %629 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %630 = bitcast %struct.ref_s* %629 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %630, i64 16, i1 false)
  store i32 -5, i32* %2, align 4
  br label %729

631:                                              ; preds = %622
  %632 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %633 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %632, i32 1
  store %struct.ref_s* %633, %struct.ref_s** %7, align 8
  %634 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %635 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %634, i32 0, i32 1
  %636 = load i16, i16* %635, align 8
  %637 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %638 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %637, i32 0, i32 1
  store i16 %636, i16* %638, align 8
  %639 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  %640 = load i8*, i8** %639, align 8
  %641 = getelementptr inbounds i8, i8* %640, i64 1
  %642 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %643 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %642, i32 0, i32 0
  %644 = bitcast %union.v* %643 to i8**
  store i8* %641, i8** %644, align 8
  %645 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 2
  %646 = load i8*, i8** %645, align 8
  %647 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 3
  %648 = load i32, i32* %647, align 8
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds i8, i8* %646, i64 %649
  %651 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  %652 = load i8*, i8** %651, align 8
  %653 = ptrtoint i8* %650 to i64
  %654 = ptrtoint i8* %652 to i64
  %655 = sub i64 %653, %654
  %656 = sub nsw i64 %655, 1
  %657 = trunc i64 %656 to i16
  %658 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %659 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %658, i32 0, i32 2
  store i16 %657, i16* %659, align 2
  store %struct.ref_s* %9, %struct.ref_s** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

660:                                              ; preds = %596
  br label %681

661:                                              ; preds = %596
  %662 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %662, %struct.ref_s** @esp, align 8
  %663 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %664 = bitcast %struct.ref_s* %663 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %664, i64 16, i1 false)
  %665 = load i32, i32* %8, align 4
  store i32 %665, i32* %2, align 4
  br label %729

666:                                              ; preds = %33, %43
  %667 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %668 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %669 = icmp uge %struct.ref_s* %667, %668
  br i1 %669, label %670, label %674

670:                                              ; preds = %666
  %671 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %671, %struct.ref_s** @esp, align 8
  %672 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %673 = bitcast %struct.ref_s* %672 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* @error_object to i8*), i8* align 8 %673, i64 16, i1 false)
  store i32 -16, i32* %2, align 4
  br label %729

674:                                              ; preds = %666
  %675 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %676 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %675, i32 1
  store %struct.ref_s* %676, %struct.ref_s** %6, align 8
  %677 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %678 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %679 = bitcast %struct.ref_s* %677 to i8*
  %680 = bitcast %struct.ref_s* %678 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %679, i8* align 8 %680, i64 16, i1 false)
  br label %681

681:                                              ; preds = %674, %660, %590, %465, %319, %279, %26
  %682 = load i32, i32* %5, align 4
  %683 = add nsw i32 %682, -1
  store i32 %683, i32* %5, align 4
  %684 = icmp sgt i32 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %681
  %686 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %687 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %686, i32 1
  store %struct.ref_s* %687, %struct.ref_s** %4, align 8
  br label %32

688:                                              ; preds = %681
  br label %689

689:                                              ; preds = %688, %516, %494, %348, %278, %259, %241, %118, %86, %62
  %690 = load i32, i32* %5, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %697, label %692

692:                                              ; preds = %689
  %693 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %694 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %693, i32 -1
  store %struct.ref_s* %694, %struct.ref_s** %7, align 8
  %695 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %696 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %695, i32 1
  store %struct.ref_s* %696, %struct.ref_s** %4, align 8
  br label %32

697:                                              ; preds = %689
  br label %698

698:                                              ; preds = %726, %697, %467, %421, %321, %205
  %699 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %700 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %699, i32 0, i32 1
  %701 = load i16, i16* %700, align 8
  %702 = zext i16 %701 to i32
  %703 = and i32 %702, 255
  switch i32 %703, label %704 [
    i32 3, label %707
    i32 43, label %708
  ]

704:                                              ; preds = %698
  %705 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %706 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %705, i32 -1
  store %struct.ref_s* %706, %struct.ref_s** %7, align 8
  store %struct.ref_s* %705, %struct.ref_s** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

707:                                              ; preds = %698
  br label %708

708:                                              ; preds = %698, %707
  br label %709

709:                                              ; preds = %708
  %710 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %711 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %710, i32 0, i32 0
  %712 = bitcast %union.v* %711 to %struct.ref_s**
  %713 = load %struct.ref_s*, %struct.ref_s** %712, align 8
  store %struct.ref_s* %713, %struct.ref_s** %4, align 8
  %714 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %715 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %714, i32 0, i32 2
  %716 = load i16, i16* %715, align 2
  %717 = zext i16 %716 to i32
  %718 = sub nsw i32 %717, 1
  store i32 %718, i32* %5, align 4
  %719 = load i32, i32* %5, align 4
  %720 = icmp sle i32 %719, 0
  br i1 %720, label %721, label %728

721:                                              ; preds = %709
  %722 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %723 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %722, i32 -1
  store %struct.ref_s* %723, %struct.ref_s** %7, align 8
  %724 = load i32, i32* %5, align 4
  %725 = icmp slt i32 %724, 0
  br i1 %725, label %726, label %727

726:                                              ; preds = %721
  br label %698

727:                                              ; preds = %721
  br label %728

728:                                              ; preds = %727, %709
  br label %32

729:                                              ; preds = %670, %661, %627, %591, %585, %569, %540, %499, %482, %396, %364, %336, %264, %246, %220, %136, %128, %91, %67, %48, %39, %22
  %730 = load i32, i32* %2, align 4
  ret i32 %730
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zadd(%struct.ref_s* noundef) #1

declare dso_local i32 @zdup(%struct.ref_s* noundef) #1

declare dso_local i32 @zexch(%struct.ref_s* noundef) #1

declare dso_local i32 @zifelse(%struct.ref_s* noundef) #1

declare dso_local i32 @zle(%struct.ref_s* noundef) #1

declare dso_local i32 @zpop(%struct.ref_s* noundef) #1

declare dso_local i32 @zsub(%struct.ref_s* noundef) #1

declare dso_local i32 @obj_compare(...) #1

declare dso_local i32 @file_check_read(...) #1

declare dso_local i32 @scan_token(...) #1

declare dso_local i32 @file_close(...) #1

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
