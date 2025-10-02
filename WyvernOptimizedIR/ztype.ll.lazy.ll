; ModuleID = './ztype.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @ztypenumber(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 192
  %.not = icmp eq i16 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %phi.cast = zext i16 %14 to i64
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i64 [ 9, %9 ], [ %phi.cast, %10 ]
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %18, align 8
  br label %19

19:                                               ; preds = %15, %4
  %.0 = phi i32 [ -17, %4 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvlit(%struct.ref_s* noundef %0) #1 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #7
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi %struct.ref_s* [ %11, %10 ], [ %0, %12 ]
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, -2
  store i16 %17, i16* %15, align 8
  br label %18

18:                                               ; preds = %13, %4
  %.0 = phi i32 [ -17, %4 ], [ 0, %13 ]
  ret i32 %.0
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvx(%struct.ref_s* noundef %0) #1 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #7
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi %struct.ref_s* [ %11, %10 ], [ %0, %12 ]
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = or i16 %16, 1
  store i16 %17, i16* %15, align 8
  br label %18

18:                                               ; preds = %13, %4
  %.0 = phi i32 [ -17, %4 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zxcheck(%struct.ref_s* noundef %0) #1 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #7
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi %struct.ref_s* [ %11, %10 ], [ %0, %12 ]
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, 1
  %18 = bitcast %struct.ref_s* %0 to i16*
  store i16 %17, i16* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %19, align 8
  br label %20

20:                                               ; preds = %13, %4
  %.0 = phi i32 [ -17, %4 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexecuteonly(%struct.ref_s* noundef %0) #1 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  %12 = call i32 @access_check(%struct.ref_s* noundef %0, i32 noundef 2, i32 noundef 1)
  br label %13

13:                                               ; preds = %11, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -20, %10 ], [ %12, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @access_check(%struct.ref_s* noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %9 [
    i32 2, label %10
    i32 0, label %12
    i32 3, label %12
    i32 10, label %12
    i32 13, label %12
  ]

9:                                                ; preds = %3
  br label %35

10:                                               ; preds = %3
  %11 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #7
  br label %12

12:                                               ; preds = %10, %3, %3, %3, %3
  %.01 = phi %struct.ref_s* [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %11, %10 ]
  br label %13

13:                                               ; preds = %12
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %28, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %18, %1
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %14
  br label %35

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, -771
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %26 = trunc i32 %1 to i16
  %27 = or i16 %24, %26
  store i16 %27, i16* %25, align 8
  br label %35

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, %1
  %33 = icmp eq i32 %32, %1
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %28, %21, %20, %9
  %.0 = phi i32 [ -20, %9 ], [ -7, %20 ], [ 0, %21 ], [ %34, %28 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znoaccess(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @access_check(%struct.ref_s* noundef %0, i32 noundef 0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zreadonly(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @access_check(%struct.ref_s* noundef %0, i32 noundef 514, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrcheck(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @access_check(%struct.ref_s* noundef %0, i32 noundef 512, i32 noundef 0)
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i16
  %6 = bitcast %struct.ref_s* %0 to i16*
  store i16 %5, i16* %6, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %7, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwcheck(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @access_check(%struct.ref_s* noundef %0, i32 noundef 256, i32 noundef 0)
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i16
  %6 = bitcast %struct.ref_s* %0 to i16*
  store i16 %5, i16* %6, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %7, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvi(%struct.ref_s* nocapture noundef %0) #1 {
  %2 = alloca %struct.stream_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %11 [
    i32 5, label %9
    i32 11, label %10
    i32 13, label %12
  ]

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  br label %63

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = and i16 %14, 512
  %.not.not = icmp eq i16 %15, 0
  br i1 %.not.not, label %16, label %17

16:                                               ; preds = %12
  br label %63

17:                                               ; preds = %12
  %18 = bitcast %struct.ref_s* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  call void @sread_string(%struct.stream_s* noundef nonnull %2, i8* noundef %19, i32 noundef %22) #7
  %23 = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* noundef nonnull %2, %struct.ref_s* noundef nonnull %3) #7
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %25, label %24

24:                                               ; preds = %17
  br label %63

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  br label %41

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 7, i32 0
  %39 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %38, align 8
  %40 = call i32 %39(%struct.stream_s* noundef nonnull %2) #7
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %36, %31 ], [ %40, %37 ]
  %.not2 = icmp eq i32 %42, -1
  br i1 %.not2, label %44, label %43

43:                                               ; preds = %41
  br label %63

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = and i16 %46, 252
  %48 = icmp eq i16 %47, 20
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = bitcast %struct.ref_s* %0 to i8*
  %51 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %50, i8* noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false)
  br label %63

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %10
  %.01.in.in = phi %struct.ref_s* [ %3, %52 ], [ %0, %10 ]
  %.01.in = bitcast %struct.ref_s* %.01.in.in to float*
  %.01 = load float, float* %.01.in, align 8
  %54 = fpext float %.01 to double
  %55 = fcmp ugt double %54, 0xC1E0000000200000
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = fcmp ult float %.01, 0x41E0000000000000
  br i1 %57, label %59, label %58

58:                                               ; preds = %56, %53
  br label %63

59:                                               ; preds = %56
  %60 = fptosi float %.01 to i64
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %62, align 8
  br label %63

63:                                               ; preds = %59, %58, %49, %43, %24, %16, %11, %9
  %.0 = phi i32 [ -20, %11 ], [ -7, %16 ], [ %23, %24 ], [ -18, %43 ], [ 0, %49 ], [ -15, %58 ], [ 0, %59 ], [ 0, %9 ]
  ret i32 %.0
}

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @scan_number(...) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvn(%struct.ref_s* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 52
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 512
  %.not.not = icmp eq i16 %10, 0
  br i1 %.not.not, label %11, label %12

11:                                               ; preds = %7
  br label %27

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = bitcast %struct.ref_s* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 @name_ref(i8* noundef %16, i32 noundef %19, %struct.ref_s* noundef %0, i32 noundef 1) #7
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %22, label %21

21:                                               ; preds = %12
  br label %27

22:                                               ; preds = %12
  %23 = and i16 %14, 1
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = or i16 %25, %23
  store i16 %26, i16* %24, align 8
  br label %27

27:                                               ; preds = %22, %21, %11, %6
  %.0 = phi i32 [ -7, %11 ], [ %20, %21 ], [ 0, %22 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @name_ref(i8* noundef, i32 noundef, %struct.ref_s* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvr(%struct.ref_s* nocapture noundef %0) #1 {
  %2 = alloca %struct.stream_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %16 [
    i32 5, label %9
    i32 11, label %15
    i32 13, label %17
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sitofp i64 %11 to float
  %13 = bitcast %struct.ref_s* %0 to float*
  store float %12, float* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %14, align 8
  br label %15

15:                                               ; preds = %9, %1
  br label %63

16:                                               ; preds = %1
  br label %63

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = and i16 %19, 512
  %.not.not = icmp eq i16 %20, 0
  br i1 %.not.not, label %21, label %22

21:                                               ; preds = %17
  br label %63

22:                                               ; preds = %17
  %23 = bitcast %struct.ref_s* %0 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  call void @sread_string(%struct.stream_s* noundef nonnull %2, i8* noundef %24, i32 noundef %27) #7
  %28 = call i32 (%struct.stream_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_number to i32 (%struct.stream_s*, %struct.ref_s*, ...)*)(%struct.stream_s* noundef nonnull %2, %struct.ref_s* noundef nonnull %3) #7
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %30, label %29

29:                                               ; preds = %22
  br label %63

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ult i8* %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %37, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  br label %46

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 7, i32 0
  %44 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %43, align 8
  %45 = call i32 %44(%struct.stream_s* noundef nonnull %2) #7
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %41, %36 ], [ %45, %42 ]
  %.not1 = icmp eq i32 %47, -1
  br i1 %.not1, label %49, label %48

48:                                               ; preds = %46
  br label %63

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 1
  %51 = load i16, i16* %50, align 8
  %52 = and i16 %51, 252
  %53 = icmp eq i16 %52, 44
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = bitcast %struct.ref_s* %0 to i8*
  %56 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %55, i8* noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false)
  br label %63

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to float
  %61 = bitcast %struct.ref_s* %0 to float*
  store float %60, float* %61, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %62, align 8
  br label %63

63:                                               ; preds = %57, %54, %48, %29, %21, %16, %15
  %.0 = phi i32 [ -20, %16 ], [ -7, %21 ], [ %28, %29 ], [ -18, %48 ], [ 0, %54 ], [ 0, %57 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @zcvrs(%struct.ref_s* nocapture noundef %0) #4 {
  %2 = alloca [31 x i8], align 16
  %3 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 31
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %94

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 36
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  br label %94

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = and i16 %22, 252
  %24 = icmp eq i16 %23, 52
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %94

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = and i16 %28, 256
  %.not.not = icmp eq i16 %29, 0
  br i1 %.not.not, label %30, label %31

30:                                               ; preds = %26
  br label %94

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = lshr i16 %33, 2
  %35 = and i16 %34, 63
  %36 = zext i16 %35 to i32
  switch i32 %36, label %41 [
    i32 5, label %37
    i32 11, label %40
  ]

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %42

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %31
  br label %94

42:                                               ; preds = %37
  %43 = icmp slt i64 %39, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = sub nsw i64 0, %39
  br label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i64 [ %45, %44 ], [ %39, %46 ]
  br label %49

49:                                               ; preds = %59, %47
  %.02 = phi i64 [ %48, %47 ], [ %60, %59 ]
  %.01 = phi i8* [ %3, %47 ], [ %57, %59 ]
  %sext = shl i64 %20, 32
  %50 = ashr exact i64 %sext, 32
  %51 = urem i64 %.02, %50
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %52, 10
  %54 = select i1 %53, i32 48, i32 55
  %55 = add nsw i32 %54, %52
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, i8* %.01, i64 -1
  store i8 %56, i8* %57, align 1
  %sext3 = shl i64 %20, 32
  %58 = ashr exact i64 %sext3, 32
  br label %59

59:                                               ; preds = %49
  %60 = udiv i64 %.02, %58
  %.not = icmp ugt i64 %58, %.02
  br i1 %.not, label %61, label %49, !llvm.loop !4

61:                                               ; preds = %59
  %62 = icmp slt i64 %39, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, i8* %.01, i64 -2
  store i8 45, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %61
  %.1 = phi i8* [ %64, %63 ], [ %57, %61 ]
  %66 = ptrtoint i8* %3 to i64
  %67 = ptrtoint i8* %.1 to i64
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i64
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %94

74:                                               ; preds = %65
  %75 = bitcast %struct.ref_s* %0 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %3 to i64
  %78 = ptrtoint i8* %.1 to i64
  %79 = sub i64 %77, %78
  %80 = and i64 %79, 4294967295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* nonnull align 1 %.1, i64 %80, i1 false)
  %81 = ptrtoint i8* %3 to i64
  %82 = ptrtoint i8* %.1 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i16
  %85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %84, i16* %85, align 2
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %87 = load i16, i16* %86, align 8
  %88 = or i16 %87, -32768
  store i16 %88, i16* %86, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %90 = bitcast %struct.ref_s* %89 to i8*
  %91 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %90, i8* noundef nonnull align 8 dereferenceable(16) %91, i64 16, i1 false)
  %92 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -2
  store %struct.ref_s* %93, %struct.ref_s** @osp, align 8
  br label %94

94:                                               ; preds = %74, %73, %41, %30, %25, %17, %8
  %.0 = phi i32 [ -15, %17 ], [ -7, %30 ], [ -20, %41 ], [ -15, %73 ], [ 0, %74 ], [ -20, %25 ], [ -20, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcvs(%struct.ref_s* noundef %0) #1 {
  %2 = alloca [25 x i8], align 16
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca [2 x %struct.ref_s], align 16
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 52
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %120

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = and i16 %13, 256
  %.not.not = icmp eq i16 %14, 0
  br i1 %.not.not, label %15, label %16

15:                                               ; preds = %11
  br label %120

16:                                               ; preds = %11
  %17 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %18 = bitcast %struct.ref_s* %3 to i8**
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = and i16 %20, 192
  %.not = icmp eq i16 %21, 0
  br i1 %.not, label %23, label %22

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = lshr i16 %25, 2
  %27 = and i16 %26, 63
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i16 [ 9, %22 ], [ %27, %23 ]
  switch i16 %29, label %82 [
    i16 1, label %30
    i16 5, label %35
    i16 7, label %40
    i16 9, label %41
    i16 11, label %68
    i16 13, label %74
  ]

30:                                               ; preds = %28
  %31 = bitcast %struct.ref_s* %5 to i16*
  %32 = load i16, i16* %31, align 8
  %.not3 = icmp eq i16 %32, 0
  %33 = select i1 %.not3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  %34 = bitcast %struct.ref_s* %3 to i8**
  store i8* %33, i8** %34, align 8
  br label %88

35:                                               ; preds = %28
  %36 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef %38) #7
  br label %88

40:                                               ; preds = %28
  call void @name_string_ref(%struct.ref_s* noundef nonnull %5, %struct.ref_s* noundef nonnull %3) #7
  br label %94

41:                                               ; preds = %28
  %42 = call i32 @dict_first(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0)) #7
  br label %43

43:                                               ; preds = %61, %41
  %.01 = phi i32 [ %42, %41 ], [ %45, %61 ]
  %44 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %4, i64 0, i64 0
  %45 = call i32 @dict_next(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), i32 noundef %.01, %struct.ref_s* noundef nonnull %44) #7
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = bitcast %struct.ref_s* %5 to i32 (%struct.ref_s*)**
  %49 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %48, align 8
  %50 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %4, i64 0, i64 1, i32 0
  %51 = bitcast %union.v* %50 to i32 (%struct.ref_s*)**
  %52 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %51, align 16
  %53 = icmp eq i32 (%struct.ref_s*)* %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %4, i64 0, i64 0, i32 1
  %56 = load i16, i16* %55, align 8
  %57 = and i16 %56, 252
  %58 = icmp eq i16 %57, 28
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %4, i64 0, i64 0
  call void @name_string_ref(%struct.ref_s* noundef nonnull %60, %struct.ref_s* noundef nonnull %3) #7
  br label %94

61:                                               ; preds = %54, %47
  br label %43, !llvm.loop !6

62:                                               ; preds = %43
  %63 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %64 = bitcast %struct.ref_s* %5 to i32 (%struct.ref_s*)**
  %65 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %64, align 8
  %66 = ptrtoint i32 (%struct.ref_s*)* %65 to i64
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %63, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 noundef %66) #7
  br label %88

68:                                               ; preds = %28
  %69 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %70 = bitcast %struct.ref_s* %5 to float*
  %71 = load float, float* %70, align 8
  %72 = fpext float %71 to double
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %69, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double noundef %72) #7
  br label %88

74:                                               ; preds = %28
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %76 = load i16, i16* %75, align 8
  %77 = and i16 %76, 512
  %.not2.not = icmp eq i16 %77, 0
  br i1 %.not2.not, label %78, label %79

78:                                               ; preds = %74
  br label %120

79:                                               ; preds = %74
  %80 = bitcast %struct.ref_s* %3 to i8*
  %81 = bitcast %struct.ref_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %80, i8* noundef nonnull align 8 dereferenceable(16) %81, i64 16, i1 false)
  br label %94

82:                                               ; preds = %28
  %83 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %84 = icmp ugt %struct.ref_s* %83, %0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %120

86:                                               ; preds = %82
  %87 = bitcast %struct.ref_s* %3 to i8**
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %87, align 8
  br label %88

88:                                               ; preds = %86, %68, %62, %35, %30
  %89 = bitcast %struct.ref_s* %3 to i8**
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %90) #8
  %92 = trunc i64 %91 to i16
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 2
  store i16 %92, i16* %93, align 2
  br label %94

94:                                               ; preds = %88, %79, %59, %40
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 2
  %96 = load i16, i16* %95, align 2
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %98 = load i16, i16* %97, align 2
  %99 = icmp ugt i16 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %120

101:                                              ; preds = %94
  %102 = bitcast %struct.ref_s* %0 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast %struct.ref_s* %3 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %105, i64 %108, i1 false)
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %110 = bitcast %struct.ref_s* %109 to i8*
  %111 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %110, i8* noundef nonnull align 8 dereferenceable(16) %111, i64 16, i1 false)
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 2
  %113 = load i16, i16* %112, align 2
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  store i16 %113, i16* %114, align 2
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %116 = load i16, i16* %115, align 8
  %117 = or i16 %116, -32768
  store i16 %117, i16* %115, align 8
  %118 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i64 -1
  store %struct.ref_s* %119, %struct.ref_s** @osp, align 8
  br label %120

120:                                              ; preds = %101, %100, %85, %78, %15, %10
  %.0 = phi i32 [ -7, %15 ], [ -17, %85 ], [ -15, %100 ], [ 0, %101 ], [ -7, %78 ], [ -20, %10 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #5

declare dso_local void @name_string_ref(%struct.ref_s* noundef, %struct.ref_s* noundef) #2

declare dso_local i32 @dict_first(%struct.ref_s* noundef) #2

declare dso_local i32 @dict_next(%struct.ref_s* noundef, i32 noundef, %struct.ref_s* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @ztype_op_init() #1 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([15 x %struct.op_def], [15 x %struct.op_def]* @ztype_op_init.my_defs, i64 0, i64 0)) #7
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
