; ModuleID = './initMetricsData.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/initMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/initMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.initMetricsData = private unnamed_addr constant [32 x i8] c"void initMetricsData(Metrics *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initMetricsData(%struct.Metrics* noundef writeonly %0) #0 {
  %.not = icmp eq %struct.Metrics* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.initMetricsData, i64 0, i64 0)) #3
  unreachable

4:                                                ; preds = %2
  call void @initTime() #4
  %5 = call i64 @getTime() #4
  %6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 1
  store i64 %5, i64* %7, align 8
  %8 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 2
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 0
  store i64 -2147483647, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 2
  store double 0.000000e+00, double* %11, align 8
  %12 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 3
  store double 0.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 4
  store i64 -2147483647, i64* %13, align 8
  %14 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 5
  store i64 2147483647, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %15, align 8
  %16 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %16, align 8
  %17 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 0
  store i64 -2147483647, i64* %17, align 8
  %18 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 2
  store double 0.000000e+00, double* %19, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 3
  store double 0.000000e+00, double* %20, align 8
  %21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 4
  store i64 -2147483647, i64* %21, align 8
  %22 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 5
  store i64 2147483647, i64* %22, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %23, align 8
  %24 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %24, align 8
  %25 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 0
  store i64 -2147483647, i64* %25, align 8
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 2
  store double 0.000000e+00, double* %27, align 8
  %28 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 3
  store double 0.000000e+00, double* %28, align 8
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 4
  store i64 -2147483647, i64* %29, align 8
  %30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 5
  store i64 2147483647, i64* %30, align 8
  %31 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %31, align 8
  %32 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %32, align 8
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 6
  store i32 5, i32* %33, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @initTime() #2

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
