; ModuleID = './stpcpy-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/stpcpy-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [96 x i8] }
%struct.A = type { [10 x i8], [10 x i8] }
%struct.A.0 = type { [10 x i8], [10 x i8] }

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@stpcpy_disallowed = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"z\0023\00\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"EFG\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"aabcd\00", align 1
@chk_calls = external dso_local global i32, align 4
@strcpy_disallowed = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"defg\00\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"deFGH\00", align 1
@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16
@vx = dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"jkl\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1, %0
  call void @abort() #11
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 1), i64 5, i1 false)
  br i1 false, label %5, label %4

4:                                                ; preds = %3
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %6, label %5

5:                                                ; preds = %4, %3
  call void @abort() #11
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), align 1
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 6)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %9, label %8

8:                                                ; preds = %7, %6
  call void @abort() #11
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %11, label %10

10:                                               ; preds = %9
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 9)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %12, label %11

11:                                               ; preds = %10, %9
  call void @abort() #11
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 21), i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false)
  br i1 false, label %15, label %13

13:                                               ; preds = %12
  br i1 false, label %15, label %14

14:                                               ; preds = %13
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 19), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %16, label %15

15:                                               ; preds = %14, %13, %12
  call void @abort() #11
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 5, i1 false)
  store i32 4671045, i32* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4) to i32*), align 4
  br i1 false, label %18, label %17

17:                                               ; preds = %16
  %lhsv = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not9 = icmp eq i64 %lhsv, 20061986658402881
  br i1 %.not9, label %19, label %18

18:                                               ; preds = %17, %16
  call void @abort() #11
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %21, label %20

20:                                               ; preds = %19
  %bcmp10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not11 = icmp eq i32 %bcmp10, 0
  br i1 %.not11, label %22, label %21

21:                                               ; preds = %20, %19
  call void @abort() #11
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 5, i1 false)
  store volatile i32 0, i32* @stpcpy_disallowed, align 4
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %.not13 = icmp eq i32 %bcmp12, 0
  br i1 %.not13, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #11
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  %25 = load volatile i32, i32* @chk_calls, align 4
  %.not14 = icmp eq i32 %25, 0
  br i1 %.not14, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #11
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcpy_disallowed, align 4
  %28 = load i8*, i8** @s2, align 8
  %29 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef %28, i64 noundef 32) #7
  %.not15 = icmp eq i8* %29, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4)
  br i1 %.not15, label %30, label %31

30:                                               ; preds = %27
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %32, label %31

31:                                               ; preds = %30, %27
  call void @abort() #11
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %30
  store volatile i32 0, i32* @strcpy_disallowed, align 4
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  %33 = load i8*, i8** @s3, align 8
  %34 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 2), i8* noundef %33, i64 noundef 30) #7
  store volatile i32 0, i32* @stpcpy_disallowed, align 4
  %bcmp18 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 6)
  %.not19 = icmp eq i32 %bcmp18, 0
  br i1 %.not19, label %36, label %35

35:                                               ; preds = %32
  call void @abort() #11
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = load volatile i32, i32* @chk_calls, align 4
  %.not20 = icmp eq i32 %37, 2
  br i1 %.not20, label %39, label %38

38:                                               ; preds = %36
  call void @abort() #11
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %36
  ret void

UnifiedUnreachableBlock:                          ; preds = %38, %35, %31, %26, %23, %21, %18, %15, %11, %8, %5, %2
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @__stpcpy_chk(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  br label %1

1:                                                ; preds = %85, %0
  %.0 = phi i32 [ 0, %0 ], [ %86, %85 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %87

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %82, %3
  %.01 = phi i32 [ 0, %3 ], [ %83, %82 ]
  %5 = icmp ult i32 %.01, 8
  br i1 %5, label %6, label %84

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %79, %6
  %.02 = phi i32 [ 1, %6 ], [ %80, %79 ]
  %8 = icmp ult i32 %.02, 80
  br i1 %8, label %9, label %81

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %20, %9
  %.04 = phi i8 [ 65, %9 ], [ %22, %20 ]
  %.03 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %11 = icmp ult i32 %.03, 97
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 %13
  store i8 97, i8* %14, align 1
  %15 = icmp sgt i8 %.04, 95
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %.15 = phi i8 [ 65, %16 ], [ %.04, %12 ]
  %18 = zext i32 %.03 to i64
  %19 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %18
  store i8 %.15, i8* %19, align 1
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.03, 1
  %22 = add i8 %.15, 1
  br label %10, !llvm.loop !4

23:                                               ; preds = %10
  %24 = add nuw nsw i32 %.01, %.02
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %27
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u2 to i8*), i64 %29
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %31
  %33 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false, i1 true, i1 false)
  %34 = call i8* @__stpcpy_chk(i8* noundef %28, i8* noundef %30, i64 noundef %33) #7
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u1 to i8*), i64 %35
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %.not = icmp eq i8* %34, %38
  br i1 %.not, label %40, label %39

