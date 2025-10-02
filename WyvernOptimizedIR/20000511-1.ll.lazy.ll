; ModuleID = './20000511-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000511-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #3
  unreachable

4:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  br i1 true, label %2, label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1, %0
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %3, label %4

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 2, %3 ], [ 0, %4 ]
  call void @f(i32 noundef %6, i32 noundef 2)
  call void @f(i32 noundef 2, i32 noundef 2)
  call void @f(i32 noundef 4, i32 noundef 4)
  call void @f(i32 noundef 2, i32 noundef 2)
  call void @f(i32 noundef 0, i32 noundef 0)
  call void @f(i32 noundef 2, i32 noundef 2)
  br i1 true, label %10, label %7

7:                                                ; preds = %5
  br i1 undef, label %8, label %9

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %7
  br label %10

10:                                               ; preds = %9, %5
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %11, label %14

11:                                               ; preds = %10
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %11
  br label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 1, %13 ], [ 0, %14 ]
  call void @f(i32 noundef %16, i32 noundef 1)
  br i1 true, label %17, label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %15
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %19, label %20

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19, %18
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %21, label %22

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %20
  call void @f(i32 noundef 0, i32 noundef 0)
  br i1 true, label %23, label %24

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %22
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %25, label %26

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %24
  call void @f(i32 noundef 0, i32 noundef 0)
  br i1 false, label %29, label %27

27:                                               ; preds = %26
  br i1 true, label %29, label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28, %27, %26
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 false, label %30, label %33

30:                                               ; preds = %29
  br i1 true, label %32, label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %30
  br label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %32
  %35 = phi i32 [ 1, %32 ], [ 0, %33 ]
  call void @f(i32 noundef %35, i32 noundef 0)
  br i1 true, label %37, label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %34
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %39, label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %37
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %41, label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %39
  call void @f(i32 noundef 0, i32 noundef 0)
  br i1 true, label %43, label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %41
  call void @f(i32 noundef 1, i32 noundef 1)
  br i1 true, label %45, label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %43
  call void @f(i32 noundef 0, i32 noundef 0)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
