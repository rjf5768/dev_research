; ModuleID = './strncat-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat-chk.c"
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
@x = dso_local global i32 123, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@chk_calls = external dso_local global i32, align 4
@strncat_disallowed = external dso_local global i32, align 4
@strcat_disallowed = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hello worldfoo\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hello worldhello world\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"hello world world\00", align 1
@s5 = dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca [64 x i8], align 16
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strncat_disallowed, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %2, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %4 = call i8* @__strncat_chk(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not = icmp eq i8* %4, %5
  br i1 %.not, label %6, label %8

6:                                                ; preds = %0
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %7, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %6, %0
  call void @abort() #13
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %10, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %12 = call i8* @__strncat_chk(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not2 = icmp eq i8* %12, %13
  br i1 %.not2, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %15, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %14, %9
  call void @abort() #13
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %18, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %22, label %19

19:                                               ; preds = %17
  br i1 false, label %22, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %21, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20, %19, %17
  call void @abort() #13
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %24, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %28, label %25

25:                                               ; preds = %23
  br i1 false, label %28, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %27, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %29, label %28

28:                                               ; preds = %26, %25, %23
  call void @abort() #13
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %30, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %34, label %31

31:                                               ; preds = %29
  br i1 false, label %34, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %33, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %35, label %34

34:                                               ; preds = %32, %31, %29
  call void @abort() #13
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %36, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %40, label %37

37:                                               ; preds = %35
  br i1 false, label %40, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %39, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not12 = icmp eq i32 %bcmp11, 0
  br i1 %.not12, label %41, label %40

40:                                               ; preds = %38, %37, %35
  call void @abort() #13
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %42, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %47, label %43

43:                                               ; preds = %41
  br i1 false, label %47, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %45, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %46, label %47

46:                                               ; preds = %44
  br i1 false, label %47, label %48

47:                                               ; preds = %46, %44, %43, %41
  call void @abort() #13
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %46
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %49, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %51 = load i32, i32* @x, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @x, align 4
  %53 = sext i32 %52 to i64
  %strncat = call i8* @strncat(i8* noundef nonnull dereferenceable(1) %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br i1 false, label %59, label %54

54:                                               ; preds = %48
  br i1 false, label %59, label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @x, align 4
  %.not15 = icmp eq i32 %56, 124
  br i1 %.not15, label %57, label %59

57:                                               ; preds = %55
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %58, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %60, label %59

59:                                               ; preds = %57, %55, %54, %48
  call void @abort() #13
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = load volatile i32, i32* @chk_calls, align 4
  %.not18 = icmp eq i32 %61, 0
  br i1 %.not18, label %63, label %62

62:                                               ; preds = %60
  call void @abort() #13
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  store volatile i32 0, i32* @strcat_disallowed, align 4
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %64, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %66 = call i8* @__strncat_chk(i8* noundef nonnull %65, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3, i64 noundef 64) #8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not19 = icmp eq i8* %66, %67
  br i1 %.not19, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp20 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %69, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 15)
  %.not21 = icmp eq i32 %bcmp20, 0
  br i1 %.not21, label %71, label %70

70:                                               ; preds = %68, %63
  call void @abort() #13
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %72, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %74 = call i8* @__strncat_chk(i8* noundef nonnull %73, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not22 = icmp eq i8* %74, %75
  br i1 %.not22, label %76, label %78

76:                                               ; preds = %71
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %77, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 15)
  %.not24 = icmp eq i32 %bcmp23, 0
  br i1 %.not24, label %79, label %78

78:                                               ; preds = %76, %71
  call void @abort() #13
  br label %UnifiedUnreachableBlock

79:                                               ; preds = %76
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %80, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %82 = call i8* @__strncat_chk(i8* noundef nonnull %81, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not25 = icmp eq i8* %82, %83
  br i1 %.not25, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp26 = call i32 @bcmp(i8* noundef nonnull dereferenceable(23) %85, i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 23)
  %.not27 = icmp eq i32 %bcmp26, 0
  br i1 %.not27, label %87, label %86

86:                                               ; preds = %84, %79
  call void @abort() #13
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  %88 = load volatile i32, i32* @chk_calls, align 4
  %.not28 = icmp eq i32 %88, 3
  br i1 %.not28, label %90, label %89

89:                                               ; preds = %87
  call void @abort() #13
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  store volatile i32 0, i32* @chk_calls, align 4
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %91, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %strlen = call i64 @strlen(i8* nonnull %92)
  %endptr = getelementptr i8, i8* %92, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %96, label %93

93:                                               ; preds = %90
  br i1 false, label %96, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp30 = call i32 @bcmp(i8* noundef nonnull dereferenceable(23) %95, i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 23)
  %.not31 = icmp eq i32 %bcmp30, 0
  br i1 %.not31, label %97, label %96

96:                                               ; preds = %94, %93, %90
  call void @abort() #13
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %94
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %98, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen33 = call i64 @strlen(i8* nonnull %99)
  %endptr34 = getelementptr i8, i8* %99, i64 %strlen33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr34, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %103, label %100

100:                                              ; preds = %97
  br i1 false, label %103, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp35 = call i32 @bcmp(i8* noundef nonnull dereferenceable(23) %102, i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 23)
  %.not36 = icmp eq i32 %bcmp35, 0
  br i1 %.not36, label %104, label %103

103:                                              ; preds = %101, %100, %97
  call void @abort() #13
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %101
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %105, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen38 = call i64 @strlen(i8* nonnull %106)
  %endptr39 = getelementptr i8, i8* %106, i64 %strlen38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %endptr39, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 5), i64 7, i1 false)
  br i1 false, label %110, label %107

107:                                              ; preds = %104
  br i1 false, label %110, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp40 = call i32 @bcmp(i8* noundef nonnull dereferenceable(18) %109, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 18)
  %.not41 = icmp eq i32 %bcmp40, 0
  br i1 %.not41, label %111, label %110

110:                                              ; preds = %108, %107, %104
  call void @abort() #13
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %108
  %112 = load volatile i32, i32* @chk_calls, align 4
  %.not42 = icmp eq i32 %112, 0
  br i1 %.not42, label %114, label %113

113:                                              ; preds = %111
  call void @abort() #13
  br label %UnifiedUnreachableBlock

114:                                              ; preds = %111
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %115, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %117 = call i8* @__strncat_chk(i8* noundef nonnull %116, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 100, i64 noundef 64) #8
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not43 = icmp eq i8* %117, %118
  br i1 %.not43, label %119, label %121

119:                                              ; preds = %114
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp44 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %120, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not45 = icmp eq i32 %bcmp44, 0
  br i1 %.not45, label %122, label %121

121:                                              ; preds = %119, %114
  call void @abort() #13
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %119
  %123 = load volatile i32, i32* @chk_calls, align 4
  %.not46 = icmp eq i32 %123, 0
  br i1 %.not46, label %125, label %124

124:                                              ; preds = %122
  call void @abort() #13
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %122
  store volatile i32 0, i32* @strncat_disallowed, align 4
  store volatile i32 0, i32* @strcat_disallowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %124, %121, %113, %110, %103, %96, %89, %86, %78, %70, %62, %59, %47, %40, %34, %28, %22, %16, %8
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @__strncat_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

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
  %11 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  store i8* %12, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %12) #8, !srcloc !4
  store volatile i32 0, i32* @chk_calls, align 4
  %13 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %14 = load i8*, i8** @s3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  %16 = load i64, i64* @l1, align 8
  %17 = add i64 %16, -1
  %18 = call i8* @__strncat_chk(i8* noundef nonnull %13, i8* noundef nonnull %15, i64 noundef %17, i64 noundef 18) #8
  %19 = load i8*, i8** @s3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i64, i64* @l1, align 8
  %22 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %23 = call i8* @__strncat_chk(i8* noundef nonnull %10, i8* noundef nonnull %20, i64 noundef %21, i64 noundef %22) #8
  %24 = load i64, i64* @l1, align 8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = alloca [4 x i8], align 16
  %.sub4 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 0
  br label %30

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i8* [ %.sub4, %26 ], [ %29, %28 ]
  %32 = call i64 @llvm.objectsize.i64.p0i8(i8* %31, i1 false, i1 true, i1 false)
  %33 = call i8* @__memset_chk(i8* noundef nonnull %31, i32 noundef 0, i64 noundef 3, i64 noundef %32) #8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %31) #8, !srcloc !5
  %34 = load i8*, i8** @s2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i64, i64* @l1, align 8
  %37 = add i64 %36, 1
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %31, i1 false, i1 true, i1 false)
  %39 = call i8* @__strncat_chk(i8* noundef nonnull %31, i8* noundef nonnull %35, i64 noundef %37, i64 noundef %38) #8
  %40 = getelementptr inbounds i8, i8* %31, i64 2
  %41 = load i8*, i8** @s3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i64, i64* @l1, align 8
  %44 = add i64 %43, -1
  %45 = getelementptr inbounds i8, i8* %31, i64 2
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %45, i1 false, i1 true, i1 false)
  %47 = call i8* @__strncat_chk(i8* noundef nonnull %40, i8* noundef nonnull %42, i64 noundef %44, i64 noundef %46) #8
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %49