39:                                               ; preds = %23
  call void @abort() #11
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %47, %40
  %.08 = phi i8* [ bitcast (%union.anon* @u1 to i8*), %40 ], [ %49, %47 ]
  %.1 = phi i32 [ 0, %40 ], [ %48, %47 ]
  %42 = icmp ult i32 %.1, %.0
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = load i8, i8* %.08, align 1
  %.not16 = icmp eq i8 %44, 97
  br i1 %.not16, label %46, label %45

45:                                               ; preds = %43
  call void @abort() #11
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.1, 1
  %49 = getelementptr inbounds i8, i8* %.08, i64 1
  br label %41, !llvm.loop !6

50:                                               ; preds = %41
  %51 = trunc i32 %.01 to i8
  %52 = add i8 %51, 65
  br label %53

53:                                               ; preds = %62, %50
  %.19 = phi i8* [ %.08, %50 ], [ %64, %62 ]
  %.26 = phi i8 [ %52, %50 ], [ %65, %62 ]
  %.2 = phi i32 [ 0, %50 ], [ %63, %62 ]
  %54 = icmp ult i32 %.2, %.02
  br i1 %54, label %55, label %66

55:                                               ; preds = %53
  %56 = icmp sgt i8 %.26, 95
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %55
  %.37 = phi i8 [ 65, %57 ], [ %.26, %55 ]
  %59 = load i8, i8* %.19, align 1
  %.not15 = icmp eq i8 %59, %.37
  br i1 %.not15, label %61, label %60

60:                                               ; preds = %58
  call void @abort() #11
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.2, 1
  %64 = getelementptr inbounds i8, i8* %.19, i64 1
  %65 = add i8 %.37, 1
  br label %53, !llvm.loop !7

66:                                               ; preds = %53
  %67 = load i8, i8* %.19, align 1
  %.not13 = icmp eq i8 %67, 0
  br i1 %.not13, label %69, label %68

68:                                               ; preds = %66
  call void @abort() #11
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %76, %69
  %.19.pn = phi i8* [ %.19, %69 ], [ %.210, %76 ]
  %.3 = phi i32 [ 0, %69 ], [ %77, %76 ]
  %.210 = getelementptr inbounds i8, i8* %.19.pn, i64 1
  %71 = icmp ult i32 %.3, 8
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = load i8, i8* %.210, align 1
  %.not14 = icmp eq i8 %73, 97
  br i1 %.not14, label %75, label %74

74:                                               ; preds = %72
  call void @abort() #11
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75
  %77 = add nuw nsw i32 %.3, 1
  br label %70, !llvm.loop !8

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !9

81:                                               ; preds = %7
  br label %82

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !10

84:                                               ; preds = %4
  br label %85

85:                                               ; preds = %84
  %86 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

87:                                               ; preds = %1
  ret void

UnifiedUnreachableBlock:                          ; preds = %74, %68, %60, %45, %39
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
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
  %14 = call i8* @__stpcpy_chk(i8* noundef nonnull %11, i8* noundef nonnull %13, i64 noundef 18) #7
  store i8* %14, i8** @vx, align 8
  %15 = load i8*, i8** @s3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %18 = call i8* @__stpcpy_chk(i8* noundef nonnull %10, i8* noundef nonnull %16, i64 noundef %17) #7
  store i8* %18, i8** @vx, align 8
  %19 = load i64, i64* @l1, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = alloca [4 x i8], align 16
  %.sub9 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  br label %25

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %.sub9, %21 ], [ %24, %23 ]
  %27 = load i8*, i8** @s2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = call i64 @llvm.objectsize.i64.p0i8(i8* %26, i1 false, i1 true, i1 false)
  %30 = call i8* @__stpcpy_chk(i8* noundef nonnull %26, i8* noundef nonnull %28, i64 noundef %29) #7
  store i8* %30, i8** @vx, align 8
  %31 = getelementptr inbounds i8, i8* %26, i64 2
  %32 = load i8*, i8** @s3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = getelementptr inbounds i8, i8* %26, i64 2
  %35 = call i64 @llvm.objectsize.i64.p0i8(i8* %34, i1 false, i1 true, i1 false)
  %36 = call i8* @__stpcpy_chk(i8* noundef nonnull %31, i8* noundef nonnull %33, i64 noundef %35) #7
  store i8* %36, i8** @vx, align 8
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %38

