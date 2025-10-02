; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/updateMetricsData.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/updateMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@updateMetricsData.name = internal global [18 x i8] c"updateMetricsData\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/updateMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.updateMetricsData = private unnamed_addr constant [34 x i8] c"void updateMetricsData(Metrics *)\00", align 1
@.str.2 = private unnamed_addr constant [202 x i8] c"!( metrics->lastCommand != INIT && metrics->lastCommand != INSERT && metrics->lastCommand != QUERY && metrics->lastCommand != DELETE && metrics->lastCommand != NONE && metrics->lastCommand != INVALID )\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"lastTimeMark doesn't seem to be set\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateMetricsData(%struct.Metrics* noundef %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.CommandMetric*, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %5 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %6 = icmp ne %struct.Metrics* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #4
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %16 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %31 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 5
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %24, %19, %14, %9
  br label %41

40:                                               ; preds = %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([202 x i8], [202 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #4
  unreachable

41:                                               ; preds = %39
  %42 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %43 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %48 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %47, i32 0, i32 3
  store %struct.CommandMetric* %48, %struct.CommandMetric** %4, align 8
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %51 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %56 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %55, i32 0, i32 4
  store %struct.CommandMetric* %56, %struct.CommandMetric** %4, align 8
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %64 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %63, i32 0, i32 5
  store %struct.CommandMetric* %64, %struct.CommandMetric** %4, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %67 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %66, i32 0, i32 6
  store i32 5, i32* %67, align 8
  br label %121

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %46
  %71 = call i64 @getTime()
  %72 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %73 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  call void @errorMessage(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @updateMetricsData.name, i64 0, i64 0), i8 noundef signext 1)
  call void @flushErrorMessage()
  br label %118

79:                                               ; preds = %70
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %82 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %88 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %92 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i64, i64* %3, align 8
  %97 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %98 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i64, i64* %3, align 8
  %101 = sitofp i64 %100 to double
  %102 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %103 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %101
  store double %105, double* %103, align 8
  %106 = load i64, i64* %3, align 8
  %107 = sitofp i64 %106 to double
  %108 = load i64, i64* %3, align 8
  %109 = sitofp i64 %108 to double
  %110 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %111 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %110, i32 0, i32 3
  %112 = load double, double* %111, align 8
  %113 = call double @llvm.fmuladd.f64(double %107, double %109, double %112)
  store double %113, double* %111, align 8
  %114 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %115 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %99, %78
  %119 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %120 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %119, i32 0, i32 6
  store i32 5, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %65
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @flushErrorMessage() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
