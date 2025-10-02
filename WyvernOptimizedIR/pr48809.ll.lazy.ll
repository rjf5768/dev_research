; ModuleID = './pr48809.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48809.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = sext i8 %0 to i32
  switch i32 %2, label %38 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
    i32 12, label %15
    i32 13, label %16
    i32 14, label %17
    i32 15, label %18
    i32 16, label %19
    i32 17, label %20
    i32 18, label %21
    i32 19, label %22
    i32 20, label %23
    i32 21, label %24
    i32 22, label %25
    i32 23, label %26
    i32 24, label %27
    i32 25, label %28
    i32 26, label %29
    i32 27, label %30
    i32 28, label %31
    i32 29, label %32
    i32 30, label %33
    i32 31, label %34
    i32 32, label %35
    i32 98, label %36
    i32 -62, label %37
  ]

3:                                                ; preds = %1
  br label %38

4:                                                ; preds = %1
  br label %38

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  br label %38

16:                                               ; preds = %1
  br label %38

17:                                               ; preds = %1
  br label %38

18:                                               ; preds = %1
  br label %38

19:                                               ; preds = %1
  br label %38

20:                                               ; preds = %1
  br label %38

21:                                               ; preds = %1
  br label %38

22:                                               ; preds = %1
  br label %38

23:                                               ; preds = %1
  br label %38

24:                                               ; preds = %1
  br label %38

25:                                               ; preds = %1
  br label %38

26:                                               ; preds = %1
  br label %38

27:                                               ; preds = %1
  br label %38

28:                                               ; preds = %1
  br label %38

29:                                               ; preds = %1
  br label %38

30:                                               ; preds = %1
  br label %38

31:                                               ; preds = %1
  br label %38

32:                                               ; preds = %1
  br label %38

33:                                               ; preds = %1
  br label %38

34:                                               ; preds = %1
  br label %38

35:                                               ; preds = %1
  br label %38

36:                                               ; preds = %1
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %1
  %.0 = phi i32 [ 0, %1 ], [ 19, %37 ], [ 18, %36 ], [ 31, %35 ], [ 10, %34 ], [ 17, %33 ], [ 111, %32 ], [ 105, %31 ], [ 102, %30 ], [ 31, %29 ], [ 106, %28 ], [ 28, %27 ], [ 8, %26 ], [ 31, %25 ], [ 107, %24 ], [ 5, %23 ], [ 19, %22 ], [ 2, %21 ], [ 7, %20 ], [ 31, %19 ], [ 10, %18 ], [ 17, %17 ], [ 111, %16 ], [ 15, %15 ], [ 12, %14 ], [ 31, %13 ], [ 16, %12 ], [ 28, %11 ], [ 8, %10 ], [ 31, %9 ], [ 17, %8 ], [ 5, %7 ], [ 19, %6 ], [ 2, %5 ], [ 7, %4 ], [ 1, %3 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(i8 noundef signext 98)
  %.not = icmp eq i32 %1, 18
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = call i32 @foo(i8 noundef signext 97)
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 @foo(i8 noundef signext 99)
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = call i32 @foo(i8 noundef signext -62)
  %.not3 = icmp eq i32 %8, 19
  br i1 %.not3, label %9, label %13

9:                                                ; preds = %7
  %10 = call i32 @foo(i8 noundef signext -63)
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %11, label %13

11:                                               ; preds = %9
  %12 = call i32 @foo(i8 noundef signext -61)
  %.not5 = icmp eq i32 %12, 0
  br i1 %.not5, label %14, label %13

13:                                               ; preds = %11, %9, %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = call i32 @foo(i8 noundef signext 28)
  %.not6 = icmp eq i32 %15, 105
  br i1 %.not6, label %16, label %20

16:                                               ; preds = %14
  %17 = call i32 @foo(i8 noundef signext 27)
  %.not7 = icmp eq i32 %17, 102
  br i1 %.not7, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @foo(i8 noundef signext 29)
  %.not8 = icmp eq i32 %19, 111
  br i1 %.not8, label %21, label %20

20:                                               ; preds = %18, %16, %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %20, %13, %6
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
