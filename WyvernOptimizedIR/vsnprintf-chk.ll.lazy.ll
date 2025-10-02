; ModuleID = './vsnprintf-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/vsnprintf-chk.c"
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
@.str.4 = private unnamed_addr constant [8 x i8] c"foo bar\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d - %c\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_calls = external dso_local global i32, align 4
@vsnprintf_disallowed = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"121\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1213\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"28 - b\00AAAAA\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-16 - \00AAA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1_sub(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  switch i32 %0, label %34 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %22
    i32 8, label %27
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf5 = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* nonnull %5)
  br label %34

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf4 = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* nonnull %7)
  br label %34

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf3 = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* nonnull %9)
  br label %34

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf2 = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* nonnull %11)
  br label %34

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf1 = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* nonnull %13)
  br label %34

14:                                               ; preds = %1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf = call i32 @vsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* nonnull %15)
  br label %34

16:                                               ; preds = %1
  %17 = load volatile i8*, i8** @ptr, align 8
  %18 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %17) #8
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %21 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %19, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %20) #8
  br label %34

22:                                               ; preds = %1
  %23 = load i64, i64* @l1, align 8
  %24 = add i64 %23, 31
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %26 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %24, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %25) #8
  br label %34

27:                                               ; preds = %1
  %28 = load i8*, i8** @s4, align 8
  %29 = load i64, i64* @l1, align 8
  %30 = add i64 %29, 6
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false, i1 true, i1 false)
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %33 = call i32 @__vsnprintf_chk(i8* noundef %28, i64 noundef %30, i32 noundef 0, i64 noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %32) #8
  br label %34

34:                                               ; preds = %27, %22, %16, %14, %12, %10, %8, %6, %4, %1
  %.0 = phi i32 [ 0, %1 ], [ 0, %27 ], [ 0, %22 ], [ %21, %16 ], [ %vsnprintf, %14 ], [ %vsnprintf1, %12 ], [ %vsnprintf2, %10 ], [ 0, %8 ], [ %vsnprintf4, %6 ], [ 0, %4 ]
  %35 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %35)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @__vsnprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
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
  call void @abort() #12
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %6 = call i32 (i32, ...) @test1_sub(i32 noundef 1)
  %.not2 = icmp eq i32 %6, 7
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #12
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
  call void @abort() #12
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  store volatile i32 0, i32* @vsnprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %13 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %lhsv6 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not7 = icmp eq i32 %lhsv6, 7496034
  br i1 %.not7, label %14, label %16

14:                                               ; preds = %12
  %15 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not8 = icmp eq i8 %15, 65
  br i1 %.not8, label %17, label %16

16:                                               ; preds = %14, %12
  call void @abort() #12
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %18 = call i32 (i32, ...) @test1_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %.not9 = icmp eq i32 %18, 3
  br i1 %.not9, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #12
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %lhsv10 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not11 = icmp eq i32 %lhsv10, 7496034
  br i1 %.not11, label %21, label %23

21:                                               ; preds = %20
  %22 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not12 = icmp eq i8 %22, 65
  br i1 %.not12, label %24, label %23

23:                                               ; preds = %21, %20
  call void @abort() #12
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %25 = load i64, i64* @l1, align 8
  %26 = trunc i64 %25 to i32
  %27 = trunc i64 %25 to i32
  %28 = add nsw i32 %27, 1
  %29 = trunc i64 %25 to i32
  %30 = add nsw i32 %29, 12
  %31 = call i32 (i32, ...) @test1_sub(i32 noundef 4, i32 noundef %26, i32 noundef %28, i32 noundef %30)
  %.not13 = icmp eq i32 %31, 4
  br i1 %.not13, label %33, label %32

32:                                               ; preds = %24
  call void @abort() #12
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %24
  %lhsv14 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not15 = icmp eq i32 %lhsv14, 3224113
  br i1 %.not15, label %34, label %36

34:                                               ; preds = %33
  %35 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not16 = icmp eq i8 %35, 65
  br i1 %.not16, label %37, label %36

