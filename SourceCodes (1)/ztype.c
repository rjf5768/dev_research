; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/ztype.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/ztype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@osp = external dso_local global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"operator %lx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@ztype_op_init.my_defs = internal global [15 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvi }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvlit }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvn }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvr }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvrs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zcvx }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.ref_s*)* @zexecuteonly }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.ref_s*)* @znoaccess }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.ref_s*)* @zrcheck }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zreadonly }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @ztypenumber }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zwcheck }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zxcheck }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"1cvi\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"1cvlit\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1cvn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1cvr\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"3cvrs\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"2cvs\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1cvx\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"1executeonly\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1noaccess\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"1rcheck\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"1readonly\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"1.typenumber\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"1wcheck\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"1xcheck\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztypenumber(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %24

17:                                               ; preds = %8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, 2
  br label %24

24:                                               ; preds = %17, %16
  %25 = phi i32 [ 9, %16 ], [ %23, %17 ]
  %26 = sext i32 %25 to i64
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 20, i16* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvlit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %7 = icmp ult %struct.ref_s* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %18)
  br label %22

20:                                               ; preds = %9
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi %struct.ref_s* [ %19, %17 ], [ %21, %20 ]
  store %struct.ref_s* %23, %struct.ref_s** %4, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, -2
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %25, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvx(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %7 = icmp ult %struct.ref_s* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %18)
  br label %22

20:                                               ; preds = %9
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi %struct.ref_s* [ %19, %17 ], [ %21, %20 ]
  store %struct.ref_s* %23, %struct.ref_s** %4, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, 1
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %25, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zxcheck(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %17)
  br label %21

