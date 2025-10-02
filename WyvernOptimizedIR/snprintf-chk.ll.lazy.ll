; ModuleID = './snprintf-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/snprintf-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@chk_calls = external dso_local global i32, align 4
@buffer = internal global [32 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"foo bar\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@snprintf_disallowed = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"121\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1213\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%d - %c\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"28 - b\00AAAAA\00", align 1
@s4 = dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"-16 - \00AAA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  store i32 7303014, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  br i1 false, label %3, label %1

1:                                                ; preds = %0
  %2 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not = icmp eq i8 %2, 65
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1, %0
  call void @abort() #13
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %snprintf = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %.not1 = icmp eq i32 %snprintf, 7
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #13
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %lhsv = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not2 = icmp eq i32 %lhsv, 7303014
  br i1 %.not2, label %7, label %9

7:                                                ; preds = %6
  %8 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not3 = icmp eq i8 %8, 65
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %7, %6
  call void @abort() #13
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  store i32 7496034, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  br i1 false, label %13, label %11

11:                                               ; preds = %10
  %12 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not6 = icmp eq i8 %12, 65
  br i1 %.not6, label %14, label %13

13:                                               ; preds = %11, %10
  call void @abort() #13
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  store i32 7496034, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  br i1 false, label %15, label %16

15:                                               ; preds = %14
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %lhsv8 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not9 = icmp eq i32 %lhsv8, 7496034
  br i1 %.not9, label %17, label %19

17:                                               ; preds = %16
  %18 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not10 = icmp eq i8 %18, 65
  br i1 %.not10, label %20, label %19

19:                                               ; preds = %17, %16
  call void @abort() #13
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  store volatile i32 0, i32* @snprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %21 = load i64, i64* @l1, align 8
  %22 = trunc i64 %21 to i32
  %23 = trunc i64 %21 to i32
  %24 = add nsw i32 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = add nsw i32 %25, 12
  %snprintf11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  %.not12 = icmp eq i32 %snprintf11, 4
  br i1 %.not12, label %28, label %27

27:                                               ; preds = %20
  call void @abort() #13
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %20
  %lhsv13 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not14 = icmp eq i32 %lhsv13, 3224113
  br i1 %.not14, label %29, label %31

29:                                               ; preds = %28
  %30 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not15 = icmp eq i8 %30, 65
  br i1 %.not15, label %32, label %31

31:                                               ; preds = %29, %28
  call void @abort() #13
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %33 = load i64, i64* @l1, align 8
  %34 = trunc i64 %33 to i32
  %35 = trunc i64 %33 to i32
  %36 = add nsw i32 %35, 1
  %37 = trunc i64 %33 to i32
  %38 = add nsw i32 %37, 12
  %snprintf16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %34, i32 %36, i32 %38)
  %.not17 = icmp eq i32 %snprintf16, 4
  br i1 %.not17, label %40, label %39

39:                                               ; preds = %32
  call void @abort() #13
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %32
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 5)
  %.not18 = icmp eq i32 %bcmp, 0
  br i1 %.not18, label %41, label %43

41:                                               ; preds = %40
  %42 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not19 = icmp eq i8 %42, 65
  br i1 %.not19, label %44, label %43

43:                                               ; preds = %41, %40
  call void @abort() #13
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  %45 = load volatile i32, i32* @chk_calls, align 4
  %.not20 = icmp eq i32 %45, 0
  br i1 %.not20, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #13
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %44
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %48 = load volatile i8*, i8** @ptr, align 8
  %49 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %48) #8
  %50 = add i64 %49, 1
  %51 = load volatile i8*, i8** @ptr, align 8
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %50, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %51) #8
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 5)
  %.not22 = icmp eq i32 %bcmp21, 0
  br i1 %.not22, label %53, label %55

53:                                               ; preds = %47
  %54 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not23 = icmp eq i8 %54, 65
  br i1 %.not23, label %56, label %55

55:                                               ; preds = %53, %47
  call void @abort() #13
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %57 = load i64, i64* @l1, align 8
  %58 = add i64 %57, 31
  %59 = trunc i64 %57 to i32
  %60 = add nsw i32 %59, 27
  %61 = load volatile i8*, i8** @ptr, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %58, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %60, i32 noundef %63) #8
  %bcmp24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 12)
  %.not25 = icmp eq i32 %bcmp24, 0
  br i1 %.not25, label %66, label %65

65:                                               ; preds = %56
  call void @abort() #13
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %56
  %67 = load volatile i32, i32* @chk_calls, align 4
  %.not26 = icmp eq i32 %67, 2
  br i1 %.not26, label %69, label %68