38:                                               ; preds = %71, %25
  %.01 = phi i32 [ 0, %25 ], [ %72, %71 ]
  %.0 = phi i8* [ %37, %25 ], [ %.4, %71 ]
  %39 = icmp ult i32 %.01, 4
  br i1 %39, label %40, label %73

40:                                               ; preds = %38
  %41 = zext i32 %.01 to i64
  %42 = load i64, i64* @l1, align 8
  %43 = add i64 %42, -1
  %44 = icmp eq i64 %43, %41
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %70

47:                                               ; preds = %40
  %48 = zext i32 %.01 to i64
  %49 = load i64, i64* @l1, align 8
  %50 = icmp eq i64 %49, %48
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %69

53:                                               ; preds = %47
  %54 = zext i32 %.01 to i64
  %55 = load i64, i64* @l1, align 8
  %56 = add i64 %55, 1
  %57 = icmp eq i64 %56, %54
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %68

60:                                               ; preds = %53
  %61 = zext i32 %.01 to i64
  %62 = load i64, i64* @l1, align 8
  %63 = add i64 %62, 2
  %64 = icmp eq i64 %63, %61
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %67

67:                                               ; preds = %65, %60
  %.1 = phi i8* [ %66, %65 ], [ %.0, %60 ]
  br label %68

68:                                               ; preds = %67, %58
  %.2 = phi i8* [ %59, %58 ], [ %.1, %67 ]
  br label %69

69:                                               ; preds = %68, %51
  %.3 = phi i8* [ %52, %51 ], [ %.2, %68 ]
  br label %70

70:                                               ; preds = %69, %45
  %.4 = phi i8* [ %46, %45 ], [ %.3, %69 ]
  br label %71

71:                                               ; preds = %70
  %72 = add nuw nsw i32 %.01, 1
  br label %38, !llvm.loop !12

73:                                               ; preds = %38
  %74 = load i8*, i8** @s2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %77 = call i8* @__stpcpy_chk(i8* noundef %.0, i8* noundef nonnull %75, i64 noundef %76) #7
  store i8* %77, i8** @vx, align 8
  %78 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %78, 5
  br i1 %.not, label %80, label %79

79:                                               ; preds = %73
  call void @abort() #11
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %73
  store volatile i32 0, i32* @chk_calls, align 4
  %81 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  store i8 0, i8* %81, align 1
  store i8* %81, i8** @vx, align 8
  %82 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %83 = call i8* @__memcpy_chk(i8* %.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 2, i64 %82)
  %84 = getelementptr i8, i8* %.0, i64 1
  store i8* %84, i8** @vx, align 8
  %85 = load i64, i64* @l1, align 8
  %86 = icmp eq i64 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %88, i64 0, i64 0
  br label %91

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i8* [ %.sub, %87 ], [ %90, %89 ]
  %93 = call i64 @llvm.objectsize.i64.p0i8(i8* %92, i1 false, i1 true, i1 false)
  %94 = call i8* @__memcpy_chk(i8* nonnull %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 3, i64 %93)
  %95 = getelementptr i8, i8* %92, i64 2
  store i8* %95, i8** @vx, align 8
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %97

97:                                               ; preds = %130, %91
  %.03 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), %91 ], [ %.47, %130 ]
  %.12 = phi i32 [ 0, %91 ], [ %131, %130 ]
  %.5 = phi i8* [ %96, %91 ], [ %.9, %130 ]
  %98 = icmp ult i32 %.12, 4
  br i1 %98, label %99, label %132

