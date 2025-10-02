; ModuleID = './switch-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/switch-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  switch i32 %0, label %3 [
    i32 4, label %2
    i32 6, label %2
    i32 9, label %2
    i32 11, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2
  %.0 = phi i32 [ 31, %3 ], [ 30, %2 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %31, %0
  %.0 = phi i32 [ -1, %0 ], [ %32, %31 ]
  %2 = icmp slt i32 %.0, 66
  br i1 %2, label %3, label %33

3:                                                ; preds = %1
  %4 = call i32 @foo(i32 noundef %.0)
  %5 = icmp eq i32 %.0, 4
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %.not4 = icmp eq i32 %4, 30
  br i1 %.not4, label %8, label %7

7:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br label %30

9:                                                ; preds = %3
  %10 = icmp eq i32 %.0, 6
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %.not3 = icmp eq i32 %4, 30
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %29

14:                                               ; preds = %9
  %15 = icmp eq i32 %.0, 9
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %.not2 = icmp eq i32 %4, 30
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  br label %28

19:                                               ; preds = %14
  %20 = icmp eq i32 %.0, 11
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %.not1 = icmp eq i32 %4, 30
  br i1 %.not1, label %23, label %22

22:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %21
  br label %27

24:                                               ; preds = %19
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %26, label %25

25:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %13
  br label %30

30:                                               ; preds = %29, %8
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !4

33:                                               ; preds = %1
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %25, %22, %17, %12, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
