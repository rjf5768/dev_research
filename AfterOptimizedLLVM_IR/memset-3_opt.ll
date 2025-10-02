; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [16 x i8] }

@A = dso_local global i8 65, align 1
@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp ult i64 %4, 31
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 %8
  store i8 97, i8* %9, align 1
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2, !llvm.loop !4

13:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %20, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 97
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @abort() #3
  unreachable

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  br label %9, !llvm.loop !6

25:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @abort() #3
  unreachable

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  br label %26, !llvm.loop !7

43:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 97
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #3
  unreachable

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %44, !llvm.loop !8

60:                                               ; preds = %44
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 15
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  call void @reset()
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8 0, i64 %9, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0)
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @abort() #3
  unreachable

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  call void @check(i32 noundef 0, i32 noundef %14, i32 noundef 0)
  %15 = load i8, i8* @A, align 1
  %16 = sext i8 %15 to i32
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8 %17, i64 %19, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0)
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  call void @abort() #3
  unreachable

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  call void @check(i32 noundef 0, i32 noundef %24, i32 noundef 65)
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8 66, i64 %26, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0)
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void @abort() #3
  unreachable

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  call void @check(i32 noundef 0, i32 noundef %31, i32 noundef 66)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %4, !llvm.loop !9

35:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %37, 15
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  call void @reset()
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 0, i64 %41, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ne i8* %42, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1)
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #3
  unreachable

45:                                               ; preds = %39
  %46 = load i32, i32* %2, align 4
  call void @check(i32 noundef 1, i32 noundef %46, i32 noundef 0)
  %47 = load i8, i8* @A, align 1
  %48 = sext i8 %47 to i32
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 %49, i64 %51, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1)
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  call void @abort() #3
  unreachable

55:                                               ; preds = %45
  %56 = load i32, i32* %2, align 4
  call void @check(i32 noundef 1, i32 noundef %56, i32 noundef 65)
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8 66, i64 %58, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1), i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = icmp ne i8* %59, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 1)
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void @abort() #3
  unreachable

62:                                               ; preds = %55
  %63 = load i32, i32* %2, align 4
  call void @check(i32 noundef 1, i32 noundef %63, i32 noundef 66)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %36, !llvm.loop !10

67:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %69, 15
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  call void @reset()
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 0, i64 %73, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp ne i8* %74, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2)
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void @abort() #3
  unreachable

77:                                               ; preds = %71
  %78 = load i32, i32* %2, align 4
  call void @check(i32 noundef 2, i32 noundef %78, i32 noundef 0)
  %79 = load i8, i8* @A, align 1
  %80 = sext i8 %79 to i32
  %81 = trunc i32 %80 to i8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 %81, i64 %83, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8** %3, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = icmp ne i8* %84, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2)
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  call void @abort() #3
  unreachable

87:                                               ; preds = %77
  %88 = load i32, i32* %2, align 4
  call void @check(i32 noundef 2, i32 noundef %88, i32 noundef 65)
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8 66, i64 %90, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2), i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = icmp ne i8* %91, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 2)
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  call void @abort() #3
  unreachable

94:                                               ; preds = %87
  %95 = load i32, i32* %2, align 4
  call void @check(i32 noundef 2, i32 noundef %95, i32 noundef 66)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %2, align 4
  br label %68, !llvm.loop !11

99:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %128, %99
  %101 = load i32, i32* %2, align 4
  %102 = icmp slt i32 %101, 15
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  call void @reset()
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 0, i64 %105, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = icmp ne i8* %106, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3)
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  call void @abort() #3
  unreachable

109:                                              ; preds = %103
  %110 = load i32, i32* %2, align 4
  call void @check(i32 noundef 3, i32 noundef %110, i32 noundef 0)
  %111 = load i8, i8* @A, align 1
  %112 = sext i8 %111 to i32
  %113 = trunc i32 %112 to i8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 %113, i64 %115, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8** %3, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = icmp ne i8* %116, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3)
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  call void @abort() #3
  unreachable

119:                                              ; preds = %109
  %120 = load i32, i32* %2, align 4
  call void @check(i32 noundef 3, i32 noundef %120, i32 noundef 65)
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8 66, i64 %122, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3), i8** %3, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = icmp ne i8* %123, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 3)
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  call void @abort() #3
  unreachable

126:                                              ; preds = %119
  %127 = load i32, i32* %2, align 4
  call void @check(i32 noundef 3, i32 noundef %127, i32 noundef 66)
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %100, !llvm.loop !12

131:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %160, %131
  %133 = load i32, i32* %2, align 4
  %134 = icmp slt i32 %133, 15
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  call void @reset()
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 0, i64 %137, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8** %3, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = icmp ne i8* %138, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4)
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  call void @abort() #3
  unreachable

141:                                              ; preds = %135
  %142 = load i32, i32* %2, align 4
  call void @check(i32 noundef 4, i32 noundef %142, i32 noundef 0)
  %143 = load i8, i8* @A, align 1
  %144 = sext i8 %143 to i32
  %145 = trunc i32 %144 to i8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 %145, i64 %147, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8** %3, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = icmp ne i8* %148, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4)
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  call void @abort() #3
  unreachable

151:                                              ; preds = %141
  %152 = load i32, i32* %2, align 4
  call void @check(i32 noundef 4, i32 noundef %152, i32 noundef 65)
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8 66, i64 %154, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4), i8** %3, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = icmp ne i8* %155, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 4)
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  call void @abort() #3
  unreachable

