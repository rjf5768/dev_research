; ModuleID = './yaml.ll'
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
  %2 = call noalias dereferenceable_or_null(200) i8* @calloc(i64 noundef 200, i64 noundef 1) #3
  %3 = call noalias dereferenceable_or_null(200) i8* @calloc(i64 noundef 200, i64 noundef 1) #3
  %4 = call i64 @time(i64* noundef nonnull %1) #3
  %5 = call %struct.tm* @localtime(i64* noundef nonnull %1) #3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %6, null
  br i1 %.not, label %7, label %13

7:                                                ; preds = %0
  %8 = icmp eq i8* %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = icmp eq i8* %3, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = icmp eq %struct.tm* %5, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %9, %7, %0
  br label %48

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1900
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28) #3
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1900
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %5, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #3
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %2) #3
  %46 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3
  store %struct._IO_FILE* %46, %struct._IO_FILE** @output, align 8
  %.not1 = icmp eq %struct._IO_FILE* %46, null
  br i1 %.not1, label %48, label %47

47:                                               ; preds = %14
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %3)
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  call void @YAMLWriteString(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %48

48:                                               ; preds = %47, %14, %13
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
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #3
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLClose() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %1, null
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %4 = call i32 @fclose(%struct._IO_FILE* noundef %3) #3
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteInt(i8* noundef %0, i32 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* noundef %0, i32 noundef %1) #3
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteDouble(i8* noundef %0, double noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef %0, double noundef %1) #3
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteFloat(i8* noundef %0, float noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = fpext float %1 to double
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %0, double noundef %6) #3
  br label %8

8:                                                ; preds = %4, %2
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
