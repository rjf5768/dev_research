; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/stpcpy-chk.c'
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
  %1 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  %2 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32) #7
  %3 = icmp ne i8* %2, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5)
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @abort() #8
  unreachable

8:                                                ; preds = %4
  %9 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 1), i64 noundef 16) #7
  %10 = icmp ne i8* %9, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 20)
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8
  call void @abort() #8
  unreachable

15:                                               ; preds = %11
  %16 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef 31) #7
  %17 = icmp ne i8* %16, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1)
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  call void @abort() #8
  unreachable

22:                                               ; preds = %18
  %23 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 29) #7
  %24 = icmp ne i8* %23, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 8)
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  call void @abort() #8
  unreachable

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  %32 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 21), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 noundef 11) #7
  %33 = icmp ne i8* %32, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 23)
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 9
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 19), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 noundef 5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %29
  call void @abort() #8
  unreachable

41:                                               ; preds = %37
  %42 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 noundef 32) #7
  %43 = call i8* @__stpcpy_chk(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 noundef -1) #7
  %44 = icmp ne i8* %43, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 7)
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 noundef 8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41
  call void @abort() #8
  unreachable

49:                                               ; preds = %45
  %50 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32) #7
  %51 = icmp ne i8* %50, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5)
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  call void @abort() #8
  unreachable

56:                                               ; preds = %52
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  %57 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 noundef 31) #7
  store volatile i32 0, i32* @stpcpy_disallowed, align 4
  %58 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 noundef 6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @abort() #8
  unreachable

61:                                               ; preds = %56
  %62 = load volatile i32, i32* @chk_calls, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #8
  unreachable

65:                                               ; preds = %61
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcpy_disallowed, align 4
  %66 = load i8*, i8** @s2, align 8
  %67 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef %66, i64 noundef 32) #7
  %68 = icmp ne i8* %67, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4)
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 noundef 6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %65
  call void @abort() #8
  unreachable

73:                                               ; preds = %69
  store volatile i32 0, i32* @strcpy_disallowed, align 4
  store volatile i32 1, i32* @stpcpy_disallowed, align 4
  %74 = load i8*, i8** @s3, align 8
  %75 = call i8* @__stpcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 2), i8* noundef %74, i64 noundef 30) #7
  store volatile i32 0, i32* @stpcpy_disallowed, align 4
  %76 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 noundef 6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  call void @abort() #8
  unreachable

79:                                               ; preds = %73
  %80 = load volatile i32, i32* @chk_calls, align 4
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @abort() #8
  unreachable

83:                                               ; preds = %79
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @__stpcpy_chk(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %150, %0
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %153

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %146, %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %149

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %142, %17
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 80
  br i1 %21, label %22, label %145

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  store i8 65, i8* %7, align 1
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 97
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 %29
  store i8 97, i8* %30, align 1
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 96
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8 65, i8* %7, align 1
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i8, i8* %7, align 1
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i8, i8* %7, align 1
  %44 = add i8 %43, 1
  store i8 %44, i8* %7, align 1
  br label %23, !llvm.loop !4

45:                                               ; preds = %23
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %52
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 0), i64 %55
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %58
  %60 = call i64 @llvm.objectsize.i64.p0i8(i8* %59, i1 false, i1 true, i1 false)
  %61 = call i8* @__stpcpy_chk(i8* noundef %53, i8* noundef %56, i64 noundef %60) #7
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %64
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = icmp ne i8* %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %45
  call void @abort() #8
  unreachable

71:                                               ; preds = %45
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %1, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 97
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  call void @abort() #8
  unreachable

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  br label %72, !llvm.loop !6

88:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 65, %89
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %7, align 1
  br label %92

92:                                               ; preds = %110, %88
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sge i32 %98, 96
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8 65, i8* %7, align 1
  br label %101

