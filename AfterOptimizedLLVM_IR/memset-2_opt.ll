; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-2.c"
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

4:                                                ; preds = %45, %0
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  call void @reset()
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %10
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 1, i1 false)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %14
  %16 = icmp ne i8* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  call void @abort() #3
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  call void @check(i32 noundef %19, i32 noundef 1, i32 noundef 0)
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %21
  %23 = load i8, i8* @A, align 1
  %24 = sext i8 %23 to i32
  %25 = trunc i32 %24 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 %25, i64 1, i1 false)
  store i8* %22, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %28
  %30 = icmp ne i8* %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  call void @abort() #3
  unreachable

32:                                               ; preds = %18
  %33 = load i32, i32* %2, align 4
  call void @check(i32 noundef %33, i32 noundef 1, i32 noundef 65)
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %35
  call void @llvm.memset.p0i8.i64(i8* align 1 %36, i8 66, i64 1, i1 false)
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %39
  %41 = icmp ne i8* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  call void @abort() #3
  unreachable

43:                                               ; preds = %32
  %44 = load i32, i32* %2, align 4
  call void @check(i32 noundef %44, i32 noundef 1, i32 noundef 66)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %4, !llvm.loop !9

48:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  call void @reset()
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %55
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 2, i1 false)
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %59
  %61 = icmp ne i8* %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @abort() #3
  unreachable

63:                                               ; preds = %53
  %64 = load i32, i32* %2, align 4
  call void @check(i32 noundef %64, i32 noundef 2, i32 noundef 0)
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %66
  %68 = load i8, i8* @A, align 1
  %69 = sext i8 %68 to i32
  %70 = trunc i32 %69 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %67, i8 %70, i64 2, i1 false)
  store i8* %67, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %73
  %75 = icmp ne i8* %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  call void @abort() #3
  unreachable

77:                                               ; preds = %63
  %78 = load i32, i32* %2, align 4
  call void @check(i32 noundef %78, i32 noundef 2, i32 noundef 65)
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %80
  call void @llvm.memset.p0i8.i64(i8* align 1 %81, i8 66, i64 2, i1 false)
  store i8* %81, i8** %3, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %84
  %86 = icmp ne i8* %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  call void @abort() #3
  unreachable

88:                                               ; preds = %77
  %89 = load i32, i32* %2, align 4
  call void @check(i32 noundef %89, i32 noundef 2, i32 noundef 66)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %49, !llvm.loop !10

93:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %135, %93
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 8
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  call void @reset()
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %100
  call void @llvm.memset.p0i8.i64(i8* align 1 %101, i8 0, i64 3, i1 false)
  store i8* %101, i8** %3, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %104
  %106 = icmp ne i8* %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  call void @abort() #3
  unreachable

108:                                              ; preds = %98
  %109 = load i32, i32* %2, align 4
  call void @check(i32 noundef %109, i32 noundef 3, i32 noundef 0)
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %111
  %113 = load i8, i8* @A, align 1
  %114 = sext i8 %113 to i32
  %115 = trunc i32 %114 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %112, i8 %115, i64 3, i1 false)
  store i8* %112, i8** %3, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %118
  %120 = icmp ne i8* %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  call void @abort() #3
  unreachable

122:                                              ; preds = %108
  %123 = load i32, i32* %2, align 4
  call void @check(i32 noundef %123, i32 noundef 3, i32 noundef 65)
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %125
  call void @llvm.memset.p0i8.i64(i8* align 1 %126, i8 66, i64 3, i1 false)
  store i8* %126, i8** %3, align 8
  %127 = load i8*, i8** %3, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %129
  %131 = icmp ne i8* %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  call void @abort() #3
  unreachable

133:                                              ; preds = %122
  %134 = load i32, i32* %2, align 4
  call void @check(i32 noundef %134, i32 noundef 3, i32 noundef 66)
  br label %135

135:                                              ; preds = %133
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %94, !llvm.loop !11

138:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %180, %138
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %141, 8
  br i1 %142, label %143, label %183

143:                                              ; preds = %139
  call void @reset()
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %145
  call void @llvm.memset.p0i8.i64(i8* align 1 %146, i8 0, i64 4, i1 false)
  store i8* %146, i8** %3, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %149
  %151 = icmp ne i8* %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  call void @abort() #3
  unreachable

