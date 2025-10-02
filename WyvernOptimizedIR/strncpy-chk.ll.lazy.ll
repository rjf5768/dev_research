; ModuleID = './strncpy-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-chk.c"
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
@strncpy_disallowed = external dso_local global i32, align 4
@chk_calls = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@i = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
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
  store volatile i32 1, i32* @strncpy_disallowed, align 4
  store volatile i32 0, i32* @chk_calls, align 4
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = bitcast [64 x i8]* %1 to i32*
  store i32 1819043176, i32* %3, align 16
  br i1 false, label %6, label %4

4:                                                ; preds = %0
  %5 = bitcast [64 x i8]* %1 to i32*
  %lhsv = load i32, i32* %5, align 16
  %.not = icmp eq i32 %lhsv, 1819043176
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4, %0
  call void @abort() #12
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %10 = bitcast i8* %9 to i32*
  store i32 1819043176, i32* %10, align 16
  br i1 false, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %13 = bitcast i8* %12 to i32*
  %lhsv2 = load i32, i32* %13, align 16
  %.not4 = icmp eq i32 %lhsv2, 1819043176
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %11, %7
  call void @abort() #12
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %16, i8 0, i64 64, i1 false)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %18 = bitcast i8* %17 to i32*
  store i32 1919907616, i32* %18, align 16
  br i1 false, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %21 = bitcast i8* %20 to i32*
  %lhsv5 = load i32, i32* %21, align 16
  %.not7 = icmp eq i32 %lhsv5, 1919907616
  br i1 %.not7, label %23, label %22

22:                                               ; preds = %19, %15
  call void @abort() #12
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %24, i8 0, i64 64, i1 false)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %26 = bitcast i8* %25 to i32*
  store i32 1919907616, i32* %26, align 1
  br i1 false, label %29, label %27

27:                                               ; preds = %23
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %25, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 5), i64 4)
  %.not8 = icmp eq i32 %bcmp, 0
  br i1 %.not8, label %28, label %29

28:                                               ; preds = %27
  br i1 false, label %29, label %30

29:                                               ; preds = %28, %27, %23
  call void @abort() #12
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %31, i8 0, i64 64, i1 false)
  br i1 false, label %34, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strcmpload = load i8, i8* %33, align 16
  %.not9 = icmp eq i8 %strcmpload, 0
  br i1 %.not9, label %35, label %34

34:                                               ; preds = %32, %30
  call void @abort() #12
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %36, i8 0, i64 64, i1 false)
  br i1 false, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %strcmpload10 = load i8, i8* %38, align 1
  %.not11 = icmp eq i8 %strcmpload10, 0
  br i1 %.not11, label %39, label %41

39:                                               ; preds = %37
  br i1 false, label %41, label %40

40:                                               ; preds = %39
  br i1 false, label %41, label %42

41:                                               ; preds = %40, %39, %37, %35
  call void @abort() #12
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %40
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %43, i8 0, i64 64, i1 false)
  br i1 false, label %48, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strcmpload12 = load i8, i8* %45, align 2
  %.not13 = icmp eq i8 %strcmpload12, 0
  br i1 %.not13, label %46, label %48

46:                                               ; preds = %44
  br i1 false, label %48, label %47

47:                                               ; preds = %46
  br i1 false, label %48, label %49

48:                                               ; preds = %47, %46, %44, %42
  call void @abort() #12
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %47
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %50, i8 0, i64 64, i1 false)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %51, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp14 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %53, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not15 = icmp eq i32 %bcmp14, 0
  br i1 %.not15, label %55, label %54

54:                                               ; preds = %52, %49
  call void @abort() #12
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %52
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %56, i8 0, i64 64, i1 false)
  %57 = bitcast [64 x i8]* %1 to i32*
  store i32 1819043176, i32* %57, align 16
  br i1 false, label %60, label %58

58:                                               ; preds = %55
  %59 = bitcast [64 x i8]* %1 to i32*
  %lhsv16 = load i32, i32* %59, align 16
  %.not18 = icmp eq i32 %lhsv16, 1819043176
  br i1 %.not18, label %61, label %60

60:                                               ; preds = %58, %55
  call void @abort() #12
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %58
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %62, i8 0, i64 64, i1 false)
  %63 = load i32, i32* @i, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @i, align 4
  %.not19 = icmp eq i32 %63, 0
  %65 = bitcast [64 x i8]* %1 to i32*
  %66 = select i1 %.not19, i32 7496034, i32 7303014
  store i32 %66, i32* %65, align 16
  br i1 false, label %71, label %67

67:                                               ; preds = %61
  %68 = bitcast [64 x i8]* %1 to i32*
  %lhsv20 = load i32, i32* %68, align 16
  %.not22 = icmp eq i32 %lhsv20, 7496034
  br i1 %.not22, label %69, label %71

