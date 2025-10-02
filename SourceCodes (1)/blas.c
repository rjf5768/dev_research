; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/sgefa/blas.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/blas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isamax(i32 noundef %0, float* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %4, align 4
  br label %153

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %22, i64 %29
  store float* %30, float** %6, align 8
  br label %31

31:                                               ; preds = %21, %18
  store i32 0, i32* %10, align 4
  %32 = load float*, float** %6, align 8
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = fcmp ogt double %34, 0.000000e+00
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load float*, float** %6, align 8
  %38 = load float, float* %37, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load float*, float** %6, align 8
  %41 = load float, float* %40, align 4
  %42 = fneg float %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi float [ %38, %36 ], [ %42, %39 ]
  store float %44, float* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load float*, float** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds float, float* %46, i64 %47
  store float* %48, float** %6, align 8
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %85, %43
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = load float*, float** %6, align 8
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fcmp ogt double %56, 0.000000e+00
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load float*, float** %6, align 8
  %60 = load float, float* %59, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load float*, float** %6, align 8
  %63 = load float, float* %62, align 4
  %64 = fneg float %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi float [ %60, %58 ], [ %64, %61 ]
  %67 = load float, float* %8, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %10, align 4
  %71 = load float*, float** %6, align 8
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = fcmp ogt double %73, 0.000000e+00
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load float*, float** %6, align 8
  %77 = load float, float* %76, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load float*, float** %6, align 8
  %80 = load float, float* %79, align 4
  %81 = fneg float %80
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi float [ %77, %75 ], [ %81, %78 ]
  store float %83, float* %8, align 4
  br label %84

84:                                               ; preds = %82, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load float*, float** %6, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds float, float* %89, i64 %90
  store float* %91, float** %6, align 8
  br label %49, !llvm.loop !4

92:                                               ; preds = %49
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %153

94:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  %95 = load float*, float** %6, align 8
  %96 = load float, float* %95, align 4
  %97 = fpext float %96 to double
  %98 = fcmp ogt double %97, 0.000000e+00
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load float*, float** %6, align 8
  %101 = load float, float* %100, align 4
  br label %106

102:                                              ; preds = %94
  %103 = load float*, float** %6, align 8
  %104 = load float, float* %103, align 4
  %105 = fneg float %104
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi float [ %101, %99 ], [ %105, %102 ]
  store float %107, float* %8, align 4
  %108 = load float*, float** %6, align 8
  %109 = getelementptr inbounds float, float* %108, i32 1
  store float* %109, float** %6, align 8
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %146, %106
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %151

114:                                              ; preds = %110
  %115 = load float*, float** %6, align 8
  %116 = load float, float* %115, align 4
  %117 = fpext float %116 to double
  %118 = fcmp ogt double %117, 0.000000e+00
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load float*, float** %6, align 8
  %121 = load float, float* %120, align 4
  br label %126

122:                                              ; preds = %114
  %123 = load float*, float** %6, align 8
  %124 = load float, float* %123, align 4
  %125 = fneg float %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi float [ %121, %119 ], [ %125, %122 ]
  %128 = load float, float* %8, align 4
  %129 = fcmp ogt float %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %10, align 4
  %132 = load float*, float** %6, align 8
  %133 = load float, float* %132, align 4
  %134 = fpext float %133 to double
  %135 = fcmp ogt double %134, 0.000000e+00
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load float*, float** %6, align 8
  %138 = load float, float* %137, align 4
  br label %143

139:                                              ; preds = %130
  %140 = load float*, float** %6, align 8
  %141 = load float, float* %140, align 4
  %142 = fneg float %141
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi float [ %138, %136 ], [ %142, %139 ]
  store float %144, float* %8, align 4
  br label %145

145:                                              ; preds = %143, %126
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  %149 = load float*, float** %6, align 8
  %150 = getelementptr inbounds float, float* %149, i32 1
  store float* %150, float** %6, align 8
  br label %110, !llvm.loop !6

151:                                              ; preds = %110
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %92, %13
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saxpy(i32 noundef %0, double noundef %1, float* noundef %2, i32 noundef %3, float* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = fptrunc double %1 to float
  store i32 %0, i32* %7, align 4
  store float %14, float* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load float, float* %8, align 4
  %19 = fpext float %18 to double
  %20 = fcmp oeq double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %6
  br label %126

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load float, float* %8, align 4
  %36 = load float*, float** %9, align 8
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %11, align 8
  %39 = load float, float* %38, align 4
  %40 = call float @llvm.fmuladd.f32(float %35, float %37, float %39)
  store float %40, float* %38, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load float*, float** %11, align 8
  %45 = getelementptr inbounds float, float* %44, i32 1
  store float* %45, float** %11, align 8
  %46 = load float*, float** %9, align 8
  %47 = getelementptr inbounds float, float* %46, i32 1
  store float* %47, float** %9, align 8
  br label %30, !llvm.loop !7

48:                                               ; preds = %30
  br label %126

49:                                               ; preds = %26
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load float, float* %8, align 4
  %59 = load float*, float** %9, align 8
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %11, align 8
  %62 = load float, float* %61, align 4
  %63 = call float @llvm.fmuladd.f32(float %58, float %60, float %62)
  store float %63, float* %61, align 4
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load float*, float** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds float, float* %68, i64 %69
  store float* %70, float** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load float*, float** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds float, float* %72, i64 %73
  store float* %74, float** %11, align 8
  br label %53, !llvm.loop !8

75:                                               ; preds = %53
  br label %126

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %22
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 0, %81
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = load float*, float** %9, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %9, align 8
  br label %90

90:                                               ; preds = %80, %77
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 0, %94
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = load float*, float** %11, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds float, float* %100, i64 %101
  store float* %102, float** %11, align 8
  br label %103

103:                                              ; preds = %93, %90
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %115, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load float, float* %8, align 4
  %110 = load float*, float** %9, align 8
  %111 = load float, float* %110, align 4
  %112 = load float*, float** %11, align 8
  %113 = load float, float* %112, align 4
  %114 = call float @llvm.fmuladd.f32(float %109, float %111, float %113)
  store float %114, float* %112, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load float*, float** %9, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds float, float* %119, i64 %120
  store float* %121, float** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load float*, float** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds float, float* %123, i64 %124
  store float* %125, float** %11, align 8
  br label %104, !llvm.loop !9

126:                                              ; preds = %21, %48, %75, %104
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @saxpyx(i32 noundef %0, double noundef %1, float* noundef %2, i32 noundef %3, float* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = fptrunc double %1 to float
  store i32 %0, i32* %7, align 4
  store float %14, float* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load float, float* %8, align 4
  %19 = fpext float %18 to double
  %20 = fcmp oeq double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %6
  br label %129

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load float*, float** %11, align 8
  %36 = load float, float* %35, align 4
  %37 = load float, float* %8, align 4
  %38 = load float*, float** %9, align 8
  %39 = load float, float* %38, align 4
  %40 = call float @llvm.fmuladd.f32(float %37, float %39, float %36)
  %41 = load float*, float** %9, align 8
  store float %40, float* %41, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = load float*, float** %9, align 8
  %46 = getelementptr inbounds float, float* %45, i32 1
  store float* %46, float** %9, align 8
  %47 = load float*, float** %11, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %11, align 8
  br label %30, !llvm.loop !10

49:                                               ; preds = %30
  br label %129

50:                                               ; preds = %26
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load float*, float** %11, align 8
  %60 = load float, float* %59, align 4
  %61 = load float, float* %8, align 4
  %62 = load float*, float** %9, align 8
  %63 = load float, float* %62, align 4
  %64 = call float @llvm.fmuladd.f32(float %61, float %63, float %60)
  %65 = load float*, float** %9, align 8
  store float %64, float* %65, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load float*, float** %9, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds float, float* %70, i64 %71
  store float* %72, float** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load float*, float** %11, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds float, float* %74, i64 %75
  store float* %76, float** %11, align 8
  br label %54, !llvm.loop !11

77:                                               ; preds = %54
  br label %129

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 0, %83
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = load float*, float** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds float, float* %89, i64 %90
  store float* %91, float** %9, align 8
  br label %92

92:                                               ; preds = %82, %79
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 0, %96
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %100, 1
  %102 = load float*, float** %11, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds float, float* %102, i64 %103
  store float* %104, float** %11, align 8
  br label %105

105:                                              ; preds = %95, %92
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %118, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load float*, float** %11, align 8
  %112 = load float, float* %111, align 4
  %113 = load float, float* %8, align 4
  %114 = load float*, float** %9, align 8
  %115 = load float, float* %114, align 4
  %116 = call float @llvm.fmuladd.f32(float %113, float %115, float %112)
  %117 = load float*, float** %9, align 8
  store float %116, float* %117, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load float*, float** %9, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds float, float* %122, i64 %123
  store float* %124, float** %9, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load float*, float** %11, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds float, float* %126, i64 %127
  store float* %128, float** %11, align 8
  br label %106, !llvm.loop !12

129:                                              ; preds = %21, %49, %77, %106
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scopy(i32 noundef %0, float* noundef %1, i32 noundef %2, float* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %109

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load float*, float** %7, align 8
  %29 = getelementptr inbounds float, float* %28, i32 1
  store float* %29, float** %7, align 8
  %30 = load float, float* %28, align 4
  %31 = load float*, float** %9, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %9, align 8
  store float %30, float* %31, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %23, !llvm.loop !13

36:                                               ; preds = %23
  br label %109

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load float*, float** %7, align 8
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %9, align 8
  store float %47, float* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load float*, float** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds float, float* %53, i64 %54
  store float* %55, float** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load float*, float** %9, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds float, float* %57, i64 %58
  store float* %59, float** %9, align 8
  br label %41, !llvm.loop !14

60:                                               ; preds = %41
  br label %109

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 0, %66
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  %72 = load float*, float** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds float, float* %72, i64 %73
  store float* %74, float** %7, align 8
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 0, %79
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = load float*, float** %9, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds float, float* %85, i64 %86
  store float* %87, float** %9, align 8
  br label %88

88:                                               ; preds = %78, %75
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %97, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load float*, float** %9, align 8
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %7, align 8
  store float %95, float* %96, align 4
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load float*, float** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds float, float* %101, i64 %102
  store float* %103, float** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load float*, float** %9, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds float, float* %105, i64 %106
  store float* %107, float** %9, align 8
  br label %89, !llvm.loop !15

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %60, %36, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sdot(i32 noundef %0, float* noundef %1, i32 noundef %2, float* noundef %3, i32 noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store float 0.000000e+00, float* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load float, float* %13, align 4
  %18 = fpext float %17 to double
  store double %18, double* %6, align 8
  br label %130

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load float*, float** %8, align 8
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %10, align 8
  %35 = load float, float* %34, align 4
  %36 = load float, float* %13, align 4
  %37 = call float @llvm.fmuladd.f32(float %33, float %35, float %36)
  store float %37, float* %13, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i32 1
  store float* %42, float** %8, align 8
  %43 = load float*, float** %10, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %10, align 8
  br label %27, !llvm.loop !16

45:                                               ; preds = %27
  %46 = load float, float* %13, align 4
  %47 = fpext float %46 to double
  store double %47, double* %6, align 8
  br label %130

48:                                               ; preds = %23
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load float*, float** %8, align 8
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %10, align 8
  %60 = load float, float* %59, align 4
  %61 = load float, float* %13, align 4
  %62 = call float @llvm.fmuladd.f32(float %58, float %60, float %61)
  store float %62, float* %13, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load float*, float** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds float, float* %67, i64 %68
  store float* %69, float** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load float*, float** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds float, float* %71, i64 %72
  store float* %73, float** %10, align 8
  br label %52, !llvm.loop !17

74:                                               ; preds = %52
  %75 = load float, float* %13, align 4
  %76 = fpext float %75 to double
  store double %76, double* %6, align 8
  br label %130

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 0, %82
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = load float*, float** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds float, float* %88, i64 %89
  store float* %90, float** %8, align 8
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 0, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %99, 1
  %101 = load float*, float** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds float, float* %101, i64 %102
  store float* %103, float** %10, align 8
  br label %104

104:                                              ; preds = %94, %91
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load float*, float** %8, align 8
  %111 = load float, float* %110, align 4
  %112 = load float*, float** %10, align 8
  %113 = load float, float* %112, align 4
  %114 = load float, float* %13, align 4
  %115 = call float @llvm.fmuladd.f32(float %111, float %113, float %114)
  store float %115, float* %13, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load float*, float** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds float, float* %120, i64 %121
  store float* %122, float** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load float*, float** %10, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds float, float* %124, i64 %125
  store float* %126, float** %10, align 8
  br label %105, !llvm.loop !18

127:                                              ; preds = %105
  %128 = load float, float* %13, align 4
  %129 = fpext float %128 to double
  store double %129, double* %6, align 8
  br label %130

130:                                              ; preds = %127, %74, %45, %16
  %131 = load double, double* %6, align 8
  ret double %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @snrm2(i32 noundef %0, float* noundef %1, i32 noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 3, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load double, double* %10, align 8
  store double %21, double* %4, align 8
  br label %339

22:                                               ; preds = %17
  %23 = call double @r1mach()
  %24 = fdiv double 0x3696D601AD376AB9, %23
  %25 = call double @sqrt(double noundef %24) #3
  store double %25, double* %11, align 8
  %26 = call double @sqrt(double noundef 0x47D2CED32A16A1B1) #3
  store double %26, double* %12, align 8
  %27 = load double, double* %12, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %27, %29
  store double %30, double* %13, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %42, %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load float*, float** %6, align 8
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp oeq double %38, 0.000000e+00
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load float*, float** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds float, float* %46, i64 %47
  store float* %48, float** %6, align 8
  br label %31, !llvm.loop !19

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load double, double* %10, align 8
  store double %54, double* %4, align 8
  br label %339

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %159, %55
  %57 = load float*, float** %6, align 8
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load float*, float** %6, align 8
  %63 = load float, float* %62, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load float*, float** %6, align 8
  %66 = load float, float* %65, align 4
  %67 = fneg float %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi float [ %63, %61 ], [ %67, %64 ]
  %70 = fpext float %69 to double
  %71 = load double, double* %11, align 8
  %72 = fcmp ogt double %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %74
  %79 = load float*, float** %6, align 8
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = fcmp ogt double %81, 0.000000e+00
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load float*, float** %6, align 8
  %85 = load float, float* %84, align 4
  br label %90

86:                                               ; preds = %78
  %87 = load float*, float** %6, align 8
  %88 = load float, float* %87, align 4
  %89 = fneg float %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi float [ %85, %83 ], [ %89, %86 ]
  %92 = fpext float %91 to double
  %93 = load double, double* %13, align 8
  %94 = fcmp ogt double %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %236

96:                                               ; preds = %90
  %97 = load float*, float** %6, align 8
  %98 = load float, float* %97, align 4
  %99 = load float*, float** %6, align 8
  %100 = load float, float* %99, align 4
  %101 = fmul float %98, %100
  %102 = fpext float %101 to double
  %103 = load double, double* %10, align 8
  %104 = fadd double %103, %102
  store double %104, double* %10, align 8
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load float*, float** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds float, float* %109, i64 %110
  store float* %111, float** %6, align 8
  br label %74, !llvm.loop !20

112:                                              ; preds = %74
  %113 = load double, double* %10, align 8
  %114 = call double @sqrt(double noundef %113) #3
  store double %114, double* %10, align 8
  %115 = load double, double* %10, align 8
  store double %115, double* %4, align 8
  br label %339

116:                                              ; preds = %68
  %117 = load float*, float** %6, align 8
  %118 = load float, float* %117, align 4
  %119 = fpext float %118 to double
  %120 = fcmp ogt double %119, 0.000000e+00
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load float*, float** %6, align 8
  %123 = load float, float* %122, align 4
  br label %128

124:                                              ; preds = %116
  %125 = load float*, float** %6, align 8
  %126 = load float, float* %125, align 4
  %127 = fneg float %126
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi float [ %123, %121 ], [ %127, %124 ]
  store float %129, float* %14, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load float*, float** %6, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds float, float* %131, i64 %132
  store float* %133, float** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  %136 = load double, double* %10, align 8
  %137 = fadd double %136, 1.000000e+00
  store double %137, double* %10, align 8
  br label %138

138:                                              ; preds = %223, %128
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %230

142:                                              ; preds = %138
  %143 = load float*, float** %6, align 8
  %144 = load float, float* %143, align 4
  %145 = fpext float %144 to double
  %146 = fcmp ogt double %145, 0.000000e+00
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load float*, float** %6, align 8
  %149 = load float, float* %148, align 4
  br label %154

150:                                              ; preds = %142
  %151 = load float*, float** %6, align 8
  %152 = load float, float* %151, align 4
  %153 = fneg float %152
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi float [ %149, %147 ], [ %153, %150 ]
  %156 = fpext float %155 to double
  %157 = load double, double* %11, align 8
  %158 = fcmp ogt double %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load double, double* %10, align 8
  %161 = load float, float* %14, align 4
  %162 = fpext float %161 to double
  %163 = fmul double %160, %162
  %164 = load float, float* %14, align 4
  %165 = fpext float %164 to double
  %166 = fmul double %163, %165
  store double %166, double* %10, align 8
  br label %56

167:                                              ; preds = %154
  %168 = load float*, float** %6, align 8
  %169 = load float, float* %168, align 4
  %170 = fpext float %169 to double
  %171 = fcmp ogt double %170, 0.000000e+00
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load float*, float** %6, align 8
  %174 = load float, float* %173, align 4
  br label %179

175:                                              ; preds = %167
  %176 = load float*, float** %6, align 8
  %177 = load float, float* %176, align 4
  %178 = fneg float %177
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi float [ %174, %172 ], [ %178, %175 ]
  %181 = load float, float* %14, align 4
  %182 = fcmp ogt float %180, %181
  br i1 %182, label %183, label %210

183:                                              ; preds = %179
  %184 = load double, double* %10, align 8
  %185 = load float, float* %14, align 4
  %186 = load float*, float** %6, align 8
  %187 = load float, float* %186, align 4
  %188 = fdiv float %185, %187
  %189 = fpext float %188 to double
  %190 = fmul double %184, %189
  %191 = load float, float* %14, align 4
  %192 = load float*, float** %6, align 8
  %193 = load float, float* %192, align 4
  %194 = fdiv float %191, %193
  %195 = fpext float %194 to double
  %196 = call double @llvm.fmuladd.f64(double %190, double %195, double 1.000000e+00)
  store double %196, double* %10, align 8
  %197 = load float*, float** %6, align 8
  %198 = load float, float* %197, align 4
  %199 = fpext float %198 to double
  %200 = fcmp ogt double %199, 0.000000e+00
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load float*, float** %6, align 8
  %203 = load float, float* %202, align 4
  br label %208

204:                                              ; preds = %183
  %205 = load float*, float** %6, align 8
  %206 = load float, float* %205, align 4
  %207 = fneg float %206
  br label %208

208:                                              ; preds = %204, %201
  %209 = phi float [ %203, %201 ], [ %207, %204 ]
  store float %209, float* %14, align 4
  br label %223

210:                                              ; preds = %179
  %211 = load float*, float** %6, align 8
  %212 = load float, float* %211, align 4
  %213 = load float, float* %14, align 4
  %214 = fdiv float %212, %213
  %215 = load float*, float** %6, align 8
  %216 = load float, float* %215, align 4
  %217 = load float, float* %14, align 4
  %218 = fdiv float %216, %217
  %219 = fmul float %214, %218
  %220 = fpext float %219 to double
  %221 = load double, double* %10, align 8
  %222 = fadd double %221, %220
  store double %222, double* %10, align 8
  br label %223

223:                                              ; preds = %210, %208
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %7, align 4
  %227 = load float*, float** %6, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds float, float* %227, i64 %228
  store float* %229, float** %6, align 8
  br label %138, !llvm.loop !21

230:                                              ; preds = %138
  %231 = load float, float* %14, align 4
  %232 = fpext float %231 to double
  %233 = load double, double* %10, align 8
  %234 = call double @sqrt(double noundef %233) #3
  %235 = fmul double %232, %234
  store double %235, double* %4, align 8
  br label %339

236:                                              ; preds = %95
  %237 = load double, double* %10, align 8
  %238 = load float*, float** %6, align 8
  %239 = load float, float* %238, align 4
  %240 = fpext float %239 to double
  %241 = fdiv double %237, %240
  %242 = load float*, float** %6, align 8
  %243 = load float, float* %242, align 4
  %244 = fpext float %243 to double
  %245 = fdiv double %241, %244
  %246 = fadd double 1.000000e+00, %245
  store double %246, double* %10, align 8
  %247 = load float*, float** %6, align 8
  %248 = load float, float* %247, align 4
  %249 = fpext float %248 to double
  %250 = fcmp ogt double %249, 0.000000e+00
  br i1 %250, label %251, label %254

251:                                              ; preds = %236
  %252 = load float*, float** %6, align 8
  %253 = load float, float* %252, align 4
  br label %258

254:                                              ; preds = %236
  %255 = load float*, float** %6, align 8
  %256 = load float, float* %255, align 4
  %257 = fneg float %256
  br label %258

258:                                              ; preds = %254, %251
  %259 = phi float [ %253, %251 ], [ %257, %254 ]
  store float %259, float* %14, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load float*, float** %6, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds float, float* %261, i64 %262
  store float* %263, float** %6, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %266

266:                                              ; preds = %326, %258
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %5, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %333

270:                                              ; preds = %266
  %271 = load float*, float** %6, align 8
  %272 = load float, float* %271, align 4
  %273 = fpext float %272 to double
  %274 = fcmp ogt double %273, 0.000000e+00
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load float*, float** %6, align 8
  %277 = load float, float* %276, align 4
  br label %282

278:                                              ; preds = %270
  %279 = load float*, float** %6, align 8
  %280 = load float, float* %279, align 4
  %281 = fneg float %280
  br label %282

282:                                              ; preds = %278, %275
  %283 = phi float [ %277, %275 ], [ %281, %278 ]
  %284 = load float, float* %14, align 4
  %285 = fcmp ogt float %283, %284
  br i1 %285, label %286, label %313

286:                                              ; preds = %282
  %287 = load double, double* %10, align 8
  %288 = load float, float* %14, align 4
  %289 = load float*, float** %6, align 8
  %290 = load float, float* %289, align 4
  %291 = fdiv float %288, %290
  %292 = fpext float %291 to double
  %293 = fmul double %287, %292
  %294 = load float, float* %14, align 4
  %295 = load float*, float** %6, align 8
  %296 = load float, float* %295, align 4
  %297 = fdiv float %294, %296
  %298 = fpext float %297 to double
  %299 = call double @llvm.fmuladd.f64(double %293, double %298, double 1.000000e+00)
  store double %299, double* %10, align 8
  %300 = load float*, float** %6, align 8
  %301 = load float, float* %300, align 4
  %302 = fpext float %301 to double
  %303 = fcmp ogt double %302, 0.000000e+00
  br i1 %303, label %304, label %307

304:                                              ; preds = %286
  %305 = load float*, float** %6, align 8
  %306 = load float, float* %305, align 4
  br label %311

307:                                              ; preds = %286
  %308 = load float*, float** %6, align 8
  %309 = load float, float* %308, align 4
  %310 = fneg float %309
  br label %311

311:                                              ; preds = %307, %304
  %312 = phi float [ %306, %304 ], [ %310, %307 ]
  store float %312, float* %14, align 4
  br label %326

313:                                              ; preds = %282
  %314 = load float*, float** %6, align 8
  %315 = load float, float* %314, align 4
  %316 = load float, float* %14, align 4
  %317 = fdiv float %315, %316
  %318 = load float*, float** %6, align 8
  %319 = load float, float* %318, align 4
  %320 = load float, float* %14, align 4
  %321 = fdiv float %319, %320
  %322 = fmul float %317, %321
  %323 = fpext float %322 to double
  %324 = load double, double* %10, align 8
  %325 = fadd double %324, %323
  store double %325, double* %10, align 8
  br label %326

326:                                              ; preds = %313, %311
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %8, align 4
  %329 = load i32, i32* %7, align 4
  %330 = load float*, float** %6, align 8
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds float, float* %330, i64 %331
  store float* %332, float** %6, align 8
  br label %266, !llvm.loop !22

333:                                              ; preds = %266
  %334 = load float, float* %14, align 4
  %335 = fpext float %334 to double
  %336 = load double, double* %10, align 8
  %337 = call double @sqrt(double noundef %336) #3
  %338 = fmul double %335, %337
  store double %338, double* %4, align 8
  br label %339

339:                                              ; preds = %333, %230, %112, %53, %20
  %340 = load double, double* %4, align 8
  ret double %340
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @r1mach() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float 1.000000e+00, float* %1, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = load float, float* %1, align 4
  %5 = fpext float %4 to double
  %6 = fmul double %5, 5.000000e-01
  %7 = fptrunc double %6 to float
  store float %7, float* %1, align 4
  %8 = load float, float* %1, align 4
  %9 = fpext float %8 to double
  %10 = fadd double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %2, align 4
  br label %12

12:                                               ; preds = %3
  %13 = load float, float* %2, align 4
  %14 = fpext float %13 to double
  %15 = fcmp une double %14, 1.000000e+00
  br i1 %15, label %3, label %16, !llvm.loop !23

16:                                               ; preds = %12
  %17 = load float, float* %1, align 4
  %18 = fpext float %17 to double
  %19 = fmul double %18, 2.000000e+00
  ret double %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @min0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %18, align 4
  store i32 %1, i32* %19, align 4
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %18, align 4
  %39 = icmp sgt i32 %38, 15
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %16
  store i32 -1, i32* %17, align 4
  br label %198

41:                                               ; preds = %37
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %34, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %34, align 4
  store i32 %46, i32* %17, align 4
  br label %198

47:                                               ; preds = %41
  %48 = load i32, i32* %34, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %34, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %34, align 4
  store i32 %57, i32* %17, align 4
  br label %198

58:                                               ; preds = %53
  %59 = load i32, i32* %34, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %21, align 4
  store i32 %63, i32* %34, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %18, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %34, align 4
  store i32 %68, i32* %17, align 4
  br label %198

69:                                               ; preds = %64
  %70 = load i32, i32* %34, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %22, align 4
  store i32 %74, i32* %34, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %34, align 4
  store i32 %79, i32* %17, align 4
  br label %198

80:                                               ; preds = %75
  %81 = load i32, i32* %34, align 4
  %82 = load i32, i32* %23, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %23, align 4
  store i32 %85, i32* %34, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %34, align 4
  store i32 %90, i32* %17, align 4
  br label %198

91:                                               ; preds = %86
  %92 = load i32, i32* %34, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %24, align 4
  store i32 %96, i32* %34, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 6
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %34, align 4
  store i32 %101, i32* %17, align 4
  br label %198

102:                                              ; preds = %97
  %103 = load i32, i32* %34, align 4
  %104 = load i32, i32* %25, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %25, align 4
  store i32 %107, i32* %34, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32, i32* %18, align 4
  %110 = icmp eq i32 %109, 7
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %34, align 4
  store i32 %112, i32* %17, align 4
  br label %198

113:                                              ; preds = %108
  %114 = load i32, i32* %34, align 4
  %115 = load i32, i32* %26, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %26, align 4
  store i32 %118, i32* %34, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %34, align 4
  store i32 %123, i32* %17, align 4
  br label %198

124:                                              ; preds = %119
  %125 = load i32, i32* %34, align 4
  %126 = load i32, i32* %27, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %27, align 4
  store i32 %129, i32* %34, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %34, align 4
  store i32 %134, i32* %17, align 4
  br label %198

135:                                              ; preds = %130
  %136 = load i32, i32* %34, align 4
  %137 = load i32, i32* %28, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %28, align 4
  store i32 %140, i32* %34, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %18, align 4
  %143 = icmp eq i32 %142, 10
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* %34, align 4
  store i32 %145, i32* %17, align 4
  br label %198

146:                                              ; preds = %141
  %147 = load i32, i32* %34, align 4
  %148 = load i32, i32* %29, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %29, align 4
  store i32 %151, i32* %34, align 4
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, i32* %18, align 4
  %154 = icmp eq i32 %153, 11
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %34, align 4
  store i32 %156, i32* %17, align 4
  br label %198

157:                                              ; preds = %152
  %158 = load i32, i32* %34, align 4
  %159 = load i32, i32* %30, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %30, align 4
  store i32 %162, i32* %34, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = load i32, i32* %18, align 4
  %165 = icmp eq i32 %164, 12
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32, i32* %34, align 4
  store i32 %167, i32* %17, align 4
  br label %198

168:                                              ; preds = %163
  %169 = load i32, i32* %34, align 4
  %170 = load i32, i32* %31, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* %31, align 4
  store i32 %173, i32* %34, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %175, 13
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* %34, align 4
  store i32 %178, i32* %17, align 4
  br label %198

179:                                              ; preds = %174
  %180 = load i32, i32* %34, align 4
  %181 = load i32, i32* %32, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %32, align 4
  store i32 %184, i32* %34, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 14
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* %34, align 4
  store i32 %189, i32* %17, align 4
  br label %198

190:                                              ; preds = %185
  %191 = load i32, i32* %34, align 4
  %192 = load i32, i32* %33, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* %33, align 4
  store i32 %195, i32* %34, align 4
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32, i32* %34, align 4
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %196, %188, %177, %166, %155, %144, %133, %122, %111, %100, %89, %78, %67, %56, %45, %40
  %199 = load i32, i32* %17, align 4
  ret i32 %199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sscal(i32 noundef %0, double noundef %1, float* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = fptrunc double %1 to float
  store i32 %0, i32* %6, align 4
  store float %11, float* %7, align 4
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %64

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 0, %22
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load float*, float** %8, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds float, float* %27, i64 %28
  store float* %29, float** %8, align 8
  br label %30

30:                                               ; preds = %21, %18
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load float, float* %7, align 4
  %37 = load float*, float** %8, align 8
  %38 = load float, float* %37, align 4
  %39 = fmul float %38, %36
  store float %39, float* %37, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load float*, float** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds float, float* %44, i64 %45
  store float* %46, float** %8, align 8
  br label %31, !llvm.loop !24

47:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %64

48:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %58, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load float, float* %7, align 4
  %55 = load float*, float** %8, align 8
  %56 = load float, float* %55, align 4
  %57 = fmul float %56, %54
  store float %57, float* %55, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i32 1
  store float* %62, float** %8, align 8
  br label %49, !llvm.loop !25

63:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %47, %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vexopy(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %62

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load float*, float** %8, align 8
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %9, align 8
  %27 = load float, float* %26, align 4
  %28 = fadd float %25, %27
  %29 = load float*, float** %7, align 8
  store float %28, float* %29, align 4
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i32 1
  store float* %34, float** %8, align 8
  %35 = load float*, float** %9, align 8
  %36 = getelementptr inbounds float, float* %35, i32 1
  store float* %36, float** %9, align 8
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %7, align 8
  br label %19, !llvm.loop !26

39:                                               ; preds = %19
  br label %62

40:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load float*, float** %8, align 8
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %9, align 8
  %49 = load float, float* %48, align 4
  %50 = fsub float %47, %49
  %51 = load float*, float** %7, align 8
  store float %50, float* %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i32 1
  store float* %56, float** %8, align 8
  %57 = load float*, float** %9, align 8
  %58 = getelementptr inbounds float, float* %57, i32 1
  store float* %58, float** %9, align 8
  %59 = load float*, float** %7, align 8
  %60 = getelementptr inbounds float, float* %59, i32 1
  store float* %60, float** %7, align 8
  br label %41, !llvm.loop !27

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %14, %61, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfill(i32 noundef %0, float* noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = fptrunc double %2 to float
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float %8, float* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %25

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %20, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load float, float* %6, align 4
  %19 = load float*, float** %5, align 8
  store float %18, float* %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load float*, float** %5, align 8
  %24 = getelementptr inbounds float, float* %23, i32 1
  store float* %24, float** %5, align 8
  br label %13, !llvm.loop !28

25:                                               ; preds = %11, %13
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