49:                                               ; preds = %82, %30
  %.01 = phi i32 [ 0, %30 ], [ %83, %82 ]
  %.0 = phi i8* [ %48, %30 ], [ %.4, %82 ]
  %50 = icmp ult i32 %.01, 4
  br i1 %50, label %51, label %84

51:                                               ; preds = %49
  %52 = zext i32 %.01 to i64
  %53 = load i64, i64* @l1, align 8
  %54 = add i64 %53, -1
  %55 = icmp eq i64 %54, %52
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %81

58:                                               ; preds = %51
  %59 = zext i32 %.01 to i64
  %60 = load i64, i64* @l1, align 8
  %61 = icmp eq i64 %60, %59
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %80

64:                                               ; preds = %58
  %65 = zext i32 %.01 to i64
  %66 = load i64, i64* @l1, align 8
  %67 = add i64 %66, 1
  %68 = icmp eq i64 %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %79

71:                                               ; preds = %64
  %72 = zext i32 %.01 to i64
  %73 = load i64, i64* @l1, align 8
  %74 = add i64 %73, 2
  %75 = icmp eq i64 %74, %72
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %78

78:                                               ; preds = %76, %71
  %.1 = phi i8* [ %77, %76 ], [ %.0, %71 ]
  br label %79

79:                                               ; preds = %78, %69
  %.2 = phi i8* [ %70, %69 ], [ %.1, %78 ]
  br label %80

