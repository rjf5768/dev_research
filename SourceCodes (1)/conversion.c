; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/conversion.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @u2f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = uitofp i32 %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @u2d(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = uitofp i32 %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @u2ld(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = uitofp i32 %3 to x86_fp80
  ret x86_fp80 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @s2f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @s2d(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @s2ld(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to x86_fp80
  ret x86_fp80 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fnear(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fsub float %6, %7
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load float, float* %3, align 4
  %13 = load float, float* %5, align 4
  %14 = fdiv float %12, %13
  %15 = fpext float %14 to double
  %16 = fcmp ogt double %15, 1.000000e+06
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dnear(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %3, align 8
  %7 = load double, double* %4, align 8
  %8 = fsub double %6, %7
  store double %8, double* %5, align 8
  %9 = load double, double* %5, align 8
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load double, double* %3, align 8
  %13 = load double, double* %5, align 8
  %14 = fdiv double %12, %13
  %15 = fcmp ogt double %14, 1.000000e+14
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ldnear(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %6 = load x86_fp80, x86_fp80* %3, align 16
  %7 = load x86_fp80, x86_fp80* %4, align 16
  %8 = fsub x86_fp80 %6, %7
  store x86_fp80 %8, x86_fp80* %5, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = fcmp oeq x86_fp80 %9, 0xK00000000000000000000
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load x86_fp80, x86_fp80* %3, align 16
  %13 = load x86_fp80, x86_fp80* %5, align 16
  %14 = fdiv x86_fp80 %12, %13
  %15 = fcmp ogt x86_fp80 %14, 0xK40699DC5ADA82B70B800
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ true, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_integer_to_float() #0 {
  %1 = alloca i32, align 4
  %2 = call float @u2f(i32 noundef 0)
  %3 = fcmp une float %2, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call float @u2f(i32 noundef -1)
  %7 = call i32 @fnear(float noundef %6, float noundef 0x41F0000000000000)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #2
  unreachable

10:                                               ; preds = %5
  %11 = call float @u2f(i32 noundef 2147483647)
  %12 = call i32 @fnear(float noundef %11, float noundef 0x41E0000000000000)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #2
  unreachable

15:                                               ; preds = %10
  %16 = call float @u2f(i32 noundef -2147483648)
  %17 = fcmp une float %16, 0x41E0000000000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  %20 = call double @u2d(i32 noundef 0)
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #2
  unreachable

23:                                               ; preds = %19
  %24 = call double @u2d(i32 noundef -1)
  %25 = call i32 @dnear(double noundef %24, double noundef 0x41EFFFFFFFE00000)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @abort() #2
  unreachable

28:                                               ; preds = %23
  %29 = call double @u2d(i32 noundef 2147483647)
  %30 = call i32 @dnear(double noundef %29, double noundef 0x41DFFFFFFFC00000)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @abort() #2
  unreachable

33:                                               ; preds = %28
  %34 = call double @u2d(i32 noundef -2147483648)
  %35 = fcmp une double %34, 0x41E0000000000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call x86_fp80 @u2ld(i32 noundef 0)
  %39 = fcmp une x86_fp80 %38, 0xK00000000000000000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call x86_fp80 @u2ld(i32 noundef -1)
  %43 = call i32 @ldnear(x86_fp80 noundef %42, x86_fp80 noundef 0xK401EFFFFFFFF00000000)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @abort() #2
  unreachable

46:                                               ; preds = %41
  %47 = call x86_fp80 @u2ld(i32 noundef 2147483647)
  %48 = call i32 @ldnear(x86_fp80 noundef %47, x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @abort() #2
  unreachable

51:                                               ; preds = %46
  %52 = call x86_fp80 @u2ld(i32 noundef -2147483648)
  %53 = fcmp une x86_fp80 %52, 0xK401E8000000000000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @abort() #2
  unreachable

55:                                               ; preds = %51
  %56 = call float @s2f(i32 noundef 0)
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  %60 = call float @s2f(i32 noundef -1)
  %61 = call i32 @fnear(float noundef %60, float noundef -1.000000e+00)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @abort() #2
  unreachable

64:                                               ; preds = %59
  %65 = call float @s2f(i32 noundef 2147483647)
  %66 = call i32 @fnear(float noundef %65, float noundef 0x41E0000000000000)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @abort() #2
  unreachable

69:                                               ; preds = %64
  %70 = call float @s2f(i32 noundef -2147483648)
  %71 = fcmp une float %70, 0xC1E0000000000000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call double @s2d(i32 noundef 0)
  %75 = fcmp une double %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call double @s2d(i32 noundef -1)
  %79 = call i32 @dnear(double noundef %78, double noundef -1.000000e+00)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void @abort() #2
  unreachable

82:                                               ; preds = %77
  %83 = call double @s2d(i32 noundef 2147483647)
  %84 = call i32 @dnear(double noundef %83, double noundef 0x41DFFFFFFFC00000)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @abort() #2
  unreachable

87:                                               ; preds = %82
  %88 = call double @s2d(i32 noundef -2147483648)
  %89 = fcmp une double %88, 0xC1E0000000000000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void @abort() #2
  unreachable

91:                                               ; preds = %87
  %92 = call x86_fp80 @s2ld(i32 noundef 0)
  %93 = fcmp une x86_fp80 %92, 0xK00000000000000000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void @abort() #2
  unreachable

95:                                               ; preds = %91
  %96 = call x86_fp80 @s2ld(i32 noundef -1)
  %97 = call i32 @ldnear(x86_fp80 noundef %96, x86_fp80 noundef 0xKBFFF8000000000000000)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @abort() #2
  unreachable

100:                                              ; preds = %95
  %101 = call x86_fp80 @s2ld(i32 noundef 2147483647)
  %102 = call i32 @ldnear(x86_fp80 noundef %101, x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @abort() #2
  unreachable

105:                                              ; preds = %100
  %106 = call x86_fp80 @s2ld(i32 noundef -2147483648)
  %107 = fcmp une x86_fp80 %106, 0xKC01E8000000000000000
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @ull2f(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = uitofp i64 %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ull2d(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = uitofp i64 %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @ull2ld(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = uitofp i64 %3 to x86_fp80
  ret x86_fp80 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sll2f(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sll2d(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to double
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @sll2ld(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to x86_fp80
  ret x86_fp80 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_longlong_integer_to_float() #0 {
  %1 = alloca i32, align 4
  %2 = call float @ull2f(i64 noundef 0)
  %3 = fcmp une float %2, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call float @ull2f(i64 noundef -1)
  %7 = fcmp une float %6, 0x43F0000000000000
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call float @ull2f(i64 noundef 9223372036854775807)
  %11 = fcmp une float %10, 0x43E0000000000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call float @ull2f(i64 noundef -9223372036854775808)
  %15 = fcmp une float %14, 0x43E0000000000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call double @ull2d(i64 noundef 0)
  %19 = fcmp une double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call double @ull2d(i64 noundef -1)
  %23 = fcmp une double %22, 0x43F0000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call double @ull2d(i64 noundef 9223372036854775807)
  %27 = fcmp une double %26, 0x43E0000000000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call double @ull2d(i64 noundef -9223372036854775808)
  %31 = fcmp une double %30, 0x43E0000000000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call x86_fp80 @ull2ld(i64 noundef 0)
  %35 = fcmp une x86_fp80 %34, 0xK00000000000000000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call x86_fp80 @ull2ld(i64 noundef -1)
  %39 = fcmp une x86_fp80 %38, 0xK403EFFFFFFFFFFFFFFFF
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call x86_fp80 @ull2ld(i64 noundef 9223372036854775807)
  %43 = fcmp une x86_fp80 %42, 0xK403DFFFFFFFFFFFFFFFE
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call x86_fp80 @ull2ld(i64 noundef -9223372036854775808)
  %47 = fcmp une x86_fp80 %46, 0xK403E8000000000000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call float @sll2f(i64 noundef 0)
  %51 = fcmp une float %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call float @sll2f(i64 noundef -1)
  %55 = fcmp une float %54, -1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call float @sll2f(i64 noundef 9223372036854775807)
  %59 = call i32 @fnear(float noundef %58, float noundef 0x43E0000000000000)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void @abort() #2
  unreachable

62:                                               ; preds = %57
  %63 = call float @sll2f(i64 noundef -9223372036854775808)
  %64 = fcmp une float %63, 0xC3E0000000000000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @abort() #2
  unreachable

66:                                               ; preds = %62
  %67 = call double @sll2d(i64 noundef 0)
  %68 = fcmp une double %67, 0.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @abort() #2
  unreachable

70:                                               ; preds = %66
  %71 = call double @sll2d(i64 noundef -1)
  %72 = fcmp une double %71, -1.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @abort() #2
  unreachable

74:                                               ; preds = %70
  %75 = call double @sll2d(i64 noundef 9223372036854775807)
  %76 = call i32 @dnear(double noundef %75, double noundef 0x43E0000000000000)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void @abort() #2
  unreachable

79:                                               ; preds = %74
  %80 = call double @sll2d(i64 noundef -9223372036854775808)
  %81 = call i32 @dnear(double noundef %80, double noundef 0xC3E0000000000000)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void @abort() #2
  unreachable

84:                                               ; preds = %79
  %85 = call x86_fp80 @sll2ld(i64 noundef 0)
  %86 = fcmp une x86_fp80 %85, 0xK00000000000000000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #2
  unreachable

88:                                               ; preds = %84
  %89 = call x86_fp80 @sll2ld(i64 noundef -1)
  %90 = fcmp une x86_fp80 %89, 0xKBFFF8000000000000000
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @abort() #2
  unreachable

92:                                               ; preds = %88
  %93 = call x86_fp80 @sll2ld(i64 noundef 9223372036854775807)
  %94 = call i32 @ldnear(x86_fp80 noundef %93, x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @abort() #2
  unreachable

97:                                               ; preds = %92
  %98 = call x86_fp80 @sll2ld(i64 noundef -9223372036854775808)
  %99 = call i32 @ldnear(x86_fp80 noundef %98, x86_fp80 noundef 0xKC03E8000000000000000)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @abort() #2
  unreachable

102:                                              ; preds = %97
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2u(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptoui float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d2u(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptoui double %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ld2u(x86_fp80 noundef %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fptoui x86_fp80 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2s(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d2s(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptosi double %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ld2s(x86_fp80 noundef %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fptosi x86_fp80 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_float_to_integer() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @f2u(float noundef 0.000000e+00)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @f2u(float noundef 0x3FEFF7CEE0000000)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @f2u(float noundef 1.000000e+00)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @f2u(float noundef 0x3FFFD70A40000000)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @f2u(float noundef 0x41E0000000000000)
  %19 = icmp ne i32 %18, 2147483647
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 @f2u(float noundef 0x41E0000000000000)
  %22 = icmp ne i32 %21, -2147483648
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20, %17
  %25 = call i32 @f2u(float noundef 0x41E0000000000000)
  %26 = icmp ne i32 %25, -2147483648
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  %29 = call i32 @d2u(double noundef 0.000000e+00)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = call i32 @d2u(double noundef 0x3FEFF7CED916872B)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = call i32 @d2u(double noundef 1.000000e+00)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  %41 = call i32 @d2u(double noundef 1.990000e+00)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #2
  unreachable

44:                                               ; preds = %40
  %45 = call i32 @d2u(double noundef 0x41EFFFFFFFE00000)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #2
  unreachable

48:                                               ; preds = %44
  %49 = call i32 @d2u(double noundef 0x41DFFFFFFFC00000)
  %50 = icmp ne i32 %49, 2147483647
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #2
  unreachable

52:                                               ; preds = %48
  %53 = call i32 @d2u(double noundef 0x41E0000000000000)
  %54 = icmp ne i32 %53, -2147483648
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #2
  unreachable

56:                                               ; preds = %52
  %57 = call i32 @ld2u(x86_fp80 noundef 0xK00000000000000000000)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #2
  unreachable

60:                                               ; preds = %56
  %61 = call i32 @ld2u(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #2
  unreachable

64:                                               ; preds = %60
  %65 = call i32 @ld2u(x86_fp80 noundef 0xK3FFF8000000000000000)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @abort() #2
  unreachable

68:                                               ; preds = %64
  %69 = call i32 @ld2u(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @abort() #2
  unreachable

72:                                               ; preds = %68
  %73 = call i32 @ld2u(x86_fp80 noundef 0xK401EFFFFFFFF00000000)
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @abort() #2
  unreachable

76:                                               ; preds = %72
  %77 = call i32 @ld2u(x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %78 = icmp ne i32 %77, 2147483647
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @abort() #2
  unreachable

80:                                               ; preds = %76
  %81 = call i32 @ld2u(x86_fp80 noundef 0xK401E8000000000000000)
  %82 = icmp ne i32 %81, -2147483648
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @abort() #2
  unreachable

84:                                               ; preds = %80
  %85 = call i32 @f2s(float noundef 0.000000e+00)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #2
  unreachable

88:                                               ; preds = %84
  %89 = call i32 @f2s(float noundef 0x3FEFF7CEE0000000)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @abort() #2
  unreachable

92:                                               ; preds = %88
  %93 = call i32 @f2s(float noundef 1.000000e+00)
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void @abort() #2
  unreachable

96:                                               ; preds = %92
  %97 = call i32 @f2s(float noundef 0x3FFFD70A40000000)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @abort() #2
  unreachable

100:                                              ; preds = %96
  %101 = call i32 @f2s(float noundef 0xBFEFF7CEE0000000)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  call void @abort() #2
  unreachable

104:                                              ; preds = %100
  %105 = call i32 @f2s(float noundef -1.000000e+00)
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  call void @abort() #2
  unreachable

108:                                              ; preds = %104
  %109 = call i32 @f2s(float noundef 0xBFFFD70A40000000)
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  call void @abort() #2
  unreachable

112:                                              ; preds = %108
  %113 = call i32 @f2s(float noundef 0xC1E0000000000000)
  %114 = icmp ne i32 %113, -2147483648
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @abort() #2
  unreachable

116:                                              ; preds = %112
  %117 = call i32 @d2s(double noundef 0.000000e+00)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  call void @abort() #2
  unreachable

120:                                              ; preds = %116
  %121 = call i32 @d2s(double noundef 0x3FEFF7CED916872B)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  call void @abort() #2
  unreachable

124:                                              ; preds = %120
  %125 = call i32 @d2s(double noundef 1.000000e+00)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @abort() #2
  unreachable

128:                                              ; preds = %124
  %129 = call i32 @d2s(double noundef 1.990000e+00)
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @abort() #2
  unreachable

132:                                              ; preds = %128
  %133 = call i32 @d2s(double noundef 0xBFEFF7CED916872B)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call void @abort() #2
  unreachable

136:                                              ; preds = %132
  %137 = call i32 @d2s(double noundef -1.000000e+00)
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @abort() #2
  unreachable

140:                                              ; preds = %136
  %141 = call i32 @d2s(double noundef -1.990000e+00)
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void @abort() #2
  unreachable

144:                                              ; preds = %140
  %145 = call i32 @d2s(double noundef 0x41DFFFFFFFC00000)
  %146 = icmp ne i32 %145, 2147483647
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  call void @abort() #2
  unreachable

148:                                              ; preds = %144
  %149 = call i32 @d2s(double noundef 0xC1E0000000000000)
  %150 = icmp ne i32 %149, -2147483648
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  call void @abort() #2
  unreachable

152:                                              ; preds = %148
  %153 = call i32 @ld2s(x86_fp80 noundef 0xK00000000000000000000)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void @abort() #2
  unreachable

156:                                              ; preds = %152
  %157 = call i32 @ld2s(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @abort() #2
  unreachable

160:                                              ; preds = %156
  %161 = call i32 @ld2s(x86_fp80 noundef 0xK3FFF8000000000000000)
  %162 = icmp ne i32 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @abort() #2
  unreachable

164:                                              ; preds = %160
  %165 = call i32 @ld2s(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  call void @abort() #2
  unreachable

168:                                              ; preds = %164
  %169 = call i32 @ld2s(x86_fp80 noundef 0xKBFFEFFBE76C8B4395800)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void @abort() #2
  unreachable

172:                                              ; preds = %168
  %173 = call i32 @ld2s(x86_fp80 noundef 0xKBFFF8000000000000000)
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  call void @abort() #2
  unreachable

176:                                              ; preds = %172
  %177 = call i32 @ld2s(x86_fp80 noundef 0xKBFFFFEB851EB851EB800)
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @abort() #2
  unreachable

180:                                              ; preds = %176
  %181 = call i32 @ld2s(x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %182 = icmp ne i32 %181, 2147483647
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @abort() #2
  unreachable

184:                                              ; preds = %180
  %185 = call i32 @ld2s(x86_fp80 noundef 0xKC01E8000000000000000)
  %186 = icmp ne i32 %185, -2147483648
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @abort() #2
  unreachable

188:                                              ; preds = %184
  %189 = load i32, i32* %1, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2ull(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptoui float %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @d2ull(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptoui double %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ld2ull(x86_fp80 noundef %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fptoui x86_fp80 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2sll(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fptosi float %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @d2sll(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fptosi double %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ld2sll(x86_fp80 noundef %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fptosi x86_fp80 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_float_to_longlong_integer() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @f2ull(float noundef 0.000000e+00)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i64 @f2ull(float noundef 0x3FEFF7CEE0000000)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i64 @f2ull(float noundef 1.000000e+00)
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @f2ull(float noundef 0x3FFFD70A40000000)
  %15 = icmp ne i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %19 = icmp ne i64 %18, 9223372036854775807
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %22 = icmp ne i64 %21, -9223372036854775808
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20, %17
  %25 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %26 = icmp ne i64 %25, -9223372036854775808
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #2
  unreachable

28:                                               ; preds = %24
  %29 = call i64 @d2ull(double noundef 0.000000e+00)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = call i64 @d2ull(double noundef 0x3FEFF7CED916872B)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = call i64 @d2ull(double noundef 1.000000e+00)
  %38 = icmp ne i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  %41 = call i64 @d2ull(double noundef 1.990000e+00)
  %42 = icmp ne i64 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #2
  unreachable

44:                                               ; preds = %40
  %45 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %46 = icmp ne i64 %45, 9223372036854775807
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %49 = icmp ne i64 %48, -9223372036854775808
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @abort() #2
  unreachable

51:                                               ; preds = %47, %44
  %52 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %53 = icmp ne i64 %52, -9223372036854775808
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @abort() #2
  unreachable

55:                                               ; preds = %51
  %56 = call i64 @ld2ull(x86_fp80 noundef 0xK00000000000000000000)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @abort() #2
  unreachable

59:                                               ; preds = %55
  %60 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @abort() #2
  unreachable

63:                                               ; preds = %59
  %64 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFF8000000000000000)
  %65 = icmp ne i64 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @abort() #2
  unreachable

67:                                               ; preds = %63
  %68 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %69 = icmp ne i64 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @abort() #2
  unreachable

71:                                               ; preds = %67
  %72 = call i64 @ld2ull(x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %73 = icmp ne i64 %72, 9223372036854775807
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i64 @ld2ull(x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %76 = icmp ne i64 %75, -9223372036854775808
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void @abort() #2
  unreachable

78:                                               ; preds = %74, %71
  %79 = call i64 @ld2ull(x86_fp80 noundef 0xK403E8000000000000000)
  %80 = icmp ne i64 %79, -9223372036854775808
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @abort() #2
  unreachable

82:                                               ; preds = %78
  %83 = call i64 @f2sll(float noundef 0.000000e+00)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void @abort() #2
  unreachable

86:                                               ; preds = %82
  %87 = call i64 @f2sll(float noundef 0x3FEFF7CEE0000000)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @abort() #2
  unreachable

90:                                               ; preds = %86
  %91 = call i64 @f2sll(float noundef 1.000000e+00)
  %92 = icmp ne i64 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call void @abort() #2
  unreachable

94:                                               ; preds = %90
  %95 = call i64 @f2sll(float noundef 0x3FFFD70A40000000)
  %96 = icmp ne i64 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void @abort() #2
  unreachable

98:                                               ; preds = %94
  %99 = call i64 @f2sll(float noundef 0xBFEFF7CEE0000000)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  call void @abort() #2
  unreachable

102:                                              ; preds = %98
  %103 = call i64 @f2sll(float noundef -1.000000e+00)
  %104 = icmp ne i64 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @abort() #2
  unreachable

106:                                              ; preds = %102
  %107 = call i64 @f2sll(float noundef 0xBFFFD70A40000000)
  %108 = icmp ne i64 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call void @abort() #2
  unreachable

110:                                              ; preds = %106
  %111 = call i64 @f2sll(float noundef 0xC3E0000000000000)
  %112 = icmp ne i64 %111, -9223372036854775808
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @abort() #2
  unreachable

114:                                              ; preds = %110
  %115 = call i64 @d2sll(double noundef 0.000000e+00)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void @abort() #2
  unreachable

118:                                              ; preds = %114
  %119 = call i64 @d2sll(double noundef 0x3FEFF7CED916872B)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void @abort() #2
  unreachable

122:                                              ; preds = %118
  %123 = call i64 @d2sll(double noundef 1.000000e+00)
  %124 = icmp ne i64 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void @abort() #2
  unreachable

126:                                              ; preds = %122
  %127 = call i64 @d2sll(double noundef 1.990000e+00)
  %128 = icmp ne i64 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @abort() #2
  unreachable

130:                                              ; preds = %126
  %131 = call i64 @d2sll(double noundef 0xBFEFF7CED916872B)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  call void @abort() #2
  unreachable

134:                                              ; preds = %130
  %135 = call i64 @d2sll(double noundef -1.000000e+00)
  %136 = icmp ne i64 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @abort() #2
  unreachable

138:                                              ; preds = %134
  %139 = call i64 @d2sll(double noundef -1.990000e+00)
  %140 = icmp ne i64 %139, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  call void @abort() #2
  unreachable

142:                                              ; preds = %138
  %143 = call i64 @d2sll(double noundef 0xC3E0000000000000)
  %144 = icmp ne i64 %143, -9223372036854775808
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  call void @abort() #2
  unreachable

146:                                              ; preds = %142
  %147 = call i64 @ld2sll(x86_fp80 noundef 0xK00000000000000000000)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  call void @abort() #2
  unreachable

150:                                              ; preds = %146
  %151 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  call void @abort() #2
  unreachable

154:                                              ; preds = %150
  %155 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFF8000000000000000)
  %156 = icmp ne i64 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  call void @abort() #2
  unreachable

158:                                              ; preds = %154
  %159 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %160 = icmp ne i64 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void @abort() #2
  unreachable

162:                                              ; preds = %158
  %163 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFEFFBE76C8B4395800)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  call void @abort() #2
  unreachable

166:                                              ; preds = %162
  %167 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFF8000000000000000)
  %168 = icmp ne i64 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  call void @abort() #2
  unreachable

170:                                              ; preds = %166
  %171 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFFFEB851EB851EB800)
  %172 = icmp ne i64 %171, -1
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  call void @abort() #2
  unreachable

174:                                              ; preds = %170
  %175 = call i64 @ld2sll(x86_fp80 noundef 0xKC03E8000000000000000)
  %176 = icmp ne i64 %175, -9223372036854775808
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  call void @abort() #2
  unreachable

178:                                              ; preds = %174
  %179 = load i32, i32* %1, align 4
  ret i32 %179
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test_integer_to_float()
  %3 = call i32 @test_float_to_integer()
  %4 = call i32 @test_longlong_integer_to_float()
  %5 = call i32 @test_float_to_longlong_integer()
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
