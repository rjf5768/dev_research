; ModuleID = './vsprintf-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/vsprintf-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.A = type { [10 x i8], [10 x i8] }
%struct.A.0 = type { [10 x i8], [10 x i8] }

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"barf\00", align 1
@ptr = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), align 8
@buffer = internal global [32 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%d - %c\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_calls = external dso_local global i32, align 4
@vsprintf_disallowed = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"28 - b\00AAAAA\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"-16 - a\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1_sub(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  switch i32 %0, label %24 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %19
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %6 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %5) #7
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %9 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %8) #7
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %12 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %11) #7
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %15 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %14) #7
  br label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %18 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %17) #7
  br label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** @s4, align 8
  %21 = call i64 @llvm.objectsize.i64.p0i8(i8* %20, i1 false, i1 true, i1 false)
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %23 = call i32 @__vsprintf_chk(i8* noundef %20, i32 noundef 0, i64 noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %22) #7
  br label %24

24:                                               ; preds = %19, %16, %13, %10, %7, %4, %1
  %.0 = phi i32 [ 0, %1 ], [ 0, %19 ], [ 0, %16 ], [ %15, %13 ], [ 0, %10 ], [ %9, %7 ], [ 0, %4 ]
  %25 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %25)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @__vsprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @vsprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %1 = call i32 (i32, ...) @test1_sub(i32 noundef 0)
  %lhsv = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not = icmp eq i32 %lhsv, 7303014
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not1 = icmp eq i8 %3, 65
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #10
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %6 = call i32 (i32, ...) @test1_sub(i32 noundef 1)
  %.not2 = icmp eq i32 %6, 3
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #10
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %lhsv3 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not4 = icmp eq i32 %lhsv3, 7303014
  br i1 %.not4, label %9, label %11

9:                                                ; preds = %8
  %10 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not5 = icmp eq i8 %10, 65
  br i1 %.not5, label %12, label %11

11:                                               ; preds = %9, %8
  call void @abort() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = load volatile i32, i32* @chk_calls, align 4
  %.not6 = icmp eq i32 %13, 0
  br i1 %.not6, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #10
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  store volatile i32 0, i32* @vsprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %16 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %lhsv7 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not8 = icmp eq i32 %lhsv7, 7496034
  br i1 %.not8, label %17, label %19

17:                                               ; preds = %15
  %18 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not9 = icmp eq i8 %18, 65
  br i1 %.not9, label %20, label %19

19:                                               ; preds = %17, %15
  call void @abort() #10
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %21 = call i32 (i32, ...) @test1_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %.not10 = icmp eq i32 %21, 3
  br i1 %.not10, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #10
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %lhsv11 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not12 = icmp eq i32 %lhsv11, 7496034
  br i1 %.not12, label %24, label %26

24:                                               ; preds = %23
  %25 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not13 = icmp eq i8 %25, 65
  br i1 %.not13, label %27, label %26

26:                                               ; preds = %24, %23
  call void @abort() #10
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %28 = load volatile i8*, i8** @ptr, align 8
  %29 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef %28)
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 5)
  %.not14 = icmp eq i32 %bcmp, 0
  br i1 %.not14, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not15 = icmp eq i8 %31, 65
  br i1 %.not15, label %33, label %32

32:                                               ; preds = %30, %27
  call void @abort() #10
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %34 = load i64, i64* @l1, align 8
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %35, 27
  %37 = load volatile i8*, i8** @ptr, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i32, ...) @test1_sub(i32 noundef 4, i32 noundef %36, i32 noundef %39)
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 12)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %42, label %41

41:                                               ; preds = %33
  call void @abort() #10
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %33
  %43 = load volatile i32, i32* @chk_calls, align 4
  %.not18 = icmp eq i32 %43, 4
  br i1 %.not18, label %45, label %44

44:                                               ; preds = %42
  call void @abort() #10
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  store volatile i32 0, i32* @chk_calls, align 4
  %46 = load i64, i64* @l1, align 8
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, -17
  %49 = load volatile i8*, i8** @ptr, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, ...) @test1_sub(i32 noundef 5, i32 noundef %48, i32 noundef %52)
  %54 = load i8*, i8** @s4, align 8
  %bcmp19 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %54, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 8)
  %.not20 = icmp eq i32 %bcmp19, 0
  br i1 %.not20, label %56, label %55

55:                                               ; preds = %45
  call void @abort() #10
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %45
  %57 = load volatile i32, i32* @chk_calls, align 4
  %.not21 = icmp eq i32 %57, 0
  br i1 %.not21, label %59, label %58

58:                                               ; preds = %56
  call void @abort() #10
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  ret void

