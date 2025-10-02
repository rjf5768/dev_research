; ModuleID = './clearLine.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/clearLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local void @clearLine(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @fgetc(%struct._IO_FILE* noundef %0) #2
  br label %3

3:                                                ; preds = %9, %1
  %.0.in = phi i32 [ %2, %1 ], [ %10, %9 ]
  %.not = icmp eq i32 %.0.in, -1
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  %.not1 = icmp eq i32 %.0.in, 10
  br i1 %.not1, label %7, label %5

5:                                                ; preds = %4
  %6 = icmp ne i32 %.0.in, 13
  br label %7

7:                                                ; preds = %5, %4, %3
  %8 = phi i1 [ false, %4 ], [ false, %3 ], [ %6, %5 ]
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = call i32 @fgetc(%struct._IO_FILE* noundef %0) #2
  br label %3, !llvm.loop !4

11:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
