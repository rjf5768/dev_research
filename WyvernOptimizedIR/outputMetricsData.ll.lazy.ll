; ModuleID = './outputMetricsData.ll'
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
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq %struct.Metrics* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  call void @calcMetricsData(%struct.Metrics* noundef nonnull %1) #5
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* nonnull %0)
  %10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 noundef %11) #5
  %13 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 noundef %14) #5
  %16 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 noundef %17) #5
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* nonnull %0)
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 3, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %21) #5
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 3, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %24) #5
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 3, i32 6
  %27 = load double, double* %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %27) #5
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 3, i32 7
  %30 = load double, double* %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %30) #5
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* nonnull %0)
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 4, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %34) #5
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 4, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %37) #5
  %39 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 4, i32 6
  %40 = load double, double* %39, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %40) #5
  %42 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 4, i32 7
  %43 = load double, double* %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %43) #5
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* nonnull %0)
  %46 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 5, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 noundef %47) #5
  %49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 5, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 noundef %50) #5
  %52 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 5, i32 6
  %53 = load double, double* %52, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), double noundef %53) #5
  %55 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i64 0, i32 5, i32 7
  %56 = load double, double* %55, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), double noundef %56) #5
  ret void

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @calcMetricsData(%struct.Metrics* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
