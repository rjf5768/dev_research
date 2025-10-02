; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990222-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990222-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = dso_local global [4 x i8] c"199\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 3), i8** %2, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %5, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %7, 1
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %5, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sgt i32 %10, 57
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  store i8 48, i8* %13, align 1
  br label %3, !llvm.loop !4

14:                                               ; preds = %3
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 0), align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 50
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 1), align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 48
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 2), align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 48
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14
  call void @abort() #2
  unreachable

27:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
