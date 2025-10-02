; ModuleID = './debug.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s [%d .. %d]: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gsm_debug_words(i8* noundef %0, i32 noundef %1, i32 noundef %2, i16* nocapture noundef readonly %3) #0 {
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i32 noundef %1, i32 noundef %2) #2
  br label %7

7:                                                ; preds = %24, %4
  %.01 = phi i32 [ %1, %4 ], [ %15, %24 ]
  %.0 = phi i32 [ 0, %4 ], [ %.1, %24 ]
  %.not = icmp sgt i32 %.01, %2
  br i1 %.not, label %25, label %8

8:                                                ; preds = %7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i16, i16* %3, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %13) #2
  %15 = add nsw i32 %.01, 1
  %16 = add nsw i32 %.0, 1
  %17 = icmp sgt i32 %.0, 6
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = icmp slt i32 %15, %2
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %21) #3
  br label %23

23:                                               ; preds = %20, %18
  br label %24

24:                                               ; preds = %23, %8
  %.1 = phi i32 [ 0, %23 ], [ %16, %8 ]
  br label %7, !llvm.loop !4

25:                                               ; preds = %7
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %26) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gsm_debug_longwords(i8* noundef %0, i32 noundef %1, i32 noundef %2, i64* nocapture noundef readonly %3) #0 {
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i32 noundef %1, i32 noundef %2) #2
  br label %7

7:                                                ; preds = %23, %4
  %.01 = phi i32 [ %1, %4 ], [ %14, %23 ]
  %.0 = phi i32 [ 0, %4 ], [ %.1, %23 ]
  %.not = icmp sgt i32 %.01, %2
  br i1 %.not, label %24, label %8

8:                                                ; preds = %7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i64, i64* %3, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef %12) #2
  %14 = add nsw i32 %.01, 1
  %15 = add nsw i32 %.0, 1
  %16 = icmp sgt i32 %.0, 6
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = icmp slt i32 %14, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %20) #3
  br label %22

22:                                               ; preds = %19, %17
  br label %23

23:                                               ; preds = %22, %8
  %.1 = phi i32 [ 0, %22 ], [ %15, %8 ]
  br label %7, !llvm.loop !6

24:                                               ; preds = %7
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %25) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gsm_debug_longword(i8* noundef %0, i64 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0, i64 noundef %1) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gsm_debug_word(i8* noundef %0, i16 noundef signext %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = sext i16 %1 to i64
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0, i64 noundef %4) #2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
