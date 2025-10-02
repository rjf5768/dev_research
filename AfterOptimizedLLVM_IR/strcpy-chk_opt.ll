; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcpy-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcpy-chk.c"
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
@chk_calls = external dso_local global i32, align 4
@strcpy_disallowed = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"jkl\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcpy_disallowed, align 4
  %1 = call i8* @__strcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32) #7
  %2 = icmp ne i8* %1, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  call void @abort() #8
  unreachable

7:                                                ; preds = %3
  %8 = call i8* @__strcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 1), i64 noundef 16) #7
  %9 = icmp ne i8* %8, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  call void @abort() #8
  unreachable

14:                                               ; preds = %10
  %15 = call i8* @__strcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef 31) #7
  %16 = icmp ne i8* %15, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1)
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  call void @abort() #8
  unreachable

21:                                               ; preds = %17
  %22 = call i8* @__strcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 29) #7
  %23 = icmp ne i8* %22, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3)
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  call void @abort() #8
  unreachable

28:                                               ; preds = %24
  %29 = call i8* @__strcpy_chk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 32) #7
  %30 = icmp ne i8* %29, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0)
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  call void @abort() #8
  unreachable

35:                                               ; preds = %31
  store volatile i32 0, i32* @strcpy_disallowed, align 4
  %36 = load volatile i32, i32* @chk_calls, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @abort() #8
  unreachable

39:                                               ; preds = %35
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #1

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

8:                                                ; preds = %147, %0
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %150

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %143, %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %146

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %139, %17
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 80
  br i1 %21, label %22, label %142

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
  %61 = call i8* @__strcpy_chk(i8* noundef %53, i8* noundef %56, i64 noundef %60) #7
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %64
  %66 = icmp ne i8* %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  call void @abort() #8
  unreachable

68:                                               ; preds = %45
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 97
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  call void @abort() #8
  unreachable

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  br label %69, !llvm.loop !6

85:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 65, %86
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %7, align 1
  br label %89

89:                                               ; preds = %107, %85
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i8, i8* %7, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 96
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i8 65, i8* %7, align 1
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %7, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  call void @abort() #8
  unreachable

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8, i8* %7, align 1
  %113 = add i8 %112, 1
  store i8 %113, i8* %7, align 1
  br label %89, !llvm.loop !7

114:                                              ; preds = %89
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call void @abort() #8
  unreachable

121:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %133, %121
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 8
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 97
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  call void @abort() #8
  unreachable

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  br label %122, !llvm.loop !8

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %18, !llvm.loop !9

142:                                              ; preds = %18
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %13, !llvm.loop !10

146:                                              ; preds = %13
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %1, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %1, align 4
  br label %8, !llvm.loop !11

150:                                              ; preds = %8
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
  %21 = call i8* @__strcpy_chk(i8* noundef %18, i8* noundef %20, i64 noundef 18) #7
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** @s3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @llvm.objectsize.i64.p0i8(i8* %25, i1 false, i1 true, i1 false)
  %27 = call i8* @__strcpy_chk(i8* noundef %22, i8* noundef %24, i64 noundef %26) #7
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
  %42 = call i8* @__strcpy_chk(i8* noundef %37, i8* noundef %39, i64 noundef %41) #7
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8*, i8** @s3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false, i1 true, i1 false)
  %50 = call i8* @__strcpy_chk(i8* noundef %44, i8* noundef %46, i64 noundef %49) #7
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
  %102 = call i8* @__strcpy_chk(i8* noundef %97, i8* noundef %99, i64 noundef %101) #7
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
  %110 = call i8* @__strcpy_chk(i8* noundef %109, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef 18) #7
  %111 = load i8*, i8** %2, align 8
  %112 = load i8*, i8** %2, align 8
  %113 = call i64 @llvm.objectsize.i64.p0i8(i8* %112, i1 false, i1 true, i1 false)
  %114 = call i8* @__strcpy_chk(i8* noundef %111, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 noundef %113) #7
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
  %127 = call i8* @__strcpy_chk(i8* noundef %124, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef %126) #7
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8* %128, i8** %2, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
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
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
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
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
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
  %177 = call i8* @__strcpy_chk(i8* noundef %174, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i64 noundef %176) #7
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 16
  %179 = load i8*, i8** %5, align 8
  %180 = call i8* @__strcpy_chk(i8* noundef %178, i8* noundef %179, i64 noundef 4) #7
  %181 = load i8*, i8** @s4, align 8
  %182 = load i8*, i8** @s3, align 8
  %183 = load i8*, i8** @s4, align 8
  %184 = call i64 @llvm.objectsize.i64.p0i8(i8* %183, i1 false, i1 true, i1 false)
  %185 = call i8* @__strcpy_chk(i8* noundef %181, i8* noundef %182, i64 noundef %184) #7
  %186 = load volatile i32, i32* @chk_calls, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  call void @abort() #8
  unreachable

189:                                              ; preds = %173
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
  %12 = call i8* @__strcpy_chk(i8* noundef %9, i8* noundef %11, i64 noundef 1) #7
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
  %26 = call i8* @__strcpy_chk(i8* noundef %20, i8* noundef %25, i64 noundef 3) #7
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
  %34 = call i8* @__strcpy_chk(i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 noundef 1) #7
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
