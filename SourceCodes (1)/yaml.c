; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/yaml.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/yaml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@output = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"PathFinder_%d-%d-%d_%d-%d-%d.yaml\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d/%d/%d, %d:%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\0AWriting YAML: %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Mini-Application Name\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PathFinder\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Mini-Application Version\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1.0.0\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Run Date/Time\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Compiler Version\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Compiler Flags\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"MPI\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"OpenMP\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%s: %lf\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLOpen() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.tm* null, %struct.tm** %2, align 8
  %5 = call noalias i8* @calloc(i64 noundef 200, i64 noundef 1) #3
  store i8* %5, i8** %3, align 8
  %6 = call noalias i8* @calloc(i64 noundef 200, i64 noundef 1) #3
  store i8* %6, i8** %4, align 8
  %7 = call i64 @time(i64* noundef %1) #3
  %8 = call %struct.tm* @localtime(i64* noundef %1) #3
  store %struct.tm* %8, %struct.tm** %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %10 = icmp ne %struct._IO_FILE* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.tm*, %struct.tm** %2, align 8
  %19 = icmp eq %struct.tm* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %0
  br label %74

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.tm*, %struct.tm** %2, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1900
  %27 = load %struct.tm*, %struct.tm** %2, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = load %struct.tm*, %struct.tm** %2, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tm*, %struct.tm** %2, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tm*, %struct.tm** %2, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tm*, %struct.tm** %2, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %22, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %26, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42) #3
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.tm*, %struct.tm** %2, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1900
  %49 = load %struct.tm*, %struct.tm** %2, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load %struct.tm*, %struct.tm** %2, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tm*, %struct.tm** %2, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tm*, %struct.tm** %2, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tm*, %struct.tm** %2, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %44, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %48, i32 noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %61, i32 noundef %64) #3
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef %66)
  %68 = load i8*, i8** %3, align 8
  %69 = call noalias %struct._IO_FILE* @fopen(i8* noundef %68, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %69, %struct._IO_FILE** @output, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %71 = icmp ne %struct._IO_FILE* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %21
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i8*, i8** %4, align 8
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %73)
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %74

74:                                               ; preds = %20, %72, %21
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteString(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %9, i8* noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLClose() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4)
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteInt(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* noundef %9, i32 noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteDouble(i8* noundef %0, double noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load double, double* %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef %9, double noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteFloat(i8* noundef %0, float noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load float, float* %4, align 4
  %11 = fpext float %10 to double
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %9, double noundef %11)
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
