; ModuleID = './print.ll'
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
  %3 = alloca [6 x i8], align 1
  %.not = icmp eq %struct.SYMBOL_TABLE_ENTRY* %0, null
  br i1 %.not, label %40, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 5
  %6 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %5, align 8
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %6, %struct._IO_FILE* noundef %1)
  %7 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %11) #4
  br label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 0, i64 0
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %14) #4
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %18, i32 noundef 16, i32 noundef 5, i8* noundef nonnull %19) #4
  %20 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %1)
  br label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %26) #4
  br label %28

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %34, i32 noundef 16, i32 noundef 6, i8* noundef nonnull %35) #4
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %36) #4
  br label %39

38:                                               ; preds = %28
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %1)
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @NUM_TO_STR(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %1)
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %1)
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %1)
  call void @PRINT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca [7 x i8], align 1
  %.not = icmp eq %struct.SYMBOL_TABLE_ENTRY* %0, null
  br i1 %.not, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 5
  %6 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %5, align 8
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %6, %struct._IO_FILE* noundef %1)
  %7 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %11) #4
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 1, i64 0
  %15 = call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 0, i64 0
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %17) #4
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 1, i64 0
  %21 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %20, i8* noundef nonnull %21) #4
  br label %23

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %10
  %25 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %26, i32 noundef 16, i32 noundef 6, i8* noundef nonnull %27) #4
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %fputs = call i32 @fputs(i8* nonnull %28, %struct._IO_FILE* %1)
  %29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %0, i64 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %34, i32 noundef 16, i32 noundef 6, i8* noundef nonnull %35) #4
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %fputs2 = call i32 @fputs(i8* nonnull %36, %struct._IO_FILE* %1)
  br label %37

37:                                               ; preds = %32, %24
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %1)
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_EXEC(i8* noundef %0, %struct.SYMBOL_TABLE_ENTRY* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca [6 x i8], align 1
  %5 = load i32, i32* @START_ADDRESS, align 4
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %5, i32 noundef 16, i32 noundef 5, i8* noundef nonnull %6) #4
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef nonnull %7) #4
  call void @OUTPUT_TABLE(%struct.SYMBOL_TABLE_ENTRY* noundef %1, %struct._IO_FILE* noundef %2)
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @OUTPUT_MEM to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef %0, %struct._IO_FILE* noundef %2) #4
  ret void
}

declare dso_local void @OUTPUT_MEM(...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
