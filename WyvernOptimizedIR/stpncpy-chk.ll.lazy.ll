; ModuleID = './stpncpy-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/stpncpy-chk.c"
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
@.str.2 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@chk_calls = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@i = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@stpncpy_disallowed = external dso_local global i32, align 4
@s4 = dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"jkl\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca [64 x i8], align 16
  store volatile i32 0, i32* @chk_calls, align 4
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %stpncpy = call i8* @stpncpy(i8* nonnull %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 4)
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 4
  %.not = icmp eq i8* %stpncpy, %4
  br i1 %.not, label %5, label %7

5:                                                ; preds = %0
  %6 = bitcast [64 x i8]* %1 to i32*
  %lhsv = load i32, i32* %6, align 16
  %.not2 = icmp eq i32 %lhsv, 1819043176
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %5, %0
  call void @abort() #12
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %stpncpy3 = call i8* @stpncpy(i8* nonnull %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 4)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 20
  %.not4 = icmp eq i8* %stpncpy3, %11
  br i1 %.not4, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %14 = bitcast i8* %13 to i32*
  %lhsv5 = load i32, i32* %14, align 16
  %.not7 = icmp eq i32 %lhsv5, 1819043176
  br i1 %.not7, label %16, label %15

15:                                               ; preds = %12, %8
  call void @abort() #12
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %stpncpy8 = call i8* @stpncpy(i8* nonnull %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 5), i64 4)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 36
  %.not9 = icmp eq i8* %stpncpy8, %19
  br i1 %.not9, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %22 = bitcast i8* %21 to i32*
  %lhsv10 = load i32, i32* %22, align 16
  %.not12 = icmp eq i32 %lhsv10, 1919907616
  br i1 %.not12, label %24, label %23

23:                                               ; preds = %20, %16
  call void @abort() #12
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %25, i8 0, i64 64, i1 false)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %stpncpy13 = call i8* @stpncpy(i8* nonnull %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 5), i64 4)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 5
  %.not14 = icmp eq i8* %stpncpy13, %27
  br i1 %.not14, label %28, label %30

28:                                               ; preds = %24
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %26, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 5), i64 4)
  %.not15 = icmp eq i32 %bcmp, 0
  br i1 %.not15, label %29, label %30

29:                                               ; preds = %28
  br i1 false, label %30, label %31

30:                                               ; preds = %29, %28, %24
  call void @abort() #12
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %32, i8 0, i64 64, i1 false)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %stpncpy16 = call i8* @stpncpy(i8* nonnull %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 0)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not17 = icmp eq i8* %stpncpy16, %34
  br i1 %.not17, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strcmpload = load i8, i8* %36, align 16
  %.not18 = icmp eq i8 %strcmpload, 0
  br i1 %.not18, label %38, label %37

37:                                               ; preds = %35, %31
  call void @abort() #12
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %39, i8 0, i64 64, i1 false)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %stpncpy19 = call i8* @stpncpy(i8* nonnull %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 1), i64 0)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %.not20 = icmp eq i8* %stpncpy19, %41
  br i1 %.not20, label %42, label %45

42:                                               ; preds = %38
  %strcmpload21 = load i8, i8* %40, align 1
  %.not22 = icmp eq i8 %strcmpload21, 0
  br i1 %.not22, label %43, label %45

43:                                               ; preds = %42
  br i1 false, label %45, label %44

44:                                               ; preds = %43
  br i1 false, label %45, label %46

45:                                               ; preds = %44, %43, %42, %38
  call void @abort() #12
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %44
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %47, i8 0, i64 64, i1 false)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %stpncpy23 = call i8* @stpncpy(i8* nonnull %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 6), i64 0)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %.not24 = icmp eq i8* %stpncpy23, %49
  br i1 %.not24, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strcmpload25 = load i8, i8* %51, align 2
  %.not26 = icmp eq i8 %strcmpload25, 0
  br i1 %.not26, label %52, label %54

52:                                               ; preds = %50
  br i1 false, label %54, label %53

53:                                               ; preds = %52
  br i1 false, label %54, label %55

