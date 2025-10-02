; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/itop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/itop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @itop(i32 noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca %struct.precisionType*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 2)
  store %struct.precisionType* %6, %struct.precisionType** %5, align 8
  %7 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %8 = icmp eq %struct.precisionType* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  store %struct.precisionType* %10, %struct.precisionType** %2, align 8
  br label %51

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = trunc i32 %14 to i8
  %16 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  store i8 %15, i8* %17, align 2
  %18 = icmp ne i8 %15, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 4
  %25 = getelementptr inbounds [1 x i16], [1 x i16]* %24, i64 0, i64 0
  store i16* %25, i16** %4, align 8
  br label %26

26:                                               ; preds = %34, %22
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 65535
  %29 = trunc i32 %28 to i16
  %30 = load i16*, i16** %4, align 8
  %31 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %31, i16** %4, align 8
  store i16 %29, i16* %30, align 2
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %26, label %37, !llvm.loop !4

37:                                               ; preds = %34
  %38 = load i16*, i16** %4, align 8
  %39 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %40 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %39, i32 0, i32 4
  %41 = getelementptr inbounds [1 x i16], [1 x i16]* %40, i64 0, i64 0
  %42 = ptrtoint i16* %38 to i64
  %43 = ptrtoint i16* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 2
  %46 = trunc i64 %45 to i16
  %47 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %48 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %47, i32 0, i32 2
  store i16 %46, i16* %48, align 2
  %49 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %50 = call %struct.precisionType* @presult(%struct.precisionType* noundef %49)
  store %struct.precisionType* %50, %struct.precisionType** %2, align 8
  br label %51

51:                                               ; preds = %37, %9
  %52 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %52
}

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

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