101:                                              ; preds = %100, %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* %7, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  call void @abort() #8
  unreachable

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  %115 = load i8, i8* %7, align 1
  %116 = add i8 %115, 1
  store i8 %116, i8* %7, align 1
  br label %92, !llvm.loop !7

117:                                              ; preds = %92
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  call void @abort() #8
  unreachable

124:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %136, %124
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %127, 8
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 97
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  call void @abort() #8
  unreachable

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  br label %125, !llvm.loop !8

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %18, !llvm.loop !9

145:                                              ; preds = %18
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %2, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %13, !llvm.loop !10

149:                                              ; preds = %13
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %8, !llvm.loop !11

153:                                              ; preds = %8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i64, i64* @l1, align 8
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 5
  br label %14

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i8* [ %10, %8 ], [ %13, %11 ]
  store i8* %15, i8** %2, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  %16 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8*, i8** @s3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = call i8* @__stpcpy_chk(i8* noundef %18, i8* noundef %20, i64 noundef 18) #7
  store i8* %21, i8** @vx, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** @s3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true, i1 false)
  %27 = call i8* @__stpcpy_chk(i8* noundef %22, i8* noundef %24, i64 noundef %26) #7
  store i8* %27, i8** @vx, align 8
  %28 = load i64, i64* @l1, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = alloca i8, i64 4, align 16
  br label %35

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %33, i64 0, i64 7
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i8* [ %31, %30 ], [ %34, %32 ]
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** @s2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false, i1 true, i1 false)
  %42 = call i8* @__stpcpy_chk(i8* noundef %37, i8* noundef %39, i64 noundef %41) #7
  store i8* %42, i8** @vx, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8*, i8** @s3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false, i1 true, i1 false)
  %50 = call i8* @__stpcpy_chk(i8* noundef %44, i8* noundef %46, i64 noundef %49) #7
  store i8* %50, i8** @vx, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %51, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %93, %35
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @l1, align 8
  %59 = sub i64 %58, 1
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %62, i64 0, i64 1
  store i8* %63, i8** %2, align 8
  br label %92

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @l1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %70, i64 0, i64 7
  store i8* %71, i8** %2, align 8
  br label %91

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @l1, align 8
  %76 = add i64 %75, 1
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %79, i8** %2, align 8
  br label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @l1, align 8
  %84 = add i64 %83, 2
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %87, i64 0, i64 9
  store i8* %88, i8** %2, align 8
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %52, !llvm.loop !12

96:                                               ; preds = %52
  %97 = load i8*, i8** %2, align 8
  %98 = load i8*, i8** @s2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i8*, i8** %2, align 8
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* %100, i1 false, i1 true, i1 false)
  %102 = call i8* @__stpcpy_chk(i8* noundef %97, i8* noundef %99, i64 noundef %101) #7
  store i8* %102, i8** @vx, align 8
  %103 = load volatile i32, i32* @chk_calls, align 4
  %104 = icmp ne i32 %103, 5
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  call void @abort() #8
  unreachable

106:                                              ; preds = %96
  store volatile i32 0, i32* @chk_calls, align 4
  %107 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %108 = getelementptr inbounds [10 x i8], [10 x i8]* %107, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = call i8* @__stpcpy_chk(i8* noundef %109, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef 18) #7
  store i8* %110, i8** @vx, align 8
  %111 = load i8*, i8** %2, align 8
  %112 = load i8*, i8** %2, align 8
  %113 = call i64 @llvm.objectsize.i64.p0i8(i8* %112, i1 false, i1 true, i1 false)
  %114 = call i8* @__stpcpy_chk(i8* noundef %111, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 noundef %113) #7
  store i8* %114, i8** @vx, align 8
  %115 = load i64, i64* @l1, align 8
  %116 = icmp eq i64 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = alloca i8, i64 4, align 16
  br label %122

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %121 = getelementptr inbounds [10 x i8], [10 x i8]* %120, i64 0, i64 7
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i8* [ %118, %117 ], [ %121, %119 ]
  store i8* %123, i8** %2, align 8
  %124 = load i8*, i8** %2, align 8
  %125 = load i8*, i8** %2, align 8
  %126 = call i64 @llvm.objectsize.i64.p0i8(i8* %125, i1 false, i1 true, i1 false)
  %127 = call i8* @__stpcpy_chk(i8* noundef %124, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef %126) #7
  store i8* %127, i8** @vx, align 8
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %128, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %170, %122
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %173

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @l1, align 8
  %136 = sub i64 %135, 1
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %139, i64 0, i64 1
  store i8* %140, i8** %2, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  br label %169

