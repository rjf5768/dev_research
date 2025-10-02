; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-1.c"
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oeq float %12, %13
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
  %24 = fcmp one float %22, %23
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void @abort() #2
  unreachable

30:                                               ; preds = %21
  %31 = load float, float* %5, align 4
  %32 = load float, float* %6, align 4
  %33 = fcmp uno float %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load float, float* %5, align 4
  %36 = load float, float* %6, align 4
  %37 = fcmp ole float %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %30
  %39 = load float, float* %5, align 4
  %40 = load float, float* %6, align 4
  %41 = fcmp uno float %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load float, float* %5, align 4
  %44 = load float, float* %6, align 4
  %45 = fcmp oge float %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i1 [ false, %34 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #2
  unreachable

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  ret i32 %55
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp oeq float %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #2
  unreachable

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oeq float %12, %13
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
  %25 = fcmp one float %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  call void @abort() #2
  unreachable

30:                                               ; preds = %22
  %31 = load float, float* %5, align 4
  %32 = load float, float* %6, align 4
  %33 = fcmp uno float %31, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load float, float* %5, align 4
  %36 = load float, float* %6, align 4
  %37 = fcmp uno float %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load float, float* %5, align 4
  %40 = load float, float* %6, align 4
  %41 = fcmp olt float %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load float, float* %5, align 4
  %44 = load float, float* %6, align 4
  %45 = fcmp uno float %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load float, float* %5, align 4
  %48 = load float, float* %6, align 4
  %49 = fcmp ogt float %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ true, %42 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %38, %34
  %53 = phi i1 [ true, %38 ], [ true, %34 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i1 [ false, %30 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void @abort() #2
  unreachable

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  ret i32 %61
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp olt float %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp uno float %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load float, float* %5, align 4
  %21 = load float, float* %6, align 4
  %22 = fcmp ogt float %20, %21
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
  %32 = load i32, i32* %4, align 4
  ret i32 %32
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp olt float %12, %13
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
  %24 = fcmp uno float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp olt float %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @abort() #2
  unreachable

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp olt float %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #2
  unreachable

27:                                               ; preds = %21
  %28 = load float, float* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp ole float %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp une float %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #2
  unreachable

41:                                               ; preds = %35
  %42 = load float, float* %5, align 4
  %43 = load float, float* %6, align 4
  %44 = fcmp ole float %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load float, float* %6, align 4
  %47 = load float, float* %5, align 4
  %48 = fcmp une float %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #2
  unreachable

55:                                               ; preds = %49
  %56 = load float, float* %5, align 4
  %57 = load float, float* %6, align 4
  %58 = fcmp une float %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp ole float %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @abort() #2
  unreachable

69:                                               ; preds = %63
  %70 = load float, float* %6, align 4
  %71 = load float, float* %5, align 4
  %72 = fcmp une float %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fcmp ole float %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @abort() #2
  unreachable

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp ole float %12, %13
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
  %24 = fcmp uno float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp ole float %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @abort() #2
  unreachable

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp ole float %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #2
  unreachable

27:                                               ; preds = %21
  %28 = load float, float* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp olt float %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp oeq float %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #2
  unreachable

41:                                               ; preds = %35
  %42 = load float, float* %6, align 4
  %43 = load float, float* %5, align 4
  %44 = fcmp ogt float %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp oeq float %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #2
  unreachable

55:                                               ; preds = %49
  %56 = load float, float* %5, align 4
  %57 = load float, float* %6, align 4
  %58 = fcmp oeq float %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp olt float %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @abort() #2
  unreachable

69:                                               ; preds = %63
  %70 = load float, float* %6, align 4
  %71 = load float, float* %5, align 4
  %72 = fcmp oeq float %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fcmp olt float %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ true, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @abort() #2
  unreachable

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp ogt float %12, %13
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
  %24 = fcmp uno float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp ogt float %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @abort() #2
  unreachable

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp ogt float %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #2
  unreachable

27:                                               ; preds = %21
  %28 = load float, float* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp oge float %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp une float %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #2
  unreachable

41:                                               ; preds = %35
  %42 = load float, float* %5, align 4
  %43 = load float, float* %6, align 4
  %44 = fcmp oge float %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load float, float* %6, align 4
  %47 = load float, float* %5, align 4
  %48 = fcmp une float %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #2
  unreachable

55:                                               ; preds = %49
  %56 = load float, float* %5, align 4
  %57 = load float, float* %6, align 4
  %58 = fcmp une float %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp oge float %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @abort() #2
  unreachable

69:                                               ; preds = %63
  %70 = load float, float* %6, align 4
  %71 = load float, float* %5, align 4
  %72 = fcmp une float %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fcmp oge float %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @abort() #2
  unreachable

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp oge float %12, %13
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
  %24 = fcmp uno float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load float, float* %5, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp oge float %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @abort() #2
  unreachable

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
  %10 = fcmp uno float %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load float, float* %5, align 4
  %13 = load float, float* %6, align 4
  %14 = fcmp uno float %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load float, float* %5, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp oge float %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #2
  unreachable

27:                                               ; preds = %21
  %28 = load float, float* %5, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp oeq float %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #2
  unreachable

41:                                               ; preds = %35
  %42 = load float, float* %6, align 4
  %43 = load float, float* %5, align 4
  %44 = fcmp olt float %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load float, float* %5, align 4
  %47 = load float, float* %6, align 4
  %48 = fcmp oeq float %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #2
  unreachable

55:                                               ; preds = %49
  %56 = load float, float* %5, align 4
  %57 = load float, float* %6, align 4
  %58 = fcmp oeq float %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load float, float* %5, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp ogt float %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @abort() #2
  unreachable

69:                                               ; preds = %63
  %70 = load float, float* %6, align 4
  %71 = load float, float* %5, align 4
  %72 = fcmp oeq float %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load float, float* %5, align 4
  %75 = load float, float* %6, align 4
  %76 = fcmp ogt float %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ true, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @abort() #2
  unreachable

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  ret i32 %84
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