36:                                               ; preds = %34, %33
  call void @abort() #12
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %38 = load i64, i64* @l1, align 8
  %39 = trunc i64 %38 to i32
  %40 = trunc i64 %38 to i32
  %41 = add nsw i32 %40, 1
  %42 = trunc i64 %38 to i32
  %43 = add nsw i32 %42, 12
  %44 = call i32 (i32, ...) @test1_sub(i32 noundef 5, i32 noundef %39, i32 noundef %41, i32 noundef %43)
  %.not17 = icmp eq i32 %44, 4
  br i1 %.not17, label %46, label %45

45:                                               ; preds = %37
  call void @abort() #12
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %37
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %.not18 = icmp eq i32 %bcmp, 0
  br i1 %.not18, label %47, label %49

47:                                               ; preds = %46
  %48 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not19 = icmp eq i8 %48, 65
  br i1 %.not19, label %50, label %49

49:                                               ; preds = %47, %46
  call void @abort() #12
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  %51 = load volatile i32, i32* @chk_calls, align 4
  %.not20 = icmp eq i32 %51, 0
  br i1 %.not20, label %53, label %52

52:                                               ; preds = %50
  call void @abort() #12
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %54 = load volatile i8*, i8** @ptr, align 8
  %55 = call i32 (i32, ...) @test1_sub(i32 noundef 6, i8* noundef %54)
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 5)
  %.not22 = icmp eq i32 %bcmp21, 0
  br i1 %.not22, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not23 = icmp eq i8 %57, 65
  br i1 %.not23, label %59, label %58

58:                                               ; preds = %56, %53
  call void @abort() #12
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %60 = load i64, i64* @l1, align 8
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %61, 27
  %63 = load volatile i8*, i8** @ptr, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i32, ...) @test1_sub(i32 noundef 7, i32 noundef %62, i32 noundef %65)
  %bcmp24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 12)
  %.not25 = icmp eq i32 %bcmp24, 0
  br i1 %.not25, label %68, label %67

67:                                               ; preds = %59
  call void @abort() #12
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %59
  %69 = load volatile i32, i32* @chk_calls, align 4
  %.not26 = icmp eq i32 %69, 2
  br i1 %.not26, label %71, label %70

70:                                               ; preds = %68
  call void @abort() #12
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  store volatile i32 0, i32* @chk_calls, align 4
  %72 = load i8*, i8** @s4, align 8
  %73 = call i64 @llvm.objectsize.i64.p0i8(i8* %72, i1 false, i1 true, i1 false)
  %74 = call i8* @__memset_chk(i8* noundef %72, i32 noundef 65, i64 noundef 32, i64 noundef %73) #8
  %75 = load i64, i64* @l1, align 8
  %76 = trunc i64 %75 to i32
  %77 = add nsw i32 %76, -17
  %78 = load volatile i8*, i8** @ptr, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (i32, ...) @test1_sub(i32 noundef 8, i32 noundef %77, i32 noundef %81)
  %83 = load i8*, i8** @s4, align 8
  %bcmp27 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %83, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 10)
  %.not28 = icmp eq i32 %bcmp27, 0
  br i1 %.not28, label %85, label %84

84:                                               ; preds = %71
  call void @abort() #12
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %71
  %86 = load volatile i32, i32* @chk_calls, align 4
  %.not29 = icmp eq i32 %86, 0
  br i1 %.not29, label %88, label %87

87:                                               ; preds = %85
  call void @abort() #12
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %85
  ret void

UnifiedUnreachableBlock:                          ; preds = %87, %84, %70, %67, %58, %52, %49, %45, %36, %32, %23, %19, %16, %11, %7, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #6

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
  switch i32 %0, label %130 [
    i32 0, label %14
    i32 1, label %19
    i32 2, label %25
    i32 3, label %40
    i32 4, label %57
    i32 7, label %57
    i32 5, label %108
    i32 6, label %122
    i32 8, label %125
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 2
  %16 = load i64, i64* @l1, align 8
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %18 = call i32 @__vsnprintf_chk(i8* noundef nonnull %15, i64 noundef %16, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %17) #8
  br label %130

19:                                               ; preds = %11
  %20 = load i64, i64* @l1, align 8
  %21 = add i64 %20, 4
  %22 = call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false, i1 true, i1 false)
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %24 = call i32 @__vsnprintf_chk(i8* noundef nonnull %12, i64 noundef %21, i32 noundef 0, i64 noundef %22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %23) #8
  br label %130

