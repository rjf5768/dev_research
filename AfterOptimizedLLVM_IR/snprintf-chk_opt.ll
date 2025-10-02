; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/snprintf-chk.c'
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
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %1 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
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
  %10 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
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
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %22 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 32, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4)
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
  %31 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 21, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @abort() #9
  unreachable

34:                                               ; preds = %30
  %35 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4)
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
  store volatile i32 0, i32* @snprintf_disallowed, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %43 = load i64, i64* @l1, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @l1, align 8
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = load i64, i64* @l1, align 8
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %49, 12
  %51 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 4, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %44, i32 noundef %47, i32 noundef %50)
  %52 = icmp ne i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  call void @abort() #9
  unreachable

54:                                               ; preds = %42
  %55 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 noundef 4)
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
  %71 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef 32, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %64, i32 noundef %67, i32 noundef %70)
  %72 = icmp ne i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  call void @abort() #9
  unreachable

74:                                               ; preds = %62
  %75 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 5)
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
  %88 = call i64 @strlen(i8* noundef %87)
  %89 = add i64 %88, 1
  %90 = load volatile i8*, i8** @ptr, align 8
  %91 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %89, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %90)
  %92 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 65
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %86
  call void @abort() #9
  unreachable

99:                                               ; preds = %94
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %100 = load i64, i64* @l1, align 8
  %101 = add i64 %100, 31
  %102 = load i64, i64* @l1, align 8
  %103 = trunc i64 %102 to i32
  %104 = add nsw i32 %103, 27
  %105 = load volatile i8*, i8** @ptr, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i64 noundef %101, i32 noundef 0, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %104, i32 noundef %107)
  %109 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 noundef 12)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  call void @abort() #9
  unreachable

112:                                              ; preds = %99
  %113 = load volatile i32, i32* @chk_calls, align 4
  %114 = icmp ne i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @abort() #9
  unreachable

116:                                              ; preds = %112
  store volatile i32 0, i32* @chk_calls, align 4
  %117 = load i8*, i8** @s4, align 8
  %118 = load i8*, i8** @s4, align 8
  %119 = call i64 @llvm.objectsize.i64.p0i8(i8* %118, i1 false, i1 true, i1 false)
  %120 = call i8* @__memset_chk(i8* noundef %117, i32 noundef 65, i64 noundef 32, i64 noundef %119) #8
  %121 = load i8*, i8** @s4, align 8
  %122 = load i64, i64* @l1, align 8
  %123 = add i64 %122, 6
  %124 = load i8*, i8** @s4, align 8
  %125 = call i64 @llvm.objectsize.i64.p0i8(i8* %124, i1 false, i1 true, i1 false)
  %126 = load i64, i64* @l1, align 8
  %127 = trunc i64 %126 to i32
  %128 = sub nsw i32 %127, 17
  %129 = load volatile i8*, i8** @ptr, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %121, i64 noundef %123, i32 noundef 0, i64 noundef %125, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %128, i32 noundef %132)
  %134 = load i8*, i8** @s4, align 8
  %135 = call i32 @memcmp(i8* noundef %134, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 noundef 10)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  call void @abort() #9
  unreachable

138:                                              ; preds = %116
  %139 = load volatile i32, i32* @chk_calls, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  call void @abort() #9
  unreachable

142:                                              ; preds = %138
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #5

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
  %18 = load i64, i64* @l1, align 8
  %19 = load i8*, i8** @s3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %17, i64 noundef %18, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %20)
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* @l1, align 8
  %24 = add i64 %23, 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true, i1 false)
  %27 = load i8*, i8** @s3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8*, i8** @s3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %22, i64 noundef %24, i32 noundef 0, i64 noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %28, i32 noundef %32)
  %34 = load i64, i64* @l1, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = alloca i8, i64 4, align 16
  br label %41

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %39, i64 0, i64 7
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i8* [ %37, %36 ], [ %40, %38 ]
  store i8* %42, i8** %2, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = load i8*, i8** @s2, align 8
  %45 = call i64 @strlen(i8* noundef %44)
  %46 = sub i64 %45, 2
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @llvm.objectsize.i64.p0i8(i8* %47, i1 false, i1 true, i1 false)
  %49 = load i8*, i8** @s2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** @s2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %43, i64 noundef %46, i32 noundef 0, i64 noundef %48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 noundef %52, i8* noundef %54)
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i64, i64* @l1, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i64 @llvm.objectsize.i64.p0i8(i8* %60, i1 false, i1 true, i1 false)
  %62 = load i8*, i8** @s3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %57, i64 noundef %58, i32 noundef 0, i64 noundef %61, i8* noundef %63)
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %65, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %107, %41
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %110

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @l1, align 8
  %73 = sub i64 %72, 1
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %76, i64 0, i64 1
  store i8* %77, i8** %2, align 8
  br label %106

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @l1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %84, i64 0, i64 7
  store i8* %85, i8** %2, align 8
  br label %105

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @l1, align 8
  %90 = add i64 %89, 1
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %93, i8** %2, align 8
  br label %104

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @l1, align 8
  %98 = add i64 %97, 2
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %101, i64 0, i64 9
  store i8* %102, i8** %2, align 8
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %92
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %66, !llvm.loop !4

110:                                              ; preds = %66
  %111 = load i8*, i8** %2, align 8
  %112 = load i64, i64* @l1, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = call i64 @llvm.objectsize.i64.p0i8(i8* %113, i1 false, i1 true, i1 false)
  %115 = load i8*, i8** @s2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %111, i64 noundef %112, i32 noundef 0, i64 noundef %114, i8* noundef %116)
  %118 = load volatile i32, i32* @chk_calls, align 4
  %119 = icmp ne i32 %118, 5
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  call void @abort() #9
  unreachable

