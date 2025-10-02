; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/record.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@LOCATION = dso_local global i32 0, align 4
@IS_INITIALIZED = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"INITIALIZE_RECORD called illegally.\0A\00", align 1
@INIT_RECORD = dso_local global [81 x i8] zeroinitializer, align 16
@RECORD = dso_local global [81 x i8] zeroinitializer, align 16
@MAX_SIZE = dso_local global i32 0, align 4
@NEXT_COL = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PRT_RECORD called illegally.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ADD_TO_RECORD called illegally.\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PRT_TEXT_RECORD called illegally.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"ADD_TO_TEXT_RECORD called illegally.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @INITIALIZE_RECORD(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 80
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* noundef %8) #4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @IS_INITIALIZED, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %7, %2
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %26

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strcpy(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0), i8* noundef %19) #5
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strcpy(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef %21) #5
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* @MAX_SIZE, align 4
  %24 = call i64 @strlen(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @NEXT_COL, align 4
  store i32 1, i32* @IS_INITIALIZED, align 4
  br label %26

26:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_RECORD(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load i32, i32* @IS_INITIALIZED, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %14

7:                                                ; preds = %1
  %8 = call i32 @strcmp(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0)) #4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %7
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_RECORD(i8* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @IS_INITIALIZED, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %6, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load i32, i32* @NEXT_COL, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* noundef %12) #4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = add nsw i32 %11, %14
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @PRT_RECORD(%struct._IO_FILE* noundef %19)
  %20 = load i32, i32* @MAX_SIZE, align 4
  call void @INITIALIZE_RECORD(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0), i32 noundef %20)
  %21 = load i32, i32* @NEXT_COL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %27, %10
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @NEXT_COL, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i64 0, i64 %34
  %36 = load i8*, i8** %3, align 8
  %37 = call i8* @strcpy(i8* noundef %35, i8* noundef %36) #5
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @NEXT_COL, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @NEXT_COL, align 4
  br label %43

41:                                               ; preds = %29
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @INITIALIZE_TEXT_RECORD() #0 {
  call void @INITIALIZE_RECORD(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef 60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load i32, i32* @IS_INITIALIZED, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %21

7:                                                ; preds = %1
  %8 = call i32 @strcmp(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0)) #4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %13 = load i32, i32* @LOCATION, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %13, i32 noundef 16, i32 noundef 6, %struct._IO_FILE* noundef %14)
  %15 = load i32, i32* @NEXT_COL, align 4
  %16 = sdiv i32 %15, 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %16, i32 noundef 16, i32 noundef 2, %struct._IO_FILE* noundef %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0))
  br label %20

20:                                               ; preds = %10, %7
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %21

21:                                               ; preds = %20, %5
  ret void
}

declare dso_local void @PRT_NUM(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_TEXT_RECORD(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* noundef %9) #4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @IS_INITIALIZED, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 1, i32* %7, align 4
  br label %50

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @LOCATION, align 4
  %24 = load i32, i32* @NEXT_COL, align 4
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %30)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %32

32:                                               ; preds = %29, %22, %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @NEXT_COL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @MAX_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %42)
  %43 = call i64 @strlen(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #4
  %44 = udiv i64 %43, 2
  %45 = load i32, i32* @LOCATION, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %49

49:                                               ; preds = %41, %35, %32
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @NEXT_COL, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i64 0, i64 %55
  %57 = load i8*, i8** %4, align 8
  %58 = call i8* @strcpy(i8* noundef %56, i8* noundef %57) #5
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NEXT_COL, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @NEXT_COL, align 4
  br label %64

62:                                               ; preds = %50
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %53
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
