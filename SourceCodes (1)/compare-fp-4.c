; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pinf = dso_local global float 0.000000e+00, align 4
@ninf = dso_local global float 0.000000e+00, align 4
@NaN = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iuneq(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp ogt float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void @abort() #2
  unreachable

22:                                               ; preds = %15
  %23 = load float, float* %5, align 4
  %24 = load float, float* %6, align 4
  %25 = fcmp olt float %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load float, float* %5, align 4
  %28 = load float, float* %6, align 4
  %29 = fcmp ogt float %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @abort() #2
  unreachable

37:                                               ; preds = %30
  %38 = load float, float* %5, align 4
  %39 = load float, float* %6, align 4
  %40 = fcmp ole float %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load float, float* %5, align 4
  %43 = load float, float* %6, align 4
  %44 = fcmp uno float %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %37
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp oge float %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load float, float* %5, align 4
  %51 = load float, float* %6, align 4
  %52 = fcmp uno float %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  br label %55

55:                                               ; preds = %53, %41
  %56 = phi i1 [ false, %41 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @abort() #2
  unreachable

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ieq(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp olt float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp ogt float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %23, %11
  %27 = phi i1 [ false, %11 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @abort() #2
  unreachable

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iltgt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp ogt float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @abort() #2
  unreachable

23:                                               ; preds = %15
  %24 = load float, float* %5, align 4
  %25 = load float, float* %6, align 4
  %26 = fcmp olt float %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load float, float* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp ogt float %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @abort() #2
  unreachable

37:                                               ; preds = %31
  %38 = load float, float* %5, align 4
  %39 = load float, float* %6, align 4
  %40 = fcmp olt float %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load float, float* %5, align 4
  %43 = load float, float* %6, align 4
  %44 = fcmp oge float %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41, %37
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp olt float %46, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = load float, float* %5, align 4
  %51 = load float, float* %6, align 4
  %52 = fcmp uno float %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load float, float* %5, align 4
  %55 = load float, float* %6, align 4
  %56 = fcmp ogt float %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load float, float* %5, align 4
  %59 = load float, float* %6, align 4
  %60 = fcmp uno float %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ true, %53 ], [ %60, %57 ]
  br label %63

63:                                               ; preds = %61, %49, %45
  %64 = phi i1 [ true, %49 ], [ true, %45 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %41
  %66 = phi i1 [ false, %41 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void @abort() #2
  unreachable

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ine(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp uno float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11, %3
  %26 = phi i1 [ true, %11 ], [ true, %3 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp olt float %32, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = load float, float* %6, align 4
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load float, float* %5, align 4
  %41 = load float, float* %6, align 4
  %42 = fcmp olt float %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load float, float* %5, align 4
  %45 = load float, float* %6, align 4
  %46 = fcmp oge float %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %47, %35, %31
  %51 = phi i1 [ true, %35 ], [ true, %31 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @abort() #2
  unreachable

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunlt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #2
  unreachable

21:                                               ; preds = %15
  %22 = load float, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp oge float %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load float, float* %5, align 4
  %31 = load float, float* %6, align 4
  %32 = fcmp olt float %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #2
  unreachable

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ilt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp olt float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp uno float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i1 [ false, %11 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp ole float %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = load float, float* %6, align 4
  %38 = fcmp une float %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #2
  unreachable

45:                                               ; preds = %39
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp ole float %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load float, float* %6, align 4
  %51 = load float, float* %5, align 4
  %52 = fcmp une float %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #2
  unreachable

59:                                               ; preds = %53
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp une float %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load float, float* %5, align 4
  %65 = load float, float* %6, align 4
  %66 = fcmp ole float %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void @abort() #2
  unreachable

73:                                               ; preds = %67
  %74 = load float, float* %6, align 4
  %75 = load float, float* %5, align 4
  %76 = fcmp une float %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load float, float* %5, align 4
  %79 = load float, float* %6, align 4
  %80 = fcmp ole float %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @abort() #2
  unreachable

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunle(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp ole float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #2
  unreachable

21:                                               ; preds = %15
  %22 = load float, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp oge float %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load float, float* %5, align 4
  %31 = load float, float* %6, align 4
  %32 = fcmp ole float %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #2
  unreachable

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ile(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp ole float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp uno float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i1 [ false, %11 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp olt float %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = load float, float* %6, align 4
  %38 = fcmp oeq float %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #2
  unreachable

45:                                               ; preds = %39
  %46 = load float, float* %6, align 4
  %47 = load float, float* %5, align 4
  %48 = fcmp ogt float %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load float, float* %5, align 4
  %51 = load float, float* %6, align 4
  %52 = fcmp oeq float %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #2
  unreachable

59:                                               ; preds = %53
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp oeq float %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load float, float* %5, align 4
  %65 = load float, float* %6, align 4
  %66 = fcmp olt float %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void @abort() #2
  unreachable

73:                                               ; preds = %67
  %74 = load float, float* %6, align 4
  %75 = load float, float* %5, align 4
  %76 = fcmp oeq float %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load float, float* %5, align 4
  %79 = load float, float* %6, align 4
  %80 = fcmp olt float %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ true, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @abort() #2
  unreachable

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iungt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp ogt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #2
  unreachable

21:                                               ; preds = %15
  %22 = load float, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp oge float %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load float, float* %5, align 4
  %31 = load float, float* %6, align 4
  %32 = fcmp ogt float %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #2
  unreachable

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @igt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp uno float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i1 [ false, %11 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp oge float %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = load float, float* %6, align 4
  %38 = fcmp une float %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #2
  unreachable

45:                                               ; preds = %39
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp oge float %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load float, float* %6, align 4
  %51 = load float, float* %5, align 4
  %52 = fcmp une float %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #2
  unreachable

59:                                               ; preds = %53
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp une float %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load float, float* %5, align 4
  %65 = load float, float* %6, align 4
  %66 = fcmp oge float %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void @abort() #2
  unreachable

73:                                               ; preds = %67
  %74 = load float, float* %6, align 4
  %75 = load float, float* %5, align 4
  %76 = fcmp une float %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load float, float* %5, align 4
  %79 = load float, float* %6, align 4
  %80 = fcmp oge float %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @abort() #2
  unreachable

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunge(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp oge float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #2
  unreachable

21:                                               ; preds = %15
  %22 = load float, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp oge float %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load float, float* %5, align 4
  %31 = load float, float* %6, align 4
  %32 = fcmp oge float %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #2
  unreachable

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ige(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp olt float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp oge float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp uno float %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i1 [ false, %11 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp ogt float %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = load float, float* %6, align 4
  %38 = fcmp oeq float %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #2
  unreachable

45:                                               ; preds = %39
  %46 = load float, float* %6, align 4
  %47 = load float, float* %5, align 4
  %48 = fcmp olt float %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load float, float* %5, align 4
  %51 = load float, float* %6, align 4
  %52 = fcmp oeq float %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #2
  unreachable

59:                                               ; preds = %53
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp oeq float %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load float, float* %5, align 4
  %65 = load float, float* %6, align 4
  %66 = fcmp ogt float %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void @abort() #2
  unreachable

73:                                               ; preds = %67
  %74 = load float, float* %6, align 4
  %75 = load float, float* %5, align 4
  %76 = fcmp oeq float %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load float, float* %5, align 4
  %79 = load float, float* %6, align 4
  %80 = fcmp ogt float %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ true, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @abort() #2
  unreachable

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store float 0x7FF0000000000000, float* @pinf, align 4
  store float 0xFFF0000000000000, float* @ninf, align 4
  store float 0x7FF8000000000000, float* @NaN, align 4
  %2 = load float, float* @ninf, align 4
  %3 = load float, float* @pinf, align 4
  %4 = call i32 @iuneq(float noundef %2, float noundef %3, i32 noundef 0)
  %5 = load float, float* @NaN, align 4
  %6 = load float, float* @NaN, align 4
  %7 = call i32 @iuneq(float noundef %5, float noundef %6, i32 noundef 1)
  %8 = load float, float* @pinf, align 4
  %9 = load float, float* @ninf, align 4
  %10 = call i32 @iuneq(float noundef %8, float noundef %9, i32 noundef 0)
  %11 = call i32 @iuneq(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %12 = call i32 @iuneq(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %13 = call i32 @iuneq(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %14 = call i32 @ieq(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %15 = call i32 @ieq(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %16 = call i32 @ieq(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %17 = load float, float* @ninf, align 4
  %18 = load float, float* @pinf, align 4
  %19 = call i32 @iltgt(float noundef %17, float noundef %18, i32 noundef 1)
  %20 = load float, float* @NaN, align 4
  %21 = load float, float* @NaN, align 4
  %22 = call i32 @iltgt(float noundef %20, float noundef %21, i32 noundef 0)
  %23 = load float, float* @pinf, align 4
  %24 = load float, float* @ninf, align 4
  %25 = call i32 @iltgt(float noundef %23, float noundef %24, i32 noundef 1)
  %26 = call i32 @iltgt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %27 = call i32 @iltgt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %28 = call i32 @iltgt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %29 = call i32 @ine(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %30 = call i32 @ine(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %31 = call i32 @ine(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %32 = load float, float* @NaN, align 4
  %33 = load float, float* @ninf, align 4
  %34 = call i32 @iunlt(float noundef %32, float noundef %33, i32 noundef 1)
  %35 = load float, float* @pinf, align 4
  %36 = load float, float* @NaN, align 4
  %37 = call i32 @iunlt(float noundef %35, float noundef %36, i32 noundef 1)
  %38 = load float, float* @pinf, align 4
  %39 = load float, float* @ninf, align 4
  %40 = call i32 @iunlt(float noundef %38, float noundef %39, i32 noundef 0)
  %41 = load float, float* @pinf, align 4
  %42 = load float, float* @pinf, align 4
  %43 = call i32 @iunlt(float noundef %41, float noundef %42, i32 noundef 0)
  %44 = load float, float* @ninf, align 4
  %45 = load float, float* @ninf, align 4
  %46 = call i32 @iunlt(float noundef %44, float noundef %45, i32 noundef 0)
  %47 = call i32 @iunlt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %48 = call i32 @iunlt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %49 = call i32 @iunlt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %50 = call i32 @ilt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %51 = call i32 @ilt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %52 = call i32 @ilt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %53 = load float, float* @NaN, align 4
  %54 = load float, float* @ninf, align 4
  %55 = call i32 @iunle(float noundef %53, float noundef %54, i32 noundef 1)
  %56 = load float, float* @pinf, align 4
  %57 = load float, float* @NaN, align 4
  %58 = call i32 @iunle(float noundef %56, float noundef %57, i32 noundef 1)
  %59 = load float, float* @pinf, align 4
  %60 = load float, float* @ninf, align 4
  %61 = call i32 @iunle(float noundef %59, float noundef %60, i32 noundef 0)
  %62 = load float, float* @pinf, align 4
  %63 = load float, float* @pinf, align 4
  %64 = call i32 @iunle(float noundef %62, float noundef %63, i32 noundef 1)
  %65 = load float, float* @ninf, align 4
  %66 = load float, float* @ninf, align 4
  %67 = call i32 @iunle(float noundef %65, float noundef %66, i32 noundef 1)
  %68 = call i32 @iunle(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %69 = call i32 @iunle(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %70 = call i32 @iunle(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %71 = call i32 @ile(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %72 = call i32 @ile(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %73 = call i32 @ile(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %74 = load float, float* @NaN, align 4
  %75 = load float, float* @ninf, align 4
  %76 = call i32 @iungt(float noundef %74, float noundef %75, i32 noundef 1)
  %77 = load float, float* @pinf, align 4
  %78 = load float, float* @NaN, align 4
  %79 = call i32 @iungt(float noundef %77, float noundef %78, i32 noundef 1)
  %80 = load float, float* @pinf, align 4
  %81 = load float, float* @ninf, align 4
  %82 = call i32 @iungt(float noundef %80, float noundef %81, i32 noundef 1)
  %83 = load float, float* @pinf, align 4
  %84 = load float, float* @pinf, align 4
  %85 = call i32 @iungt(float noundef %83, float noundef %84, i32 noundef 0)
  %86 = load float, float* @ninf, align 4
  %87 = load float, float* @ninf, align 4
  %88 = call i32 @iungt(float noundef %86, float noundef %87, i32 noundef 0)
  %89 = call i32 @iungt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %90 = call i32 @iungt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %91 = call i32 @iungt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %92 = call i32 @igt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %93 = call i32 @igt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %94 = call i32 @igt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %95 = load float, float* @NaN, align 4
  %96 = load float, float* @ninf, align 4
  %97 = call i32 @iunge(float noundef %95, float noundef %96, i32 noundef 1)
  %98 = load float, float* @pinf, align 4
  %99 = load float, float* @NaN, align 4
  %100 = call i32 @iunge(float noundef %98, float noundef %99, i32 noundef 1)
  %101 = load float, float* @ninf, align 4
  %102 = load float, float* @pinf, align 4
  %103 = call i32 @iunge(float noundef %101, float noundef %102, i32 noundef 0)
  %104 = load float, float* @pinf, align 4
  %105 = load float, float* @pinf, align 4
  %106 = call i32 @iunge(float noundef %104, float noundef %105, i32 noundef 1)
  %107 = load float, float* @ninf, align 4
  %108 = load float, float* @ninf, align 4
  %109 = call i32 @iunge(float noundef %107, float noundef %108, i32 noundef 1)
  %110 = call i32 @iunge(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %111 = call i32 @iunge(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %112 = call i32 @iunge(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %113 = call i32 @ige(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %114 = call i32 @ige(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %115 = call i32 @ige(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
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
