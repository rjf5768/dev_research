; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-12.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"abc\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = call i32 @is_end_of_statement() #2
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** @p, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** @p, align 8
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define internal i32 @is_end_of_statement() #1 {
  %1 = load i8*, i8** @p, align 8
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** @p, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 59
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i8*, i8** @p, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 33
  br label %15

15:                                               ; preds = %10, %5, %0
  %16 = phi i1 [ true, %5 ], [ true, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** @p, align 8
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