153:                                              ; preds = %143
  %154 = load i32, i32* %2, align 4
  call void @check(i32 noundef %154, i32 noundef 4, i32 noundef 0)
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %156
  %158 = load i8, i8* @A, align 1
  %159 = sext i8 %158 to i32
  %160 = trunc i32 %159 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %157, i8 %160, i64 4, i1 false)
  store i8* %157, i8** %3, align 8
  %161 = load i8*, i8** %3, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %163
  %165 = icmp ne i8* %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  call void @abort() #3
  unreachable

167:                                              ; preds = %153
  %168 = load i32, i32* %2, align 4
  call void @check(i32 noundef %168, i32 noundef 4, i32 noundef 65)
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %170
  call void @llvm.memset.p0i8.i64(i8* align 1 %171, i8 66, i64 4, i1 false)
  store i8* %171, i8** %3, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %2, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %174
  %176 = icmp ne i8* %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  call void @abort() #3
  unreachable

178:                                              ; preds = %167
  %179 = load i32, i32* %2, align 4
  call void @check(i32 noundef %179, i32 noundef 4, i32 noundef 66)
  br label %180

180:                                              ; preds = %178
  %181 = load i32, i32* %2, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %2, align 4
  br label %139, !llvm.loop !12

183:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %225, %183
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp ult i64 %186, 8
  br i1 %187, label %188, label %228

188:                                              ; preds = %184
  call void @reset()
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %190
  call void @llvm.memset.p0i8.i64(i8* align 1 %191, i8 0, i64 5, i1 false)
  store i8* %191, i8** %3, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = load i32, i32* %2, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %194
  %196 = icmp ne i8* %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  call void @abort() #3
  unreachable

198:                                              ; preds = %188
  %199 = load i32, i32* %2, align 4
  call void @check(i32 noundef %199, i32 noundef 5, i32 noundef 0)
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %201
  %203 = load i8, i8* @A, align 1
  %204 = sext i8 %203 to i32
  %205 = trunc i32 %204 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %202, i8 %205, i64 5, i1 false)
  store i8* %202, i8** %3, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = load i32, i32* %2, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %208
  %210 = icmp ne i8* %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  call void @abort() #3
  unreachable

212:                                              ; preds = %198
  %213 = load i32, i32* %2, align 4
  call void @check(i32 noundef %213, i32 noundef 5, i32 noundef 65)
  %214 = load i32, i32* %2, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %215
  call void @llvm.memset.p0i8.i64(i8* align 1 %216, i8 66, i64 5, i1 false)
  store i8* %216, i8** %3, align 8
  %217 = load i8*, i8** %3, align 8
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %219
  %221 = icmp ne i8* %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  call void @abort() #3
  unreachable

223:                                              ; preds = %212
  %224 = load i32, i32* %2, align 4
  call void @check(i32 noundef %224, i32 noundef 5, i32 noundef 66)
  br label %225

225:                                              ; preds = %223
  %226 = load i32, i32* %2, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %2, align 4
  br label %184, !llvm.loop !13

228:                                              ; preds = %184
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %270, %228
  %230 = load i32, i32* %2, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %231, 8
  br i1 %232, label %233, label %273

233:                                              ; preds = %229
  call void @reset()
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %235
  call void @llvm.memset.p0i8.i64(i8* align 1 %236, i8 0, i64 6, i1 false)
  store i8* %236, i8** %3, align 8
  %237 = load i8*, i8** %3, align 8
  %238 = load i32, i32* %2, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %239
  %241 = icmp ne i8* %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  call void @abort() #3
  unreachable

243:                                              ; preds = %233
  %244 = load i32, i32* %2, align 4
  call void @check(i32 noundef %244, i32 noundef 6, i32 noundef 0)
  %245 = load i32, i32* %2, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %246
  %248 = load i8, i8* @A, align 1
  %249 = sext i8 %248 to i32
  %250 = trunc i32 %249 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %247, i8 %250, i64 6, i1 false)
  store i8* %247, i8** %3, align 8
  %251 = load i8*, i8** %3, align 8
  %252 = load i32, i32* %2, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %253
  %255 = icmp ne i8* %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %243
  call void @abort() #3
  unreachable