25:                                               ; preds = %11
  %26 = load i64, i64* @l1, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = alloca [4 x i8], align 16
  %.sub3 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i64 0, i64 0
  br label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %.sub3, %28 ], [ %31, %30 ]
  %34 = load i8*, i8** @s2, align 8
  %35 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %34) #8
  %36 = add i64 %35, -2
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %33, i1 false, i1 true, i1 false)
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %39 = call i32 @__vsnprintf_chk(i8* noundef nonnull %33, i64 noundef %36, i32 noundef 0, i64 noundef %37, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %38) #8
  br label %130

40:                                               ; preds = %11
  %41 = load i64, i64* @l1, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = alloca [4 x i8], align 16
  %.sub2 = getelementptr inbounds [4 x i8], [4 x i8]* %44, i64 0, i64 0
  br label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %.sub2, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i64, i64* @l1, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 2
  %52 = call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false, i1 true, i1 false)
  %53 = load i8*, i8** @s3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %56 = call i32 @__vsnprintf_chk(i8* noundef nonnull %49, i64 noundef %50, i32 noundef 0, i64 noundef %52, i8* noundef nonnull %54, %struct.__va_list_tag* noundef nonnull %55) #8
  br label %130

57:                                               ; preds = %11, %11
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  br label %59

59:                                               ; preds = %92, %57
  %.01 = phi i8* [ %58, %57 ], [ %.4, %92 ]
  %.0 = phi i32 [ 0, %57 ], [ %93, %92 ]
  %60 = icmp ult i32 %.0, 4
  br i1 %60, label %61, label %94

61:                                               ; preds = %59
  %62 = zext i32 %.0 to i64
  %63 = load i64, i64* @l1, align 8
  %64 = add i64 %63, -1
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 1
  br label %91

68:                                               ; preds = %61
  %69 = zext i32 %.0 to i64
  %70 = load i64, i64* @l1, align 8
  %71 = icmp eq i64 %70, %69
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %90

74:                                               ; preds = %68
  %75 = zext i32 %.0 to i64
  %76 = load i64, i64* @l1, align 8
  %77 = add i64 %76, 1
  %78 = icmp eq i64 %77, %75
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 5
  br label %89

81:                                               ; preds = %74
  %82 = zext i32 %.0 to i64
  %83 = load i64, i64* @l1, align 8
  %84 = add i64 %83, 2
  %85 = icmp eq i64 %84, %82
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 9
  br label %88

88:                                               ; preds = %86, %81
  %.1 = phi i8* [ %87, %86 ], [ %.01, %81 ]
  br label %89

89:                                               ; preds = %88, %79
  %.2 = phi i8* [ %80, %79 ], [ %.1, %88 ]
  br label %90

90:                                               ; preds = %89, %72
  %.3 = phi i8* [ %73, %72 ], [ %.2, %89 ]
  br label %91

91:                                               ; preds = %90, %66
  %.4 = phi i8* [ %67, %66 ], [ %.3, %90 ]
  br label %92

92:                                               ; preds = %91
  %93 = add nuw nsw i32 %.0, 1
  br label %59, !llvm.loop !4

94:                                               ; preds = %59
  %95 = icmp eq i32 %0, 4
  br i1 %95, label %96, label %103

96:                                               ; preds = %94
  %97 = load i64, i64* @l1, align 8
  %98 = call i64 @llvm.objectsize.i64.p0i8(i8* %.01, i1 false, i1 true, i1 false)
  %99 = load i8*, i8** @s2, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %102 = call i32 @__vsnprintf_chk(i8* noundef %.01, i64 noundef %97, i32 noundef 0, i64 noundef %98, i8* noundef nonnull %100, %struct.__va_list_tag* noundef nonnull %101) #8
  br label %107

103:                                              ; preds = %94
  %104 = call i64 @llvm.objectsize.i64.p0i8(i8* %.01, i1 false, i1 true, i1 false)
  %105 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %106 = call i32 @__vsnprintf_chk(i8* noundef %.01, i64 noundef 1, i32 noundef 0, i64 noundef %104, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %105) #8
  br label %107

107:                                              ; preds = %103, %96
  br label %130

