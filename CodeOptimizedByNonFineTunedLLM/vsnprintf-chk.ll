; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/vsnprintf-chk.c'
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %45 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
    i32 4, label %20
    i32 5, label %23
    i32 6, label %26
    i32 7, label %32
    i32 8, label %37
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %10 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %9)
  br label %45

11:                                               ; preds = %1
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %13 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %12)
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %16 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 32, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %15)
  br label %45

17:                                               ; preds = %1
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %19 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 21, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %18)
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %1
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %22 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %21)
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %1
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 32, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %24)
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %1
  %27 = load volatile i8*, i8** @ptr, align 8
  %28 = call i64 @strlen(i8* noundef %27)
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %31 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %29, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %30)
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load i64, i64* @l1, align 8
  %34 = add i64 %33, 31
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %36 = call i32 @__vsnprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %34, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %35)
  br label %45

37:                                               ; preds = %1
  %38 = load i8*, i8** @s4, align 8
  %39 = load i64, i64* @l1, align 8
  %40 = add i64 %39, 6
  %41 = load i8*, i8** @s4, align 8
  %42 = call i64 @llvm.objectsize.i64.p0i8(i8* %41, i1 false, i1 true, i1 false)
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %44 = call i32 @__vsnprintf_chk(i8* noundef %38, i64 noundef %40, i32 noundef 0, i64 noundef %42, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %43)
  br label %45

45:                                               ; preds = %1, %37, %32, %26, %23, %20, %17, %14, %11, %8
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %47 = bitcast %struct.__va_list_tag* %46 to i8*
  call void @llvm.va_end(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @__vsnprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %1 = call i32 (i32, ...) @test1_sub(i32 noundef 0)
  %2 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef 4)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 65
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  call void @abort() #9
  unreachable

9:                                                ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %10 = call i32 (i32, ...) @test1_sub(i32 noundef 1)
  %11 = icmp ne i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #9
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
  call void @abort() #9
  unreachable

21:                                               ; preds = %16
  store volatile i32 0, i32* @vsnprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %22 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %23 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 65
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  call void @abort() #9
  unreachable

30:                                               ; preds = %25
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %31 = call i32 (i32, ...) @test1_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @abort() #9
  unreachable

34:                                               ; preds = %30
  %35 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 65
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  call void @abort() #9
  unreachable

42:                                               ; preds = %37
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %43 = load i64, i64* @l1, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @l1, align 8
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = load i64, i64* @l1, align 8
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %49, 12
  %51 = call i32 (i32, ...) @test1_sub(i32 noundef 4, i32 noundef %44, i32 noundef %47, i32 noundef %50)
  %52 = icmp ne i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  call void @abort() #9
  unreachable

54:                                               ; preds = %42
  %55 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 noundef 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 65
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54
  call void @abort() #9
  unreachable

62:                                               ; preds = %57
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %63 = load i64, i64* @l1, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* @l1, align 8
  %66 = trunc i64 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = load i64, i64* @l1, align 8
  %69 = trunc i64 %68 to i32
  %70 = add nsw i32 %69, 12
  %71 = call i32 (i32, ...) @test1_sub(i32 noundef 5, i32 noundef %64, i32 noundef %67, i32 noundef %70)
  %72 = icmp ne i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  call void @abort() #9
  unreachable

74:                                               ; preds = %62
  %75 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 noundef 5)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 65
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74
  call void @abort() #9
  unreachable

82:                                               ; preds = %77
  %83 = load volatile i32, i32* @chk_calls, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void @abort() #9
  unreachable

86:                                               ; preds = %82
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %87 = load volatile i8*, i8** @ptr, align 8
  %88 = call i32 (i32, ...) @test1_sub(i32 noundef 6, i8* noundef %87)
  %89 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 65
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %86
  call void @abort() #9
  unreachable

