; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69691.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69691.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [10 x i8], [31 x %struct.S*] }

@u = dso_local global [6 x i8] c".ach4\00", align 1
@v = dso_local global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @u, i32 0, i32 0), i8* null], align 16
@r = dso_local global [7 x %struct.S] zeroinitializer, align 16
@r2 = dso_local global %struct.S* getelementptr inbounds ([7 x %struct.S], [7 x %struct.S]* @r, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"foo %d\0A\00", align 1
@w = internal global %struct.S* null, align 8
@__const.main.c = private unnamed_addr constant [6 x i8] c"aaaaa\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i8* @strchr(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @u, i64 0, i64 0), i32 noundef %3) #6
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 96
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  ret i32 %10

11:                                               ; preds = %6
  call void @abort() #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #7
  unreachable

8:                                                ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 @fn(i32 noundef %10)
  %12 = icmp sge i32 %11, 96
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 @fn(i32 noundef %15)
  %17 = icmp sle i32 %16, 122
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @fn(i32 noundef %20)
  %22 = sub nsw i32 %21, 96
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %13, %8
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %32

28:                                               ; preds = %23
  %29 = load i8, i8* %3, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %30)
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %27, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca [500 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.S*, align 8
  store i8** %0, i8*** %2, align 8
  %14 = load %struct.S*, %struct.S** @r2, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %14, i32 1
  store %struct.S* %15, %struct.S** @r2, align 8
  store %struct.S* %14, %struct.S** @w, align 8
  %16 = load i8**, i8*** %2, align 8
  store i8** %16, i8*** %3, align 8
  br label %17

17:                                               ; preds = %115, %1
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %118

21:                                               ; preds = %17
  %22 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* noundef %22, i8* noundef %24) #6
  %26 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %111, %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strchr(i8* noundef %28, i32 noundef 32) #6
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* noundef %35) #6
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %38 = load %struct.S*, %struct.S** @w, align 8
  store %struct.S* %38, %struct.S** %13, align 8
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %39, i8 0, i64 10, i1 false)
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %97, %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %4, align 1
  %50 = load i8, i8* %4, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 48
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 48
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %63
  store i8 %61, i8* %64, align 1
  br label %96

65:                                               ; preds = %53, %44
  %66 = load i8, i8* %4, align 1
  %67 = call i32 @foo(i8 noundef signext %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.S*, %struct.S** %13, align 8
  %69 = getelementptr inbounds %struct.S, %struct.S* %68, i32 0, i32 1
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [31 x %struct.S*], [31 x %struct.S*]* %69, i64 0, i64 %71
  %73 = load %struct.S*, %struct.S** %72, align 8
  %74 = icmp ne %struct.S* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %65
  %76 = load %struct.S*, %struct.S** @r2, align 8
  %77 = getelementptr inbounds %struct.S, %struct.S* %76, i32 1
  store %struct.S* %77, %struct.S** @r2, align 8
  %78 = load %struct.S*, %struct.S** %13, align 8
  %79 = getelementptr inbounds %struct.S, %struct.S* %78, i32 0, i32 1
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [31 x %struct.S*], [31 x %struct.S*]* %79, i64 0, i64 %81
  store %struct.S* %76, %struct.S** %82, align 8
  %83 = load %struct.S*, %struct.S** @r2, align 8
  %84 = icmp eq %struct.S* %83, getelementptr inbounds ([7 x %struct.S], [7 x %struct.S]* @r, i64 1, i64 0)
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  call void @abort() #7
  unreachable

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.S*, %struct.S** %13, align 8
  %89 = getelementptr inbounds %struct.S, %struct.S* %88, i32 0, i32 1
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [31 x %struct.S*], [31 x %struct.S*]* %89, i64 0, i64 %91
  %93 = load %struct.S*, %struct.S** %92, align 8
  store %struct.S* %93, %struct.S** %13, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %87, %57
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %40, !llvm.loop !4

100:                                              ; preds = %40
  %101 = load %struct.S*, %struct.S** %13, align 8
  %102 = getelementptr inbounds %struct.S, %struct.S* %101, i32 0, i32 0
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %102, i64 0, i64 0
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 1 %104, i64 10, i1 false)
  %105 = load i8*, i8** %5, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %7, align 8
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %5, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %27, label %114, !llvm.loop !6

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114
  %116 = load i8**, i8*** %3, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %3, align 8
  br label %17, !llvm.loop !7

118:                                              ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [300 x i8], align 16
  %4 = alloca [300 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.S*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strlen(i8* noundef %10) #6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 0
  store i8 96, i8* %13, align 16
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %40, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @fn(i32 noundef %24)
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @foo(i8 noundef signext %35)
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %150

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %14, !llvm.loop !8

43:                                               ; preds = %14
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %46
  store i8 96, i8* %47, align 1
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 0
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 %53, i1 false)
  %54 = load %struct.S*, %struct.S** @w, align 8
  %55 = icmp ne %struct.S* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %150

57:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %128, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %58
  %63 = load %struct.S*, %struct.S** @w, align 8
  store %struct.S* %63, %struct.S** %9, align 8
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %124, %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %65
  %70 = load %struct.S*, %struct.S** %9, align 8
  %71 = getelementptr inbounds %struct.S, %struct.S* %70, i32 0, i32 1
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @foo(i8 noundef signext %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [31 x %struct.S*], [31 x %struct.S*]* %71, i64 0, i64 %77
  %79 = load %struct.S*, %struct.S** %78, align 8
  store %struct.S* %79, %struct.S** %9, align 8
  %80 = load %struct.S*, %struct.S** %9, align 8
  %81 = icmp ne %struct.S* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %69
  br label %127

83:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %120, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 2
  %90 = icmp sle i32 %85, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %84
  %92 = load %struct.S*, %struct.S** %9, align 8
  %93 = getelementptr inbounds %struct.S, %struct.S* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %93, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sgt i32 %98, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %91
  %108 = load %struct.S*, %struct.S** %9, align 8
  %109 = getelementptr inbounds %struct.S, %struct.S* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %109, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 %117
  store i8 %113, i8* %118, align 1
  br label %119

119:                                              ; preds = %107, %91
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %84, !llvm.loop !9

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %65, !llvm.loop !10

127:                                              ; preds = %82, %65
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %58, !llvm.loop !11

131:                                              ; preds = %58
  store i32 3, i32* %5, align 4
  br label %132

132:                                              ; preds = %147, %131
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 2
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [300 x i8], [300 x i8]* %4, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  br label %146

146:                                              ; preds = %145, %137
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %132, !llvm.loop !13

150:                                              ; preds = %38, %56, %132
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @bar(i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @v, i64 0, i64 0))
  %3 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.c, i32 0, i32 0), i64 6, i1 false)
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  call void @baz(i8* noundef %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!12 = !{i64 1976}
!13 = distinct !{!13, !5}
