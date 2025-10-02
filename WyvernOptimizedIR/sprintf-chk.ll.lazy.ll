; ModuleID = './sprintf-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/sprintf-chk.c"
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
@sprintf_disallowed = external dso_local global i32, align 4
@buffer = internal global [32 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d - %c\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"28 - b\00AAAAA\00", align 1
@s4 = dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"-16 - a\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @sprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %1 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
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
  %6 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
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
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %13 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %lhsv6 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not7 = icmp eq i32 %lhsv6, 7496034
  br i1 %.not7, label %14, label %16

14:                                               ; preds = %12
  %15 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not8 = icmp eq i8 %15, 65
  br i1 %.not8, label %17, label %16

16:                                               ; preds = %14, %12
  call void @abort() #10
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %18 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %.not9 = icmp eq i32 %18, 3
  br i1 %.not9, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #10
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
  call void @abort() #10
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = load volatile i32, i32* @chk_calls, align 4
  %.not13 = icmp eq i32 %25, 0
  br i1 %.not13, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #10
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  store volatile i32 0, i32* @sprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %28 = load volatile i8*, i8** @ptr, align 8
  %29 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %28) #7
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
  %40 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %36, i32 noundef %39) #7
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 12)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %42, label %41

41:                                               ; preds = %33
  call void @abort() #10
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %33
  %43 = load volatile i32, i32* @chk_calls, align 4
  %.not18 = icmp eq i32 %43, 2
  br i1 %.not18, label %45, label %44

44:                                               ; preds = %42
  call void @abort() #10
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  store volatile i32 0, i32* @chk_calls, align 4
  %46 = load i8*, i8** @s4, align 8
  %47 = call i64 @llvm.objectsize.i64.p0i8(i8* %46, i1 false, i1 true, i1 false)
  %48 = load i64, i64* @l1, align 8
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %49, -17
  %51 = load volatile i8*, i8** @ptr, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %46, i32 noundef 0, i64 noundef %47, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %50, i32 noundef %54) #7
  %56 = load i8*, i8** @s4, align 8
  %bcmp19 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %56, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 8)
  %.not20 = icmp eq i32 %bcmp19, 0
  br i1 %.not20, label %58, label %57

57:                                               ; preds = %45
  call void @abort() #10
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %45
  %59 = load volatile i32, i32* @chk_calls, align 4
  %.not21 = icmp eq i32 %59, 0
  br i1 %.not21, label %61, label %60

60:                                               ; preds = %58
  call void @abort() #10
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %58
  ret void

UnifiedUnreachableBlock:                          ; preds = %60, %57, %44, %41, %32, %26, %23, %19, %16, %11, %7, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

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
  %12 = load i8*, i8** @s3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %11, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %13) #7
  %15 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %16 = load i8*, i8** @s3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = getelementptr inbounds i8, i8* %16, i64 3
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %10, i32 noundef 0, i64 noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %17, i32 noundef %20) #7
  %22 = load i64, i64* @l1, align 8
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = alloca [4 x i8], align 16
  %.sub4 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  br label %28

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %.sub4, %24 ], [ %27, %26 ]
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false, i1 true, i1 false)
  %31 = load i8*, i8** @s2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds i8, i8* %31, i64 4
  %36 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %29, i32 noundef 0, i64 noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef %34, i8* noundef nonnull %35) #7
  %37 = getelementptr inbounds i8, i8* %29, i64 2
  %38 = getelementptr inbounds i8, i8* %29, i64 2
  %39 = call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false, i1 true, i1 false)
  %40 = load i8*, i8** @s3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %37, i32 noundef 0, i64 noundef %39, i8* noundef nonnull %41) #7
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %44

44:                                               ; preds = %77, %28
  %.01 = phi i32 [ 0, %28 ], [ %78, %77 ]
  %.0 = phi i8* [ %43, %28 ], [ %.4, %77 ]
  %45 = icmp ult i32 %.01, 4
  br i1 %45, label %46, label %79

46:                                               ; preds = %44
  %47 = zext i32 %.01 to i64
  %48 = load i64, i64* @l1, align 8
  %49 = add i64 %48, -1
  %50 = icmp eq i64 %49, %47
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %76

53:                                               ; preds = %46
  %54 = zext i32 %.01 to i64
  %55 = load i64, i64* @l1, align 8
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %75

59:                                               ; preds = %53
  %60 = zext i32 %.01 to i64
  %61 = load i64, i64* @l1, align 8
  %62 = add i64 %61, 1
  %63 = icmp eq i64 %62, %60
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %74

66:                                               ; preds = %59
  %67 = zext i32 %.01 to i64
  %68 = load i64, i64* @l1, align 8
  %69 = add i64 %68, 2
  %70 = icmp eq i64 %69, %67
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %73

73:                                               ; preds = %71, %66
  %.1 = phi i8* [ %72, %71 ], [ %.0, %66 ]
  br label %74

