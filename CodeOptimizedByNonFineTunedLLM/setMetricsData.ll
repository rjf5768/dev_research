; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/setMetricsData.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/setMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/setMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.setMetricsData = private unnamed_addr constant [44 x i8] c"void setMetricsData(Metrics *, CommandType)\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"command == INIT || command == INSERT || command == QUERY || command == DELETE || command == NONE || command == INVALID\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @setMetricsData(%struct.Metrics* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Metrics*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.Metrics* %0, %struct.Metrics** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %7 = icmp ne %struct.Metrics* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %13, %10
  br label %30

29:                                               ; preds = %25
  call void @__assert_fail(i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #3
  unreachable

30:                                               ; preds = %28
  %31 = call i64 @getTime()
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %37 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %40 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %39, i32 0, i32 6
  store i32 1, i32* %40, align 8
  br label %66

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %50 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %49, i32 0, i32 6
  store i32 2, i32* %50, align 8
  br label %65

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %57 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %60 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %59, i32 0, i32 6
  store i32 3, i32* %60, align 8
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %63 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %62, i32 0, i32 6
  store i32 5, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %34
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
