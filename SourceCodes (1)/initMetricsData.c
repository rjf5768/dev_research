; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/initMetricsData.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/initMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/initMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.initMetricsData = private unnamed_addr constant [32 x i8] c"void initMetricsData(Metrics *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initMetricsData(%struct.Metrics* noundef %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca i64, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %4 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %5 = icmp ne %struct.Metrics* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.initMetricsData, i64 0, i64 0)) #3
  unreachable

8:                                                ; preds = %6
  call void @initTime()
  %9 = call i64 @getTime()
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %12 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %18 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %20, i32 0, i32 0
  store i64 -2147483647, i64* %21, align 8
  %22 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %26, i32 0, i32 2
  store double 0.000000e+00, double* %27, align 8
  %28 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %29, i32 0, i32 3
  store double 0.000000e+00, double* %30, align 8
  %31 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %32 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %32, i32 0, i32 4
  store i64 -2147483647, i64* %33, align 8
  %34 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %35 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %35, i32 0, i32 5
  store i64 2147483647, i64* %36, align 8
  %37 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %38 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %38, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %39, align 8
  %40 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %41 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %41, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %42, align 8
  %43 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %44, i32 0, i32 0
  store i64 -2147483647, i64* %45, align 8
  %46 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %50 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %50, i32 0, i32 2
  store double 0.000000e+00, double* %51, align 8
  %52 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %53 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %53, i32 0, i32 3
  store double 0.000000e+00, double* %54, align 8
  %55 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %56 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %56, i32 0, i32 4
  store i64 -2147483647, i64* %57, align 8
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %59, i32 0, i32 5
  store i64 2147483647, i64* %60, align 8
  %61 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %62, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %63, align 8
  %64 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %65 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %65, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %66, align 8
  %67 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %68 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %68, i32 0, i32 0
  store i64 -2147483647, i64* %69, align 8
  %70 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %71 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %74 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %74, i32 0, i32 2
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %77 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %77, i32 0, i32 3
  store double 0.000000e+00, double* %78, align 8
  %79 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %80 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %80, i32 0, i32 4
  store i64 -2147483647, i64* %81, align 8
  %82 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %83 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %83, i32 0, i32 5
  store i64 2147483647, i64* %84, align 8
  %85 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %86 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %86, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %87, align 8
  %88 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %89 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %89, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %90, align 8
  %91 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %92 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %91, i32 0, i32 6
  store i32 5, i32* %92, align 8
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