158:                                              ; preds = %151
  %159 = load i32, i32* %2, align 4
  call void @check(i32 noundef 4, i32 noundef %159, i32 noundef 66)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %2, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %2, align 4
  br label %132, !llvm.loop !13

163:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %192, %163
  %165 = load i32, i32* %2, align 4
  %166 = icmp slt i32 %165, 15
  br i1 %166, label %167, label %195

167:                                              ; preds = %164
  call void @reset()
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 0, i64 %169, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8** %3, align 8
  %170 = load i8*, i8** %3, align 8
  %171 = icmp ne i8* %170, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5)
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  call void @abort() #3
  unreachable

173:                                              ; preds = %167
  %174 = load i32, i32* %2, align 4
  call void @check(i32 noundef 5, i32 noundef %174, i32 noundef 0)
  %175 = load i8, i8* @A, align 1
  %176 = sext i8 %175 to i32
  %177 = trunc i32 %176 to i8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 %177, i64 %179, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8** %3, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = icmp ne i8* %180, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5)
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  call void @abort() #3
  unreachable

183:                                              ; preds = %173
  %184 = load i32, i32* %2, align 4
  call void @check(i32 noundef 5, i32 noundef %184, i32 noundef 65)
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8 66, i64 %186, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5), i8** %3, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = icmp ne i8* %187, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 5)
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  call void @abort() #3
  unreachable

190:                                              ; preds = %183
  %191 = load i32, i32* %2, align 4
  call void @check(i32 noundef 5, i32 noundef %191, i32 noundef 66)
  br label %192

192:                                              ; preds = %190
  %193 = load i32, i32* %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %2, align 4
  br label %164, !llvm.loop !14

195:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %224, %195
  %197 = load i32, i32* %2, align 4
  %198 = icmp slt i32 %197, 15
  br i1 %198, label %199, label %227

199:                                              ; preds = %196
  call void @reset()
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 0, i64 %201, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8** %3, align 8
  %202 = load i8*, i8** %3, align 8
  %203 = icmp ne i8* %202, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6)
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  call void @abort() #3
  unreachable

205:                                              ; preds = %199
  %206 = load i32, i32* %2, align 4
  call void @check(i32 noundef 6, i32 noundef %206, i32 noundef 0)
  %207 = load i8, i8* @A, align 1
  %208 = sext i8 %207 to i32
  %209 = trunc i32 %208 to i8
  %210 = load i32, i32* %2, align 4
  %211 = sext i32 %210 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 %209, i64 %211, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8** %3, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = icmp ne i8* %212, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6)
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  call void @abort() #3
  unreachable

215:                                              ; preds = %205
  %216 = load i32, i32* %2, align 4
  call void @check(i32 noundef 6, i32 noundef %216, i32 noundef 65)
  %217 = load i32, i32* %2, align 4
  %218 = sext i32 %217 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8 66, i64 %218, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6), i8** %3, align 8
  %219 = load i8*, i8** %3, align 8
  %220 = icmp ne i8* %219, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 6)
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  call void @abort() #3
  unreachable

222:                                              ; preds = %215
  %223 = load i32, i32* %2, align 4
  call void @check(i32 noundef 6, i32 noundef %223, i32 noundef 66)
  br label %224

224:                                              ; preds = %222
  %225 = load i32, i32* %2, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %2, align 4
  br label %196, !llvm.loop !15

227:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %256, %227
  %229 = load i32, i32* %2, align 4
  %230 = icmp slt i32 %229, 15
  br i1 %230, label %231, label %259

231:                                              ; preds = %228
  call void @reset()
  %232 = load i32, i32* %2, align 4
  %233 = sext i32 %232 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 0, i64 %233, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8** %3, align 8
  %234 = load i8*, i8** %3, align 8
  %235 = icmp ne i8* %234, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7)
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  call void @abort() #3
  unreachable

237:                                              ; preds = %231
  %238 = load i32, i32* %2, align 4
  call void @check(i32 noundef 7, i32 noundef %238, i32 noundef 0)
  %239 = load i8, i8* @A, align 1
  %240 = sext i8 %239 to i32
  %241 = trunc i32 %240 to i8
  %242 = load i32, i32* %2, align 4
  %243 = sext i32 %242 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 %241, i64 %243, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8** %3, align 8
  %244 = load i8*, i8** %3, align 8
  %245 = icmp ne i8* %244, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7)
  br i1 %245, label %246, label %247

246:                                              ; preds = %237
  call void @abort() #3
  unreachable

247:                                              ; preds = %237
  %248 = load i32, i32* %2, align 4
  call void @check(i32 noundef 7, i32 noundef %248, i32 noundef 65)
  %249 = load i32, i32* %2, align 4
  %250 = sext i32 %249 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8 66, i64 %250, i1 false)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7), i8** %3, align 8
  %251 = load i8*, i8** %3, align 8
  %252 = icmp ne i8* %251, getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 7)
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  call void @abort() #3
  unreachable

254:                                              ; preds = %247
  %255 = load i32, i32* %2, align 4
  call void @check(i32 noundef 7, i32 noundef %255, i32 noundef 66)
  br label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %2, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %2, align 4
  br label %228, !llvm.loop !16

259:                                              ; preds = %228
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
