; ModuleID = './ieeefloat.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/ieeefloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeSingle(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or i64 %4, %8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or i64 %9, %13
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = or i64 %14, %17
  %19 = and i64 %18, 2147483647
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %44

22:                                               ; preds = %1
  %23 = lshr i64 %9, 23
  %24 = and i64 %23, 255
  %25 = icmp eq i64 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %43

27:                                               ; preds = %22
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = and i64 %18, 8388607
  %31 = sitofp i64 %30 to double
  %32 = trunc i64 %24 to i32
  %33 = add nsw i32 %32, -149
  %34 = call double @ldexp(double noundef %31, i32 noundef %33) #3
  br label %42

35:                                               ; preds = %27
  %36 = and i64 %18, 8388607
  %37 = or i64 %36, 8388608
  %38 = sitofp i64 %37 to double
  %39 = trunc i64 %24 to i32
  %40 = add nsw i32 %39, -150
  %41 = call double @ldexp(double noundef %38, i32 noundef %40) #3
  br label %42

42:                                               ; preds = %35, %29
  %.01 = phi double [ %34, %29 ], [ %41, %35 ]
  br label %43

43:                                               ; preds = %42, %26
  %.1 = phi double [ 0x7FF0000000000000, %26 ], [ %.01, %42 ]
  br label %44

44:                                               ; preds = %43, %21
  %.2 = phi double [ 0.000000e+00, %21 ], [ %.1, %43 ]
  br i1 false, label %45, label %46

45:                                               ; preds = %44
  br label %47

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %45
  ret double %.2
}