257:                                              ; preds = %243
  %258 = load i32, i32* %2, align 4
  call void @check(i32 noundef %258, i32 noundef 6, i32 noundef 65)
  %259 = load i32, i32* %2, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %260
  call void @llvm.memset.p0i8.i64(i8* align 1 %261, i8 66, i64 6, i1 false)
  store i8* %261, i8** %3, align 8
  %262 = load i8*, i8** %3, align 8
  %263 = load i32, i32* %2, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %264
  %266 = icmp ne i8* %262, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %257
  call void @abort() #3
  unreachable

268:                                              ; preds = %257
  %269 = load i32, i32* %2, align 4
  call void @check(i32 noundef %269, i32 noundef 6, i32 noundef 66)
  br label %270

270:                                              ; preds = %268
  %271 = load i32, i32* %2, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %2, align 4
  br label %229, !llvm.loop !14

273:                                              ; preds = %229
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %315, %273
  %275 = load i32, i32* %2, align 4
  %276 = sext i32 %275 to i64
  %277 = icmp ult i64 %276, 8
  br i1 %277, label %278, label %318

278:                                              ; preds = %274
  call void @reset()
  %279 = load i32, i32* %2, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %280
  call void @llvm.memset.p0i8.i64(i8* align 1 %281, i8 0, i64 7, i1 false)
  store i8* %281, i8** %3, align 8
  %282 = load i8*, i8** %3, align 8
  %283 = load i32, i32* %2, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %284
  %286 = icmp ne i8* %282, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  call void @abort() #3
  unreachable

288:                                              ; preds = %278
  %289 = load i32, i32* %2, align 4
  call void @check(i32 noundef %289, i32 noundef 7, i32 noundef 0)
  %290 = load i32, i32* %2, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %291
  %293 = load i8, i8* @A, align 1
  %294 = sext i8 %293 to i32
  %295 = trunc i32 %294 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %292, i8 %295, i64 7, i1 false)
  store i8* %292, i8** %3, align 8
  %296 = load i8*, i8** %3, align 8
  %297 = load i32, i32* %2, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %298
  %300 = icmp ne i8* %296, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %288
  call void @abort() #3
  unreachable

302:                                              ; preds = %288
  %303 = load i32, i32* %2, align 4
  call void @check(i32 noundef %303, i32 noundef 7, i32 noundef 65)
  %304 = load i32, i32* %2, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %305
  call void @llvm.memset.p0i8.i64(i8* align 1 %306, i8 66, i64 7, i1 false)
  store i8* %306, i8** %3, align 8
  %307 = load i8*, i8** %3, align 8
  %308 = load i32, i32* %2, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %309
  %311 = icmp ne i8* %307, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  call void @abort() #3
  unreachable

313:                                              ; preds = %302
  %314 = load i32, i32* %2, align 4
  call void @check(i32 noundef %314, i32 noundef 7, i32 noundef 66)
  br label %315

315:                                              ; preds = %313
  %316 = load i32, i32* %2, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %2, align 4
  br label %274, !llvm.loop !15

318:                                              ; preds = %274
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %360, %318
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp ult i64 %321, 8
  br i1 %322, label %323, label %363

323:                                              ; preds = %319
  call void @reset()
  %324 = load i32, i32* %2, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %325
  call void @llvm.memset.p0i8.i64(i8* align 1 %326, i8 0, i64 8, i1 false)
  store i8* %326, i8** %3, align 8
  %327 = load i8*, i8** %3, align 8
  %328 = load i32, i32* %2, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %329
  %331 = icmp ne i8* %327, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %323
  call void @abort() #3
  unreachable

333:                                              ; preds = %323
  %334 = load i32, i32* %2, align 4
  call void @check(i32 noundef %334, i32 noundef 8, i32 noundef 0)
  %335 = load i32, i32* %2, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %336
  %338 = load i8, i8* @A, align 1
  %339 = sext i8 %338 to i32
  %340 = trunc i32 %339 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %337, i8 %340, i64 8, i1 false)
  store i8* %337, i8** %3, align 8
  %341 = load i8*, i8** %3, align 8
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %343
  %345 = icmp ne i8* %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %333
  call void @abort() #3
  unreachable

