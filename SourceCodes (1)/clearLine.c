; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/clearLine.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/clearLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local void @clearLine(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @fgetc(%struct._IO_FILE* noundef %4)
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 13
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = phi i1 [ false, %10 ], [ false, %7 ], [ %15, %13 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i32 @fgetc(%struct._IO_FILE* noundef %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  br label %7, !llvm.loop !4

22:                                               ; preds = %16
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