UnifiedUnreachableBlock:                          ; preds = %58, %55, %44, %41, %32, %26, %22, %19, %14, %11, %7, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2_sub(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca %struct.A, align 1
  %4 = alloca [20 x i8], align 16
  %5 = load i64, i64* @l1, align 8
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 5
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i8* [ %8, %7 ], [ %10, %9 ]
  %13 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %13)
  switch i32 %0, label %121 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %22
    i32 3, label %34
    i32 4, label %50
    i32 7, label %50
    i32 5, label %100
    i32 6, label %112
    i32 8, label %116
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 2
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %17 = call i32 @__vsprintf_chk(i8* noundef nonnull %15, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %16) #7
  br label %121

18:                                               ; preds = %11
  %19 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %21 = call i32 @__vsprintf_chk(i8* noundef nonnull %12, i32 noundef 0, i64 noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %20) #7
  br label %121

22:                                               ; preds = %11
  %23 = load i64, i64* @l1, align 8
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = alloca [4 x i8], align 16
  %.sub3 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  br label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %.sub3, %25 ], [ %28, %27 ]
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %30, i1 false, i1 true, i1 false)
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %33 = call i32 @__vsprintf_chk(i8* noundef nonnull %30, i32 noundef 0, i64 noundef %31, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %32) #7
  br label %121

34:                                               ; preds = %11
  %35 = load i64, i64* @l1, align 8
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = alloca [4 x i8], align 16
  %.sub2 = getelementptr inbounds [4 x i8], [4 x i8]* %38, i64 0, i64 0
  br label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %.sub2, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = getelementptr inbounds i8, i8* %42, i64 2
  %45 = call i64 @llvm.objectsize.i64.p0i8(i8* %44, i1 false, i1 true, i1 false)
  %46 = load i8*, i8** @s3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %49 = call i32 @__vsprintf_chk(i8* noundef nonnull %43, i32 noundef 0, i64 noundef %45, i8* noundef nonnull %47, %struct.__va_list_tag* noundef nonnull %48) #7
  br label %121

50:                                               ; preds = %11, %11
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  br label %52

52:                                               ; preds = %85, %50
  %.01 = phi i8* [ %51, %50 ], [ %.4, %85 ]
  %.0 = phi i32 [ 0, %50 ], [ %86, %85 ]
  %53 = icmp ult i32 %.0, 4
  br i1 %53, label %54, label %87

54:                                               ; preds = %52
  %55 = zext i32 %.0 to i64
  %56 = load i64, i64* @l1, align 8
  %57 = add i64 %56, -1
  %58 = icmp eq i64 %57, %55
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 1
  br label %84

61:                                               ; preds = %54
  %62 = zext i32 %.0 to i64
  %63 = load i64, i64* @l1, align 8
  %64 = icmp eq i64 %63, %62
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %83

67:                                               ; preds = %61
  %68 = zext i32 %.0 to i64
  %69 = load i64, i64* @l1, align 8
  %70 = add i64 %69, 1
  %71 = icmp eq i64 %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 5
  br label %82

74:                                               ; preds = %67
  %75 = zext i32 %.0 to i64
  %76 = load i64, i64* @l1, align 8
  %77 = add i64 %76, 2
  %78 = icmp eq i64 %77, %75
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 9
  br label %81

81:                                               ; preds = %79, %74
  %.1 = phi i8* [ %80, %79 ], [ %.01, %74 ]
  br label %82

82:                                               ; preds = %81, %72
  %.2 = phi i8* [ %73, %72 ], [ %.1, %81 ]
  br label %83

83:                                               ; preds = %82, %65
  %.3 = phi i8* [ %66, %65 ], [ %.2, %82 ]
  br label %84

84:                                               ; preds = %83, %59
  %.4 = phi i8* [ %60, %59 ], [ %.3, %83 ]
  br label %85

85:                                               ; preds = %84
  %86 = add nuw nsw i32 %.0, 1
  br label %52, !llvm.loop !4

87:                                               ; preds = %52
  %88 = icmp eq i32 %0, 4
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  %90 = call i64 @llvm.objectsize.i64.p0i8(i8* %.01, i1 false, i1 true, i1 false)
  %91 = load i8*, i8** @s2, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  %93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %94 = call i32 @__vsprintf_chk(i8* noundef %.01, i32 noundef 0, i64 noundef %90, i8* noundef nonnull %92, %struct.__va_list_tag* noundef nonnull %93) #7
  br label %99

95:                                               ; preds = %87
  %96 = call i64 @llvm.objectsize.i64.p0i8(i8* %.01, i1 false, i1 true, i1 false)
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %98 = call i32 @__vsprintf_chk(i8* noundef %.01, i32 noundef 0, i64 noundef %96, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %97) #7
  br label %99

99:                                               ; preds = %95, %89
  br label %121