347:                                              ; preds = %333
  %348 = load i32, i32* %2, align 4
  call void @check(i32 noundef %348, i32 noundef 8, i32 noundef 65)
  %349 = load i32, i32* %2, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %350
  call void @llvm.memset.p0i8.i64(i8* align 1 %351, i8 66, i64 8, i1 false)
  store i8* %351, i8** %3, align 8
  %352 = load i8*, i8** %3, align 8
  %353 = load i32, i32* %2, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %354
  %356 = icmp ne i8* %352, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %347
  call void @abort() #3
  unreachable

358:                                              ; preds = %347
  %359 = load i32, i32* %2, align 4
  call void @check(i32 noundef %359, i32 noundef 8, i32 noundef 66)
  br label %360

360:                                              ; preds = %358
  %361 = load i32, i32* %2, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %2, align 4
  br label %319, !llvm.loop !16

363:                                              ; preds = %319
  store i32 0, i32* %2, align 4
  br label %364

364:                                              ; preds = %405, %363
  %365 = load i32, i32* %2, align 4
  %366 = sext i32 %365 to i64
  %367 = icmp ult i64 %366, 8
  br i1 %367, label %368, label %408

368:                                              ; preds = %364
  call void @reset()
  %369 = load i32, i32* %2, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %370
  call void @llvm.memset.p0i8.i64(i8* align 1 %371, i8 0, i64 9, i1 false)
  store i8* %371, i8** %3, align 8
  %372 = load i8*, i8** %3, align 8
  %373 = load i32, i32* %2, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %374
  %376 = icmp ne i8* %372, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %368
  call void @abort() #3
  unreachable

378:                                              ; preds = %368
  %379 = load i32, i32* %2, align 4
  call void @check(i32 noundef %379, i32 noundef 9, i32 noundef 0)
  %380 = load i32, i32* %2, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %381
  %383 = load i8, i8* @A, align 1
  %384 = sext i8 %383 to i32
  %385 = trunc i32 %384 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %382, i8 %385, i64 9, i1 false)
  store i8* %382, i8** %3, align 8
  %386 = load i8*, i8** %3, align 8
  %387 = load i32, i32* %2, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %388
  %390 = icmp ne i8* %386, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %378
  call void @abort() #3
  unreachable

392:                                              ; preds = %378
  %393 = load i32, i32* %2, align 4
  call void @check(i32 noundef %393, i32 noundef 9, i32 noundef 65)
  %394 = load i32, i32* %2, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %395
  call void @llvm.memset.p0i8.i64(i8* align 1 %396, i8 66, i64 9, i1 false)
  store i8* %396, i8** %3, align 8
  %397 = load i8*, i8** %3, align 8
  %398 = load i32, i32* %2, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %399
  %401 = icmp ne i8* %397, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %392
  call void @abort() #3
  unreachable

403:                                              ; preds = %392
  %404 = load i32, i32* %2, align 4
  call void @check(i32 noundef %404, i32 noundef 9, i32 noundef 66)
  br label %405

405:                                              ; preds = %403
  %406 = load i32, i32* %2, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %2, align 4
  br label %364, !llvm.loop !17

408:                                              ; preds = %364
  store i32 0, i32* %2, align 4
  br label %409

409:                                              ; preds = %450, %408
  %410 = load i32, i32* %2, align 4
  %411 = sext i32 %410 to i64
  %412 = icmp ult i64 %411, 8
  br i1 %412, label %413, label %453

413:                                              ; preds = %409
  call void @reset()
  %414 = load i32, i32* %2, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %415
  call void @llvm.memset.p0i8.i64(i8* align 1 %416, i8 0, i64 10, i1 false)
  store i8* %416, i8** %3, align 8
  %417 = load i8*, i8** %3, align 8
  %418 = load i32, i32* %2, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %419
  %421 = icmp ne i8* %417, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %413
  call void @abort() #3
  unreachable

423:                                              ; preds = %413
  %424 = load i32, i32* %2, align 4
  call void @check(i32 noundef %424, i32 noundef 10, i32 noundef 0)
  %425 = load i32, i32* %2, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %426
  %428 = load i8, i8* @A, align 1
  %429 = sext i8 %428 to i32
  %430 = trunc i32 %429 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %427, i8 %430, i64 10, i1 false)
  store i8* %427, i8** %3, align 8
  %431 = load i8*, i8** %3, align 8
  %432 = load i32, i32* %2, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %433
  %435 = icmp ne i8* %431, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %423
  call void @abort() #3
  unreachable

