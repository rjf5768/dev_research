; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/parse_settings.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/parse_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"LOAD_PENALTY\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"STORE_PENALTY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EARLY_SPEED\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NO_FORWARDING\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"INST_MIX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"EPOCH_LENGTH\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"CPULIMIT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CONFIGS\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SHOW_SPEEDUP\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"THREAD_PEN\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"COMMIT_PEN\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"EPOCH_LENGTH_AS_NUM_EPOCHS\00", align 1
@pattern = dso_local global [17 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)], align 16
@settings = dso_local global [17 x i32] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Could not find file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_settings(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call noalias i8* @malloc(i64 noundef 100) #5
  store i8* %6, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 17
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %12
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %7, !llvm.loop !4

17:                                               ; preds = %7
  %18 = load i8*, i8** %2, align 8
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %3, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* noundef %23)
  call void @exit(i32 noundef 1) #6
  unreachable

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %68, %40, %25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %28 = call i32 @feof(%struct._IO_FILE* noundef %27) #5
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i8* @fgets(i8* noundef %32, i32 noundef 100, %struct._IO_FILE* noundef %33)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %26, !llvm.loop !6

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strtok(i8* noundef %42, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %44

44:                                               ; preds = %65, %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 17
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pattern, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* noundef %51, i8* noundef %52) #7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strlen(i8* noundef %57) #7
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = call i32 @atoi(i8* noundef %60) #7
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %47
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %44, !llvm.loop !7

68:                                               ; preds = %44
  br label %26, !llvm.loop !6

69:                                               ; preds = %26
  %70 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %70) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
