; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/print.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [15 x i8] c"%s            \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"          %s  \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Undefined \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s    \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CONTROL   SYMBOL\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"SECTION   NAME     ADDRESS   LENGTH\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"-----------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"M%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"G%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"L%s%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@START_ADDRESS = dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"S%s%s\0A\00", align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [6 x i8], align 1
  store %struct.SYMBOL_TABLE_ENTRY* %0, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %7 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %6, null
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %10 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %9, i32 0, i32 5
  %11 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %10, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %11, %struct._IO_FILE* noundef %12)
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %20 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %19, i32 0, i32 0
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %20, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef %21)
  br label %29

23:                                               ; preds = %8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %25 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %26 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %25, i32 0, i32 0
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %26, i64 0, i64 0
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %31 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %32, i32 noundef 16, i32 noundef 5, i8* noundef %33)
  %34 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %35 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %45

41:                                               ; preds = %29
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %47 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %52 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %53, i32 noundef 16, i32 noundef 6, i8* noundef %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %56 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %56)
  br label %61

58:                                               ; preds = %45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %2
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @NUM_TO_STR(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %0, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %11 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %11, %struct._IO_FILE* noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [7 x i8], align 1
  store %struct.SYMBOL_TABLE_ENTRY* %0, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %7 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %6, null
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %10 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %9, i32 0, i32 5
  %11 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %10, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %11, %struct._IO_FILE* noundef %12)
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %20 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %19, i32 0, i32 0
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %20, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %21)
  br label %45

23:                                               ; preds = %8
  %24 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %25 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %24, i32 0, i32 1
  %26 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %31 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %32 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i32 0, i32 0
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %32, i64 0, i64 0
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %33)
  br label %44

35:                                               ; preds = %23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %38 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %37, i32 0, i32 1
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %38, i64 0, i64 0
  %40 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %41 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %40, i32 0, i32 0
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %41, i64 0, i64 0
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %39, i8* noundef %42)
  br label %44

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %47 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %48, i32 noundef 16, i32 noundef 6, i8* noundef %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %51)
  %53 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %54 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  %59 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %60, i32 noundef 16, i32 noundef 6, i8* noundef %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %63)
  br label %65

65:                                               ; preds = %57, %45
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_EXEC(i8* noundef %0, %struct.SYMBOL_TABLE_ENTRY* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [6 x i8], align 1
  store i8* %0, i8** %4, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %1, %struct.SYMBOL_TABLE_ENTRY** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %8 = load i32, i32* @START_ADDRESS, align 4
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %8, i32 noundef 16, i32 noundef 5, i8* noundef %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef %11)
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %5, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %13, %struct._IO_FILE* noundef %14)
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @OUTPUT_MEM to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef %15, %struct._IO_FILE* noundef %16)
  ret void
}

declare dso_local void @OUTPUT_MEM(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