437:                                              ; preds = %423
  %438 = load i32, i32* %2, align 4
  call void @check(i32 noundef %438, i32 noundef 10, i32 noundef 65)
  %439 = load i32, i32* %2, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %440
  call void @llvm.memset.p0i8.i64(i8* align 1 %441, i8 66, i64 10, i1 false)
  store i8* %441, i8** %3, align 8
  %442 = load i8*, i8** %3, align 8
  %443 = load i32, i32* %2, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %444
  %446 = icmp ne i8* %442, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %437
  call void @abort() #3
  unreachable

448:                                              ; preds = %437
  %449 = load i32, i32* %2, align 4
  call void @check(i32 noundef %449, i32 noundef 10, i32 noundef 66)
  br label %450

450:                                              ; preds = %448
  %451 = load i32, i32* %2, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %2, align 4
  br label %409, !llvm.loop !18

453:                                              ; preds = %409
  store i32 0, i32* %2, align 4
  br label %454

454:                                              ; preds = %495, %453
  %455 = load i32, i32* %2, align 4
  %456 = sext i32 %455 to i64
  %457 = icmp ult i64 %456, 8
  br i1 %457, label %458, label %498

458:                                              ; preds = %454
  call void @reset()
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %460
  call void @llvm.memset.p0i8.i64(i8* align 1 %461, i8 0, i64 11, i1 false)
  store i8* %461, i8** %3, align 8
  %462 = load i8*, i8** %3, align 8
  %463 = load i32, i32* %2, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %464
  %466 = icmp ne i8* %462, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %458
  call void @abort() #3
  unreachable

468:                                              ; preds = %458
  %469 = load i32, i32* %2, align 4
  call void @check(i32 noundef %469, i32 noundef 11, i32 noundef 0)
  %470 = load i32, i32* %2, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %471
  %473 = load i8, i8* @A, align 1
  %474 = sext i8 %473 to i32
  %475 = trunc i32 %474 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %472, i8 %475, i64 11, i1 false)
  store i8* %472, i8** %3, align 8
  %476 = load i8*, i8** %3, align 8
  %477 = load i32, i32* %2, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %478
  %480 = icmp ne i8* %476, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %468
  call void @abort() #3
  unreachable

482:                                              ; preds = %468
  %483 = load i32, i32* %2, align 4
  call void @check(i32 noundef %483, i32 noundef 11, i32 noundef 65)
  %484 = load i32, i32* %2, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %485
  call void @llvm.memset.p0i8.i64(i8* align 1 %486, i8 66, i64 11, i1 false)
  store i8* %486, i8** %3, align 8
  %487 = load i8*, i8** %3, align 8
  %488 = load i32, i32* %2, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %489
  %491 = icmp ne i8* %487, %490
  br i1 %491, label %492, label %493

492:                                              ; preds = %482
  call void @abort() #3
  unreachable

493:                                              ; preds = %482
  %494 = load i32, i32* %2, align 4
  call void @check(i32 noundef %494, i32 noundef 11, i32 noundef 66)
  br label %495

495:                                              ; preds = %493
  %496 = load i32, i32* %2, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %2, align 4
  br label %454, !llvm.loop !19

498:                                              ; preds = %454
  store i32 0, i32* %2, align 4
  br label %499

499:                                              ; preds = %540, %498
  %500 = load i32, i32* %2, align 4
  %501 = sext i32 %500 to i64
  %502 = icmp ult i64 %501, 8
  br i1 %502, label %503, label %543

503:                                              ; preds = %499
  call void @reset()
  %504 = load i32, i32* %2, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %505
  call void @llvm.memset.p0i8.i64(i8* align 1 %506, i8 0, i64 12, i1 false)
  store i8* %506, i8** %3, align 8
  %507 = load i8*, i8** %3, align 8
  %508 = load i32, i32* %2, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %509
  %511 = icmp ne i8* %507, %510
  br i1 %511, label %512, label %513

512:                                              ; preds = %503
  call void @abort() #3
  unreachable

