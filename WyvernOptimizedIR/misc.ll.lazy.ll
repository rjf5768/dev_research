; ModuleID = './misc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randnum.randw = internal global [2 x i32] [i32 13, i32 117], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @randwc(i32 noundef %0) #0 {
  %2 = call i32 @randnum(i32 noundef 0)
  %3 = srem i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @randnum(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  store i32 13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  store i32 117, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  br label %3

3:                                                ; preds = %2, %1
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  %5 = mul nsw i32 %4, 254754
  %6 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  %7 = mul nsw i32 %6, 529562
  %8 = add nsw i32 %5, %7
  %9 = srem i32 %8, 999563
  store i32 %4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  store i32 %9, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @abs_randwc(i32 noundef %0) #0 {
  %2 = call i32 @randwc(i32 noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = sub nsw i32 0, %2
  br label %6

6:                                                ; preds = %4, %1
  %.0 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