69:                                               ; preds = %67
  %70 = load i32, i32* @i, align 4
  %.not23 = icmp eq i32 %70, 1
  br i1 %.not23, label %72, label %71

71:                                               ; preds = %69, %67, %61
  call void @abort() #12
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  %73 = load volatile i32, i32* @chk_calls, align 4
  %.not24 = icmp eq i32 %73, 0
  br i1 %.not24, label %75, label %74

74:                                               ; preds = %72
  call void @abort() #12
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  store volatile i32 0, i32* @strncpy_disallowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %74, %71, %60, %54, %48, %41, %34, %29, %22, %14, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__strncpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  %1 = load i8*, i8** @s4, align 8
  %2 = load volatile i64, i64* @l1, align 8
  %3 = add i64 %2, 1
  %4 = call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true, i1 false)
  %5 = call i8* @__strncpy_chk(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %3, i64 noundef %4) #8
  %6 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #12
  unreachable

8:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

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
  %15 = call i8* @__strncpy_chk(i8* noundef nonnull %11, i8* noundef nonnull %13, i64 noundef %14, i64 noundef 18) #8
  %16 = load volatile i8*, i8** @s3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load volatile i64, i64* @l1, align 8
  %19 = add i64 %18, 2
  %20 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %21 = call i8* @__strncpy_chk(i8* noundef nonnull %10, i8* noundef nonnull %17, i64 noundef %19, i64 noundef %20) #8
  %22 = load volatile i64, i64* @l1, align 8
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = alloca [4 x i8], align 16
  %.sub14 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  br label %28

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %.sub14, %24 ], [ %27, %26 ]
  %30 = load volatile i8*, i8** @s2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load volatile i64, i64* @l1, align 8
  %33 = add i64 %32, 2
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false, i1 true, i1 false)
  %35 = call i8* @__strncpy_chk(i8* noundef nonnull %29, i8* noundef nonnull %31, i64 noundef %33, i64 noundef %34) #8
  %36 = getelementptr inbounds i8, i8* %29, i64 2
  %37 = load volatile i8*, i8** @s3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load volatile i64, i64* @l1, align 8
  %40 = getelementptr inbounds i8, i8* %29, i64 2
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false, i1 true, i1 false)
  %42 = call i8* @__strncpy_chk(i8* noundef nonnull %36, i8* noundef nonnull %38, i64 noundef %39, i64 noundef %41) #8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %44

44:                                               ; preds = %77, %28
  %.01 = phi i32 [ 0, %28 ], [ %78, %77 ]
  %.0 = phi i8* [ %43, %28 ], [ %.4, %77 ]
  %45 = icmp ult i32 %.01, 4
  br i1 %45, label %46, label %79

46:                                               ; preds = %44
  %47 = zext i32 %.01 to i64
  %48 = load volatile i64, i64* @l1, align 8
  %49 = add i64 %48, -1
  %50 = icmp eq i64 %49, %47
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %76

53:                                               ; preds = %46
  %54 = zext i32 %.01 to i64
  %55 = load volatile i64, i64* @l1, align 8
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %75

59:                                               ; preds = %53
  %60 = zext i32 %.01 to i64
  %61 = load volatile i64, i64* @l1, align 8
  %62 = add i64 %61, 1
  %63 = icmp eq i64 %62, %60
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %74

66:                                               ; preds = %59
  %67 = zext i32 %.01 to i64
  %68 = load volatile i64, i64* @l1, align 8
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
  %80 = load volatile i8*, i8** @s2, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load volatile i64, i64* @l1, align 8
  %83 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %84 = call i8* @__strncpy_chk(i8* noundef %.0, i8* noundef nonnull %81, i64 noundef %82, i64 noundef %83) #8
  %85 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %85, 5
  br i1 %.not, label %87, label %86

86:                                               ; preds = %79
  call void @abort() #12
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %79
  store volatile i32 0, i32* @chk_calls, align 4
  %88 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %88, i8 0, i64 3, i1 false)
  %89 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %90 = call i8* @__strncpy_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 1, i64 noundef %89) #8
  %91 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %92 = call i8* @__strncpy_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef 3, i64 noundef %91) #8
  %93 = load volatile i64, i64* @l1, align 8
  %94 = icmp eq i64 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %96, i64 0, i64 0
  br label %99

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i8* [ %.sub, %95 ], [ %98, %97 ]
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* %100, i1 false, i1 true, i1 false)
  %102 = call i8* @__strncpy_chk(i8* noundef nonnull %100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 3, i64 noundef %101) #8
  %103 = call i64 @llvm.objectsize.i64.p0i8(i8* %100, i1 false, i1 true, i1 false)
  %104 = call i8* @__strncpy_chk(i8* noundef nonnull %100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %103) #8
  %105 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %106

