; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputMetricsData.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/outputMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.outputMetricsData = private unnamed_addr constant [42 x i8] c"void outputMetricsData(FILE *, Metrics *)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DIS Data Management Metrics\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"    total time  = %li msecs\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"    input time  = %li msecs\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"    output time = %li msecs\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    Insert Commmand Metrics:\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"        best time          = %li msecs\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"        worst time         = %li msecs\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"        average            = %f msecs\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"        standard deviation = %f msecs\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"    Query Commmand Metrics:\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"    Delete Commmand Metrics:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outputMetricsData(%struct._IO_FILE* noundef %0, %struct.Metrics* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.Metrics*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.Metrics* %1, %struct.Metrics** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #3
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %11 = icmp ne %struct.Metrics* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #3
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  call void @calcMetricsData(%struct.Metrics* noundef %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %24 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %25 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 noundef %26)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %29 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 noundef %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %36 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %37 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %43 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %49, i32 0, i32 6
  %51 = load double, double* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %54 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %55 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %55, i32 0, i32 7
  %57 = load double, double* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %62 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %63 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %68 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %69 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %71)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %74 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %75 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %75, i32 0, i32 6
  %77 = load double, double* %76, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %80 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %81 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %81, i32 0, i32 7
  %83 = load double, double* %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %83)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %88 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %89 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %94 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %95 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %97)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %100 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %101 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %101, i32 0, i32 6
  %103 = load double, double* %102, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %103)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %106 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %107 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %107, i32 0, i32 7
  %109 = load double, double* %108, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %109)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @calcMetricsData(%struct.Metrics* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

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
