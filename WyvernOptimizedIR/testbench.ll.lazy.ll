; ModuleID = './testbench.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/testbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%8.8X\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runTestbench(i32 noundef %0, i8* noundef %1, i8* nocapture noundef readnone %2) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = call noalias i8* @malloc(i64 noundef %5) #3
  %7 = bitcast i8* %6 to i32*
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #3
  %11 = sext i32 %0 to i64
  %12 = call i64 @fread(i8* noundef %6, i64 noundef %11, i64 noundef 4, %struct._IO_FILE* noundef %10) #3
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %10) #3
  br label %14

14:                                               ; preds = %31, %3
  %.0 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %15 = icmp slt i32 %.0, %0
  br i1 %15, label %16, label %33

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %28, %16
  %.01 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %18 = icmp slt i32 %.01, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds i32, i32* %7, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = lshr i32 %22, 8
  %25 = call i32 @calc(i32 noundef %23, i32 noundef %24) #3
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19
  %29 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !4

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !6

33:                                               ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %35

35:                                               ; preds = %42, %33
  %.1 = phi i32 [ 0, %33 ], [ %43, %42 ]
  %36 = icmp slt i32 %.1, %0
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds i32, i32* %9, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %40) #3
  br label %42

42:                                               ; preds = %37
  %43 = add nuw nsw i32 %.1, 128
  br label %35, !llvm.loop !7

44:                                               ; preds = %35
  call void @free(i8* noundef %6) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @calc(i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