54:                                               ; preds = %53, %52, %50, %46
  call void @abort() #12
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %53
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %56, i8 0, i64 64, i1 false)
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %stpncpy27 = call i8* @stpncpy(i8* nonnull %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 11
  %.not28 = icmp eq i8* %stpncpy27, %58
  br i1 %.not28, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp29 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %60, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not30 = icmp eq i32 %bcmp29, 0
  br i1 %.not30, label %62, label %61

61:                                               ; preds = %59, %55
  call void @abort() #12
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %59
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %63, i8 0, i64 64, i1 false)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %65 = call i8* @stpncpy(i8* noundef nonnull %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4) #9
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 4
  %.not31 = icmp eq i8* %65, %66
  br i1 %.not31, label %67, label %69

67:                                               ; preds = %62
  %68 = bitcast [64 x i8]* %1 to i32*
  %lhsv32 = load i32, i32* %68, align 16
  %.not34 = icmp eq i32 %lhsv32, 1819043176
  br i1 %.not34, label %70, label %69

69:                                               ; preds = %67, %62
  call void @abort() #12
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %71, i8 0, i64 64, i1 false)
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %73 = load i32, i32* @i, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @i, align 4
  %.not35 = icmp eq i32 %73, 0
  %75 = select i1 %.not35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 1)
  %stpncpy36 = call i8* @stpncpy(i8* nonnull %72, i8* %75, i64 4)
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 3
  %.not37 = icmp eq i8* %stpncpy36, %76
  br i1 %.not37, label %77, label %81

77:                                               ; preds = %70
  %78 = bitcast [64 x i8]* %1 to i32*
  %lhsv38 = load i32, i32* %78, align 16
  %.not40 = icmp eq i32 %lhsv38, 7496034
  br i1 %.not40, label %79, label %81

79:                                               ; preds = %77
  %80 = load i32, i32* @i, align 4
  %.not41 = icmp eq i32 %80, 1
  br i1 %.not41, label %82, label %81

81:                                               ; preds = %79, %77, %70
  call void @abort() #12
  br label %UnifiedUnreachableBlock

82:                                               ; preds = %79
  store volatile i32 1, i32* @stpncpy_disallowed, align 4
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %stpncpy42 = call i8* @stpncpy(i8* nonnull %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 4)
  store volatile i32 0, i32* @stpncpy_disallowed, align 4
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %bcmp43 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %84, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 4)
  %.not44 = icmp eq i32 %bcmp43, 0
  br i1 %.not44, label %86, label %85

85:                                               ; preds = %82
  call void @abort() #12
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %82
  %87 = load volatile i32, i32* @chk_calls, align 4
  %.not45 = icmp eq i32 %87, 0
  br i1 %.not45, label %89, label %88

88:                                               ; preds = %86
  call void @abort() #12
  br label %UnifiedUnreachableBlock

89:                                               ; preds = %86
  ret void

UnifiedUnreachableBlock:                          ; preds = %88, %85, %81, %69, %61, %54, %45, %37, %30, %23, %15, %7
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__stpncpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare dso_local i8* @stpncpy(i8* noalias noundef writeonly, i8* noalias nocapture noundef readonly, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  %1 = load volatile i64, i64* @l1, align 8
  %2 = icmp ult i64 %1, 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load volatile i64, i64* @l1, align 8
  %5 = add i64 %4, 1
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i64 [ %5, %3 ], [ 4, %6 ]
  %9 = load i8*, i8** @s4, align 8
  %10 = load volatile i64, i64* @l1, align 8
  %11 = add i64 %10, 1
  %12 = call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false, i1 true, i1 false)
  %13 = call i8* @__stpncpy_chk(i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %11, i64 noundef %12) #9
  %14 = load i8*, i8** @s4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %8
  %.not = icmp eq i8* %13, %15
  br i1 %.not, label %16, label %19

16:                                               ; preds = %7
  %17 = load i8*, i8** @s4, align 8
  %18 = call i32 @strncmp(i8* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %8) #9
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %16, %7
  call void @abort() #12
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = load volatile i32, i32* @chk_calls, align 4
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #12
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  ret void

UnifiedUnreachableBlock:                          ; preds = %22, %19
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca [20 x i8], align 16
  %3 = load volatile i64, i64* @l1, align 8
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
  %12 = load volatile i8*, i8** @s3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  %14 = load volatile i64, i64* @l1, align 8
  %15 = call i8* @__stpncpy_chk(i8* noundef nonnull %11, i8* noundef nonnull %13, i64 noundef %14, i64 noundef 18) #9
  %.not = icmp eq i8* %15, null
  br i1 %.not, label %16, label %17