; Function Attrs: nounwind
declare dso_local double @ldexp(double noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeSingle(double noundef %0, i8* nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = fcmp olt double %0, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = fneg double %0
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %5
  %.01 = phi i64 [ -9223372036854775808, %5 ], [ 0, %7 ]
  %.0 = phi double [ %6, %5 ], [ %0, %7 ]
  %9 = fcmp oeq double %.0, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %48

11:                                               ; preds = %8
  %12 = call double @frexp(double noundef %.0, i32* noundef nonnull %3) #3
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 129
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = fcmp olt double %12, 1.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %15, %11
  %18 = or i64 %.01, 2139095040
  br label %47

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, -125
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, -149
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %34

26:                                               ; preds = %22
  %27 = add nsw i32 %23, 149
  %28 = zext i32 %27 to i64
  %29 = shl i64 1, %28
  %30 = sitofp i64 %29 to double
  %31 = fmul double %12, %30
  %32 = fptosi double %31 to i64
  %33 = or i64 %.01, %32
  br label %34

34:                                               ; preds = %26, %25
  %.02 = phi i64 [ %.01, %25 ], [ %33, %26 ]
  br label %46

35:                                               ; preds = %19
  %36 = fmul double %12, 0x4170000000000000
  %37 = call double @llvm.floor.f64(double %36)
  %38 = fptosi double %37 to i64
  %39 = add nsw i64 %38, -8388608
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 126
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 23
  %44 = or i64 %.01, %43
  %45 = or i64 %44, %39
  br label %46

46:                                               ; preds = %35, %34
  %.1 = phi i64 [ %.02, %34 ], [ %45, %35 ]
  br label %47

47:                                               ; preds = %46, %17
  %.2 = phi i64 [ %18, %17 ], [ %.1, %46 ]
  br label %48

48:                                               ; preds = %47, %10
  %.3 = phi i64 [ 0, %10 ], [ %.2, %47 ]
  %49 = lshr i64 %.3, 24
  %50 = trunc i64 %49 to i8
  store i8 %50, i8* %1, align 1
  %51 = lshr i64 %.3, 16
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %52, i8* %53, align 1
  %54 = lshr i64 %.3, 8
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %55, i8* %56, align 1
  %57 = trunc i64 %.3 to i8
  %58 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %57, i8* %58, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local double @frexp(double noundef, i32* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeDouble(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or i64 %4, %8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or i64 %9, %13
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = or i64 %14, %17
  %19 = getelementptr inbounds i8, i8* %0, i64 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = getelementptr inbounds i8, i8* %0, i64 5
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 16
  %27 = or i64 %22, %26
  %28 = getelementptr inbounds i8, i8* %0, i64 6
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 8
  %32 = or i64 %27, %31
  %33 = getelementptr inbounds i8, i8* %0, i64 7
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = or i64 %32, %35
  %37 = icmp eq i64 %18, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = icmp eq i64 %36, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %77

41:                                               ; preds = %38, %1
  %42 = lshr i64 %9, 20
  %43 = and i64 %42, 2047
  %44 = icmp eq i64 %43, 2047
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %76

46:                                               ; preds = %41
  %47 = icmp eq i64 %43, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  %49 = and i64 %18, 1048575
  %50 = sitofp i64 %49 to double
  %51 = trunc i64 %43 to i32
  %52 = add nsw i32 %51, -1042
  %53 = call double @ldexp(double noundef %50, i32 noundef %52) #3
  %54 = add nsw i64 %36, -2147483648
  %55 = sitofp i64 %54 to double
  %56 = fadd double %55, 0x41E0000000000000
  %57 = trunc i64 %43 to i32
  %58 = add nsw i32 %57, -1074
  %59 = call double @ldexp(double noundef %56, i32 noundef %58) #3
  %60 = fadd double %53, %59
  br label %75

61:                                               ; preds = %46
  %62 = and i64 %18, 1048575
  %63 = or i64 %62, 1048576
  %64 = sitofp i64 %63 to double
  %65 = trunc i64 %43 to i32
  %66 = add nsw i32 %65, -1043
  %67 = call double @ldexp(double noundef %64, i32 noundef %66) #3
  %68 = add nsw i64 %36, -2147483648
  %69 = sitofp i64 %68 to double
  %70 = fadd double %69, 0x41E0000000000000
  %71 = trunc i64 %43 to i32
  %72 = add nsw i32 %71, -1075
  %73 = call double @ldexp(double noundef %70, i32 noundef %72) #3
  %74 = fadd double %67, %73
  br label %75

75:                                               ; preds = %61, %48
  %.01 = phi double [ %60, %48 ], [ %74, %61 ]
  br label %76

76:                                               ; preds = %75, %45
  %.1 = phi double [ 0x7FF0000000000000, %45 ], [ %.01, %75 ]
  br label %77

77:                                               ; preds = %76, %40
  %.2 = phi double [ 0.000000e+00, %40 ], [ %.1, %76 ]
  %78 = and i64 %3, 128
  %.not = icmp eq i64 %78, 0
  br i1 %.not, label %81, label %79

79:                                               ; preds = %77
  %80 = fneg double %.2
  br label %82

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %79
  %.0 = phi double [ %80, %79 ], [ %.2, %81 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeDouble(double noundef %0, i8* nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = fcmp olt double %0, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = fneg double %0
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %5
  %.01 = phi i64 [ -9223372036854775808, %5 ], [ 0, %7 ]
  %.0 = phi double [ %6, %5 ], [ %0, %7 ]
  %9 = fcmp oeq double %.0, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %71

11:                                               ; preds = %8
  %12 = call double @frexp(double noundef %.0, i32* noundef nonnull %3) #3
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 1025
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = fcmp olt double %12, 1.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %15, %11
  %18 = or i64 %.01, 2146435072
  br label %70

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, -1021
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, -1042
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = icmp slt i32 %23, -1074
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %35

28:                                               ; preds = %25
  %29 = add nsw i32 %23, 1074
  %30 = call double @ldexp(double noundef %12, i32 noundef %29) #3
  %31 = call double @llvm.floor.f64(double %30)
  %32 = fadd double %31, 0xC1E0000000000000
  %33 = fptosi double %32 to i64
  %34 = add nsw i64 %33, 2147483648
  br label %35

35:                                               ; preds = %28, %27
  %.03 = phi i64 [ 0, %27 ], [ %34, %28 ]
  br label %49

36:                                               ; preds = %22
  %37 = add nsw i32 %23, 1042
  %38 = call double @ldexp(double noundef %12, i32 noundef %37) #3
  %39 = call double @llvm.floor.f64(double %38)
  %40 = fptosi double %39 to i64
  %41 = or i64 %.01, %40
  %42 = sitofp i64 %40 to double
  %43 = fsub double %38, %42
  %44 = call double @ldexp(double noundef %43, i32 noundef 32) #3
  %45 = call double @llvm.floor.f64(double %44)
  %46 = fadd double %45, 0xC1E0000000000000
  %47 = fptosi double %46 to i64
  %48 = add nsw i64 %47, 2147483648
  br label %49

49:                                               ; preds = %36, %35
  %.14 = phi i64 [ %.03, %35 ], [ %48, %36 ]
  %.02 = phi i64 [ %.01, %35 ], [ %41, %36 ]
  br label %69

50:                                               ; preds = %19
  %51 = call double @ldexp(double noundef %12, i32 noundef 21) #3
  %52 = call double @llvm.floor.f64(double %51)
  %53 = fptosi double %52 to i64
  %54 = add nsw i64 %53, -1048576
  %55 = fadd double %51, 0xC130000000000000
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1022
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 20
  %60 = or i64 %.01, %59
  %61 = or i64 %60, %54
  %62 = sitofp i64 %54 to double
  %63 = fsub double %55, %62
  %64 = call double @ldexp(double noundef %63, i32 noundef 32) #3
  %65 = call double @llvm.floor.f64(double %64)
  %66 = fadd double %65, 0xC1E0000000000000
  %67 = fptosi double %66 to i64
  %68 = add nsw i64 %67, 2147483648
  br label %69

69:                                               ; preds = %50, %49
  %.25 = phi i64 [ %.14, %49 ], [ %68, %50 ]
  %.1 = phi i64 [ %.02, %49 ], [ %61, %50 ]
  br label %70

70:                                               ; preds = %69, %17
  %.36 = phi i64 [ 0, %17 ], [ %.25, %69 ]
  %.2 = phi i64 [ %18, %17 ], [ %.1, %69 ]
  br label %71

71:                                               ; preds = %70, %10
  %.4 = phi i64 [ 0, %10 ], [ %.36, %70 ]
  %.3 = phi i64 [ 0, %10 ], [ %.2, %70 ]
  %72 = lshr i64 %.3, 24
  %73 = trunc i64 %72 to i8
  store i8 %73, i8* %1, align 1
  %74 = lshr i64 %.3, 16
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %75, i8* %76, align 1
  %77 = lshr i64 %.3, 8
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %78, i8* %79, align 1
  %80 = trunc i64 %.3 to i8
  %81 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %80, i8* %81, align 1
  %82 = lshr i64 %.4, 24
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %83, i8* %84, align 1
  %85 = lshr i64 %.4, 16
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %86, i8* %87, align 1
  %88 = lshr i64 %.4, 8
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %89, i8* %90, align 1
  %91 = trunc i64 %.4 to i8
  %92 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %91, i8* %92, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeExtended(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = and i8 %2, 127
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 8
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = or i64 %5, %8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = getelementptr inbounds i8, i8* %0, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or i64 %13, %17
  %19 = getelementptr inbounds i8, i8* %0, i64 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = or i64 %18, %22
  %24 = getelementptr inbounds i8, i8* %0, i64 5
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = or i64 %23, %26
  %28 = getelementptr inbounds i8, i8* %0, i64 6
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, i8* %0, i64 7
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or i64 %31, %35
  %37 = getelementptr inbounds i8, i8* %0, i64 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = or i64 %36, %40
  %42 = getelementptr inbounds i8, i8* %0, i64 9
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = or i64 %41, %44
  %46 = icmp eq i64 %9, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = icmp eq i64 %27, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = icmp eq i64 %45, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %70

52:                                               ; preds = %49, %47, %1
  %53 = icmp eq i64 %9, 32767
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %69

55:                                               ; preds = %52
  %56 = add nsw i64 %27, -2147483648
  %57 = sitofp i64 %56 to double
  %58 = fadd double %57, 0x41E0000000000000
  %59 = trunc i64 %9 to i32
  %60 = add nsw i32 %59, -16414
  %61 = call double @ldexp(double noundef %58, i32 noundef %60) #3
  %62 = add nsw i64 %45, -2147483648
  %63 = sitofp i64 %62 to double
  %64 = fadd double %63, 0x41E0000000000000
  %65 = trunc i64 %9 to i32
  %66 = add nsw i32 %65, -16446
  %67 = call double @ldexp(double noundef %64, i32 noundef %66) #3
  %68 = fadd double %61, %67
  br label %69

69:                                               ; preds = %55, %54
  %.01 = phi double [ 0x7FF0000000000000, %54 ], [ %68, %55 ]
  br label %70

70:                                               ; preds = %69, %51
  %.1 = phi double [ 0.000000e+00, %51 ], [ %.01, %69 ]
  %71 = load i8, i8* %0, align 1
  %.not = icmp sgt i8 %71, -1
  br i1 %.not, label %74, label %72

72:                                               ; preds = %70
  %73 = fneg double %.1
  br label %75

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %72
  %.0 = phi double [ %73, %72 ], [ %.1, %74 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeExtended(double noundef %0, i8* nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = fcmp olt double %0, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = fneg double %0
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %5
  %.02 = phi i32 [ 32768, %5 ], [ 0, %7 ]
  %.0 = phi double [ %6, %5 ], [ %0, %7 ]
  %9 = fcmp oeq double %.0, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %41

11:                                               ; preds = %8
  %12 = call double @frexp(double noundef %.0, i32* noundef nonnull %3) #3
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 16384
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = fcmp olt double %12, 1.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %15, %11
  %18 = or i32 %.02, 32767
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 16382
  store i32 %21, i32* %3, align 4
  %22 = icmp slt i32 %20, -16382
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call double @ldexp(double noundef %12, i32 noundef %24) #3
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19
  %.03 = phi double [ %25, %23 ], [ %12, %19 ]
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %.02
  store i32 %28, i32* %3, align 4
  %29 = call double @ldexp(double noundef %.03, i32 noundef 32) #3
  %30 = call double @llvm.floor.f64(double %29)
  %31 = fadd double %30, 0xC1E0000000000000
  %32 = fptosi double %31 to i64
  %33 = add nsw i64 %32, 2147483648
  %34 = fsub double %29, %30
  %35 = call double @ldexp(double noundef %34, i32 noundef 32) #3
  %36 = call double @llvm.floor.f64(double %35)
  %37 = fadd double %36, 0xC1E0000000000000
  %38 = fptosi double %37 to i64
  %39 = add nsw i64 %38, 2147483648
  br label %40

40:                                               ; preds = %26, %17
  %.04 = phi i64 [ 0, %17 ], [ %33, %26 ]
  %.01 = phi i64 [ 0, %17 ], [ %39, %26 ]
  br label %41

41:                                               ; preds = %40, %10
  %.15 = phi i64 [ 0, %10 ], [ %.04, %40 ]
  %.1 = phi i64 [ 0, %10 ], [ %.01, %40 ]
  %42 = load i32, i32* %3, align 4
  %43 = lshr i32 %42, 8
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %1, align 1
  %45 = trunc i32 %42 to i8
  %46 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %45, i8* %46, align 1
  %47 = lshr i64 %.15, 24
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %48, i8* %49, align 1
  %50 = lshr i64 %.15, 16
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %51, i8* %52, align 1
  %53 = lshr i64 %.15, 8
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %54, i8* %55, align 1
  %56 = trunc i64 %.15 to i8
  %57 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %.1, 24
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %59, i8* %60, align 1
  %61 = lshr i64 %.1, 16
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %62, i8* %63, align 1
  %64 = lshr i64 %.1, 8
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds i8, i8* %1, i64 8
  store i8 %65, i8* %66, align 1
  %67 = trunc i64 %.1 to i8
  %68 = getelementptr inbounds i8, i8* %1, i64 9
  store i8 %67, i8* %68, align 1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
