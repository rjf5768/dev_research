; ModuleID = './charsequence.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/03-testtrie/charsequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.charsequence = type { i8*, i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"OUT OF MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ATTEMPTED POP ON EMPTY SEQUENCE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_reset(%struct.charsequence* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #4
  br label %7

7:                                                ; preds = %4, %1
  %8 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #4
  %9 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = icmp eq i8* %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %12) #5
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 1
  store i64 16, i64* %15, align 8
  %16 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  store i64 0, i64* %16, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_push(%struct.charsequence* nocapture noundef %0, i8 noundef signext %1) #0 {
  %3 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @charsequence_reset(%struct.charsequence* noundef %0)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @realloc(i8* noundef %18, i64 noundef %16) #4
  %20 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = icmp eq i8* %19, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %23) #5
  br label %25

25:                                               ; preds = %22, %13
  br label %26

26:                                               ; preds = %25, %7
  %27 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %1, i8* %31, align 1
  %32 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @charsequence_pop(%struct.charsequence* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %6) #5
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 %12
  %15 = load i8, i8* %14, align 1
  ret i8 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @charsequence_val(%struct.charsequence* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, 1
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 1) #4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %8) #5
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %0, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef %12, i64 noundef %14) #4
  ret i8* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
