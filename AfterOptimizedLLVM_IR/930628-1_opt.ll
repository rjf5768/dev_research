; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930628-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x i32], [1 x [2 x double]] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(double* noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load double*, double** %4, align 8
  %7 = load double*, double** %5, align 8
  %8 = icmp eq double* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #2
  unreachable

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  ret i32 %11
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [2 x %struct.anon]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x [2 x [4 x [2 x float]]]], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %112, %0
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %115

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %108, %13
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %111

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %104, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %107

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %100, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %103

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x [2 x [4 x [2 x float]]]], [4 x [2 x [4 x [2 x float]]]]* %9, i64 0, i64 %36
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x [4 x [2 x float]]], [2 x [4 x [2 x float]]]* %37, i64 0, i64 %39
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %40, i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x float], [2 x float]* %43, i64 0, i64 %45
  store float 1.000000e+03, float* %46, align 4
  br label %99

47:                                               ; preds = %30, %26
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %83, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x [2 x %struct.anon]], [4 x [2 x %struct.anon]]* %2, i64 0, i64 %57
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %58, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* %62, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x double], [2 x double]* %65, i64 0, i64 0
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x [2 x %struct.anon]], [4 x [2 x %struct.anon]]* %2, i64 0, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %69, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 1
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* %73, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x double], [2 x double]* %76, i64 0, i64 0
  %78 = call i32 @f(double* noundef %66, double* noundef %77)
  br label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %52, !llvm.loop !4

82:                                               ; preds = %52
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %48, !llvm.loop !6

86:                                               ; preds = %48
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x [2 x [4 x [2 x float]]]], [4 x [2 x [4 x [2 x float]]]]* %9, i64 0, i64 %88
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2 x [4 x [2 x float]]], [2 x [4 x [2 x float]]]* %89, i64 0, i64 %91
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %92, i64 0, i64 %94
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x float], [2 x float]* %95, i64 0, i64 %97
  store float 1.000000e+03, float* %98, align 4
  br label %99

99:                                               ; preds = %86, %34
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %23, !llvm.loop !7

103:                                              ; preds = %23
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %19, !llvm.loop !8

107:                                              ; preds = %19
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %15, !llvm.loop !9

111:                                              ; preds = %15
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %10, !llvm.loop !10

115:                                              ; preds = %10
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
