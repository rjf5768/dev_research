; ModuleID = './updateMetricsData.ll'
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
  %.not = icmp eq %struct.Metrics* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %6 = load i32, i32* %5, align 8
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %22, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8
  %.not2 = icmp eq i32 %9, 1
  br i1 %.not2, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %.not3 = icmp eq i32 %12, 2
  br i1 %.not3, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %15 = load i32, i32* %14, align 8
  %.not4 = icmp eq i32 %15, 3
  br i1 %.not4, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %18 = load i32, i32* %17, align 8
  %.not5 = icmp eq i32 %18, 4
  br i1 %.not5, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %21 = load i32, i32* %20, align 8
  %.not6 = icmp eq i32 %21, 5
  br i1 %.not6, label %22, label %23

22:                                               ; preds = %19, %16, %13, %10, %7, %4
  br label %24

23:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([202 x i8], [202 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3
  br label %46

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4
  br label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 5, i32* %42, align 8
  br label %80

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5
  br label %45

45:                                               ; preds = %43, %34
  %.0 = phi %struct.CommandMetric* [ %35, %34 ], [ %44, %43 ]
  br label %46

46:                                               ; preds = %45, %28
  %.1 = phi %struct.CommandMetric* [ %29, %28 ], [ %.0, %45 ]
  %47 = call i64 @getTime() #5
  %48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @errorMessage(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @updateMetricsData.name, i64 0, i64 0), i8 noundef signext 1) #5
  call void @flushErrorMessage() #5
  br label %78

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 5
  store i64 %50, i64* %58, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %50, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 4
  store i64 %50, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = sitofp i64 %50 to double
  %67 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, %66
  store double %69, double* %67, align 8
  %70 = sitofp i64 %50 to double
  %71 = sitofp i64 %50 to double
  %72 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 3
  %73 = load double, double* %72, align 8
  %74 = call double @llvm.fmuladd.f64(double %70, double %71, double %73)
  store double %74, double* %72, align 8
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %.1, i64 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %65, %52
  %79 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 5, i32* %79, align 8
  br label %80

80:                                               ; preds = %78, %41
  ret void

UnifiedUnreachableBlock:                          ; preds = %23, %3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @flushErrorMessage() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
