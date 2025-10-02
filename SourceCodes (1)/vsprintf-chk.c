; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/vsprintf-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/vsprintf-chk.c"
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
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%d - %c\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_calls = external dso_local global i32, align 4
@vsprintf_disallowed = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"28 - b\00AAAAA\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"-16 - a\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

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
  switch i32 %7, label %29 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
    i32 4, label %20
    i32 5, label %23
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %10 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %9)
  br label %29

11:                                               ; preds = %1
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %13 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %12)
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %16 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %15)
  br label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %19 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %18)
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %22 = call i32 @__vsprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %21)
  br label %29

23:                                               ; preds = %1
  %24 = load i8*, i8** @s4, align 8
  %25 = load i8*, i8** @s4, align 8
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true, i1 false)
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %28 = call i32 @__vsprintf_chk(i8* noundef %24, i32 noundef 0, i64 noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %27)
  br label %29

29:                                               ; preds = %1, %23, %20, %17, %14, %11, %8
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @__vsprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @vsprintf_disallowed, align 4
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
  call void @abort() #8
  unreachable

9:                                                ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %10 = call i32 (i32, ...) @test1_sub(i32 noundef 1)
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
  %22 = load volatile i32, i32* @chk_calls, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #8
  unreachable

25:                                               ; preds = %21
  store volatile i32 0, i32* @vsprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %26 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 65
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  call void @abort() #8
  unreachable

34:                                               ; preds = %29
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %35 = call i32 (i32, ...) @test1_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @abort() #8
  unreachable

38:                                               ; preds = %34
  %39 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 65
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %38
  call void @abort() #8
  unreachable

46:                                               ; preds = %41
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %47 = load volatile i8*, i8** @ptr, align 8
  %48 = call i32 (i32, ...) @test1_sub(i32 noundef 2, i8* noundef %47)
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
  %63 = call i32 (i32, ...) @test1_sub(i32 noundef 4, i32 noundef %59, i32 noundef %62)
  %64 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 noundef 12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  call void @abort() #8
  unreachable

67:                                               ; preds = %56
  %68 = load volatile i32, i32* @chk_calls, align 4
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @abort() #8
  unreachable

71:                                               ; preds = %67
  store volatile i32 0, i32* @chk_calls, align 4
  %72 = load i64, i64* @l1, align 8
  %73 = trunc i64 %72 to i32
  %74 = sub nsw i32 %73, 17
  %75 = load volatile i8*, i8** @ptr, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i32, ...) @test1_sub(i32 noundef 5, i32 noundef %74, i32 noundef %78)
  %80 = load i8*, i8** @s4, align 8
  %81 = call i32 @memcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 noundef 8)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  call void @abort() #8
  unreachable

84:                                               ; preds = %71
  %85 = load volatile i32, i32* @chk_calls, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #8
  unreachable

88:                                               ; preds = %84
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #5

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
  switch i32 %20, label %158 [
    i32 0, label %21
    i32 1, label %27
    i32 2, label %33
    i32 3, label %48
    i32 4, label %67
    i32 7, label %67
    i32 5, label %131
    i32 6, label %146
    i32 8, label %152
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %22, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %26 = call i32 @__vsprintf_chk(i8* noundef %24, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %25)
  br label %158

27:                                               ; preds = %16
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false, i1 true, i1 false)
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %32 = call i32 @__vsprintf_chk(i8* noundef %28, i32 noundef 0, i64 noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.__va_list_tag* noundef %31)
  br label %158

33:                                               ; preds = %16
  %34 = load i64, i64* @l1, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = alloca i8, i64 4, align 16
  br label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %39, i64 0, i64 7
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i8* [ %37, %36 ], [ %40, %38 ]
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @llvm.objectsize.i64.p0i8(i8* %44, i1 false, i1 true, i1 false)
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %47 = call i32 @__vsprintf_chk(i8* noundef %43, i32 noundef 0, i64 noundef %45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.__va_list_tag* noundef %46)
  br label %158

48:                                               ; preds = %16
  %49 = load i64, i64* @l1, align 8
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = alloca i8, i64 4, align 16
  br label %56

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %54, i64 0, i64 7
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i8* [ %52, %51 ], [ %55, %53 ]
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i64 @llvm.objectsize.i64.p0i8(i8* %61, i1 false, i1 true, i1 false)
  %63 = load i8*, i8** @s3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %66 = call i32 @__vsprintf_chk(i8* noundef %59, i32 noundef 0, i64 noundef %62, i8* noundef %64, %struct.__va_list_tag* noundef %65)
  br label %158