96:                                               ; preds = %91
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %97 = load i64, i64* @l1, align 8
  %98 = trunc i64 %97 to i32
  %99 = add nsw i32 %98, 27
  %100 = load volatile i8*, i8** @ptr, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 (i32, ...) @test1_sub(i32 noundef 7, i32 noundef %99, i32 noundef %102)
  %104 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 noundef 12)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  call void @abort() #9
  unreachable

107:                                              ; preds = %96
  %108 = load volatile i32, i32* @chk_calls, align 4
  %109 = icmp ne i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  call void @abort() #9
  unreachable

111:                                              ; preds = %107
  store volatile i32 0, i32* @chk_calls, align 4
  %112 = load i8*, i8** @s4, align 8
  %113 = load i8*, i8** @s4, align 8
  %114 = call i64 @llvm.objectsize.i64.p0i8(i8* %113, i1 false, i1 true, i1 false)
  %115 = call i8* @__memset_chk(i8* noundef %112, i32 noundef 65, i64 noundef 32, i64 noundef %114) #8
  %116 = load i64, i64* @l1, align 8
  %117 = trunc i64 %116 to i32
  %118 = sub nsw i32 %117, 17
  %119 = load volatile i8*, i8** @ptr, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = call i32 (i32, ...) @test1_sub(i32 noundef 8, i32 noundef %118, i32 noundef %122)
  %124 = load i8*, i8** @s4, align 8
  %125 = call i32 @memcmp(i8* noundef %124, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 noundef 10)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  call void @abort() #9
  unreachable

128:                                              ; preds = %111
  %129 = load volatile i32, i32* @chk_calls, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @abort() #9
  unreachable

