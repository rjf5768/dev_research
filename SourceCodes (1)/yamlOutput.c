; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/yamlOutput.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/yamlOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@yamlFile = dso_local global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d-%02d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s.%s.yaml\00", align 1
@CoMDVariant = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Mini-Application Name    : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Mini-Application Version : %s\0A\00", align 1
@CoMDVersion = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Platform:\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"  hostname: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"test-suite\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  kernel name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"'test-suite'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"  kernel release: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"  processor: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Build:\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"  CC: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  compiler version: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"  CFLAGS: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"'-std=c99 -DDOUBLE'\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"  LDFLAGS: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"'-lm'\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  using MPI: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"  Threading: none\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"  Double Precision: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Run Date/Time: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"CoMD-serial\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlBegin() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  %4 = alloca [25 x i8], align 16
  %5 = call i32 @printRank()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %39

8:                                                ; preds = %0
  %9 = call i64 @time(i64* noundef %2) #3
  %10 = call %struct.tm* @localtime(i64* noundef %2) #3
  store %struct.tm* %10, %struct.tm** %3, align 8
  %11 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i64 0, i64 0
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1900
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tm*, %struct.tm** %3, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tm*, %struct.tm** %3, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %11, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %15, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28, i32 noundef %31) #3
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %34 = load i8*, i8** @CoMDVariant, align 8
  %35 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i64 0, i64 0
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %33, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %34, i8* noundef %35) #3
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %38 = call noalias %struct._IO_FILE* @fopen(i8* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %38, %struct._IO_FILE** @yamlFile, align 8
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @printRank() #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlAppInfo(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = call i32 @printRank()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %53

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = load i8*, i8** @CoMDVariant, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %13 = load i8*, i8** @CoMDVersion, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %36 = call i32 @builtWithMpi()
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @getTimeString(i8* noundef %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* noundef %47)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %52 = call i32 @fflush(%struct._IO_FILE* noundef %51)
  br label %53

53:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSeparator(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @builtWithMpi() #1

; Function Attrs: noinline nounwind uwtable
define internal void @getTimeString(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8 0, i8* %5, align 1
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlEnd() #0 {
  %1 = call i32 @printRank()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @yamlFile, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  br label %7

7:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
