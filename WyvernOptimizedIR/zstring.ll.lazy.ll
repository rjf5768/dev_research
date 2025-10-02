; ModuleID = './zstring.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstring.c"
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

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zstring_op_init.my_defs = internal global [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zanchorsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zstring }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @ztoken }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"2anchorsearch\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"2search\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1string\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1token\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstring(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %13, 4294967295
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  br label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @alloc(i32 noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %29

23:                                               ; preds = %16
  %24 = bitcast %struct.ref_s* %0 to i8**
  store i8* %20, i8** %24, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 822, i16* %25, align 8
  %26 = trunc i64 %18 to i16
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %26, i16* %27, align 2
  %28 = and i64 %18, 4294967295
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %20, i8 0, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %23, %22, %15, %6
  %.0 = phi i32 [ -15, %15 ], [ -25, %22 ], [ 0, %23 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local i32 @zanchorsearch(%struct.ref_s* noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %4 = load i16, i16* %3, align 2
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 52
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %62

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 512
  %.not.not = icmp eq i16 %13, 0
  br i1 %.not.not, label %14, label %15

14:                                               ; preds = %10
  br label %62

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 252
  %19 = icmp eq i16 %18, 52
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %62

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, 512
  %.not.not1 = icmp eq i16 %24, 0
  br i1 %.not.not1, label %25, label %26

25:                                               ; preds = %21
  br label %62

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %28 = load i16, i16* %27, align 2
  %.not = icmp ugt i16 %4, %28
  br i1 %.not, label %58, label %29

29:                                               ; preds = %26
  %30 = bitcast %struct.ref_s* %2 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast %struct.ref_s* %0 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = zext i16 %4 to i64
  %bcmp = call i32 @bcmp(i8* %31, i8* %33, i64 %34)
  %.not2 = icmp eq i32 %bcmp, 0
  br i1 %.not2, label %35, label %58

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %37 = load i16, i16* %36, align 8
  %38 = or i16 %37, -32768
  store i16 %38, i16* %36, align 8
  %39 = bitcast %struct.ref_s* %0 to i8*
  %40 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %39, i8* noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false)
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %4, i16* %41, align 2
  %42 = bitcast %struct.ref_s* %2 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = zext i16 %4 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %42, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %47 = load i16, i16* %46, align 2
  %48 = sub i16 %47, %4
  store i16 %48, i16* %46, align 2
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %49, %struct.ref_s** @osp, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %51 = icmp ugt %struct.ref_s* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  br label %62

55:                                               ; preds = %35
  %56 = bitcast %struct.ref_s* %49 to i16*
  store i16 1, i16* %56, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 4, i16* %57, align 8
  br label %61

58:                                               ; preds = %29, %26
  %59 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %59, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %52, %25, %20, %14, %9
  %.0 = phi i32 [ -7, %14 ], [ -7, %25 ], [ 0, %61 ], [ -16, %52 ], [ -20, %20 ], [ -20, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @zsearch(%struct.ref_s* noundef %0) #6 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 52
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %89

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = and i16 %13, 512
  %.not.not = icmp eq i16 %14, 0
  br i1 %.not.not, label %15, label %16

15:                                               ; preds = %11
  br label %89

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 252
  %20 = icmp eq i16 %19, 52
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %89

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = and i16 %24, 512
  %.not.not5 = icmp eq i16 %25, 0
  br i1 %.not.not5, label %26, label %27

26:                                               ; preds = %22
  br label %89

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %29 = load i16, i16* %28, align 2
  %30 = icmp ugt i16 %4, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %32, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %33, align 8
  br label %89

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 %37, %5
  %39 = bitcast %struct.ref_s* %2 to i8**
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %83, %34
  %.02 = phi i32 [ %38, %34 ], [ %85, %83 ]
  %.01 = phi i8* [ %40, %34 ], [ %84, %83 ]
  %42 = bitcast %struct.ref_s* %0 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = zext i16 %4 to i64
  %bcmp = call i32 @bcmp(i8* %.01, i8* %43, i64 %44)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %45, label %82

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %47 = load i16, i16* %46, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %49 = or i16 %47, -32768
  store i16 %49, i16* %48, align 8
  %50 = bitcast %struct.ref_s* %0 to i8**
  store i8* %.01, i8** %50, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %4, i16* %51, align 2
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %52, %struct.ref_s** @osp, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %54 = icmp ugt %struct.ref_s* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  store %struct.ref_s* %57, %struct.ref_s** @osp, align 8
  br label %89

58:                                               ; preds = %45
  %59 = bitcast %struct.ref_s* %52 to i8*
  %60 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %59, i8* noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false)
  %61 = bitcast %struct.ref_s* %52 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %.01 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i16
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 2
  store i16 %66, i16* %67, align 2
  %68 = zext i16 %4 to i64
  %69 = getelementptr inbounds i8, i8* %.01, i64 %68
  %70 = bitcast %struct.ref_s* %2 to i8**
  store i8* %69, i8** %70, align 8
  %71 = trunc i32 %.02 to i16
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  store i16 %71, i16* %72, align 2
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %73, %struct.ref_s** @osp, align 8
  %74 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %75 = icmp ugt %struct.ref_s* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 -1
  store %struct.ref_s* %78, %struct.ref_s** @osp, align 8
  br label %89

79:                                               ; preds = %58
  %80 = bitcast %struct.ref_s* %73 to i16*
  store i16 1, i16* %80, align 8
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 4, i16* %81, align 8
  br label %89

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds i8, i8* %.01, i64 1
  %85 = add i32 %.02, -1
  %.not6 = icmp eq i32 %.02, 0
  br i1 %.not6, label %86, label %41, !llvm.loop !4

86:                                               ; preds = %83
  %87 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %87, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %88, align 8
  br label %89

89:                                               ; preds = %86, %79, %76, %55, %31, %26, %21, %15, %10
  %.0 = phi i32 [ -7, %15 ], [ -7, %26 ], [ 0, %31 ], [ 0, %86 ], [ -16, %55 ], [ -16, %76 ], [ 0, %79 ], [ -20, %21 ], [ -20, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztoken(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.stream_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %9 [
    i32 3, label %10
    i32 13, label %12
  ]

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @ztoken_file to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #8
  br label %64

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, 512
  %.not.not = icmp eq i16 %16, 0
  br i1 %.not.not, label %17, label %18

17:                                               ; preds = %13
  br label %64

18:                                               ; preds = %13
  %19 = bitcast %struct.ref_s* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  call void @sread_string(%struct.stream_s* noundef nonnull %2, i8* noundef %20, i32 noundef %23) #8
  %24 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef nonnull %2, i32 noundef 1, %struct.ref_s* noundef nonnull %3) #8
  switch i32 %24, label %63 [
    i32 0, label %25
    i32 1, label %60
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i64 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %33, %35
  %37 = trunc i64 %36 to i16
  %38 = bitcast %struct.ref_s* %0 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = and i64 %36, 4294967295
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %38, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = sub i16 %43, %37
  store i16 %44, i16* %42, align 2
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = or i16 %46, -32768
  store i16 %47, i16* %45, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %25
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %64

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = bitcast %struct.ref_s* %48 to i16*
  store i16 1, i16* %58, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 4, i16* %59, align 8
  br label %64

60:                                               ; preds = %18
  %61 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %61, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %62, align 8
  br label %64

63:                                               ; preds = %18
  br label %64

64:                                               ; preds = %63, %60, %54, %51, %17, %10, %9
  %.0 = phi i32 [ -20, %9 ], [ -7, %17 ], [ %24, %63 ], [ 0, %60 ], [ -16, %51 ], [ 0, %54 ], [ %11, %10 ]
  ret i32 %.0
}

declare dso_local i32 @ztoken_file(...) #1

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @scan_token(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zstring_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([5 x %struct.op_def], [5 x %struct.op_def]* @zstring_op_init.my_defs, i64 0, i64 0)) #8
  ret void
}

declare dso_local i32 @z_op_init(...) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