132:                                              ; preds = %128
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2_sub(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.A, align 1
  %5 = alloca i8*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @l1, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 5
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i8* [ %12, %10 ], [ %15, %13 ]
  store i8* %17, i8** %5, align 8
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %168 [
    i32 0, label %21
    i32 1, label %28
    i32 2, label %36
    i32 3, label %54
    i32 4, label %74
    i32 7, label %74
    i32 5, label %139
    i32 6, label %156
    i32 8, label %162
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %22, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i64, i64* @l1, align 8
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = call i32 @__vsnprintf_chk(i8* noundef %24, i64 noundef %25, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %26)
  br label %168

28:                                               ; preds = %16
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* @l1, align 8
  %31 = add i64 %30, 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false, i1 true, i1 false)
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %35 = call i32 @__vsnprintf_chk(i8* noundef %29, i64 noundef %31, i32 noundef 0, i64 noundef %33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef %34)
  br label %168

36:                                               ; preds = %16
  %37 = load i64, i64* @l1, align 8
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = alloca i8, i64 4, align 16
  br label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %42, i64 0, i64 7
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i8* [ %40, %39 ], [ %43, %41 ]
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** @s2, align 8
  %48 = call i64 @strlen(i8* noundef %47)
  %49 = sub i64 %48, 2
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @llvm.objectsize.i64.p0i8(i8* %50, i1 false, i1 true, i1 false)
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %53 = call i32 @__vsnprintf_chk(i8* noundef %46, i64 noundef %49, i32 noundef 0, i64 noundef %51, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %struct.__va_list_tag* noundef %52)
  br label %168

54:                                               ; preds = %16
  %55 = load i64, i64* @l1, align 8
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = alloca i8, i64 4, align 16
  br label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %60, i64 0, i64 7
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i8* [ %58, %57 ], [ %61, %59 ]
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i64, i64* @l1, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = call i64 @llvm.objectsize.i64.p0i8(i8* %68, i1 false, i1 true, i1 false)
  %70 = load i8*, i8** @s3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %73 = call i32 @__vsnprintf_chk(i8* noundef %65, i64 noundef %66, i32 noundef 0, i64 noundef %69, i8* noundef %71, %struct.__va_list_tag* noundef %72)
  br label %168

74:                                               ; preds = %16, %16
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %75, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %117, %74
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %120

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @l1, align 8
  %83 = sub i64 %82, 1
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %86, i64 0, i64 1
  store i8* %87, i8** %5, align 8
  br label %116

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @l1, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %94, i64 0, i64 7
  store i8* %95, i8** %5, align 8
  br label %115

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @l1, align 8
  %100 = add i64 %99, 1
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 5
  store i8* %103, i8** %5, align 8
  br label %114

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @l1, align 8
  %108 = add i64 %107, 2
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %111, i64 0, i64 9
  store i8* %112, i8** %5, align 8
  br label %113

113:                                              ; preds = %110, %104
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %76, !llvm.loop !4

120:                                              ; preds = %76
  %121 = load i32, i32* %2, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* @l1, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @llvm.objectsize.i64.p0i8(i8* %126, i1 false, i1 true, i1 false)
  %128 = load i8*, i8** @s2, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %131 = call i32 @__vsnprintf_chk(i8* noundef %124, i64 noundef %125, i32 noundef 0, i64 noundef %127, i8* noundef %129, %struct.__va_list_tag* noundef %130)
  br label %138

132:                                              ; preds = %120
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = call i64 @llvm.objectsize.i64.p0i8(i8* %134, i1 false, i1 true, i1 false)
  %136 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %137 = call i32 @__vsnprintf_chk(i8* noundef %133, i64 noundef 1, i32 noundef 0, i64 noundef %135, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef %136)
  br label %138

138:                                              ; preds = %132, %123
  br label %168

139:                                              ; preds = %16
  %140 = load i64, i64* @l1, align 8
  %141 = icmp eq i64 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = alloca i8, i64 4, align 16
  br label %147

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %146 = getelementptr inbounds [10 x i8], [10 x i8]* %145, i64 0, i64 7
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i8* [ %143, %142 ], [ %146, %144 ]
  store i8* %148, i8** %5, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load i64, i64* @l1, align 8
  %151 = add i64 %150, 3
  %152 = load i8*, i8** %5, align 8
  %153 = call i64 @llvm.objectsize.i64.p0i8(i8* %152, i1 false, i1 true, i1 false)
  %154 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %155 = call i32 @__vsnprintf_chk(i8* noundef %149, i64 noundef %151, i32 noundef 0, i64 noundef %153, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %154)
  br label %168

156:                                              ; preds = %16
  %157 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %158 = getelementptr inbounds [10 x i8], [10 x i8]* %157, i64 0, i64 0
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %161 = call i32 @__vsnprintf_chk(i8* noundef %159, i64 noundef 4, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %struct.__va_list_tag* noundef %160)
  br label %168

162:                                              ; preds = %16
  %163 = load i8*, i8** @s4, align 8
  %164 = load i8*, i8** @s4, align 8
  %165 = call i64 @llvm.objectsize.i64.p0i8(i8* %164, i1 false, i1 true, i1 false)
  %166 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %167 = call i32 @__vsnprintf_chk(i8* noundef %163, i64 noundef 3, i32 noundef 0, i64 noundef %165, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.__va_list_tag* noundef %166)
  br label %168

168:                                              ; preds = %16, %162, %156, %147, %138, %62, %44, %28, %21
  %169 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %170 = bitcast %struct.__va_list_tag* %169 to i8*
  call void @llvm.va_end(i8* %170)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  %1 = load i8*, i8** @s3, align 8
  %2 = getelementptr inbounds i8, i8* %1, i64 3
  call void (i32, ...) @test2_sub(i32 noundef 0, i8* noundef %2)
  %3 = load i8*, i8** @s3, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 3
  %5 = load i8*, i8** @s3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 3
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  call void (i32, ...) @test2_sub(i32 noundef 1, i8* noundef %4, i32 noundef %8)
  %9 = load i8*, i8** @s2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8*, i8** @s2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  call void (i32, ...) @test2_sub(i32 noundef 2, i32 noundef %12, i8* noundef %14)
  call void (i32, ...) @test2_sub(i32 noundef 3)
  call void (i32, ...) @test2_sub(i32 noundef 4)
  call void (i32, ...) @test2_sub(i32 noundef 5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1))
  %15 = load volatile i32, i32* @chk_calls, align 4
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #9
  unreachable

