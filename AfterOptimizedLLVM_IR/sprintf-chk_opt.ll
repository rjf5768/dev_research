; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/sprintf-chk.c'
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
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %1 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %2 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 65
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  call void @abort() #8
  unreachable

9:                                                ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %10 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #8
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 65
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13
  call void @abort() #8
  unreachable

21:                                               ; preds = %16
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %22 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 65
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  call void @abort() #8
  unreachable

30:                                               ; preds = %25
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %31 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @abort() #8
  unreachable

34:                                               ; preds = %30
  %35 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 65
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  call void @abort() #8
  unreachable

42:                                               ; preds = %37
  %43 = load volatile i32, i32* @chk_calls, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @abort() #8
  unreachable

46:                                               ; preds = %42
  store volatile i32 0, i32* @sprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %47 = load volatile i8*, i8** @ptr, align 8
  %48 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %47)
  %49 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 65
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %46
  call void @abort() #8
  unreachable

56:                                               ; preds = %51
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %57 = load i64, i64* @l1, align 8
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, 27
  %60 = load volatile i8*, i8** @ptr, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %59, i32 noundef %62)
  %64 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 noundef 12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  call void @abort() #8
  unreachable

67:                                               ; preds = %56
  %68 = load volatile i32, i32* @chk_calls, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @abort() #8
  unreachable

71:                                               ; preds = %67
  store volatile i32 0, i32* @chk_calls, align 4
  %72 = load i8*, i8** @s4, align 8
  %73 = load i8*, i8** @s4, align 8
  %74 = call i64 @llvm.objectsize.i64.p0i8(i8* %73, i1 false, i1 true, i1 false)
  %75 = load i64, i64* @l1, align 8
  %76 = trunc i64 %75 to i32
  %77 = sub nsw i32 %76, 17
  %78 = load volatile i8*, i8** @ptr, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %72, i32 noundef 0, i64 noundef %74, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %77, i32 noundef %81)
  %83 = load i8*, i8** @s4, align 8
  %84 = call i32 @memcmp(i8* noundef %83, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef 8)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  call void @abort() #8
  unreachable

87:                                               ; preds = %71
  %88 = load volatile i32, i32* @chk_calls, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void @abort() #8
  unreachable

91:                                               ; preds = %87
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i64, i64* @l1, align 8
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 5
  br label %13

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i8* [ %9, %7 ], [ %12, %10 ]
  store i8* %14, i8** %2, align 8
  store volatile i32 0, i32* @chk_calls, align 4
  %15 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8*, i8** @s3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %17, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19)
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @llvm.objectsize.i64.p0i8(i8* %22, i1 false, i1 true, i1 false)
  %24 = load i8*, i8** @s3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8*, i8** @s3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %21, i32 noundef 0, i64 noundef %23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %25, i32 noundef %29)
  %31 = load i64, i64* @l1, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = alloca i8, i64 4, align 16
  br label %38

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %36, i64 0, i64 7
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i8* [ %34, %33 ], [ %37, %35 ]
  store i8* %39, i8** %2, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @llvm.objectsize.i64.p0i8(i8* %41, i1 false, i1 true, i1 false)
  %43 = load i8*, i8** @s2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8*, i8** @s2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %40, i32 noundef 0, i64 noundef %42, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef %46, i8* noundef %48)
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = call i64 @llvm.objectsize.i64.p0i8(i8* %53, i1 false, i1 true, i1 false)
  %55 = load i8*, i8** @s3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %51, i32 noundef 0, i64 noundef %54, i8* noundef %56)
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %58, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %100, %38
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @l1, align 8
  %66 = sub i64 %65, 1
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %69, i64 0, i64 1
  store i8* %70, i8** %2, align 8
  br label %99

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @l1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %77, i64 0, i64 7
  store i8* %78, i8** %2, align 8
  br label %98

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @l1, align 8
  %83 = add i64 %82, 1
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %86, i8** %2, align 8
  br label %97

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @l1, align 8
  %91 = add i64 %90, 2
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %94, i64 0, i64 9
  store i8* %95, i8** %2, align 8
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %59, !llvm.loop !4