16:                                               ; preds = %9
  call void @abort() #12
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %9
  %18 = load volatile i8*, i8** @s3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load volatile i64, i64* @l1, align 8
  %21 = add i64 %20, 2
  %22 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %23 = call i8* @__stpncpy_chk(i8* noundef nonnull %10, i8* noundef nonnull %19, i64 noundef %21, i64 noundef %22) #9
  %.not13 = icmp eq i8* %23, null
  br i1 %.not13, label %24, label %25

24:                                               ; preds = %17
  call void @abort() #12
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %17
  %26 = load volatile i64, i64* @l1, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = alloca [4 x i8], align 16
  %.sub30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i64 0, i64 0
  br label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %.sub30, %28 ], [ %31, %30 ]
  %34 = load volatile i8*, i8** @s2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load volatile i64, i64* @l1, align 8
  %37 = add i64 %36, 2
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %33, i1 false, i1 true, i1 false)
  %39 = call i8* @__stpncpy_chk(i8* noundef nonnull %33, i8* noundef nonnull %35, i64 noundef %37, i64 noundef %38) #9
  %.not14 = icmp eq i8* %39, null
  br i1 %.not14, label %40, label %41

40:                                               ; preds = %32
  call void @abort() #12
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %32
  %42 = getelementptr inbounds i8, i8* %33, i64 2
  %43 = load volatile i8*, i8** @s3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load volatile i64, i64* @l1, align 8
  %46 = getelementptr inbounds i8, i8* %33, i64 2
  %47 = call i64 @llvm.objectsize.i64.p0i8(i8* %46, i1 false, i1 true, i1 false)
  %48 = call i8* @__stpncpy_chk(i8* noundef nonnull %42, i8* noundef nonnull %44, i64 noundef %45, i64 noundef %47) #9
  %.not15 = icmp eq i8* %48, null
  br i1 %.not15, label %49, label %50

49:                                               ; preds = %41
  call void @abort() #12
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %41
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %52

52:                                               ; preds = %85, %50
  %.01 = phi i32 [ 0, %50 ], [ %86, %85 ]
  %.0 = phi i8* [ %51, %50 ], [ %.4, %85 ]
  %53 = icmp ult i32 %.01, 4
  br i1 %53, label %54, label %87

54:                                               ; preds = %52
  %55 = zext i32 %.01 to i64
  %56 = load volatile i64, i64* @l1, align 8
  %57 = add i64 %56, -1
  %58 = icmp eq i64 %57, %55
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %84

61:                                               ; preds = %54
  %62 = zext i32 %.01 to i64
  %63 = load volatile i64, i64* @l1, align 8
  %64 = icmp eq i64 %63, %62
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %83

67:                                               ; preds = %61
  %68 = zext i32 %.01 to i64
  %69 = load volatile i64, i64* @l1, align 8
  %70 = add i64 %69, 1
  %71 = icmp eq i64 %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %82

74:                                               ; preds = %67
  %75 = zext i32 %.01 to i64
  %76 = load volatile i64, i64* @l1, align 8
  %77 = add i64 %76, 2
  %78 = icmp eq i64 %77, %75
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %81

81:                                               ; preds = %79, %74
  %.1 = phi i8* [ %80, %79 ], [ %.0, %74 ]
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
  %86 = add nuw nsw i32 %.01, 1
  br label %52, !llvm.loop !4

87:                                               ; preds = %52
  %88 = load volatile i8*, i8** @s2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  %90 = load volatile i64, i64* @l1, align 8
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %92 = call i8* @__stpncpy_chk(i8* noundef %.0, i8* noundef nonnull %89, i64 noundef %90, i64 noundef %91) #9
  %.not16 = icmp eq i8* %92, null
  br i1 %.not16, label %93, label %94

93:                                               ; preds = %87
  call void @abort() #12
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %87
  %95 = load volatile i32, i32* @chk_calls, align 4
  %.not17 = icmp eq i32 %95, 5
  br i1 %.not17, label %97, label %96

