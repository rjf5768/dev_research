; ModuleID = './pr64255.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp eq i64 %0, 1
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  %.not1 = icmp eq i64 %1, 1
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3, %2
  call void @abort() #2
  unreachable

5:                                                ; preds = %3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %18

3:                                                ; preds = %1
  %4 = icmp sgt i64 %0, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  %7 = sub i64 0, %0
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i64 [ %0, %5 ], [ %7, %6 ]
  %10 = icmp sgt i64 %0, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  %13 = sub i64 0, %0
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i64 [ %0, %11 ], [ %13, %12 ]
  %.not1 = icmp eq i64 %15, %9
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  unreachable

17:                                               ; preds = %14
  call void @bar(i64 noundef %0, i64 noundef %9)
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i64 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
