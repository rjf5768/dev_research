; ModuleID = './record.ll'
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
@str = private unnamed_addr constant [36 x i8] c"INITIALIZE_RECORD called illegally.\00", align 1
@str.1 = private unnamed_addr constant [29 x i8] c"PRT_RECORD called illegally.\00", align 1
@str.2 = private unnamed_addr constant [32 x i8] c"ADD_TO_RECORD called illegally.\00", align 1
@str.3 = private unnamed_addr constant [34 x i8] c"PRT_TEXT_RECORD called illegally.\00", align 1
@str.4 = private unnamed_addr constant [37 x i8] c"ADD_TO_TEXT_RECORD called illegally.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @INITIALIZE_RECORD(i8* noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 80
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %6 = sext i32 %1 to i64
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @IS_INITIALIZED, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %8, %4, %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str, i64 0, i64 0))
  br label %16

11:                                               ; preds = %8
  %12 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %0) #6
  %13 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %0) #6
  store i32 %1, i32* @MAX_SIZE, align 4
  %14 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #5
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @NEXT_COL, align 4
  store i32 1, i32* @IS_INITIALIZED, align 4
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_RECORD(%struct._IO_FILE* noundef %0) #0 {
  %2 = load i32, i32* @IS_INITIALIZED, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.1, i64 0, i64 0))
  br label %9

4:                                                ; preds = %1
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %8, label %6

6:                                                ; preds = %4
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #6
  br label %8

8:                                                ; preds = %6, %4
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_RECORD(i8* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = load i32, i32* @IS_INITIALIZED, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %21

5:                                                ; preds = %2
  %6 = load i32, i32* @NEXT_COL, align 4
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  call void @PRT_RECORD(%struct._IO_FILE* noundef %1)
  %13 = load i32, i32* @MAX_SIZE, align 4
  call void @INITIALIZE_RECORD(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0), i32 noundef %13)
  %14 = load i32, i32* @NEXT_COL, align 4
  %15 = add nsw i32 %14, %8
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %12
  %.0 = phi i32 [ 1, %18 ], [ 0, %12 ]
  br label %20

20:                                               ; preds = %19, %5
  %.1 = phi i32 [ %.0, %19 ], [ 0, %5 ]
  br label %21

21:                                               ; preds = %20, %4
  %.01 = phi i32 [ %8, %20 ], [ undef, %4 ]
  %.2 = phi i32 [ %.1, %20 ], [ 1, %4 ]
  %.not2 = icmp eq i32 %.2, 0
  br i1 %.not2, label %22, label %29

22:                                               ; preds = %21
  %23 = load i32, i32* @NEXT_COL, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i64 0, i64 %24
  %26 = call i8* @strcpy(i8* noundef nonnull %25, i8* noundef nonnull dereferenceable(1) %0) #6
  %27 = load i32, i32* @NEXT_COL, align 4
  %28 = add nsw i32 %27, %.01
  store i32 %28, i32* @NEXT_COL, align 4
  br label %30

29:                                               ; preds = %21
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @INITIALIZE_TEXT_RECORD() #0 {
  call void @INITIALIZE_RECORD(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef 60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %0) #0 {
  %2 = load i32, i32* @IS_INITIALIZED, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.3, i64 0, i64 0))
  br label %12

4:                                                ; preds = %1
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @INIT_RECORD, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %11, label %6

6:                                                ; preds = %4
  %fputc = call i32 @fputc(i32 84, %struct._IO_FILE* %0)
  %7 = load i32, i32* @LOCATION, align 4
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %7, i32 noundef 16, i32 noundef 6, %struct._IO_FILE* noundef %0) #6
  %8 = load i32, i32* @NEXT_COL, align 4
  %9 = sdiv i32 %8, 2
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %9, i32 noundef 16, i32 noundef 2, %struct._IO_FILE* noundef %0) #6
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #6
  br label %11

11:                                               ; preds = %6, %4
  store i32 0, i32* @IS_INITIALIZED, align 4
  br label %12

12:                                               ; preds = %11, %3
  ret void
}

declare dso_local void @PRT_NUM(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_TEXT_RECORD(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %5 = trunc i64 %4 to i32
  %6 = load i32, i32* @IS_INITIALIZED, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %10, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = icmp slt i32 %8, %5
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %3
  br label %31

11:                                               ; preds = %7
  br i1 false, label %18, label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @LOCATION, align 4
  %14 = load i32, i32* @NEXT_COL, align 4
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %13, %15
  %.not2 = icmp eq i32 %16, %1
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %12
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %2)
  store i32 %1, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %18

18:                                               ; preds = %17, %12, %11
  br i1 false, label %30, label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @NEXT_COL, align 4
  %21 = add nsw i32 %20, %5
  %22 = load i32, i32* @MAX_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  call void @PRT_TEXT_RECORD(%struct._IO_FILE* noundef %2)
  %25 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @RECORD, i64 0, i64 0)) #5
  %26 = lshr i64 %25, 1
  %27 = load i32, i32* @LOCATION, align 4
  %28 = trunc i64 %26 to i32
  %29 = add i32 %27, %28
  store i32 %29, i32* @LOCATION, align 4
  call void @INITIALIZE_TEXT_RECORD()
  br label %30

30:                                               ; preds = %24, %19, %18
  br label %31

31:                                               ; preds = %30, %10
  %.not1 = phi i1 [ true, %30 ], [ false, %10 ]
  br i1 %.not1, label %32, label %39

32:                                               ; preds = %31
  %33 = load i32, i32* @NEXT_COL, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [81 x i8], [81 x i8]* @RECORD, i64 0, i64 %34
  %36 = call i8* @strcpy(i8* noundef nonnull %35, i8* noundef nonnull dereferenceable(1) %0) #6
  %37 = load i32, i32* @NEXT_COL, align 4
  %38 = add nsw i32 %37, %5
  store i32 %38, i32* @NEXT_COL, align 4
  br label %40

39:                                               ; preds = %31
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %32
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
