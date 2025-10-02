; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020506-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020506-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i8 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i8, i8* %3, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @abort() #2
  unreachable

43:                                               ; preds = %39
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #2
  unreachable

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i8, i8* %3, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @abort() #2
  unreachable

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @abort() #2
  unreachable

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @abort() #2
  unreachable

43:                                               ; preds = %39
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #2
  unreachable

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @abort() #2
  unreachable

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @abort() #2
  unreachable

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i16, i16* %3, align 2
  %36 = sext i16 %35 to i32
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 32768
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @abort() #2
  unreachable

43:                                               ; preds = %39
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #2
  unreachable

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i16, i16* %3, align 2
  %51 = sext i16 %50 to i32
  %52 = and i32 %51, 32768
  %53 = icmp ne i32 %52, 32768
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @abort() #2
  unreachable

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @abort() #2
  unreachable

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i16, i16* %3, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 32768
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @abort() #2
  unreachable

43:                                               ; preds = %39
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #2
  unreachable

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i16, i16* %3, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 32768
  %53 = icmp ne i32 %52, 32768
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @abort() #2
  unreachable

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @abort() #2
  unreachable

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -2147483648
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -2147483648
  %35 = icmp eq i32 %34, -2147483648
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, -2147483648
  %49 = icmp ne i32 %48, -2147483648
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #2
  unreachable

54:                                               ; preds = %50
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -2147483648
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, -2147483648
  %35 = icmp eq i32 %34, -2147483648
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, -2147483648
  %49 = icmp ne i32 %48, -2147483648
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #2
  unreachable

54:                                               ; preds = %50
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -9223372036854775808
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, -9223372036854775808
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, -9223372036854775808
  %35 = icmp eq i64 %34, -9223372036854775808
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* %3, align 8
  %48 = and i64 %47, -9223372036854775808
  %49 = icmp ne i64 %48, -9223372036854775808
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #2
  unreachable

54:                                               ; preds = %50
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test8(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -9223372036854775808
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, -9223372036854775808
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, -9223372036854775808
  %35 = icmp eq i64 %34, -9223372036854775808
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* %3, align 8
  %48 = and i64 %47, -9223372036854775808
  %49 = icmp ne i64 %48, -9223372036854775808
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #2
  unreachable

54:                                               ; preds = %50
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1(i8 noundef signext 0, i32 noundef 0)
  call void @test1(i8 noundef signext 127, i32 noundef 0)
  call void @test1(i8 noundef signext -128, i32 noundef 1)
  call void @test1(i8 noundef signext -1, i32 noundef 1)
  call void @test2(i8 noundef zeroext 0, i32 noundef 0)
  call void @test2(i8 noundef zeroext 127, i32 noundef 0)
  call void @test2(i8 noundef zeroext -128, i32 noundef 1)
  call void @test2(i8 noundef zeroext -1, i32 noundef 1)
  call void @test3(i16 noundef signext 0, i32 noundef 0)
  call void @test3(i16 noundef signext 32767, i32 noundef 0)
  call void @test3(i16 noundef signext -32768, i32 noundef 1)
  call void @test3(i16 noundef signext -1, i32 noundef 1)
  call void @test4(i16 noundef zeroext 0, i32 noundef 0)
  call void @test4(i16 noundef zeroext 32767, i32 noundef 0)
  call void @test4(i16 noundef zeroext -32768, i32 noundef 1)
  call void @test4(i16 noundef zeroext -1, i32 noundef 1)
  call void @test5(i32 noundef 0, i32 noundef 0)
  call void @test5(i32 noundef 2147483647, i32 noundef 0)
  call void @test5(i32 noundef -2147483648, i32 noundef 1)
  call void @test5(i32 noundef -1, i32 noundef 1)
  call void @test6(i32 noundef 0, i32 noundef 0)
  call void @test6(i32 noundef 2147483647, i32 noundef 0)
  call void @test6(i32 noundef -2147483648, i32 noundef 1)
  call void @test6(i32 noundef -1, i32 noundef 1)
  call void @test7(i64 noundef 0, i32 noundef 0)
  call void @test7(i64 noundef 9223372036854775807, i32 noundef 0)
  call void @test7(i64 noundef -9223372036854775808, i32 noundef 1)
  call void @test7(i64 noundef -1, i32 noundef 1)
  call void @test8(i64 noundef 0, i32 noundef 0)
  call void @test8(i64 noundef 9223372036854775807, i32 noundef 0)
  call void @test8(i64 noundef -9223372036854775808, i32 noundef 1)
  call void @test8(i64 noundef -1, i32 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