67:                                               ; preds = %16, %16
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %68, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %110, %67
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %113

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @l1, align 8
  %76 = sub i64 %75, 1
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %79, i64 0, i64 1
  store i8* %80, i8** %5, align 8
  br label %109

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @l1, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %87, i64 0, i64 7
  store i8* %88, i8** %5, align 8
  br label %108

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @l1, align 8
  %93 = add i64 %92, 1
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 5
  store i8* %96, i8** %5, align 8
  br label %107

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @l1, align 8
  %101 = add i64 %100, 2
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %104, i64 0, i64 9
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %69, !llvm.loop !4

113:                                              ; preds = %69
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @llvm.objectsize.i64.p0i8(i8* %118, i1 false, i1 true, i1 false)
  %120 = load i8*, i8** @s2, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %123 = call i32 @__vsprintf_chk(i8* noundef %117, i32 noundef 0, i64 noundef %119, i8* noundef %121, %struct.__va_list_tag* noundef %122)
  br label %130

124:                                              ; preds = %113
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @llvm.objectsize.i64.p0i8(i8* %126, i1 false, i1 true, i1 false)
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %129 = call i32 @__vsprintf_chk(i8* noundef %125, i32 noundef 0, i64 noundef %127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.__va_list_tag* noundef %128)
  br label %130

130:                                              ; preds = %124, %116
  br label %158

131:                                              ; preds = %16
  %132 = load i64, i64* @l1, align 8
  %133 = icmp eq i64 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = alloca i8, i64 4, align 16
  br label %139

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  %138 = getelementptr inbounds [10 x i8], [10 x i8]* %137, i64 0, i64 7
  br label %139

139:                                              ; preds = %136, %134
  %140 = phi i8* [ %135, %134 ], [ %138, %136 ]
  store i8* %140, i8** %5, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = call i64 @llvm.objectsize.i64.p0i8(i8* %142, i1 false, i1 true, i1 false)
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %145 = call i32 @__vsprintf_chk(i8* noundef %141, i32 noundef 0, i64 noundef %143, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %144)
  br label %158

146:                                              ; preds = %16
  %147 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %148 = getelementptr inbounds [10 x i8], [10 x i8]* %147, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %151 = call i32 @__vsprintf_chk(i8* noundef %149, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %struct.__va_list_tag* noundef %150)
  br label %158

152:                                              ; preds = %16
  %153 = load i8*, i8** @s4, align 8
  %154 = load i8*, i8** @s4, align 8
  %155 = call i64 @llvm.objectsize.i64.p0i8(i8* %154, i1 false, i1 true, i1 false)
  %156 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %157 = call i32 @__vsprintf_chk(i8* noundef %153, i32 noundef 0, i64 noundef %155, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* noundef %156)
  br label %158

158:                                              ; preds = %16, %152, %146, %139, %130, %56, %41, %27, %21
  %159 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %160 = bitcast %struct.__va_list_tag* %159 to i8*
  call void @llvm.va_end(i8* %160)
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
  call void @abort() #8
  unreachable

18:                                               ; preds = %0
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @vsprintf_disallowed, align 4
  call void (i32, ...) @test2_sub(i32 noundef 6)
  call void (i32, ...) @test2_sub(i32 noundef 7)
  store volatile i32 0, i32* @vsprintf_disallowed, align 4
  %19 = load i8*, i8** @s3, align 8
  call void (i32, ...) @test2_sub(i32 noundef 8, i8* noundef %19, i32 noundef 0)
  %20 = load volatile i32, i32* @chk_calls, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @abort() #8
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
  switch i32 %8, label %32 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %19
    i32 3, label %24
    i32 4, label %28
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 9
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = call i32 @__vsprintf_chk(i8* noundef %11, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.__va_list_tag* noundef %12)
  br label %32

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 7
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %18 = call i32 @__vsprintf_chk(i8* noundef %16, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.__va_list_tag* noundef %17)
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.A.0, %struct.A.0* %4, i32 0, i32 1
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 7
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %23 = call i32 @__vsprintf_chk(i8* noundef %21, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), %struct.__va_list_tag* noundef %22)
  br label %32

24:                                               ; preds = %1
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 17
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = call i32 @__vsprintf_chk(i8* noundef %25, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %26)
  br label %32

28:                                               ; preds = %1
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 19
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = call i32 @__vsprintf_chk(i8* noundef %29, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.__va_list_tag* noundef %30)
  br label %32

32:                                               ; preds = %1, %28, %24, %19, %14, %9
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %34 = bitcast %struct.__va_list_tag* %33 to i8*
  call void @llvm.va_end(i8* %34)
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
  call void @abort() #8
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
  call void @abort() #8
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
  call void @abort() #8
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
  call void (i32, ...) @test3_sub(i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #8
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
  call void @abort() #8
  unreachable

47:                                               ; preds = %41
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #7

declare dso_local i64 @strlen(i8* noundef) #2

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
attributes #6 = { nofree nosync nounwind readnone willreturn }
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
