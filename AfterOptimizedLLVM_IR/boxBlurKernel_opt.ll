; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/boxBlurKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/boxBlurKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @boxBlurKernel(i32 noundef %0, i32 noundef %1, [1024 x i32]* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [1024 x i32]* %2, [1024 x i32]** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i32 81, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %87, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %90

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %83, %27
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 -1, %36
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %68, %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 -1, %43
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load [1024 x i32]*, [1024 x i32]** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x i32], [1024 x i32]* %50, i64 %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %55, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %45, !llvm.loop !4

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %38, !llvm.loop !6

71:                                               ; preds = %38
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, %19
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %74, i32* %82, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %29, !llvm.loop !7

86:                                               ; preds = %29
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %21, !llvm.loop !8

90:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