74:                                               ; preds = %73, %64
  %.2 = phi i8* [ %65, %64 ], [ %.1, %73 ]
  br label %75

75:                                               ; preds = %74, %57
  %.3 = phi i8* [ %58, %57 ], [ %.2, %74 ]
  br label %76

76:                                               ; preds = %75, %51
  %.4 = phi i8* [ %52, %51 ], [ %.3, %75 ]
  br label %77

77:                                               ; preds = %76
  %78 = add nuw nsw i32 %.01, 1
  br label %44, !llvm.loop !4

79:                                               ; preds = %44
  %80 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %81 = load i8*, i8** @s2, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %.0, i32 noundef 0, i64 noundef %80, i8* noundef nonnull %82) #7
  %84 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %84, 5
  br i1 %.not, label %86, label %85

85:                                               ; preds = %79
  call void @abort() #10
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %79
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @sprintf_disallowed, align 4
  %87 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %88 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %87, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #7
  %89 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %90 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %.0, i32 noundef 0, i64 noundef %89, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  %91 = load i64, i64* @l1, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %94, i64 0, i64 0
  br label %97

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %.sub, %93 ], [ %96, %95 ]
  %99 = call i64 @llvm.objectsize.i64.p0i8(i8* %98, i1 false, i1 true, i1 false)
  %100 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %98, i32 noundef 0, i64 noundef %99, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1)) #7
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %102

102:                                              ; preds = %135, %97
  %.12 = phi i32 [ 0, %97 ], [ %136, %135 ]
  %.5 = phi i8* [ %101, %97 ], [ %.9, %135 ]
  %103 = icmp ult i32 %.12, 4
  br i1 %103, label %104, label %137

104:                                              ; preds = %102
  %105 = zext i32 %.12 to i64
  %106 = load i64, i64* @l1, align 8
  %107 = add i64 %106, -1
  %108 = icmp eq i64 %107, %105
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %134

111:                                              ; preds = %104
  %112 = zext i32 %.12 to i64
  %113 = load i64, i64* @l1, align 8
  %114 = icmp eq i64 %113, %112
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %133

117:                                              ; preds = %111
  %118 = zext i32 %.12 to i64
  %119 = load i64, i64* @l1, align 8
  %120 = add i64 %119, 1
  %121 = icmp eq i64 %120, %118
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %132

124:                                              ; preds = %117
  %125 = zext i32 %.12 to i64
  %126 = load i64, i64* @l1, align 8
  %127 = add i64 %126, 2
  %128 = icmp eq i64 %127, %125
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %131

131:                                              ; preds = %129, %124
  %.6 = phi i8* [ %130, %129 ], [ %.5, %124 ]
  br label %132

132:                                              ; preds = %131, %122
  %.7 = phi i8* [ %123, %122 ], [ %.6, %131 ]
  br label %133

133:                                              ; preds = %132, %115
  %.8 = phi i8* [ %116, %115 ], [ %.7, %132 ]
  br label %134

134:                                              ; preds = %133, %109
  %.9 = phi i8* [ %110, %109 ], [ %.8, %133 ]
  br label %135

135:                                              ; preds = %134
  %136 = add nuw nsw i32 %.12, 1
  br label %102, !llvm.loop !6

137:                                              ; preds = %102
  %138 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %139 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %.5, i32 noundef 0, i64 noundef %138, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #7
  store volatile i32 0, i32* @sprintf_disallowed, align 4
  %140 = load i8*, i8** @s4, align 8
  %141 = call i64 @llvm.objectsize.i64.p0i8(i8* %140, i1 false, i1 true, i1 false)
  %142 = load i8*, i8** @s3, align 8
  %143 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %140, i32 noundef 0, i64 noundef %141, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %142, i32 noundef 0) #7
  %144 = load volatile i32, i32* @chk_calls, align 4
  %.not3 = icmp eq i32 %144, 0
  br i1 %.not3, label %146, label %145

145:                                              ; preds = %137
  call void @abort() #10
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %137
  ret void

UnifiedUnreachableBlock:                          ; preds = %145, %85
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
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %9 = load i8*, i8** @s2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 3
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds i8, i8* %9, i64 4
  %14 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %8, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef %12, i8* noundef nonnull %13) #7
  call void @abort() #10
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %0
  %16 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %16, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %18 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %22 = load i8*, i8** @s3, align 8
  %23 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #7
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -2
  %26 = load i8*, i8** @s3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %21, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %25, i32 noundef %28) #7
  call void @abort() #10
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %15
  %31 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %31, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %33 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %37 = load i64, i64* @l1, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 9999
  %40 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %36, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %39) #7
  call void @abort() #10
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %30
  %42 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %42, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %44 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %48 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %47, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  call void @abort() #10
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %41
  %50 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %50, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %52 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 17
  %56 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %55, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #7
  call void @abort() #10
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %49
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %54, %46, %35, %20, %7
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

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
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
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
!6 = distinct !{!6, !5}