103:                                              ; preds = %59
  %104 = load i8*, i8** %2, align 8
  %105 = load i8*, i8** %2, align 8
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* %105, i1 false, i1 true, i1 false)
  %107 = load i8*, i8** @s2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  %109 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %104, i32 noundef 0, i64 noundef %106, i8* noundef %108)
  %110 = load volatile i32, i32* @chk_calls, align 4
  %111 = icmp ne i32 %110, 5
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  call void @abort() #8
  unreachable

113:                                              ; preds = %103
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @sprintf_disallowed, align 4
  %114 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %114, i64 0, i64 0
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %116, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %118 = load i8*, i8** %2, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = call i64 @llvm.objectsize.i64.p0i8(i8* %119, i1 false, i1 true, i1 false)
  %121 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %118, i32 noundef 0, i64 noundef %120, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %122 = load i64, i64* @l1, align 8
  %123 = icmp eq i64 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = alloca i8, i64 4, align 16
  br label %129

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %127, i64 0, i64 7
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i8* [ %125, %124 ], [ %128, %126 ]
  store i8* %130, i8** %2, align 8
  %131 = load i8*, i8** %2, align 8
  %132 = load i8*, i8** %2, align 8
  %133 = call i64 @llvm.objectsize.i64.p0i8(i8* %132, i1 false, i1 true, i1 false)
  %134 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %131, i32 noundef 0, i64 noundef %133, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1))
  %135 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %135, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %177, %129
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %139, label %180

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @l1, align 8
  %143 = sub i64 %142, 1
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %146, i64 0, i64 1
  store i8* %147, i8** %2, align 8
  br label %176

148:                                              ; preds = %139
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @l1, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %154, i64 0, i64 7
  store i8* %155, i8** %2, align 8
  br label %175

156:                                              ; preds = %148
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @l1, align 8
  %160 = add i64 %159, 1
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %163, i8** %2, align 8
  br label %174

164:                                              ; preds = %156
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @l1, align 8
  %168 = add i64 %167, 2
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %171, i64 0, i64 9
  store i8* %172, i8** %2, align 8
  br label %173

173:                                              ; preds = %170, %164
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %153
  br label %176

176:                                              ; preds = %175, %145
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %136, !llvm.loop !6

180:                                              ; preds = %136
  %181 = load i8*, i8** %2, align 8
  %182 = load i8*, i8** %2, align 8
  %183 = call i64 @llvm.objectsize.i64.p0i8(i8* %182, i1 false, i1 true, i1 false)
  %184 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %181, i32 noundef 0, i64 noundef %183, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  store volatile i32 0, i32* @sprintf_disallowed, align 4
  %185 = load i8*, i8** @s4, align 8
  %186 = load i8*, i8** @s4, align 8
  %187 = call i64 @llvm.objectsize.i64.p0i8(i8* %186, i1 false, i1 true, i1 false)
  %188 = load i8*, i8** @s3, align 8
  %189 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %185, i32 noundef 0, i64 noundef %187, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* noundef %188, i32 noundef 0)
  %190 = load volatile i32, i32* @chk_calls, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  call void @abort() #8
  unreachable

193:                                              ; preds = %180
  ret void
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
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %10 = load i8*, i8** @s2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8*, i8** @s2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %16 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %9, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef %13, i8* noundef %15)
  call void @abort() #8
  unreachable

17:                                               ; preds = %0
  %18 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %18, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %20 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 7
  %25 = load i8*, i8** @s3, align 8
  %26 = load i8*, i8** @s3, align 8
  %27 = call i64 @strlen(i8* noundef %26)
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -2
  %30 = load i8*, i8** @s3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %24, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %29, i32 noundef %32)
  call void @abort() #8
  unreachable

34:                                               ; preds = %17
  %35 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %35, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %37 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %40, i64 0, i64 7
  %42 = load i64, i64* @l1, align 8
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %43, 9999
  %45 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %41, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %44)
  call void @abort() #8
  unreachable

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
  %53 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %52, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  call void @abort() #8
  unreachable

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
  %61 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %60, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #8
  unreachable

62:                                               ; preds = %54
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
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