96:                                               ; preds = %94
  call void @abort() #12
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %94
  store volatile i32 0, i32* @chk_calls, align 4
  %98 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %stpncpy = call i8* @stpncpy(i8* nonnull %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %.not18 = icmp eq i8* %stpncpy, null
  br i1 %.not18, label %99, label %100

99:                                               ; preds = %97
  call void @abort() #12
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %stpncpy19 = call i8* @stpncpy(i8* nonnull %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 0)
  %.not20 = icmp eq i8* %stpncpy19, null
  br i1 %.not20, label %102, label %103

102:                                              ; preds = %100
  call void @abort() #12
  br label %UnifiedUnreachableBlock

103:                                              ; preds = %100
  %104 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %105 = call i8* @__stpncpy_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 1, i64 noundef %104) #9
  %.not21 = icmp eq i8* %105, null
  br i1 %.not21, label %106, label %107

106:                                              ; preds = %103
  call void @abort() #12
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %103
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %109 = call i8* @__stpncpy_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 3, i64 noundef %108) #9
  %.not22 = icmp eq i8* %109, null
  br i1 %.not22, label %110, label %111

110:                                              ; preds = %107
  call void @abort() #12
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %107
  %112 = load volatile i64, i64* @l1, align 8
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %115, i64 0, i64 0
  br label %118

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i8* [ %.sub, %114 ], [ %117, %116 ]
  %120 = call i64 @llvm.objectsize.i64.p0i8(i8* %119, i1 false, i1 true, i1 false)
  %121 = call i8* @__stpncpy_chk(i8* noundef nonnull %119, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 3, i64 noundef %120) #9
  %.not23 = icmp eq i8* %121, null
  br i1 %.not23, label %122, label %123

122:                                              ; preds = %118
  call void @abort() #12
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %118
  %124 = call i64 @llvm.objectsize.i64.p0i8(i8* %119, i1 false, i1 true, i1 false)
  %125 = call i8* @__stpncpy_chk(i8* noundef nonnull %119, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %124) #9
  %.not24 = icmp eq i8* %125, null
  br i1 %.not24, label %126, label %127

126:                                              ; preds = %123
  call void @abort() #12
  br label %UnifiedUnreachableBlock

127:                                              ; preds = %123
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %129

129:                                              ; preds = %162, %127
  %.08 = phi i64 [ 4, %127 ], [ %.412, %162 ]
  %.03 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %127 ], [ %.47, %162 ]
  %.12 = phi i32 [ 0, %127 ], [ %163, %162 ]
  %.5 = phi i8* [ %128, %127 ], [ %.9, %162 ]
  %130 = icmp ult i32 %.12, 4
  br i1 %130, label %131, label %164

131:                                              ; preds = %129
  %132 = zext i32 %.12 to i64
  %133 = load volatile i64, i64* @l1, align 8
  %134 = add i64 %133, -1
  %135 = icmp eq i64 %134, %132
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %161

138:                                              ; preds = %131
  %139 = zext i32 %.12 to i64
  %140 = load volatile i64, i64* @l1, align 8
  %141 = icmp eq i64 %140, %139
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %160

144:                                              ; preds = %138
  %145 = zext i32 %.12 to i64
  %146 = load volatile i64, i64* @l1, align 8
  %147 = add i64 %146, 1
  %148 = icmp eq i64 %147, %145
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %159

151:                                              ; preds = %144
  %152 = zext i32 %.12 to i64
  %153 = load volatile i64, i64* @l1, align 8
  %154 = add i64 %153, 2
  %155 = icmp eq i64 %154, %152
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %158

158:                                              ; preds = %156, %151
  %.19 = phi i64 [ 1, %156 ], [ %.08, %151 ]
  %.14 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %156 ], [ %.03, %151 ]
  %.6 = phi i8* [ %157, %156 ], [ %.5, %151 ]
  br label %159

159:                                              ; preds = %158, %149
  %.210 = phi i64 [ 4, %149 ], [ %.19, %158 ]
  %.25 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %149 ], [ %.14, %158 ]
  %.7 = phi i8* [ %150, %149 ], [ %.6, %158 ]
  br label %160

160:                                              ; preds = %159, %142
  %.311 = phi i64 [ 3, %142 ], [ %.210, %159 ]
  %.36 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %142 ], [ %.25, %159 ]
  %.8 = phi i8* [ %143, %142 ], [ %.7, %159 ]
  br label %161

