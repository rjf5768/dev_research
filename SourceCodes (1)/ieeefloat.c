; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/ieeefloat.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/ieeefloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeSingle(i8* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = and i32 %11, 255
  %13 = sext i32 %12 to i64
  %14 = shl i64 %13, 24
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = shl i64 %20, 16
  %22 = or i64 %14, %21
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 %26, 255
  %28 = sext i32 %27 to i64
  %29 = shl i64 %28, 8
  %30 = or i64 %22, %29
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = or i64 %30, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 2147483647
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store double 0.000000e+00, double* %4, align 8
  br label %76

42:                                               ; preds = %1
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 2139095040
  %45 = ashr i64 %44, 23
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 255
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store double 0x7FF0000000000000, double* %4, align 8
  br label %75

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 8388607
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sitofp i64 %55 to double
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %57, 127
  %59 = sub nsw i64 %58, 23
  %60 = add nsw i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = call double @ldexp(double noundef %56, i32 noundef %61) #3
  store double %62, double* %4, align 8
  br label %74

63:                                               ; preds = %49
  %64 = load i64, i64* %7, align 8
  %65 = and i64 %64, 8388607
  %66 = add nsw i64 %65, 8388608
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sitofp i64 %67 to double
  %69 = load i64, i64* %6, align 8
  %70 = sub nsw i64 %69, 127
  %71 = sub nsw i64 %70, 23
  %72 = trunc i64 %71 to i32
  %73 = call double @ldexp(double noundef %68, i32 noundef %72) #3
  store double %73, double* %4, align 8
  br label %74

74:                                               ; preds = %63, %52
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %41
  %77 = load i64, i64* %7, align 8
  %78 = and i64 %77, -9223372036854775808
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load double, double* %4, align 8
  %82 = fneg double %81
  store double %82, double* %2, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load double, double* %4, align 8
  store double %84, double* %2, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load double, double* %2, align 8
  ret double %86
}