513:                                              ; preds = %503
  %514 = load i32, i32* %2, align 4
  call void @check(i32 noundef %514, i32 noundef 12, i32 noundef 0)
  %515 = load i32, i32* %2, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %516
  %518 = load i8, i8* @A, align 1
  %519 = sext i8 %518 to i32
  %520 = trunc i32 %519 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %517, i8 %520, i64 12, i1 false)
  store i8* %517, i8** %3, align 8
  %521 = load i8*, i8** %3, align 8
  %522 = load i32, i32* %2, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %523
  %525 = icmp ne i8* %521, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %513
  call void @abort() #3
  unreachable

527:                                              ; preds = %513
  %528 = load i32, i32* %2, align 4
  call void @check(i32 noundef %528, i32 noundef 12, i32 noundef 65)
  %529 = load i32, i32* %2, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %530
  call void @llvm.memset.p0i8.i64(i8* align 1 %531, i8 66, i64 12, i1 false)
  store i8* %531, i8** %3, align 8
  %532 = load i8*, i8** %3, align 8
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %534
  %536 = icmp ne i8* %532, %535
  br i1 %536, label %537, label %538

537:                                              ; preds = %527
  call void @abort() #3
  unreachable

538:                                              ; preds = %527
  %539 = load i32, i32* %2, align 4
  call void @check(i32 noundef %539, i32 noundef 12, i32 noundef 66)
  br label %540

540:                                              ; preds = %538
  %541 = load i32, i32* %2, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %2, align 4
  br label %499, !llvm.loop !20

543:                                              ; preds = %499
  store i32 0, i32* %2, align 4
  br label %544

544:                                              ; preds = %585, %543
  %545 = load i32, i32* %2, align 4
  %546 = sext i32 %545 to i64
  %547 = icmp ult i64 %546, 8
  br i1 %547, label %548, label %588

548:                                              ; preds = %544
  call void @reset()
  %549 = load i32, i32* %2, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %550
  call void @llvm.memset.p0i8.i64(i8* align 1 %551, i8 0, i64 13, i1 false)
  store i8* %551, i8** %3, align 8
  %552 = load i8*, i8** %3, align 8
  %553 = load i32, i32* %2, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %554
  %556 = icmp ne i8* %552, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %548
  call void @abort() #3
  unreachable

558:                                              ; preds = %548
  %559 = load i32, i32* %2, align 4
  call void @check(i32 noundef %559, i32 noundef 13, i32 noundef 0)
  %560 = load i32, i32* %2, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %561
  %563 = load i8, i8* @A, align 1
  %564 = sext i8 %563 to i32
  %565 = trunc i32 %564 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %562, i8 %565, i64 13, i1 false)
  store i8* %562, i8** %3, align 8
  %566 = load i8*, i8** %3, align 8
  %567 = load i32, i32* %2, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %568
  %570 = icmp ne i8* %566, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %558
  call void @abort() #3
  unreachable

572:                                              ; preds = %558
  %573 = load i32, i32* %2, align 4
  call void @check(i32 noundef %573, i32 noundef 13, i32 noundef 65)
  %574 = load i32, i32* %2, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %575
  call void @llvm.memset.p0i8.i64(i8* align 1 %576, i8 66, i64 13, i1 false)
  store i8* %576, i8** %3, align 8
  %577 = load i8*, i8** %3, align 8
  %578 = load i32, i32* %2, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %579
  %581 = icmp ne i8* %577, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %572
  call void @abort() #3
  unreachable

583:                                              ; preds = %572
  %584 = load i32, i32* %2, align 4
  call void @check(i32 noundef %584, i32 noundef 13, i32 noundef 66)
  br label %585

585:                                              ; preds = %583
  %586 = load i32, i32* %2, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %2, align 4
  br label %544, !llvm.loop !21

588:                                              ; preds = %544
  store i32 0, i32* %2, align 4
  br label %589

589:                                              ; preds = %630, %588
  %590 = load i32, i32* %2, align 4
  %591 = sext i32 %590 to i64
  %592 = icmp ult i64 %591, 8
  br i1 %592, label %593, label %633

593:                                              ; preds = %589
  call void @reset()
  %594 = load i32, i32* %2, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %595
  call void @llvm.memset.p0i8.i64(i8* align 1 %596, i8 0, i64 14, i1 false)
  store i8* %596, i8** %3, align 8
  %597 = load i8*, i8** %3, align 8
  %598 = load i32, i32* %2, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %599
  %601 = icmp ne i8* %597, %600
  br i1 %601, label %602, label %603

