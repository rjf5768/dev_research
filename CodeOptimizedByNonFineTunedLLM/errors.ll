; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/treecc/errors.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@TreeCCErrorFile = dso_local global %struct._IO_FILE* null, align 8
@TreeCCErrorStripPath = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"line %ld: \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCError(%struct.TreeCCInput* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca %struct.TreeCCInput*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %9 = icmp ne %struct.TreeCCInput* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i8* [ %13, %10 ], [ null, %14 ]
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %18 = icmp ne %struct.TreeCCInput* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %21 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ]
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @ReportError(i8* noundef %16, i64 noundef %25, i8* noundef %26, %struct.__va_list_tag* noundef %27)
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  %30 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %31 = icmp ne %struct.TreeCCInput* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %34 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %33, i32 0, i32 7
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %24
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @ReportError(i8* noundef %0, i64 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.__va_list_tag*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %8, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %11 = icmp ne %struct._IO_FILE* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %13, %struct._IO_FILE** @TreeCCErrorFile, align 8
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load i32, i32* @TreeCCErrorStripPath, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* noundef %21) #5
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %47, %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 92
  br label %45

45:                                               ; preds = %36, %27, %24
  %46 = phi i1 [ false, %27 ], [ false, %24 ], [ %44, %36 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %24, !llvm.loop !4

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %50, %17
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %58 = call i32 @fputs(i8* noundef %56, %struct._IO_FILE* noundef %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %60 = call i32 @putc(i32 noundef 58, %struct._IO_FILE* noundef %59)
  br label %61

61:                                               ; preds = %55, %14
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %63)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.__va_list_tag*, %struct.__va_list_tag** %8, align 8
  %68 = call i32 @vfprintf(%struct._IO_FILE* noundef %65, i8* noundef %66, %struct.__va_list_tag* noundef %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %70 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %72 = call i32 @fflush(%struct._IO_FILE* noundef %71)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCErrorOnLine(%struct.TreeCCInput* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, ...) #0 {
  %5 = alloca %struct.TreeCCInput*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  call void @ReportError(i8* noundef %12, i64 noundef %13, i8* noundef %14, %struct.__va_list_tag* noundef %15)
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_end(i8* %17)
  %18 = load %struct.TreeCCInput*, %struct.TreeCCInput** %5, align 8
  %19 = icmp ne %struct.TreeCCInput* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %5, align 8
  %22 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %21, i32 0, i32 7
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCAbort(%struct.TreeCCInput* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca %struct.TreeCCInput*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %9 = icmp ne %struct.TreeCCInput* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i8* [ %13, %10 ], [ null, %14 ]
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %18 = icmp ne %struct.TreeCCInput* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %3, align 8
  %21 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ]
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @ReportError(i8* noundef %16, i64 noundef %25, i8* noundef %26, %struct.__va_list_tag* noundef %27)
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCDebug(i64 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i64, i64* %3, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %10, i8* noundef %11, %struct.__va_list_tag* noundef %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %14)
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_end(i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @fflush(%struct._IO_FILE* noundef %18)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef %0) #0 {
  %2 = alloca %struct.TreeCCInput*, align 8
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %2, align 8
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %2, align 8
  %4 = icmp ne %struct.TreeCCInput* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %2, align 8
  %7 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %2, align 8
  %12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 @fputs(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %16)
  br label %18

18:                                               ; preds = %10, %5, %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 @fputs(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %19)
  call void @exit(i32 noundef 1) #6
  unreachable
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
