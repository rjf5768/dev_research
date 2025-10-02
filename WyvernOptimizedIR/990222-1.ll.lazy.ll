; ModuleID = './990222-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990222-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = dso_local global [4 x i8] c"199\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 3), %0 ], [ %2, %6 ]
  %2 = getelementptr inbounds i8, i8* %.0, i64 -1
  %3 = load i8, i8* %2, align 1
  %4 = add i8 %3, 1
  store i8 %4, i8* %2, align 1
  %5 = icmp sgt i8 %4, 57
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8 48, i8* %2, align 1
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  %8 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 0), align 1
  %.not = icmp eq i8 %8, 50
  br i1 %.not, label %9, label %13

9:                                                ; preds = %7
  %10 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 1), align 1
  %.not1 = icmp eq i8 %10, 48
  br i1 %.not1, label %11, label %13

11:                                               ; preds = %9
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @line, i64 0, i64 2), align 1
  %.not2 = icmp eq i8 %12, 48
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %11, %9, %7
  call void @abort() #2
  unreachable

14:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
