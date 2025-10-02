; ModuleID = './stringI.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/stringI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CH = dso_local global i8 32, align 1
@LEX_LEN = dso_local global i32 128, align 4
@FRONT = dso_local global i8* null, align 8
@BACK = dso_local global i8* null, align 8
@LEXEME = dso_local global [129 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @GETCHR(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = trunc i32 %2 to i8
  store i8 %3, i8* @CH, align 1
  %4 = load i8*, i8** @FRONT, align 8
  %5 = load i8*, i8** @BACK, align 8
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %5 to i64
  %8 = sub i64 %6, %7
  %9 = load i32, i32* @LEX_LEN, align 4
  %10 = add nsw i32 %9, -3
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i8*, i8** @FRONT, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** @FRONT, align 8
  %16 = load i8, i8* @CH, align 1
  store i8 %16, i8* %15, align 1
  %17 = load i8*, i8** @FRONT, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_LINE(i8** nocapture noundef writeonly %0, %struct._IO_FILE* noundef %1) #0 {
  store i8 0, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), align 16
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), i8** @BACK, align 8
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 -1, i64 128), i8** @FRONT, align 8
  call void @GETCHR(%struct._IO_FILE* noundef %1)
  br label %3

3:                                                ; preds = %9, %2
  %4 = load i8, i8* @CH, align 1
  %.not = icmp eq i8 %4, 10
  br i1 %.not, label %7, label %5

5:                                                ; preds = %3
  %6 = call i32 @feof(%struct._IO_FILE* noundef %1) #3
  %.not1 = icmp eq i32 %6, 0
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i1 [ false, %3 ], [ %.not1, %5 ]
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @GETCHR(%struct._IO_FILE* noundef %1)
  br label %3, !llvm.loop !4

10:                                               ; preds = %7
  %11 = load i8*, i8** @FRONT, align 8
  store i8 0, i8* %11, align 1
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), i8** %0, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