121:                                              ; preds = %110
  store volatile i32 0, i32* @chk_calls, align 4
  %122 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %122, i64 0, i64 0
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %124, i64 noundef 4, i32 noundef 0, i64 noundef 18, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %126 = load i8*, i8** %2, align 8
  %127 = load i8*, i8** %2, align 8
  %128 = call i64 @llvm.objectsize.i64.p0i8(i8* %127, i1 false, i1 true, i1 false)
  %129 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %126, i64 noundef 1, i32 noundef 0, i64 noundef %128, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %130 = load i64, i64* @l1, align 8
  %131 = icmp eq i64 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = alloca i8, i64 4, align 16
  br label %137

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %135, i64 0, i64 7
  br label %137

137:                                              ; preds = %134, %132
  %138 = phi i8* [ %133, %132 ], [ %136, %134 ]
  store i8* %138, i8** %2, align 8
  %139 = load i8*, i8** %2, align 8
  %140 = load i8*, i8** %2, align 8
  %141 = call i64 @llvm.objectsize.i64.p0i8(i8* %140, i1 false, i1 true, i1 false)
  %142 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %139, i64 noundef 3, i32 noundef 0, i64 noundef %141, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1))
  %143 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %143, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %185, %137
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %147, label %188

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @l1, align 8
  %151 = sub i64 %150, 1
  %152 = icmp eq i64 %149, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %154, i64 0, i64 1
  store i8* %155, i8** %2, align 8
  br label %184

156:                                              ; preds = %147
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @l1, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %163 = getelementptr inbounds [10 x i8], [10 x i8]* %162, i64 0, i64 7
  store i8* %163, i8** %2, align 8
  br label %183

164:                                              ; preds = %156
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @l1, align 8
  %168 = add i64 %167, 1
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 5
  store i8* %171, i8** %2, align 8
  br label %182

172:                                              ; preds = %164
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @l1, align 8
  %176 = add i64 %175, 2
  %177 = icmp eq i64 %174, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %179, i64 0, i64 9
  store i8* %180, i8** %2, align 8
  br label %181

181:                                              ; preds = %178, %172
  br label %182

182:                                              ; preds = %181, %170
  br label %183

183:                                              ; preds = %182, %161
  br label %184

184:                                              ; preds = %183, %153
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %144, !llvm.loop !6

188:                                              ; preds = %144
  %189 = load i8*, i8** %2, align 8
  %190 = load i8*, i8** %2, align 8
  %191 = call i64 @llvm.objectsize.i64.p0i8(i8* %190, i1 false, i1 true, i1 false)
  %192 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %189, i64 noundef 1, i32 noundef 0, i64 noundef %191, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %193 = load i8*, i8** %2, align 8
  %194 = load i8*, i8** %2, align 8
  %195 = call i64 @llvm.objectsize.i64.p0i8(i8* %194, i1 false, i1 true, i1 false)
  %196 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %193, i64 noundef 0, i32 noundef 0, i64 noundef %195, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store volatile i32 0, i32* @snprintf_disallowed, align 4
  %197 = load i8*, i8** @s4, align 8
  %198 = load i64, i64* @l1, align 8
  %199 = add i64 %198, 31
  %200 = load i8*, i8** @s4, align 8
  %201 = call i64 @llvm.objectsize.i64.p0i8(i8* %200, i1 false, i1 true, i1 false)
  %202 = load i8*, i8** @s3, align 8
  %203 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %197, i64 noundef %199, i32 noundef 0, i64 noundef %201, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %202, i32 noundef 0)
  %204 = load volatile i32, i32* @chk_calls, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %188
  call void @abort() #9
  unreachable

207:                                              ; preds = %188
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
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %10 = load i64, i64* @l1, align 8
  %11 = add i64 %10, 1
  %12 = load i8*, i8** @s2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8*, i8** @s2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %9, i64 noundef %11, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 noundef %15, i8* noundef %17)
  call void @abort() #9
  unreachable

19:                                               ; preds = %0
  %20 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %20, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %22 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 7
  %27 = load i64, i64* @l1, align 8
  %28 = add i64 %27, 30
  %29 = load i8*, i8** @s3, align 8
  %30 = load i8*, i8** @s3, align 8
  %31 = call i64 @strlen(i8* noundef %30)
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -2
  %34 = load i8*, i8** @s3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %26, i64 noundef %28, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %33, i32 noundef %36)
  call void @abort() #9
  unreachable

38:                                               ; preds = %19
  %39 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %39, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %41 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i32 0, i32 1
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %44, i64 0, i64 7
  %46 = load i64, i64* @l1, align 8
  %47 = add i64 %46, 3
  %48 = load i64, i64* @l1, align 8
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %49, 9999
  %51 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %45, i64 noundef %47, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 noundef %50)
  call void @abort() #9
  unreachable

52:                                               ; preds = %38
  %53 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %53, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %55 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %59 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %58, i64 noundef 2, i32 noundef 0, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #9
  unreachable

60:                                               ; preds = %52
  %61 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %61, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %63 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 17
  %67 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %66, i64 noundef 4, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #9
  unreachable

68:                                               ; preds = %60
  %69 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %69, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %71 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 17
  %75 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %74, i64 noundef 4, i32 noundef 0, i64 noundef 3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #9
  unreachable

76:                                               ; preds = %68
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #6

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
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
!6 = distinct !{!6, !5}
