; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/DuffsDevice.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/DuffsDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sum(i16* noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = srem i32 %12, 8
  switch i32 %13, label %100 [
    i32 0, label %14
    i32 7, label %25
    i32 6, label %35
    i32 5, label %45
    i32 4, label %55
    i32 3, label %65
    i32 2, label %75
    i32 1, label %85
  ]

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %95, %14
  %16 = load i16*, i16** %6, align 8
  %17 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %17, i16** %6, align 8
  %18 = load i16, i16* %16, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16*, i16** %5, align 8
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %22, %19
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %20, align 2
  br label %25

25:                                               ; preds = %3, %15
  %26 = load i16*, i16** %6, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %6, align 8
  %28 = load i16, i16* %26, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16*, i16** %5, align 8
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, %29
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %30, align 2
  br label %35

35:                                               ; preds = %3, %25
  %36 = load i16*, i16** %6, align 8
  %37 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %37, i16** %6, align 8
  %38 = load i16, i16* %36, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16*, i16** %5, align 8
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %39
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %40, align 2
  br label %45

45:                                               ; preds = %3, %35
  %46 = load i16*, i16** %6, align 8
  %47 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %47, i16** %6, align 8
  %48 = load i16, i16* %46, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16*, i16** %5, align 8
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, %49
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %50, align 2
  br label %55

55:                                               ; preds = %3, %45
  %56 = load i16*, i16** %6, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %6, align 8
  %58 = load i16, i16* %56, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16*, i16** %5, align 8
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %62, %59
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %60, align 2
  br label %65

65:                                               ; preds = %3, %55
  %66 = load i16*, i16** %6, align 8
  %67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %67, i16** %6, align 8
  %68 = load i16, i16* %66, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16*, i16** %5, align 8
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %72, %69
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %70, align 2
  br label %75

75:                                               ; preds = %3, %65
  %76 = load i16*, i16** %6, align 8
  %77 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %77, i16** %6, align 8
  %78 = load i16, i16* %76, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16*, i16** %5, align 8
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %82, %79
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %80, align 2
  br label %85

85:                                               ; preds = %3, %75
  %86 = load i16*, i16** %6, align 8
  %87 = getelementptr inbounds i16, i16* %86, i32 1
  store i16* %87, i16** %6, align 8
  %88 = load i16, i16* %86, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16*, i16** %5, align 8
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = add nsw i32 %92, %89
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %90, align 2
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %15, label %99, !llvm.loop !4

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %3
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i16], align 16
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i16 0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 100
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [100 x i16], [100 x i16]* %2, i64 0, i64 %12
  store i16 %10, i16* %13, align 2
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %5, !llvm.loop !6

17:                                               ; preds = %5
  %18 = getelementptr inbounds [100 x i16], [100 x i16]* %2, i64 0, i64 0
  %19 = call i32 @sum(i16* noundef %3, i16* noundef %18, i32 noundef 100)
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %21)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
