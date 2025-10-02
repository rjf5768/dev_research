; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptou.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptou.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [5 x i8] c"ptou\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ptou(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %6 = icmp ne %struct.precisionType* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %9 = bitcast %struct.precisionType* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %18 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 3
  %20 = load i8, i8* %19, align 2
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = ptrtoint %struct.precisionType* %23 to i32
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %14
  %26 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 4
  %28 = getelementptr inbounds [1 x i16], [1 x i16]* %27, i64 0, i64 0
  %29 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %29, i32 0, i32 2
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %28, i64 %33
  store i16* %34, i16** %3, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %55, %25
  %36 = load i32, i32* %4, align 4
  %37 = load i16*, i16** %3, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 -1
  store i16* %38, i16** %3, align 8
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = sub i32 -1, %40
  %42 = lshr i32 %41, 16
  %43 = icmp ugt i32 %36, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = call %struct.precisionType* @errorp(i32 noundef 5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %46 = ptrtoint %struct.precisionType* %45 to i32
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 16
  store i32 %49, i32* %4, align 4
  %50 = load i16*, i16** %3, align 8
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i16*, i16** %3, align 8
  %57 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %57, i32 0, i32 4
  %59 = getelementptr inbounds [1 x i16], [1 x i16]* %58, i64 0, i64 0
  %60 = icmp ugt i16* %56, %59
  br i1 %60, label %35, label %61, !llvm.loop !4

61:                                               ; preds = %55, %44
  br label %62

62:                                               ; preds = %61, %22
  %63 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %64 = icmp ne %struct.precisionType* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %67 = bitcast %struct.precisionType* %66 to i16*
  %68 = load i16, i16* %67, align 2
  %69 = add i16 %68, -1
  store i16 %69, i16* %67, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %74 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %73)
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %65, %62
  %77 = phi i1 [ false, %65 ], [ false, %62 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @pfree(...) #1

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
