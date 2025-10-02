; ModuleID = './20031010-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031010-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  br i1 %2, label %6, label %13

6:                                                ; preds = %5
  %7 = sub nsw i64 %0, %1
  br i1 %3, label %8, label %12

8:                                                ; preds = %6
  br i1 %4, label %9, label %10

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8
  %.01 = phi i64 [ %0, %9 ], [ %1, %8 ]
  %.0 = phi i64 [ %1, %9 ], [ %0, %8 ]
  %11 = sub nsw i64 %.0, %.01
  br label %12

12:                                               ; preds = %10, %6
  %.02 = phi i64 [ %11, %10 ], [ %7, %6 ]
  ret i64 %.02

13:                                               ; preds = %5
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i64 @foo(i64 noundef 2, i64 noundef 3, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #2
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
