; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/misc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randnum.randw = internal global [2 x i32] [i32 13, i32 117], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randwc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @randnum(i32 noundef 0)
  %4 = load i32, i32* %2, align 4
  %5 = srem i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  store i32 117, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  %9 = mul nsw i32 %8, 254754
  %10 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  %11 = mul nsw i32 %10, 529562
  %12 = add nsw i32 %9, %11
  %13 = srem i32 %12, 999563
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  store i32 %14, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @abs_randwc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @randwc(i32 noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
