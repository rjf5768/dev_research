; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i32 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 81985529216486895
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 85
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 81985529216486895
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 85
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %4
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %25, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 81985529216486895
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 85
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %13, %5
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %30, label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 81985529216486895
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 85
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %18, %15, %6
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %35, label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 5
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 81985529216486895
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 85
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %26, %23, %20, %17, %7
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %40, label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 6
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 81985529216486895
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 85
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %8
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %45, label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 5
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 6
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 7
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %17, align 8
  %41 = icmp ne i64 %40, 81985529216486895
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 85
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %9
  call void @abort() #2
  unreachable

46:                                               ; preds = %42
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i32 noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %50, label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 5
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 6
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 7
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %19, align 8
  %46 = icmp ne i64 %45, 81985529216486895
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 85
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41, %38, %35, %32, %29, %26, %23, %10
  call void @abort() #2
  unreachable

51:                                               ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1(i32 noundef 1, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test2(i32 noundef 1, i32 noundef 2, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test3(i32 noundef 1, i32 noundef 2, i32 noundef 3, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test4(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test5(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test6(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test7(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test8(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i64 noundef 81985529216486895, i32 noundef 85)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