141:                                              ; preds = %132
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @l1, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %148 = getelementptr inbounds [10 x i8], [10 x i8]* %147, i64 0, i64 7
  store i8* %148, i8** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  br label %168

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @l1, align 8
  %153 = add i64 %152, 1
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %156, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  br label %167

157:                                              ; preds = %149
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @l1, align 8
  %161 = add i64 %160, 2
  %162 = icmp eq i64 %159, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %165 = getelementptr inbounds [10 x i8], [10 x i8]* %164, i64 0, i64 9
  store i8* %165, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166, %155
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %138
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %129, !llvm.loop !13

173:                                              ; preds = %129
  %174 = load i8*, i8** %2, align 8
  %175 = load i8*, i8** %2, align 8
  %176 = call i64 @llvm.objectsize.i64.p0i8(i8* %175, i1 false, i1 true, i1 false)
  %177 = call i8* @__stpcpy_chk(i8* noundef %174, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef %176) #7
  store i8* %177, i8** @vx, align 8
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 16
  %179 = load i8*, i8** %5, align 8
  %180 = call i8* @__stpcpy_chk(i8* noundef %178, i8* noundef %179, i64 noundef 4) #7
  store i8* %180, i8** @vx, align 8
  %181 = load i8*, i8** @s4, align 8
  %182 = load i8*, i8** @s3, align 8
  %183 = load i8*, i8** @s4, align 8
  %184 = call i64 @llvm.objectsize.i64.p0i8(i8* %183, i1 false, i1 true, i1 false)
  %185 = call i8* @__stpcpy_chk(i8* noundef %181, i8* noundef %182, i64 noundef %184) #7
  store i8* %185, i8** @vx, align 8
  %186 = load i8*, i8** @s4, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 4
  %188 = load i8*, i8** @s3, align 8
  %189 = load i8*, i8** @s4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 4
  %191 = call i64 @llvm.objectsize.i64.p0i8(i8* %190, i1 false, i1 true, i1 false)
  %192 = call i8* @__stpcpy_chk(i8* noundef %187, i8* noundef %188, i64 noundef %191) #7
  %193 = load volatile i32, i32* @chk_calls, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %173
  call void @abort() #8
  unreachable

196:                                              ; preds = %173
  store volatile i32 0, i32* @chk_calls, align 4
  ret void
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
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %10 = load i8*, i8** @s2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = call i8* @__stpcpy_chk(i8* noundef %9, i8* noundef %11, i64 noundef 1) #7
  store i8* %12, i8** @vx, align 8
  call void @abort() #8
  unreachable

13:                                               ; preds = %0
  %14 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %14, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %16 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 7
  %21 = load i8*, i8** @s3, align 8
  %22 = load i8*, i8** @s3, align 8
  %23 = call i64 @strlen(i8* noundef %22)
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -3
  %26 = call i8* @__stpcpy_chk(i8* noundef %20, i8* noundef %25, i64 noundef 3) #7
  store i8* %26, i8** @vx, align 8
  call void @abort() #8
  unreachable

27:                                               ; preds = %13
  %28 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %28, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %30 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %34 = call i8* @__stpcpy_chk(i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 noundef 1) #7
  store i8* %34, i8** @vx, align 8
  call void @abort() #8
  unreachable

35:                                               ; preds = %27
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #5

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #7

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