80:                                               ; preds = %79, %62
  %.3 = phi i8* [ %63, %62 ], [ %.2, %79 ]
  br label %81

81:                                               ; preds = %80, %56
  %.4 = phi i8* [ %57, %56 ], [ %.3, %80 ]
  br label %82

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %.01, 1
  br label %49, !llvm.loop !6

84:                                               ; preds = %49
  %85 = load i8*, i8** @s2, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  %87 = load i64, i64* @l1, align 8
  %88 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %89 = call i8* @__strncat_chk(i8* noundef %.0, i8* noundef nonnull %86, i64 noundef %87, i64 noundef %88) #8
  %90 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %90, 5
  br i1 %.not, label %92, label %91

91:                                               ; preds = %84
  call void @abort() #13
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %93, i8 0, i64 20, i1 false)
  store volatile i32 0, i32* @chk_calls, align 4
  %94 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  store i8* %94, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %94) #8, !srcloc !8
  %95 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %96 = call i8* @__strncat_chk(i8* noundef nonnull %95, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 5, i64 noundef 18) #8
  %97 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %98 = call i8* @__strncat_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 noundef 0, i64 noundef %97) #8
  %99 = load i64, i64* @l1, align 8
  %100 = icmp eq i64 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %102, i64 0, i64 0
  br label %105

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i8* [ %.sub, %101 ], [ %104, %103 ]
  %107 = call i64 @llvm.objectsize.i64.p0i8(i8* %106, i1 false, i1 true, i1 false)
  %108 = call i8* @__memset_chk(i8* noundef nonnull %106, i32 noundef 0, i64 noundef 3, i64 noundef %107) #8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %106) #8, !srcloc !9
  %109 = call i64 @llvm.objectsize.i64.p0i8(i8* %106, i1 false, i1 true, i1 false)
  %110 = call i8* @__strncat_chk(i8* noundef nonnull %106, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef 2, i64 noundef %109) #8
  %111 = load volatile i32, i32* @chk_calls, align 4
  %.not2 = icmp eq i32 %111, 2
  br i1 %.not2, label %113, label %112

112:                                              ; preds = %105
  call void @abort() #13
  br label %UnifiedUnreachableBlock

113:                                              ; preds = %105
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  %114 = load i8*, i8** @s4, align 8
  %115 = load i8*, i8** @s3, align 8
  %116 = load i64, i64* @l1, align 8
  %117 = add i64 %116, 1
  %118 = call i64 @llvm.objectsize.i64.p0i8(i8* %114, i1 false, i1 true, i1 false)
  %119 = call i8* @__strncat_chk(i8* noundef %114, i8* noundef %115, i64 noundef %117, i64 noundef %118) #8
  store volatile i32 0, i32* @strcat_disallowed, align 4
  %120 = load volatile i32, i32* @chk_calls, align 4
  %.not3 = icmp eq i32 %120, 0
  br i1 %.not3, label %122, label %121

121:                                              ; preds = %113
  call void @abort() #13
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %113
  ret void

UnifiedUnreachableBlock:                          ; preds = %121, %112, %91
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 0, i64 0
  store i8* %5, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %5) #8, !srcloc !10
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %6) #8, !srcloc !11
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %7 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %7, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %9 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %13 = load i8*, i8** @s2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = call i8* @__strncat_chk(i8* noundef nonnull %12, i8* noundef nonnull %14, i64 noundef 4, i64 noundef 1) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %0
  %17 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %17, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %19 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %23 = load i8*, i8** @s3, align 8
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23)
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -3
  %27 = call i8* @__strncat_chk(i8* noundef nonnull %22, i8* noundef nonnull %26, i64 noundef 3, i64 noundef 3) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %16
  %29 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %29, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %31 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %35 = call i8* @__strncat_chk(i8* noundef nonnull %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 1, i64 noundef 1) #8
  call void @abort() #13
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %28
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %33, %21, %11
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #10 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strncat(i8* noalias returned, i8* noalias nocapture readonly, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { argmemonly nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 3886}
!5 = !{i64 4093}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 4717}
!9 = !{i64 4897}
!10 = !{i64 5479}
!11 = !{i64 5541}
