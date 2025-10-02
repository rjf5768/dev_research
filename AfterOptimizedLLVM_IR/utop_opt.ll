; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/utop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/utop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @utop(i32 noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca %struct.precisionType*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 2)
  store %struct.precisionType* %6, %struct.precisionType** %5, align 8
  %7 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %8 = icmp eq %struct.precisionType* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %12 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 3
  store i8 0, i8* %12, align 2
  %13 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 4
  %15 = getelementptr inbounds [1 x i16], [1 x i16]* %14, i64 0, i64 0
  store i16* %15, i16** %4, align 8
  br label %16

16:                                               ; preds = %24, %10
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 65535
  %19 = trunc i32 %18 to i16
  %20 = load i16*, i16** %4, align 8
  %21 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %21, i16** %4, align 8
  store i16 %19, i16* %20, align 2
  %22 = load i32, i32* %3, align 4
  %23 = lshr i32 %22, 16
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %16, label %27, !llvm.loop !4

27:                                               ; preds = %24
  %28 = load i16*, i16** %4, align 8
  %29 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %29, i32 0, i32 4
  %31 = getelementptr inbounds [1 x i16], [1 x i16]* %30, i64 0, i64 0
  %32 = ptrtoint i16* %28 to i64
  %33 = ptrtoint i16* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 2
  %36 = trunc i64 %35 to i16
  %37 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %38 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %37, i32 0, i32 2
  store i16 %36, i16* %38, align 2
  %39 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %40 = call %struct.precisionType* @presult(%struct.precisionType* noundef %39)
  store %struct.precisionType* %40, %struct.precisionType** %2, align 8
  br label %41

41:                                               ; preds = %27, %9
  %42 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %42
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