161:                                              ; preds = %160, %136
  %.412 = phi i64 [ 2, %136 ], [ %.311, %160 ]
  %.47 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %136 ], [ %.36, %160 ]
  %.9 = phi i8* [ %137, %136 ], [ %.8, %160 ]
  br label %162

162:                                              ; preds = %161
  %163 = add nuw nsw i32 %.12, 1
  br label %129, !llvm.loop !6

164:                                              ; preds = %129
  %165 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %166 = call i8* @__stpncpy_chk(i8* noundef %.5, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1, i64 noundef %165) #9
  %.not25 = icmp eq i8* %166, null
  br i1 %.not25, label %167, label %168

167:                                              ; preds = %164
  call void @abort() #12
  br label %UnifiedUnreachableBlock

168:                                              ; preds = %164
  %169 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 16
  %170 = call i8* @__stpncpy_chk(i8* noundef nonnull %169, i8* noundef %.03, i64 noundef %.08, i64 noundef 4) #9
  %.not26 = icmp eq i8* %170, null
  br i1 %.not26, label %171, label %172

171:                                              ; preds = %168
  call void @abort() #12
  br label %UnifiedUnreachableBlock

172:                                              ; preds = %168
  %173 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 15
  %174 = call i8* @__stpncpy_chk(i8* noundef nonnull %173, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef %.08, i64 noundef 5) #9
  %.not27 = icmp eq i8* %174, null
  br i1 %.not27, label %175, label %176

175:                                              ; preds = %172
  call void @abort() #12
  br label %UnifiedUnreachableBlock

176:                                              ; preds = %172
  %177 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 10
  %178 = call i8* @__stpncpy_chk(i8* noundef nonnull %177, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 noundef %.08, i64 noundef 10) #9
  %.not28 = icmp eq i8* %178, null
  br i1 %.not28, label %179, label %180

179:                                              ; preds = %176
  call void @abort() #12
  br label %UnifiedUnreachableBlock

180:                                              ; preds = %176
  %181 = load volatile i32, i32* @chk_calls, align 4
  %.not29 = icmp eq i32 %181, 0
  br i1 %.not29, label %183, label %182

182:                                              ; preds = %180
  call void @abort() #12
  br label %UnifiedUnreachableBlock

183:                                              ; preds = %180
  store volatile i32 0, i32* @chk_calls, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %182, %179, %175, %171, %167, %126, %122, %110, %106, %102, %99, %96, %93, %49, %40, %24, %16
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %3 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %3, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %5 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %9 = load volatile i8*, i8** @s2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 4
  %11 = load volatile i64, i64* @l1, align 8
  %12 = add i64 %11, 1
  %13 = call i8* @__stpncpy_chk(i8* noundef nonnull %8, i8* noundef nonnull %10, i64 noundef %12, i64 noundef 1) #9
  %.not3 = icmp eq i8* %13, null
  br i1 %.not3, label %17, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @i, align 4
  br label %17

17:                                               ; preds = %14, %7
  call void @abort() #12
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %0
  %19 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %19, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %21 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %25 = load volatile i8*, i8** @s3, align 8
  %26 = load volatile i64, i64* @l1, align 8
  %27 = add i64 %26, 4
  %28 = call i8* @__stpncpy_chk(i8* noundef nonnull %24, i8* noundef %25, i64 noundef %27, i64 noundef 3) #9
  %.not2 = icmp eq i8* %28, null
  br i1 %.not2, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @i, align 4
  br label %32

32:                                               ; preds = %29, %23
  call void @abort() #12
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %18
  %34 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %34, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %36 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %40 = call i8* @__stpncpy_chk(i8* noundef nonnull %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2, i64 noundef 1) #9
  %.not1 = icmp eq i8* %40, null
  br i1 %.not1, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @i, align 4
  br label %44

44:                                               ; preds = %41, %38
  call void @abort() #12
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %33
  %46 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %46, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %48 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 18
  %52 = call i8* @__stpncpy_chk(i8* noundef nonnull %51, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 2) #9
  %.not = icmp eq i8* %52, null
  br i1 %.not, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @i, align 4
  br label %56

56:                                               ; preds = %53, %50
  call void @abort() #12
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %45
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %56, %44, %32, %17
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #8

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #10 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
