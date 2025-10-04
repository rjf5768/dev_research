; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48809.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48809.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %41 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
    i32 11, label %17
    i32 12, label %18
    i32 13, label %19
    i32 14, label %20
    i32 15, label %21
    i32 16, label %22
    i32 17, label %23
    i32 18, label %24
    i32 19, label %25
    i32 20, label %26
    i32 21, label %27
    i32 22, label %28
    i32 23, label %29
    i32 24, label %30
    i32 25, label %31
    i32 26, label %32
    i32 27, label %33
    i32 28, label %34
    i32 29, label %35
    i32 30, label %36
    i32 31, label %37
    i32 32, label %38
    i32 98, label %39
    i32 -62, label %40
  ]

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %41

7:                                                ; preds = %1
  store i32 7, i32* %3, align 4
  br label %41

8:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %41

9:                                                ; preds = %1
  store i32 19, i32* %3, align 4
  br label %41

10:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %41

11:                                               ; preds = %1
  store i32 17, i32* %3, align 4
  br label %41

12:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

13:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %41

14:                                               ; preds = %1
  store i32 28, i32* %3, align 4
  br label %41

15:                                               ; preds = %1
  store i32 16, i32* %3, align 4
  br label %41

16:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

17:                                               ; preds = %1
  store i32 12, i32* %3, align 4
  br label %41

18:                                               ; preds = %1
  store i32 15, i32* %3, align 4
  br label %41

19:                                               ; preds = %1
  store i32 111, i32* %3, align 4
  br label %41

20:                                               ; preds = %1
  store i32 17, i32* %3, align 4
  br label %41

21:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  br label %41

22:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

23:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %41

24:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %41

25:                                               ; preds = %1
  store i32 19, i32* %3, align 4
  br label %41

26:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %41

27:                                               ; preds = %1
  store i32 107, i32* %3, align 4
  br label %41

28:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

29:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %41

30:                                               ; preds = %1
  store i32 28, i32* %3, align 4
  br label %41

31:                                               ; preds = %1
  store i32 106, i32* %3, align 4
  br label %41

32:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

33:                                               ; preds = %1
  store i32 102, i32* %3, align 4
  br label %41

34:                                               ; preds = %1
  store i32 105, i32* %3, align 4
  br label %41

35:                                               ; preds = %1
  store i32 111, i32* %3, align 4
  br label %41

36:                                               ; preds = %1
  store i32 17, i32* %3, align 4
  br label %41

37:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  br label %41

38:                                               ; preds = %1
  store i32 31, i32* %3, align 4
  br label %41

39:                                               ; preds = %1
  store i32 18, i32* %3, align 4
  br label %41

40:                                               ; preds = %1
  store i32 19, i32* %3, align 4
  br label %41

41:                                               ; preds = %1, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i8 noundef signext 98)
  %3 = icmp ne i32 %2, 18
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i32 @foo(i8 noundef signext 97)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @foo(i8 noundef signext 99)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %7
  %12 = call i32 @foo(i8 noundef signext -62)
  %13 = icmp ne i32 %12, 19
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = call i32 @foo(i8 noundef signext -63)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @foo(i8 noundef signext -61)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @foo(i8 noundef signext 28)
  %23 = icmp ne i32 %22, 105
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = call i32 @foo(i8 noundef signext 27)
  %26 = icmp ne i32 %25, 102
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call i32 @foo(i8 noundef signext 29)
  %29 = icmp ne i32 %28, 111
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
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