108:                                              ; preds = %11
  %109 = load i64, i64* @l1, align 8
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %112, i64 0, i64 0
  br label %115

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1, i64 7
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i8* [ %.sub, %111 ], [ %114, %113 ]
  %117 = load i64, i64* @l1, align 8
  %118 = add i64 %117, 3
  %119 = call i64 @llvm.objectsize.i64.p0i8(i8* %116, i1 false, i1 true, i1 false)
  %120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %121 = call i32 @__vsnprintf_chk(i8* noundef nonnull %116, i64 noundef %118, i32 noundef 0, i64 noundef %119, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %120) #8
  br label %130

122:                                              ; preds = %11
  %123 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0, i64 2
  %124 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %vsnprintf = call i32 @vsnprintf(i8* nonnull %123, i64 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %struct.__va_list_tag* nonnull %124)
  br label %130

125:                                              ; preds = %11
  %126 = load i8*, i8** @s4, align 8
  %127 = call i64 @llvm.objectsize.i64.p0i8(i8* %126, i1 false, i1 true, i1 false)
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %129 = call i32 @__vsnprintf_chk(i8* noundef %126, i64 noundef 3, i32 noundef 0, i64 noundef %127, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %128) #8
  br label %130

130:                                              ; preds = %125, %122, %115, %107, %47, %32, %19, %14, %11
  %131 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %131)
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
  call void @abort() #12
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %0
  store volatile i32 0, i32* @chk_calls, align 4
  call void (i32, ...) @test2_sub(i32 noundef 6)
  call void (i32, ...) @test2_sub(i32 noundef 7)
  store volatile i32 0, i32* @vsnprintf_disallowed, align 4
  %16 = load i8*, i8** @s3, align 8
  call void (i32, ...) @test2_sub(i32 noundef 8, i8* noundef %16, i32 noundef 0)
  %17 = load volatile i32, i32* @chk_calls, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #12
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
  switch i32 %0, label %38 [
    i32 0, label %6
    i32 1, label %12
    i32 2, label %18
    i32 3, label %24
    i32 4, label %30
    i32 5, label %34
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 9
  %8 = load i64, i64* @l1, align 8
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %11 = call i32 @__vsnprintf_chk(i8* noundef nonnull %7, i64 noundef %9, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %10) #8
  br label %38

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 7
  %14 = load i64, i64* @l1, align 8
  %15 = add i64 %14, 30
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %17 = call i32 @__vsnprintf_chk(i8* noundef nonnull %13, i64 noundef %15, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %16) #8
  br label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.A.0, %struct.A.0* %3, i64 0, i32 1, i64 7
  %20 = load i64, i64* @l1, align 8
  %21 = add i64 %20, 3
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %23 = call i32 @__vsnprintf_chk(i8* noundef nonnull %19, i64 noundef %21, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %22) #8
  br label %38

24:                                               ; preds = %1
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 17
  %26 = load i64, i64* @l1, align 8
  %27 = add i64 %26, 3
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %29 = call i32 @__vsnprintf_chk(i8* noundef nonnull %25, i64 noundef %27, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %28) #8
  br label %38

30:                                               ; preds = %1
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 19
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %33 = call i32 @__vsnprintf_chk(i8* noundef nonnull %31, i64 noundef 2, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %32) #8
  br label %38

34:                                               ; preds = %1
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 16
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %37 = call i32 @__vsnprintf_chk(i8* noundef nonnull %35, i64 noundef 5, i32 noundef 0, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %36) #8
  br label %38

38:                                               ; preds = %34, %30, %24, %18, %12, %6, %1
  %39 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %39)
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
  call void @abort() #12
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
  %18 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %17) #8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -2
  %21 = load i8*, i8** @s3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void (i32, ...) @test3_sub(i32 noundef 1, i8* noundef nonnull %20, i32 noundef %23)
  call void @abort() #12
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
  call void @abort() #12
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
  call void (i32, ...) @test3_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #12
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
  call void @abort() #12
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %39
  %46 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %46, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %48 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void (i32, ...) @test3_sub(i32 noundef 5)
  call void @abort() #12
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %45
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %50, %44, %38, %29, %16, %5
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #9 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(i8* nocapture noundef, i64 noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
