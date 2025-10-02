; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/stringI.c'
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
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* @CH, align 1
  %6 = load i8*, i8** @FRONT, align 8
  %7 = load i8*, i8** @BACK, align 8
  %8 = ptrtoint i8* %6 to i64
  %9 = ptrtoint i8* %7 to i64
  %10 = sub i64 %8, %9
  %11 = load i32, i32* @LEX_LEN, align 4
  %12 = sub nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i8*, i8** @FRONT, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @FRONT, align 8
  %18 = load i8, i8* @CH, align 1
  %19 = load i8*, i8** @FRONT, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i8*, i8** @FRONT, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @GET_LINE(i8** noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i8 0, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), align 16
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), i8** @BACK, align 8
  %5 = load i8*, i8** @BACK, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %6, i8** @FRONT, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GETCHR(%struct._IO_FILE* noundef %7)
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i8, i8* @CH, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %14 = call i32 @feof(%struct._IO_FILE* noundef %13) #3
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @GETCHR(%struct._IO_FILE* noundef %20)
  br label %8, !llvm.loop !4

21:                                               ; preds = %17
  %22 = load i8*, i8** @FRONT, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i64 0, i64 0), i8** %23, align 8
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