18:                                               ; preds = %0
  store volatile i32 0, i32* @chk_calls, align 4
  call void (i32, ...) @test2_sub(i32 noundef 6)
  call void (i32, ...) @test2_sub(i32 noundef 7)
  store volatile i32 0, i32* @vsnprintf_disallowed, align 4
  %19 = load i8*, i8** @s3, align 8
  call void (i32, ...) @test2_sub(i32 noundef 8, i8* noundef %19, i32 noundef 0)
  %20 = load volatile i32, i32* @chk_calls, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @abort() #9
  unreachable

23:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3_sub(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.A.0, align 1
  %5 = alloca [20 x i8], align 16
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %44 [
    i32 0, label %9
    i32 1, label %16
    i32 2, label %23
    i32 3, label %30
    i32 4, label %36
    i32 5, label %40
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 9
  %12 = load i64, i64* @l1, align 8
  %13 = add i64 %12, 1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %15 = call i32 @__vsnprintf_chk(i8* noundef %11, i64 noundef %13, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.__va_list_tag* noundef %14)
  br label %44

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 7
  %19 = load i64, i64* @l1, align 8
  %20 = add i64 %19, 30
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %22 = call i32 @__vsnprintf_chk(i8* noundef %18, i64 noundef %20, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef %21)
  br label %44

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 7
  %26 = load i64, i64* @l1, align 8
  %27 = add i64 %26, 3
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = call i32 @__vsnprintf_chk(i8* noundef %25, i64 noundef %27, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %struct.__va_list_tag* noundef %28)
  br label %44

30:                                               ; preds = %1
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 17
  %32 = load i64, i64* @l1, align 8
  %33 = add i64 %32, 3
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %35 = call i32 @__vsnprintf_chk(i8* noundef %31, i64 noundef %33, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %34)
  br label %44

36:                                               ; preds = %1
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 19
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %39 = call i32 @__vsnprintf_chk(i8* noundef %37, i64 noundef 2, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef %38)
  br label %44

40:                                               ; preds = %1
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 16
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %43 = call i32 @__vsnprintf_chk(i8* noundef %41, i64 noundef 5, i32 noundef 0, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef %42)
  br label %44

44:                                               ; preds = %1, %40, %36, %30, %23, %16, %9
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %46 = bitcast %struct.__va_list_tag* %45 to i8*
  call void @llvm.va_end(i8* %46)
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
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i8*, i8** @s2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 3
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8*, i8** @s2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  call void (i32, ...) @test3_sub(i32 noundef 0, i32 noundef %9, i8* noundef %11)
  call void @abort() #9
  unreachable

12:                                               ; preds = %0
  %13 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %13, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %15 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i8*, i8** @s3, align 8
  %19 = load i8*, i8** @s3, align 8
  %20 = call i64 @strlen(i8* noundef %19)
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  %23 = load i8*, i8** @s3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  call void (i32, ...) @test3_sub(i32 noundef 1, i8* noundef %22, i32 noundef %25)
  call void @abort() #9
  unreachable

26:                                               ; preds = %12
  %27 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %27, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %29 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @l1, align 8
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %33, 9999
  call void (i32, ...) @test3_sub(i32 noundef 2, i32 noundef %34)
  call void @abort() #9
  unreachable

35:                                               ; preds = %26
  %36 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %36, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %38 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void (i32, ...) @test3_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #9
  unreachable

41:                                               ; preds = %35
  %42 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %42, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %44 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void (i32, ...) @test3_sub(i32 noundef 4)
  call void @abort() #9
  unreachable

47:                                               ; preds = %41
  %48 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %48, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %50 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void (i32, ...) @test3_sub(i32 noundef 5)
  call void @abort() #9
  unreachable

53:                                               ; preds = %47
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #7

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
