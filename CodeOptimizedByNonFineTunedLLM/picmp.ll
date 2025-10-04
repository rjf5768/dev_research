; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/picmp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/picmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"picmp\00", align 1
@cmpError = internal global [28 x i8] c"Second arg not single digit\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @picmp(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %7 = icmp ne %struct.precisionType* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %10 = bitcast %struct.precisionType* %9 to i16*
  %11 = load i16, i16* %10, align 2
  %12 = add i16 %11, 1
  store i16 %12, i16* %10, align 2
  %13 = zext i16 %11 to i32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %19 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %20 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i32 0, i32 3
  %21 = load i8, i8* %20, align 2
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp sge i32 %28, 65536
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %34 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %40 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %39, i32 0, i32 4
  %41 = getelementptr inbounds [1 x i16], [1 x i16]* %40, i64 0, i64 0
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 0, %43
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47, %23
  br label %73

49:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp sge i32 %53, 65536
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %59 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %64, i32 0, i32 4
  %66 = getelementptr inbounds [1 x i16], [1 x i16]* %65, i64 0, i64 0
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %75 = icmp ne %struct.precisionType* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %78 = bitcast %struct.precisionType* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %80 = add i16 %79, -1
  store i16 %80, i16* %78, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %85 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %84)
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %83, %76, %73
  %88 = phi i1 [ false, %76 ], [ false, %73 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %5, align 4
  ret i32 %90
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