99:                                               ; preds = %97
  %100 = zext i32 %.12 to i64
  %101 = load i64, i64* @l1, align 8
  %102 = add i64 %101, -1
  %103 = icmp eq i64 %102, %100
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %129

106:                                              ; preds = %99
  %107 = zext i32 %.12 to i64
  %108 = load i64, i64* @l1, align 8
  %109 = icmp eq i64 %108, %107
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %128

112:                                              ; preds = %106
  %113 = zext i32 %.12 to i64
  %114 = load i64, i64* @l1, align 8
  %115 = add i64 %114, 1
  %116 = icmp eq i64 %115, %113
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %127

119:                                              ; preds = %112
  %120 = zext i32 %.12 to i64
  %121 = load i64, i64* @l1, align 8
  %122 = add i64 %121, 2
  %123 = icmp eq i64 %122, %120
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %126

126:                                              ; preds = %124, %119
  %.14 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %124 ], [ %.03, %119 ]
  %.6 = phi i8* [ %125, %124 ], [ %.5, %119 ]
  br label %127

127:                                              ; preds = %126, %117
  %.25 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), %117 ], [ %.14, %126 ]
  %.7 = phi i8* [ %118, %117 ], [ %.6, %126 ]
  br label %128

128:                                              ; preds = %127, %110
  %.36 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %110 ], [ %.25, %127 ]
  %.8 = phi i8* [ %111, %110 ], [ %.7, %127 ]
  br label %129

129:                                              ; preds = %128, %104
  %.47 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %104 ], [ %.36, %128 ]
  %.9 = phi i8* [ %105, %104 ], [ %.8, %128 ]
  br label %130

130:                                              ; preds = %129
  %131 = add nuw nsw i32 %.12, 1
  br label %97, !llvm.loop !13

132:                                              ; preds = %97
  %133 = call i64 @llvm.objectsize.i64.p0i8(i8* %.5, i1 false, i1 true, i1 false)
  %134 = call i8* @__memcpy_chk(i8* %.5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 1, i64 %133)
  store i8* %.5, i8** @vx, align 8
  %135 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 16
  %136 = call i8* @__stpcpy_chk(i8* noundef nonnull %135, i8* noundef %.03, i64 noundef 4) #7
  store i8* %136, i8** @vx, align 8
  %137 = load i8*, i8** @s4, align 8
  %138 = load i8*, i8** @s3, align 8
  %139 = call i64 @llvm.objectsize.i64.p0i8(i8* %137, i1 false, i1 true, i1 false)
  %140 = call i8* @__stpcpy_chk(i8* noundef %137, i8* noundef %138, i64 noundef %139) #7
  store i8* %140, i8** @vx, align 8
  %141 = load i8*, i8** @s4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = load i8*, i8** @s3, align 8
  %144 = getelementptr inbounds i8, i8* %141, i64 4
  %145 = call i64 @llvm.objectsize.i64.p0i8(i8* %144, i1 false, i1 true, i1 false)
  %146 = call i8* @__stpcpy_chk(i8* noundef nonnull %142, i8* noundef %143, i64 noundef %145) #7
  %147 = load volatile i32, i32* @chk_calls, align 4
  %.not8 = icmp eq i32 %147, 0
  br i1 %.not8, label %149, label %148

148:                                              ; preds = %132
  call void @abort() #11
  br label %UnifiedUnreachableBlock

149:                                              ; preds = %132
  store volatile i32 0, i32* @chk_calls, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %148, %79
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
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %9 = load i8*, i8** @s2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 3
  %11 = call i8* @__stpcpy_chk(i8* noundef nonnull %8, i8* noundef nonnull %10, i64 noundef 1) #7
  store i8* %11, i8** @vx, align 8
  call void @abort() #11
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  %13 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %13, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %15 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %19 = load i8*, i8** @s3, align 8
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %19) #7
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -3
  %23 = call i8* @__stpcpy_chk(i8* noundef nonnull %18, i8* noundef nonnull %22, i64 noundef 3) #7
  store i8* %23, i8** @vx, align 8
  call void @abort() #11
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %12
  %25 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %25, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %27 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %31 = call i8* @__memcpy_chk(i8* nonnull %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 2, i64 1)
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 20
  store i8* %32, i8** @vx, align 8
  call void @abort() #11
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %24
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %17, %7
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #9

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { noreturn nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
