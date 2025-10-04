; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/calc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookupTable5B = dso_local global [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16
@lookupTable3B = dso_local global [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16
@disparity0 = dso_local global i32 0, align 4
@disparity1 = dso_local global i32 1, align 4
@bigTable = dso_local global [1024 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcSetup() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 31
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 5
  %15 = or i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 7
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 3
  %20 = or i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* @lookupTable5B, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* @lookupTable3B, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 994
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @disparity0, align 4
  store i32 %36, i32* @disparity1, align 4
  br label %61

37:                                               ; preds = %2
  %38 = load i32, i32* @disparity0, align 4
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 18
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 994
  store i32 %45, i32* %9, align 4
  br label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 994
  %49 = xor i32 %48, 994
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %7, align 4
  %52 = lshr i32 %51, 19
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @disparity0, align 4
  %57 = xor i32 %56, 1
  store i32 %57, i32* @disparity1, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @disparity0, align 4
  store i32 %59, i32* @disparity1, align 4
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* %8, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 29
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @disparity1, align 4
  store i32 %71, i32* @disparity0, align 4
  br label %100

72:                                               ; preds = %61
  %73 = load i32, i32* @disparity1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = lshr i32 %74, 18
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 29
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %89

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 29
  %86 = xor i32 %85, 29
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %8, align 4
  %91 = lshr i32 %90, 19
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @disparity1, align 4
  %96 = xor i32 %95, 1
  store i32 %96, i32* @disparity0, align 4
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @disparity1, align 4
  store i32 %98, i32* @disparity0, align 4
  br label %99

99:                                               ; preds = %97, %94
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bigTableCalc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @disparity0, align 4
  %5 = shl i32 %4, 9
  %6 = load i32, i32* %2, align 4
  %7 = or i32 %5, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 16
  store i32 %12, i32* @disparity0, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 1023
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @resetDisparity() #0 {
  store i32 0, i32* @disparity0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bigTableSetup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = ashr i32 %7, 9
  store i32 %8, i32* @disparity0, align 4
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, 255
  %11 = load i32, i32* %1, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 1
  %14 = call i32 @calc(i32 noundef %10, i32 noundef %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @disparity0, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bigTable, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %3, !llvm.loop !4

25:                                               ; preds = %3
  call void @resetDisparity()
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
