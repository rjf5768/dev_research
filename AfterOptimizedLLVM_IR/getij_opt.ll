; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getij.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getij.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getij(i8* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 65
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 72
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 65
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %88

27:                                               ; preds = %14, %3
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 74
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 84
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 66
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %87

46:                                               ; preds = %33, %27
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 104
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 97
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %86

65:                                               ; preds = %52, %46
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 106
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 116
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 98
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %85

84:                                               ; preds = %71, %65
  store i32 0, i32* %4, align 4
  br label %120

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %58
  br label %87

87:                                               ; preds = %86, %39
  br label %88

88:                                               ; preds = %87, %20
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  store i32 %93, i32* %8, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 10
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %100, %104
  %106 = sub nsw i32 %105, 48
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %98, %88
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 19, %108
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 18
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %120

119:                                              ; preds = %114, %107
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %118, %84
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