602:                                              ; preds = %593
  call void @abort() #3
  unreachable

603:                                              ; preds = %593
  %604 = load i32, i32* %2, align 4
  call void @check(i32 noundef %604, i32 noundef 14, i32 noundef 0)
  %605 = load i32, i32* %2, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %606
  %608 = load i8, i8* @A, align 1
  %609 = sext i8 %608 to i32
  %610 = trunc i32 %609 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %607, i8 %610, i64 14, i1 false)
  store i8* %607, i8** %3, align 8
  %611 = load i8*, i8** %3, align 8
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %613
  %615 = icmp ne i8* %611, %614
  br i1 %615, label %616, label %617

616:                                              ; preds = %603
  call void @abort() #3
  unreachable

617:                                              ; preds = %603
  %618 = load i32, i32* %2, align 4
  call void @check(i32 noundef %618, i32 noundef 14, i32 noundef 65)
  %619 = load i32, i32* %2, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %620
  call void @llvm.memset.p0i8.i64(i8* align 1 %621, i8 66, i64 14, i1 false)
  store i8* %621, i8** %3, align 8
  %622 = load i8*, i8** %3, align 8
  %623 = load i32, i32* %2, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %624
  %626 = icmp ne i8* %622, %625
  br i1 %626, label %627, label %628

627:                                              ; preds = %617
  call void @abort() #3
  unreachable

628:                                              ; preds = %617
  %629 = load i32, i32* %2, align 4
  call void @check(i32 noundef %629, i32 noundef 14, i32 noundef 66)
  br label %630

630:                                              ; preds = %628
  %631 = load i32, i32* %2, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %2, align 4
  br label %589, !llvm.loop !22

633:                                              ; preds = %589
  store i32 0, i32* %2, align 4
  br label %634

634:                                              ; preds = %675, %633
  %635 = load i32, i32* %2, align 4
  %636 = sext i32 %635 to i64
  %637 = icmp ult i64 %636, 8
  br i1 %637, label %638, label %678

638:                                              ; preds = %634
  call void @reset()
  %639 = load i32, i32* %2, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %640
  call void @llvm.memset.p0i8.i64(i8* align 1 %641, i8 0, i64 15, i1 false)
  store i8* %641, i8** %3, align 8
  %642 = load i8*, i8** %3, align 8
  %643 = load i32, i32* %2, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %644
  %646 = icmp ne i8* %642, %645
  br i1 %646, label %647, label %648

647:                                              ; preds = %638
  call void @abort() #3
  unreachable

648:                                              ; preds = %638
  %649 = load i32, i32* %2, align 4
  call void @check(i32 noundef %649, i32 noundef 15, i32 noundef 0)
  %650 = load i32, i32* %2, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %651
  %653 = load i8, i8* @A, align 1
  %654 = sext i8 %653 to i32
  %655 = trunc i32 %654 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %652, i8 %655, i64 15, i1 false)
  store i8* %652, i8** %3, align 8
  %656 = load i8*, i8** %3, align 8
  %657 = load i32, i32* %2, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %658
  %660 = icmp ne i8* %656, %659
  br i1 %660, label %661, label %662

661:                                              ; preds = %648
  call void @abort() #3
  unreachable

662:                                              ; preds = %648
  %663 = load i32, i32* %2, align 4
  call void @check(i32 noundef %663, i32 noundef 15, i32 noundef 65)
  %664 = load i32, i32* %2, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %665
  call void @llvm.memset.p0i8.i64(i8* align 1 %666, i8 66, i64 15, i1 false)
  store i8* %666, i8** %3, align 8
  %667 = load i8*, i8** %3, align 8
  %668 = load i32, i32* %2, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 0), i64 %669
  %671 = icmp ne i8* %667, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %662
  call void @abort() #3
  unreachable

673:                                              ; preds = %662
  %674 = load i32, i32* %2, align 4
  call void @check(i32 noundef %674, i32 noundef 15, i32 noundef 66)
  br label %675

675:                                              ; preds = %673
  %676 = load i32, i32* %2, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %2, align 4
  br label %634, !llvm.loop !23

678:                                              ; preds = %634
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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