68:                                               ; preds = %66
  call void @abort() #13
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  store volatile i32 0, i32* @chk_calls, align 4
  %70 = load i8*, i8** @s4, align 8
  %71 = call i64 @llvm.objectsize.i64.p0i8(i8* %70, i1 false, i1 true, i1 false)
  %72 = call i8* @__memset_chk(i8* noundef %70, i32 noundef 65, i64 noundef 32, i64 noundef %71) #8
  %73 = load i8*, i8** @s4, align 8
  %74 = load i64, i64* @l1, align 8
  %75 = add i64 %74, 6
  %76 = call i64 @llvm.objectsize.i64.p0i8(i8* %73, i1 false, i1 true, i1 false)
  %77 = trunc i64 %74 to i32
  %78 = add nsw i32 %77, -17
  %79 = load volatile i8*, i8** @ptr, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %73, i64 noundef %75, i32 noundef 0, i64 noundef %76, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %78, i32 noundef %82) #8
  %84 = load i8*, i8** @s4, align 8
  %bcmp27 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %84, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 10)
  %.not28 = icmp eq i32 %bcmp27, 0
  br i1 %.not28, label %86, label %85

85:                                               ; preds = %69
  call void @abort() #13
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %69
  %87 = load volatile i32, i32* @chk_calls, align 4
  %.not29 = icmp eq i32 %87, 0
  br i1 %.not29, label %89, label %88

88:                                               ; preds = %86
  call void @abort() #13
  br label %UnifiedUnreachableBlock

89:                                               ; preds = %86
  ret void

UnifiedUnreachableBlock:                          ; preds = %88, %85, %68, %65, %55, %46, %43, %39, %31, %27, %19, %15, %13, %9, %5, %3
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca [20 x i8], align 16
  %3 = load i64, i64* @l1, align 8
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 5
  br label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8* [ %6, %5 ], [ %8, %7 ]
  store volatile i32 0, i32* @chk_calls, align 4
  %11 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %12 = load i64, i64* @l1, align 8
  %13 = load i8*, i8** @s3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %11, i64 noundef %12, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %14) #8
  %16 = load i64, i64* @l1, align 8
  %17 = add i64 %16, 4
  %18 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %19 = load i8*, i8** @s3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = getelementptr inbounds i8, i8* %19, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %10, i64 noundef %17, i32 noundef 0, i64 noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %20, i32 noundef %23) #8
  %25 = load i64, i64* @l1, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = alloca [4 x i8], align 16
  %.sub4 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 0
  br label %31

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %.sub4, %27 ], [ %30, %29 ]
  %33 = load i8*, i8** @s2, align 8
  %34 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %33) #8
  %35 = add i64 %34, -2
  %36 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false, i1 true, i1 false)
  %37 = load i8*, i8** @s2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = getelementptr inbounds i8, i8* %37, i64 4
  %42 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %32, i64 noundef %35, i32 noundef 0, i64 noundef %36, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 noundef %40, i8* noundef nonnull %41) #8
  %43 = getelementptr inbounds i8, i8* %32, i64 2
  %44 = load i64, i64* @l1, align 8
  %45 = getelementptr inbounds i8, i8* %32, i64 2
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %45, i1 false, i1 true, i1 false)
  %47 = load i8*, i8** @s3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %43, i64 noundef %44, i32 noundef 0, i64 noundef %46, i8* noundef nonnull %48) #8
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %51

51:                                               ; preds = %84, %31
  %.01 = phi i32 [ 0, %31 ], [ %85, %84 ]
  %.0 = phi i8* [ %50, %31 ], [ %.4, %84 ]
  %52 = icmp ult i32 %.01, 4
  br i1 %52, label %53, label %86

53:                                               ; preds = %51
  %54 = zext i32 %.01 to i64
  %55 = load i64, i64* @l1, align 8
  %56 = add i64 %55, -1
  %57 = icmp eq i64 %56, %54
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %83

60:                                               ; preds = %53
  %61 = zext i32 %.01 to i64
  %62 = load i64, i64* @l1, align 8
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %82

66:                                               ; preds = %60
  %67 = zext i32 %.01 to i64
  %68 = load i64, i64* @l1, align 8
  %69 = add i64 %68, 1
  %70 = icmp eq i64 %69, %67
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %81

73:                                               ; preds = %66
  %74 = zext i32 %.01 to i64
  %75 = load i64, i64* @l1, align 8
  %76 = add i64 %75, 2
  %77 = icmp eq i64 %76, %74
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %80

80:                                               ; preds = %78, %73
  %.1 = phi i8* [ %79, %78 ], [ %.0, %73 ]
  br label %81

81:                                               ; preds = %80, %71
  %.2 = phi i8* [ %72, %71 ], [ %.1, %80 ]
  br label %82

82:                                               ; preds = %81, %64
  %.3 = phi i8* [ %65, %64 ], [ %.2, %81 ]
  br label %83

83:                                               ; preds = %82, %58
  %.4 = phi i8* [ %59, %58 ], [ %.3, %82 ]
  br label %84

84:                                               ; preds = %83
  %85 = add nuw nsw i32 %.01, 1
  br label %51, !llvm.loop !4

86:                                               ; preds = %51
  %87 = load i64, i64* @l1, align 8
  %88 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %89 = load i8*, i8** @s2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %.0, i64 noundef %87, i32 noundef 0, i64 noundef %88, i8* noundef nonnull %90) #8
  %92 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %92, 5
  br i1 %.not, label %94, label %93