100:                                              ; preds = %11
  %101 = load i64, i64* @l1, align 8
  %102 = icmp eq i64 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %104, i64 0, i64 0
  br label %107

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i8* [ %.sub, %103 ], [ %106, %105 ]
  %109 = call i64 @llvm.objectsize.i64.p0i8(i8* %108, i1 false, i1 true, i1 false)
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %111 = call i32 @__vsprintf_chk(i8* noundef nonnull %108, i32 noundef 0, i64 noundef %109, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %110) #7
  br label %121

112:                                              ; preds = %11
  %113 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 2
  %114 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %115 = call i32 @__vsprintf_chk(i8* noundef nonnull %113, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %114) #7
  br label %121

116:                                              ; preds = %11
  %117 = load i8*, i8** @s4, align 8
  %118 = call i64 @llvm.objectsize.i64.p0i8(i8* %117, i1 false, i1 true, i1 false)
  %119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %120 = call i32 @__vsprintf_chk(i8* noundef %117, i32 noundef 0, i64 noundef %118, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %119) #7
  br label %121

121:                                              ; preds = %116, %112, %107, %99, %41, %29, %18, %14, %11
  %122 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %122)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  %1 = load i8*, i8** @s3, align 8
  %2 = getelementptr inbounds i8, i8* %1, i64 3
  call void (i32, ...) @test2_sub(i32 noundef 0, i8* noundef nonnull %2)
  %3 = load i8*, i8** @s3, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 3
  %5 = getelementptr inbounds i8, i8* %3, i64 3
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  call void (i32, ...) @test2_sub(i32 noundef 1, i8* noundef nonnull %4, i32 noundef %7)
  %8 = load i8*, i8** @s2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds i8, i8* %8, i64 4
  call void (i32, ...) @test2_sub(i32 noundef 2, i32 noundef %11, i8* noundef nonnull %12)
  call void (i32, ...) @test2_sub(i32 noundef 3)
  call void (i32, ...) @test2_sub(i32 noundef 4)
  call void (i32, ...) @test2_sub(i32 noundef 5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1))
  %13 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %13, 6
  br i1 %.not, label %15, label %14

14:                                               ; preds = %0
  call void @abort() #10
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %0
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @vsprintf_disallowed, align 4
  call void (i32, ...) @test2_sub(i32 noundef 6)
  call void (i32, ...) @test2_sub(i32 noundef 7)
  store volatile i32 0, i32* @vsprintf_disallowed, align 4
  %16 = load i8*, i8** @s3, align 8
  call void (i32, ...) @test2_sub(i32 noundef 8, i8* noundef %16, i32 noundef 0)
  %17 = load volatile i32, i32* @chk_calls, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #10
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3_sub(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca %struct.A.0, align 1
  %4 = alloca [20 x i8], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  switch i32 %0, label %26 [
    i32 0, label %6
    i32 1, label %10
    i32 2, label %14
    i32 3, label %18
    i32 4, label %22
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 9
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %9 = call i32 @__vsprintf_chk(i8* noundef nonnull %7, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %8) #7
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %13 = call i32 @__vsprintf_chk(i8* noundef nonnull %11, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %12) #7
  br label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 7
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %17 = call i32 @__vsprintf_chk(i8* noundef nonnull %15, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %16) #7
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 17
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %21 = call i32 @__vsprintf_chk(i8* noundef nonnull %19, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %20) #7
  br label %26

22:                                               ; preds = %1
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 19
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %25 = call i32 @__vsprintf_chk(i8* noundef nonnull %23, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %24) #7
  br label %26

26:                                               ; preds = %22, %18, %14, %10, %6, %1
  %27 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %1 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %1, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %3 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i8*, i8** @s2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 3
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = getelementptr inbounds i8, i8* %6, i64 4
  call void (i32, ...) @test3_sub(i32 noundef 0, i32 noundef %9, i8* noundef nonnull %10)
  call void @abort() #10
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %0
  %12 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %12, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %14 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i8*, i8** @s3, align 8
  %18 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %17) #7
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -2
  %21 = load i8*, i8** @s3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void (i32, ...) @test3_sub(i32 noundef 1, i8* noundef nonnull %20, i32 noundef %23)
  call void @abort() #10
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %11
  %25 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %25, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %27 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @l1, align 8
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %31, 9999
  call void (i32, ...) @test3_sub(i32 noundef 2, i32 noundef %32)
  call void @abort() #10
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %24
  %34 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %34, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %36 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void (i32, ...) @test3_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #10
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %33
  %40 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %40, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %42 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void (i32, ...) @test3_sub(i32 noundef 4)
  call void @abort() #10
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %39
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %44, %38, %29, %16, %5
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #7

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #8 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
