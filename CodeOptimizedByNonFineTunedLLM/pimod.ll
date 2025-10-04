; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pimod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pimod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pimod\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pimod(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %7, align 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %11 = icmp ne %struct.precisionType* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %14 = bitcast %struct.precisionType* %13 to i16*
  %15 = load i16, i16* %14, align 2
  %16 = add i16 %15, 1
  store i16 %16, i16* %14, align 2
  %17 = zext i16 %15 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ false, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 0, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %8, align 2
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %8, align 2
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp sge i32 %34, 65536
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %86

38:                                               ; preds = %32
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %86

44:                                               ; preds = %38
  %45 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %46 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %45, i32 0, i32 4
  %47 = getelementptr inbounds [1 x i16], [1 x i16]* %46, i64 0, i64 0
  %48 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %47, i64 %52
  store i16* %53, i16** %5, align 8
  store i16 0, i16* %7, align 2
  br label %54

54:                                               ; preds = %69, %44
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = shl i32 %56, 16
  store i32 %57, i32* %6, align 4
  %58 = load i16*, i16** %5, align 8
  %59 = getelementptr inbounds i16, i16* %58, i32 -1
  store i16* %59, i16** %5, align 8
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i16, i16* %8, align 2
  %66 = zext i16 %65 to i32
  %67 = urem i32 %64, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %7, align 2
  br label %69

69:                                               ; preds = %54
  %70 = load i16*, i16** %5, align 8
  %71 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %72 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %71, i32 0, i32 4
  %73 = getelementptr inbounds [1 x i16], [1 x i16]* %72, i64 0, i64 0
  %74 = icmp ugt i16* %70, %73
  br i1 %74, label %54, label %75, !llvm.loop !4

75:                                               ; preds = %69
  %76 = load i16, i16* %7, align 2
  %77 = zext i16 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %79 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %78, i32 0, i32 3
  %80 = load i8, i8* %79, align 2
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %42, %36
  %87 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %88 = icmp ne %struct.precisionType* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %91 = bitcast %struct.precisionType* %90 to i16*
  %92 = load i16, i16* %91, align 2
  %93 = add i16 %92, -1
  store i16 %93, i16* %91, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %98 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %97)
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %96, %89, %86
  %101 = phi i1 [ false, %89 ], [ false, %86 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %9, align 4
  ret i32 %103
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