; Function Attrs: nounwind
declare dso_local double @ldexp(double noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeSingle(double noundef %0, i8* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i64 -9223372036854775808, i64* %5, align 8
  %14 = load double, double* %3, align 8
  %15 = fmul double %14, -1.000000e+00
  store double %15, double* %3, align 8
  br label %17

16:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load double, double* %3, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %72

21:                                               ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = call double @frexp(double noundef %22, i32* noundef %8) #3
  store double %23, double* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 129
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, 2139095040
  store i64 %31, i64* %6, align 8
  br label %71

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, -125
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 149, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %6, align 8
  br label %53

42:                                               ; preds = %35
  %43 = load double, double* %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = sitofp i64 %46 to double
  %48 = fmul double %43, %47
  %49 = fptosi double %48 to i64
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = or i64 %50, %51
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %42, %40
  br label %70

54:                                               ; preds = %32
  %55 = load double, double* %7, align 8
  %56 = fmul double %55, 0x4170000000000000
  %57 = call double @llvm.floor.f64(double %56)
  %58 = fptosi double %57 to i64
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %59, 8388608
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 127
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = shl i64 %65, 23
  %67 = or i64 %61, %66
  %68 = load i64, i64* %9, align 8
  %69 = or i64 %67, %68
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %54, %53
  br label %71

71:                                               ; preds = %70, %29
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i64, i64* %6, align 8
  %74 = ashr i64 %73, 24
  %75 = trunc i64 %74 to i8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 %75, i8* %77, align 1
  %78 = load i64, i64* %6, align 8
  %79 = ashr i64 %78, 16
  %80 = trunc i64 %79 to i8
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %82, align 1
  %83 = load i64, i64* %6, align 8
  %84 = ashr i64 %83, 8
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8 %85, i8* %87, align 1
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  store i8 %89, i8* %91, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local double @frexp(double noundef, i32* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeDouble(i8* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = and i32 %12, 255
  %14 = sext i32 %13 to i64
  %15 = shl i64 %14, 24
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  %22 = shl i64 %21, 16
  %23 = or i64 %15, %22
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = shl i64 %29, 8
  %31 = or i64 %23, %30
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = or i64 %31, %37
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = shl i64 %44, 24
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 255
  %51 = sext i32 %50 to i64
  %52 = shl i64 %51, 16
  %53 = or i64 %45, %52
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  %60 = shl i64 %59, 8
  %61 = or i64 %53, %60
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 7
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %65, 255
  %67 = sext i32 %66 to i64
  %68 = or i64 %61, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %1
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store double 0.000000e+00, double* %4, align 8
  br label %136

75:                                               ; preds = %71, %1
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, 2146435072
  %78 = lshr i64 %77, 20
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %79, 2047
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store double 0x7FF0000000000000, double* %4, align 8
  br label %135

82:                                               ; preds = %75
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load i64, i64* %7, align 8
  %87 = and i64 %86, 1048575
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = sitofp i64 %88 to double
  %90 = load i64, i64* %6, align 8
  %91 = sub nsw i64 %90, 1023
  %92 = sub nsw i64 %91, 20
  %93 = add nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = call double @ldexp(double noundef %89, i32 noundef %94) #3
  store double %95, double* %4, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 2147483647
  %98 = sub i64 %97, 1
  %99 = sitofp i64 %98 to double
  %100 = fadd double %99, 0x41E0000000000000
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %101, 1023
  %103 = sub nsw i64 %102, 20
  %104 = add nsw i64 %103, 1
  %105 = sub nsw i64 %104, 32
  %106 = trunc i64 %105 to i32
  %107 = call double @ldexp(double noundef %100, i32 noundef %106) #3
  %108 = load double, double* %4, align 8
  %109 = fadd double %108, %107
  store double %109, double* %4, align 8
  br label %134

110:                                              ; preds = %82
  %111 = load i64, i64* %7, align 8
  %112 = and i64 %111, 1048575
  %113 = add i64 %112, 1048576
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = sitofp i64 %114 to double
  %116 = load i64, i64* %6, align 8
  %117 = sub nsw i64 %116, 1023
  %118 = sub nsw i64 %117, 20
  %119 = trunc i64 %118 to i32
  %120 = call double @ldexp(double noundef %115, i32 noundef %119) #3
  store double %120, double* %4, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, 2147483647
  %123 = sub i64 %122, 1
  %124 = sitofp i64 %123 to double
  %125 = fadd double %124, 0x41E0000000000000
  %126 = load i64, i64* %6, align 8
  %127 = sub nsw i64 %126, 1023
  %128 = sub nsw i64 %127, 20
  %129 = sub nsw i64 %128, 32
  %130 = trunc i64 %129 to i32
  %131 = call double @ldexp(double noundef %125, i32 noundef %130) #3
  %132 = load double, double* %4, align 8
  %133 = fadd double %132, %131
  store double %133, double* %4, align 8
  br label %134

134:                                              ; preds = %110, %85
  br label %135

135:                                              ; preds = %134, %81
  br label %136

136:                                              ; preds = %135, %74
  %137 = load i64, i64* %7, align 8
  %138 = and i64 %137, 2147483648
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load double, double* %4, align 8
  %142 = fneg double %141
  store double %142, double* %2, align 8
  br label %145

143:                                              ; preds = %136
  %144 = load double, double* %4, align 8
  store double %144, double* %2, align 8
  br label %145

145:                                              ; preds = %143, %140
  %146 = load double, double* %2, align 8
  ret double %146
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeDouble(double noundef %0, i8* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load double, double* %3, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  store i64 -9223372036854775808, i64* %5, align 8
  %16 = load double, double* %3, align 8
  %17 = fmul double %16, -1.000000e+00
  store double %17, double* %3, align 8
  br label %19

18:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load double, double* %3, align 8
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %111

23:                                               ; preds = %19
  %24 = load double, double* %3, align 8
  %25 = call double @frexp(double noundef %24, i32* noundef %10) #3
  store double %25, double* %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 1025
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load double, double* %8, align 8
  %30 = fcmp olt double %29, 1.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %5, align 8
  %33 = or i64 %32, 2146435072
  store i64 %33, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %110

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, -1021
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 1042, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  br label %58

49:                                               ; preds = %42
  %50 = load double, double* %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call double @ldexp(double noundef %50, i32 noundef %51) #3
  %53 = call double @llvm.floor.f64(double %52)
  %54 = fsub double %53, 0x41E0000000000000
  %55 = fptosi double %54 to i64
  %56 = add nsw i64 %55, 2147483647
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %49, %48
  br label %79

59:                                               ; preds = %37
  %60 = load double, double* %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call double @ldexp(double noundef %60, i32 noundef %61) #3
  store double %62, double* %9, align 8
  %63 = load double, double* %9, align 8
  %64 = call double @llvm.floor.f64(double %63)
  %65 = fptosi double %64 to i64
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %66, %67
  store i64 %68, i64* %6, align 8
  %69 = load double, double* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sitofp i64 %70 to double
  %72 = fsub double %69, %71
  %73 = call double @ldexp(double noundef %72, i32 noundef 32) #3
  %74 = call double @llvm.floor.f64(double %73)
  %75 = fsub double %74, 0x41E0000000000000
  %76 = fptosi double %75 to i64
  %77 = add nsw i64 %76, 2147483647
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %59, %58
  br label %109

80:                                               ; preds = %34
  %81 = load double, double* %8, align 8
  %82 = call double @ldexp(double noundef %81, i32 noundef 21) #3
  store double %82, double* %9, align 8
  %83 = load double, double* %9, align 8
  %84 = call double @llvm.floor.f64(double %83)
  %85 = fptosi double %84 to i64
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub nsw i64 %86, 1048576
  store i64 %87, i64* %11, align 8
  %88 = load double, double* %9, align 8
  %89 = fsub double %88, 0x4130000000000000
  store double %89, double* %9, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1023
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = shl i64 %94, 20
  %96 = or i64 %90, %95
  %97 = load i64, i64* %11, align 8
  %98 = or i64 %96, %97
  store i64 %98, i64* %6, align 8
  %99 = load double, double* %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sitofp i64 %100 to double
  %102 = fsub double %99, %101
  %103 = call double @ldexp(double noundef %102, i32 noundef 32) #3
  %104 = call double @llvm.floor.f64(double %103)
  %105 = fsub double %104, 0x41E0000000000000
  %106 = fptosi double %105 to i64
  %107 = add nsw i64 %106, 2147483647
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %80, %79
  br label %110

110:                                              ; preds = %109, %31
  br label %111

111:                                              ; preds = %110, %22
  %112 = load i64, i64* %6, align 8
  %113 = ashr i64 %112, 24
  %114 = trunc i64 %113 to i8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 %114, i8* %116, align 1
  %117 = load i64, i64* %6, align 8
  %118 = ashr i64 %117, 16
  %119 = trunc i64 %118 to i8
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 %119, i8* %121, align 1
  %122 = load i64, i64* %6, align 8
  %123 = ashr i64 %122, 8
  %124 = trunc i64 %123 to i8
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8 %124, i8* %126, align 1
  %127 = load i64, i64* %6, align 8
  %128 = trunc i64 %127 to i8
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8 %128, i8* %130, align 1
  %131 = load i64, i64* %7, align 8
  %132 = ashr i64 %131, 24
  %133 = trunc i64 %132 to i8
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  store i8 %133, i8* %135, align 1
  %136 = load i64, i64* %7, align 8
  %137 = ashr i64 %136, 16
  %138 = trunc i64 %137 to i8
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 5
  store i8 %138, i8* %140, align 1
  %141 = load i64, i64* %7, align 8
  %142 = ashr i64 %141, 8
  %143 = trunc i64 %142 to i8
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 6
  store i8 %143, i8* %145, align 1
  %146 = load i64, i64* %7, align 8
  %147 = trunc i64 %146 to i8
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 7
  store i8 %147, i8* %149, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ConvertFromIeeeExtended(i8* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = and i32 %11, 127
  %13 = shl i32 %12, 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %17, 255
  %19 = or i32 %13, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = shl i64 %26, 24
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  %34 = shl i64 %33, 16
  %35 = or i64 %27, %34
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = shl i64 %41, 8
  %43 = or i64 %35, %42
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = or i64 %43, %49
  store i64 %50, i64* %6, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 255
  %56 = sext i32 %55 to i64
  %57 = shl i64 %56, 24
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = sext i32 %62 to i64
  %64 = shl i64 %63, 16
  %65 = or i64 %57, %64
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %69, 255
  %71 = sext i32 %70 to i64
  %72 = shl i64 %71, 8
  %73 = or i64 %65, %72
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 9
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 255
  %79 = sext i32 %78 to i64
  %80 = or i64 %73, %79
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %1
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store double 0.000000e+00, double* %4, align 8
  br label %118

90:                                               ; preds = %86, %83, %1
  %91 = load i64, i64* %5, align 8
  %92 = icmp eq i64 %91, 32767
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store double 0x7FF0000000000000, double* %4, align 8
  br label %117

94:                                               ; preds = %90
  %95 = load i64, i64* %5, align 8
  %96 = sub nsw i64 %95, 16383
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %97, 2147483647
  %99 = sub i64 %98, 1
  %100 = sitofp i64 %99 to double
  %101 = fadd double %100, 0x41E0000000000000
  %102 = load i64, i64* %5, align 8
  %103 = sub nsw i64 %102, 31
  store i64 %103, i64* %5, align 8
  %104 = trunc i64 %103 to i32
  %105 = call double @ldexp(double noundef %101, i32 noundef %104) #3
  store double %105, double* %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %106, 2147483647
  %108 = sub i64 %107, 1
  %109 = sitofp i64 %108 to double
  %110 = fadd double %109, 0x41E0000000000000
  %111 = load i64, i64* %5, align 8
  %112 = sub nsw i64 %111, 32
  store i64 %112, i64* %5, align 8
  %113 = trunc i64 %112 to i32
  %114 = call double @ldexp(double noundef %110, i32 noundef %113) #3
  %115 = load double, double* %4, align 8
  %116 = fadd double %115, %114
  store double %116, double* %4, align 8
  br label %117

117:                                              ; preds = %94, %93
  br label %118

118:                                              ; preds = %117, %89
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = and i32 %122, 128
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load double, double* %4, align 8
  %127 = fneg double %126
  store double %127, double* %2, align 8
  br label %130

128:                                              ; preds = %118
  %129 = load double, double* %4, align 8
  store double %129, double* %2, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = load double, double* %2, align 8
  ret double %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertToIeeeExtended(double noundef %0, i8* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i32 32768, i32* %5, align 4
  %14 = load double, double* %3, align 8
  %15 = fmul double %14, -1.000000e+00
  store double %15, double* %3, align 8
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load double, double* %3, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %66

21:                                               ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = call double @frexp(double noundef %22, i32* noundef %6) #3
  store double %23, double* %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 16384
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 32767
  store i32 %31, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %65

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 16382
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load double, double* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call double @ldexp(double noundef %38, i32 noundef %39) #3
  store double %40, double* %7, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load double, double* %7, align 8
  %46 = call double @ldexp(double noundef %45, i32 noundef 32) #3
  store double %46, double* %7, align 8
  %47 = load double, double* %7, align 8
  %48 = call double @llvm.floor.f64(double %47)
  store double %48, double* %8, align 8
  %49 = load double, double* %8, align 8
  %50 = fsub double %49, 0x41E0000000000000
  %51 = fptosi double %50 to i64
  %52 = add nsw i64 %51, 2147483647
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %9, align 8
  %54 = load double, double* %7, align 8
  %55 = load double, double* %8, align 8
  %56 = fsub double %54, %55
  %57 = call double @ldexp(double noundef %56, i32 noundef 32) #3
  store double %57, double* %7, align 8
  %58 = load double, double* %7, align 8
  %59 = call double @llvm.floor.f64(double %58)
  store double %59, double* %8, align 8
  %60 = load double, double* %8, align 8
  %61 = fsub double %60, 0x41E0000000000000
  %62 = fptosi double %61 to i64
  %63 = add nsw i64 %62, 2147483647
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %41, %29
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 8
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %6, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %75, align 1
  %76 = load i64, i64* %9, align 8
  %77 = lshr i64 %76, 24
  %78 = trunc i64 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %80, align 1
  %81 = load i64, i64* %9, align 8
  %82 = lshr i64 %81, 16
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  store i8 %83, i8* %85, align 1
  %86 = load i64, i64* %9, align 8
  %87 = lshr i64 %86, 8
  %88 = trunc i64 %87 to i8
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  store i8 %88, i8* %90, align 1
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i8
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 5
  store i8 %92, i8* %94, align 1
  %95 = load i64, i64* %10, align 8
  %96 = lshr i64 %95, 24
  %97 = trunc i64 %96 to i8
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 6
  store i8 %97, i8* %99, align 1
  %100 = load i64, i64* %10, align 8
  %101 = lshr i64 %100, 16
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 7
  store i8 %102, i8* %104, align 1
  %105 = load i64, i64* %10, align 8
  %106 = lshr i64 %105, 8
  %107 = trunc i64 %106 to i8
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  store i8 %107, i8* %109, align 1
  %110 = load i64, i64* %10, align 8
  %111 = trunc i64 %110 to i8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 9
  store i8 %111, i8* %113, align 1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
