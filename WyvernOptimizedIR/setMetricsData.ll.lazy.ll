; ModuleID = './setMetricsData.ll'
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
define dso_local void @setMetricsData(%struct.Metrics* noundef writeonly %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.Metrics* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %1, 3
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %1, 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %1, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %15, %13, %11, %9, %7, %5
  br label %19

18:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %20 = call i64 @getTime() #4
  %21 = icmp eq i32 %1, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 1, i32* %24, align 8
  br label %39

25:                                               ; preds = %19
  %26 = icmp eq i32 %1, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 0
  store i64 %20, i64* %28, align 8
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 2, i32* %29, align 8
  br label %38

30:                                               ; preds = %25
  %31 = icmp eq i32 %1, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 0
  store i64 %20, i64* %33, align 8
  %34 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 3, i32* %34, align 8
  br label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 5, i32* %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %22
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