19:                                               ; preds = %8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi %struct.ref_s* [ %18, %16 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = trunc i32 %29 to i16
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to i16*
  store i16 %30, i16* %33, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  store i16 4, i16* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %21, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexecuteonly(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 -20, i32* %2, align 4
  br label %20

17:                                               ; preds = %8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = call i32 @access_check(%struct.ref_s* noundef %18, i32 noundef 2, i32 noundef 1)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %16, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @access_check(%struct.ref_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  store %struct.ref_s* %9, %struct.ref_s** %8, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  switch i32 %15, label %16 [
    i32 2, label %17
    i32 0, label %20
    i32 3, label %20
    i32 10, label %20
    i32 13, label %20
  ]

16:                                               ; preds = %3
  store i32 -20, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %19 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %18)
  store %struct.ref_s* %19, %struct.ref_s** %8, align 8
  br label %20

20:                                               ; preds = %3, %3, %3, %3, %17
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -7, i32* %4, align 4
  br label %58

34:                                               ; preds = %24
  %35 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 8
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, -771
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %36, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %41
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %43, align 8
  store i32 0, i32* %4, align 4
  br label %58

48:                                               ; preds = %21
  %49 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %34, %33, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znoaccess(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @access_check(%struct.ref_s* noundef %3, i32 noundef 0, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zreadonly(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @access_check(%struct.ref_s* noundef %3, i32 noundef 514, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrcheck(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %5 = call i32 @access_check(%struct.ref_s* noundef %4, i32 noundef 512, i32 noundef 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = trunc i32 %9 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %13 = bitcast %union.v* %12 to i16*
  store i16 %10, i16* %13, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 4, i16* %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwcheck(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %5 = call i32 @access_check(%struct.ref_s* noundef %4, i32 noundef 256, i32 noundef 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = trunc i32 %9 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %13 = bitcast %union.v* %12 to i16*
  store i16 %10, i16* %13, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 4, i16* %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvi(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.stream_s, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = ashr i32 %12, 2
  switch i32 %13, label %20 [
    i32 5, label %14
    i32 11, label %15
    i32 13, label %21
  ]

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to float*
  %19 = load float, float* %18, align 8
  store float %19, float* %4, align 4
  br label %80

20:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = xor i32 %25, -1
  %27 = and i32 %26, 512
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -7, i32* %2, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  call void @sread_string(%struct.stream_s* noundef %5, i8* noundef %34, i32 noundef %38)
  %39 = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %5, %struct.ref_s* noundef %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %97

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ult i8* %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  br label %61

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 7
  %58 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %57, i32 0, i32 0
  %59 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %58, align 8
  %60 = call i32 %59(%struct.stream_s* noundef %5)
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i32 [ %55, %50 ], [ %60, %56 ]
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 -18, i32* %2, align 4
  br label %97

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %67 = load i16, i16* %66, align 8
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 255
  %70 = ashr i32 %69, 2
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = bitcast %struct.ref_s* %73 to i8*
  %75 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %97

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %78 = bitcast %union.v* %77 to float*
  %79 = load float, float* %78, align 8
  store float %79, float* %4, align 4
  br label %80

80:                                               ; preds = %76, %15
  %81 = load float, float* %4, align 4
  %82 = fpext float %81 to double
  %83 = fcmp ole double %82, 0xC1E0000000200000
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load float, float* %4, align 4
  %86 = fpext float %85 to double
  %87 = fcmp oge double %86, 0x41E0000000000000
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 -15, i32* %2, align 4
  br label %97

89:                                               ; preds = %84
  %90 = load float, float* %4, align 4
  %91 = fptosi float %90 to i64
  %92 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 0
  %94 = bitcast %union.v* %93 to i64*
  store i64 %91, i64* %94, align 8
  %95 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  store i16 20, i16* %96, align 8
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %88, %72, %64, %42, %29, %20, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @scan_number(...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvn(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 52
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -7, i32* %2, align 4
  br label %50

22:                                               ; preds = %13
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = call i32 @name_ref(i8* noundef %31, i32 noundef %35, %struct.ref_s* noundef %36, i32 noundef 1)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %22
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = zext i16 %46 to i32
  %48 = or i32 %47, %43
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %45, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %40, %21, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @name_ref(i8* noundef, i32 noundef, %struct.ref_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvr(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.stream_s, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 255
  %12 = ashr i32 %11, 2
  switch i32 %12, label %25 [
    i32 5, label %13
    i32 11, label %24
    i32 13, label %26
  ]

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %18, float* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  store i16 44, i16* %23, align 8
  br label %24

24:                                               ; preds = %1, %13
  store i32 0, i32* %2, align 4
  br label %91

25:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %91

26:                                               ; preds = %1
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = xor i32 %30, -1
  %32 = and i32 %31, 512
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -7, i32* %2, align 4
  br label %91

35:                                               ; preds = %26
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %38 = bitcast %union.v* %37 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  call void @sread_string(%struct.stream_s* noundef %4, i8* noundef %39, i32 noundef %43)
  %44 = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %4, %struct.ref_s* noundef %5)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ult i8* %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  br label %66

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 7
  %63 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %62, i32 0, i32 0
  %64 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %63, align 8
  %65 = call i32 %64(%struct.stream_s* noundef %4)
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i32 [ %60, %55 ], [ %65, %61 ]
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 -18, i32* %2, align 4
  br label %91

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %72 = load i16, i16* %71, align 8
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 255
  %75 = ashr i32 %74, 2
  %76 = icmp eq i32 %75, 11
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %79 = bitcast %struct.ref_s* %78 to i8*
  %80 = bitcast %struct.ref_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %91

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %83 = bitcast %union.v* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %88 = bitcast %union.v* %87 to float*
  store float %85, float* %88, align 8
  %89 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 1
  store i16 44, i16* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %81, %77, %69, %47, %34, %25, %24
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvrs(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [31 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i64 0, i64 31
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  store i8* %12, i8** %9, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 252
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %159

21:                                               ; preds = %1
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 2
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 36
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  store i32 -15, i32* %2, align 4
  br label %159

36:                                               ; preds = %28
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 8
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 252
  %48 = icmp eq i32 %47, 52
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store i32 -20, i32* %2, align 4
  br label %159

50:                                               ; preds = %36
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = xor i32 %54, -1
  %56 = and i32 %55, 256
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 -7, i32* %2, align 4
  br label %159

59:                                               ; preds = %50
  %60 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -2
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 8
  %64 = zext i16 %63 to i32
  %65 = and i32 %64, 255
  %66 = ashr i32 %65, 2
  switch i32 %66, label %74 [
    i32 5, label %67
    i32 11, label %73
  ]

67:                                               ; preds = %59
  %68 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -2
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %71 = bitcast %union.v* %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  br label %75

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %59, %73
  store i32 -20, i32* %2, align 4
  br label %159

75:                                               ; preds = %67
  %76 = load i64, i64* %5, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %5, align 8
  %80 = sub nsw i64 0, %79
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %104, %83
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = urem i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 10
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 48, i32 55
  %96 = add nsw i32 %91, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %9, align 8
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %6, align 8
  %103 = udiv i64 %102, %101
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %85
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %85, label %107, !llvm.loop !4

107:                                              ; preds = %104
  %108 = load i64, i64* %5, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %112, i8** %9, align 8
  store i8 45, i8* %112, align 1
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i64
  %123 = icmp sgt i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 -15, i32* %2, align 4
  br label %159

125:                                              ; preds = %113
  %126 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %126, i32 0, i32 0
  %128 = bitcast %union.v* %127 to i8**
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = zext i32 %136 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %129, i8* align 1 %130, i64 %137, i1 false)
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i16
  %144 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i32 0, i32 2
  store i16 %143, i16* %145, align 2
  %146 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 1
  %148 = load i16, i16* %147, align 8
  %149 = zext i16 %148 to i32
  %150 = or i32 %149, 32768
  %151 = trunc i32 %150 to i16
  store i16 %151, i16* %147, align 8
  %152 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i64 -2
  %154 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %155 = bitcast %struct.ref_s* %153 to i8*
  %156 = bitcast %struct.ref_s* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 16, i1 false)
  %157 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i64 -2
  store %struct.ref_s* %158, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %125, %124, %74, %58, %49, %35, %20
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvs(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.ref_s], align 16
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** %4, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 252
  %16 = icmp eq i32 %15, 52
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -7, i32* %2, align 4
  br label %182

27:                                               ; preds = %18
  %28 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i8**
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 255
  %36 = ashr i32 %35, 2
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 255
  %45 = ashr i32 %44, 2
  br label %46

46:                                               ; preds = %39, %38
  %47 = phi i32 [ 9, %38 ], [ %45, %39 ]
  switch i32 %47, label %127 [
    i32 1, label %48
    i32 5, label %59
    i32 7, label %66
    i32 9, label %68
    i32 11, label %106
    i32 13, label %114
  ]

48:                                               ; preds = %46
  %49 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %51 = bitcast %union.v* %50 to i16*
  %52 = load i16, i16* %51, align 8
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %58 = bitcast %union.v* %57 to i8**
  store i8* %56, i8** %58, align 8
  br label %135

59:                                               ; preds = %46
  %60 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %61 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %60, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef %64) #5
  br label %135

66:                                               ; preds = %46
  %67 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  call void @name_string_ref(%struct.ref_s* noundef %67, %struct.ref_s* noundef %6)
  br label %142

68:                                               ; preds = %46
  %69 = call i32 @dict_first(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0))
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %97, %68
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %8, i64 0, i64 0
  %73 = call i32 @dict_next(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), i32 noundef %71, %struct.ref_s* noundef %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %78 = bitcast %union.v* %77 to i32 (%struct.ref_s*)**
  %79 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %78, align 8
  %80 = ptrtoint i32 (%struct.ref_s*)* %79 to i64
  %81 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %8, i64 0, i64 1
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %83 = bitcast %union.v* %82 to i32 (%struct.ref_s*)**
  %84 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %83, align 16
  %85 = ptrtoint i32 (%struct.ref_s*)* %84 to i64
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %75
  %88 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %8, i64 0, i64 0
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 8
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 255
  %93 = ashr i32 %92, 2
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %8, i64 0, i64 0
  call void @name_string_ref(%struct.ref_s* noundef %96, %struct.ref_s* noundef %6)
  br label %142

97:                                               ; preds = %87, %75
  br label %70, !llvm.loop !6

98:                                               ; preds = %70
  %99 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %100 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 0
  %102 = bitcast %union.v* %101 to i32 (%struct.ref_s*)**
  %103 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %102, align 8
  %104 = ptrtoint i32 (%struct.ref_s*)* %103 to i64
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %99, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 noundef %104) #5
  br label %135

106:                                              ; preds = %46
  %107 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %108 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %110 = bitcast %union.v* %109 to float*
  %111 = load float, float* %110, align 8
  %112 = fpext float %111 to double
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double noundef %112) #5
  br label %135

114:                                              ; preds = %46
  %115 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i32 0, i32 1
  %117 = load i16, i16* %116, align 8
  %118 = zext i16 %117 to i32
  %119 = xor i32 %118, -1
  %120 = and i32 %119, 512
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 -7, i32* %2, align 4
  br label %182

123:                                              ; preds = %114
  %124 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %125 = bitcast %struct.ref_s* %6 to i8*
  %126 = bitcast %struct.ref_s* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 16, i1 false)
  br label %142

127:                                              ; preds = %46
  %128 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %129 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %130 = icmp ult %struct.ref_s* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 -17, i32* %2, align 4
  br label %182

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %134 = bitcast %union.v* %133 to i8**
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %134, align 8
  br label %135

135:                                              ; preds = %132, %106, %98, %59, %48
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %137 = bitcast %union.v* %136 to i8**
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strlen(i8* noundef %138) #6
  %140 = trunc i64 %139 to i16
  %141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  store i16 %140, i16* %141, align 2
  br label %142

142:                                              ; preds = %135, %123, %95, %66
  %143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 2
  %148 = load i16, i16* %147, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp sgt i32 %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 -15, i32* %2, align 4
  br label %182

152:                                              ; preds = %142
  %153 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i32 0, i32 0
  %155 = bitcast %union.v* %154 to i8**
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %158 = bitcast %union.v* %157 to i8**
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %161 = load i16, i16* %160, align 2
  %162 = zext i16 %161 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %156, i8* align 1 %159, i64 %162, i1 false)
  %163 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i64 -1
  %165 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %166 = bitcast %struct.ref_s* %164 to i8*
  %167 = bitcast %struct.ref_s* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 16, i1 false)
  %168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %169 = load i16, i16* %168, align 2
  %170 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %170, i64 -1
  %172 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %171, i32 0, i32 2
  store i16 %169, i16* %172, align 2
  %173 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %173, i64 -1
  %175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %174, i32 0, i32 1
  %176 = load i16, i16* %175, align 8
  %177 = zext i16 %176 to i32
  %178 = or i32 %177, 32768
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %175, align 8
  %180 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %181 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i64 -1
  store %struct.ref_s* %181, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %152, %151, %131, %122, %26, %17
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local void @name_string_ref(%struct.ref_s* noundef, %struct.ref_s* noundef) #1

declare dso_local i32 @dict_first(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_next(%struct.ref_s* noundef, i32 noundef, %struct.ref_s* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ztype_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([15 x %struct.op_def], [15 x %struct.op_def]* @ztype_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
