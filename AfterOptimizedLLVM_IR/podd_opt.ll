; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/podd.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/podd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @podd(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %4 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %5 = icmp ne %struct.precisionType* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %8 = bitcast %struct.precisionType* %7 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 2
  %11 = zext i16 %9 to i32
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  %16 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %18 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 4
  %19 = getelementptr inbounds [1 x i16], [1 x i16]* %18, i64 0, i64 0
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %24 = icmp ne %struct.precisionType* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %27 = bitcast %struct.precisionType* %26 to i16*
  %28 = load i16, i16* %27, align 2
  %29 = add i16 %28, -1
  store i16 %29, i16* %27, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %34 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %25, %13
  %37 = phi i1 [ false, %25 ], [ false, %13 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