106:                                              ; preds = %139, %99
  %.08 = phi i64 [ 4, %99 ], [ %.412, %139 ]
  %.03 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %99 ], [ %.47, %139 ]
  %.12 = phi i32 [ 0, %99 ], [ %140, %139 ]
  %.5 = phi i8* [ %105, %99 ], [ %.9, %139 ]
  %107 = icmp ult i32 %.12, 4
  br i1 %107, label %108, label %141

108:                                              ; preds = %106
  %109 = zext i32 %.12 to i64
  %110 = load volatile i64, i64* @l1, align 8
  %111 = add i64 %110, -1
  %112 = icmp eq i64 %111, %109
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %138

115:                                              ; preds = %108
  %116 = zext i32 %.12 to i64
  %117 = load volatile i64, i64* @l1, align 8
  %118 = icmp eq i64 %117, %116
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %137

121:                                              ; preds = %115
  %122 = zext i32 %.12 to i64
  %123 = load volatile i64, i64* @l1, align 8
  %124 = add i64 %123, 1
  %125 = icmp eq i64 %124, %122
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %136

128:                                              ; preds = %121
  %129 = zext i32 %.12 to i64
  %130 = load volatile i64, i64* @l1, align 8
  %131 = add i64 %130, 2
  %132 = icmp eq i64 %131, %129
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %135

135:                                              ; preds = %133, %128
  %.19 = phi i64 [ 1, %133 ], [ %.08, %128 ]
  %.14 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %133 ], [ %.03, %128 ]
  %.6 = phi i8* [ %134, %133 ], [ %.5, %128 ]
  br label %136

136:                                              ; preds = %135, %126
  %.210 = phi i64 [ 4, %126 ], [ %.19, %135 ]
  %.25 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %126 ], [ %.14, %135 ]
  %.7 = phi i8* [ %127, %126 ], [ %.6, %135 ]
  br label %137

137:                                              ; preds = %136, %119
  %.311 = phi i64 [ 3, %119 ], [ %.210, %136 ]
  %.36 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %119 ], [ %.25, %136 ]
  %.8 = phi i8* [ %120, %119 ], [ %.7, %136 ]
  br label %138

138:                                              ; preds = %137, %113
  %.412 = phi i64 [ 2, %113 ], [ %.311, %137 ]
  %.47 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %113 ], [ %.36, %137 ]
  %.9 = phi i8* [ %114, %113 ], [ %.8, %137 ]
  br label %139

139:                                              ; preds = %138
  %140 = add nuw nsw i32 %.12, 1
  br label %106, !llvm.loop !6

141:                                              ; preds = %106
  %142 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %143 = call i8* @__strncpy_chk(i8* noundef %.5, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1, i64 noundef %142) #8
  %144 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 16
  %145 = call i8* @__strncpy_chk(i8* noundef nonnull %144, i8* noundef %.03, i64 noundef %.08, i64 noundef 4) #8
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 15
  %147 = call i8* @__strncpy_chk(i8* noundef nonnull %146, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef %.08, i64 noundef 5) #8
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 10
  %149 = call i8* @__strncpy_chk(i8* noundef nonnull %148, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 noundef %.08, i64 noundef 10) #8
  %150 = load volatile i32, i32* @chk_calls, align 4
  %.not13 = icmp eq i32 %150, 0
  br i1 %.not13, label %152, label %151

151:                                              ; preds = %141
  call void @abort() #12
  br label %UnifiedUnreachableBlock

152:                                              ; preds = %141
  store volatile i32 0, i32* @chk_calls, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %151, %86
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
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %9 = load volatile i8*, i8** @s2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 4
  %11 = load volatile i64, i64* @l1, align 8
  %12 = add i64 %11, 1
  %13 = call i8* @__strncpy_chk(i8* noundef nonnull %8, i8* noundef nonnull %10, i64 noundef %12, i64 noundef 1) #8
  call void @abort() #12
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %0
  %15 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %15, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %17 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %21 = load volatile i8*, i8** @s3, align 8
  %22 = load volatile i64, i64* @l1, align 8
  %23 = add i64 %22, 4
  %24 = call i8* @__strncpy_chk(i8* noundef nonnull %20, i8* noundef %21, i64 noundef %23, i64 noundef 3) #8
  call void @abort() #12
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %14
  %26 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %26, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %28 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %32 = call i8* @__strncpy_chk(i8* noundef nonnull %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2, i64 noundef 1) #8
  call void @abort() #12
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %25
  %34 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %34, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %36 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 18
  %40 = call i8* @__strncpy_chk(i8* noundef nonnull %39, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 3, i64 noundef 2) #8
  call void @abort() #12
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %33
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %38, %30, %19, %7
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
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
