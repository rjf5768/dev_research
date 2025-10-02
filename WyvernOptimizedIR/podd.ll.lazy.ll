; ModuleID = './podd.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/podd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @podd(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %8 = load i16, i16* %7, align 2
  %.not1 = icmp eq %struct.precisionType* %0, null
  br i1 %.not1, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = add i16 %11, -1
  store i16 %12, i16* %10, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %16

16:                                               ; preds = %14, %9, %6
  %17 = and i16 %8, 1
  %18 = zext i16 %17 to i32
  ret i32 %18
}

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