93:                                               ; preds = %86
  call void @abort() #13
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %86
  store volatile i32 0, i32* @chk_calls, align 4
  %95 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  store i8 0, i8* %95, align 1
  %96 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %97 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %.0, i64 noundef 1, i32 noundef 0, i64 noundef %96, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  %98 = load i64, i64* @l1, align 8
  %99 = icmp eq i64 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %101, i64 0, i64 0
  br label %104

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %.sub, %100 ], [ %103, %102 ]
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* %105, i1 false, i1 true, i1 false)
  %107 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %105, i64 noundef 3, i32 noundef 0, i64 noundef %106, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1)) #8
  %108 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %109

109:                                              ; preds = %142, %104
  %.12 = phi i32 [ 0, %104 ], [ %143, %142 ]
  %.5 = phi i8* [ %108, %104 ], [ %.9, %142 ]
  %110 = icmp ult i32 %.12, 4
  br i1 %110, label %111, label %144

111:                                              ; preds = %109
  %112 = zext i32 %.12 to i64
  %113 = load i64, i64* @l1, align 8
  %114 = add i64 %113, -1
  %115 = icmp eq i64 %114, %112
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %141

118:                                              ; preds = %111
  %119 = zext i32 %.12 to i64
  %120 = load i64, i64* @l1, align 8
  %121 = icmp eq i64 %120, %119
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %140

124:                                              ; preds = %118
  %125 = zext i32 %.12 to i64
  %126 = load i64, i64* @l1, align 8
  %127 = add i64 %126, 1
  %128 = icmp eq i64 %127, %125
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %139

131:                                              ; preds = %124
  %132 = zext i32 %.12 to i64
  %133 = load i64, i64* @l1, align 8
  %134 = add i64 %133, 2
  %135 = icmp eq i64 %134, %132
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %138

138:                                              ; preds = %136, %131
  %.6 = phi i8* [ %137, %136 ], [ %.5, %131 ]
  br label %139

139:                                              ; preds = %138, %129
  %.7 = phi i8* [ %130, %129 ], [ %.6, %138 ]
  br label %140

140:                                              ; preds = %139, %122
  %.8 = phi i8* [ %123, %122 ], [ %.7, %139 ]
  br label %141

141:                                              ; preds = %140, %116
  %.9 = phi i8* [ %117, %116 ], [ %.8, %140 ]
  br label %142

142:                                              ; preds = %141
  %143 = add nuw nsw i32 %.12, 1
  br label %109, !llvm.loop !6

144:                                              ; preds = %109
  %145 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %146 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %.5, i64 noundef 1, i32 noundef 0, i64 noundef %145, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #8
  %147 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %148 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %.5, i64 noundef 0, i32 noundef 0, i64 noundef %147, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #8
  store volatile i32 0, i32* @snprintf_disallowed, align 4
  %149 = load i8*, i8** @s4, align 8
  %150 = load i64, i64* @l1, align 8
  %151 = add i64 %150, 31
  %152 = call i64 @llvm.objectsize.i64.p0i8(i8* %149, i1 false, i1 true, i1 false)
  %153 = load i8*, i8** @s3, align 8
  %154 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %149, i64 noundef %151, i32 noundef 0, i64 noundef %152, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %153, i32 noundef 0) #8
  %155 = load volatile i32, i32* @chk_calls, align 4
  %.not3 = icmp eq i32 %155, 0
  br i1 %.not3, label %157, label %156

156:                                              ; preds = %144
  call void @abort() #13
  br label %UnifiedUnreachableBlock

157:                                              ; preds = %144
  ret void

UnifiedUnreachableBlock:                          ; preds = %156, %93
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %3 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %3, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %5 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %9 = load i64, i64* @l1, align 8
  %10 = add i64 %9, 1
  %11 = load i8*, i8** @s2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 3
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds i8, i8* %11, i64 4
  %16 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %8, i64 noundef %10, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 noundef %14, i8* noundef nonnull %15) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %0
  %18 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %18, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %20 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %24 = load i64, i64* @l1, align 8
  %25 = add i64 %24, 30
  %26 = load i8*, i8** @s3, align 8
  %27 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %26) #8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -2
  %30 = load i8*, i8** @s3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %23, i64 noundef %25, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %29, i32 noundef %32) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %17
  %35 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %37 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %41 = load i64, i64* @l1, align 8
  %42 = add i64 %41, 3
  %43 = trunc i64 %41 to i32
  %44 = add nsw i32 %43, 9999
  %45 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %40, i64 noundef %42, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 noundef %44) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %34
  %47 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %47, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %49 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %53 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %52, i64 noundef 2, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %46
  %55 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %55, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %57 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 17
  %61 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %60, i64 noundef 4, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %54
  %63 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %63, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %65 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 17
  %69 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %68, i64 noundef 4, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %62
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %67, %59, %51, %39, %22, %7
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #9 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(i8* noalias nocapture noundef writeonly, i64 noundef, i8* nocapture noundef readonly, ...) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
