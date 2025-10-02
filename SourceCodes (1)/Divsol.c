; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Divsol.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Divsol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"m=%i, rowstart=%i, rowend=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @HouseMatrix(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store double** %0, double*** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load double*, double** %6, align 8
  %13 = load double*, double** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call double @xty(double* noundef %12, double* noundef %13, i32 noundef %14, i32 noundef %15)
  %17 = fdiv double 2.000000e+00, %16
  store double %17, double* %11, align 8
  %18 = load double**, double*** %5, align 8
  call void @MakeID(double** noundef %18)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %54, %24
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load double, double* %11, align 8
  %32 = load double*, double** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %31, %36
  %38 = load double*, double** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  %43 = load double**, double*** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %43, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fneg double %37
  %53 = call double @llvm.fmuladd.f64(double %52, double %42, double %51)
  store double %53, double* %50, align 8
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %26, !llvm.loop !4

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %20, !llvm.loop !6

61:                                               ; preds = %20
  ret void
}

declare dso_local double @xty(double* noundef, double* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @MakeID(double** noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyHouse(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double**, align 8
  %10 = alloca double**, align 8
  store double** %0, double*** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call double** @newMatrix()
  store double** %11, double*** %9, align 8
  %12 = call double** @newMatrix()
  store double** %12, double*** %10, align 8
  %13 = load double**, double*** %10, align 8
  %14 = load double*, double** %6, align 8
  call void @HouseMatrix(double** noundef %13, double* noundef %14, i32 noundef 0, i32 noundef 50)
  %15 = load double**, double*** %9, align 8
  %16 = load double**, double*** %5, align 8
  %17 = load double**, double*** %10, align 8
  call void @matrixMult(double** noundef %15, double** noundef %16, double** noundef %17)
  %18 = load double**, double*** %5, align 8
  %19 = load double**, double*** %10, align 8
  %20 = load double**, double*** %9, align 8
  call void @matrixMult(double** noundef %18, double** noundef %19, double** noundef %20)
  %21 = load double**, double*** %10, align 8
  call void @freeMatrix(double** noundef %21)
  %22 = load double**, double*** %9, align 8
  call void @freeMatrix(double** noundef %22)
  ret void
}

declare dso_local double** @newMatrix() #1

declare dso_local void @matrixMult(double** noundef, double** noundef, double** noundef) #1

declare dso_local void @freeMatrix(double** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WeirdHouse(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double** %0, double*** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %40, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load double**, double*** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double*, double** %20, i64 %22
  %24 = load double*, double** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double**, double*** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double*, double** %29, i64 %31
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double, double* %12, align 8
  %39 = call double @llvm.fmuladd.f64(double %28, double %37, double %38)
  store double %39, double* %12, align 8
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %15, !llvm.loop !7

43:                                               ; preds = %15
  %44 = load double**, double*** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double**, double*** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double*, double** %53, i64 %55
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = call i32 @sign(double noundef %61)
  %63 = sitofp i32 %62 to double
  %64 = load double, double* %12, align 8
  %65 = call double @sqrt(double noundef %64) #4
  %66 = call double @llvm.fmuladd.f64(double %63, double %65, double %52)
  %67 = fdiv double 1.000000e+00, %66
  store double %67, double* %13, align 8
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %89, %43
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load double**, double*** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double*, double** %74, i64 %76
  %78 = load double*, double** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double, double* %13, align 8
  %84 = fmul double %82, %83
  %85 = load double*, double** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  store double %84, double* %88, align 8
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %69, !llvm.loop !8

92:                                               ; preds = %69
  %93 = load double*, double** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  store double 1.000000e+00, double* %96, align 8
  ret void
}

declare dso_local i32 @sign(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double** @DivideAndSolve(double** noundef %0, i32 noundef %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double**, align 8
  %30 = alloca double**, align 8
  %31 = alloca double**, align 8
  %32 = alloca double**, align 8
  %33 = alloca double**, align 8
  %34 = alloca double**, align 8
  %35 = alloca double**, align 8
  store double** %0, double*** %4, align 8
  store i32 %1, i32* %5, align 4
  %36 = call double** @newIdMatrix()
  store double** %36, double*** %34, align 8
  %37 = call double** @newMatrix()
  store double** %37, double*** %35, align 8
  %38 = call double* @newVector()
  store double* %38, double** %24, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sitofp i32 %40 to double
  store double %41, double* %13, align 8
  %42 = load double, double* %13, align 8
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %271, %2
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 51
  br i1 %46, label %47, label %282

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %13, align 8
  %51 = fadd double %49, %50
  %52 = fsub double %51, 1.000000e+00
  %53 = fcmp olt double %52, 5.000000e+01
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* %20, align 4
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %13, align 8
  %58 = fadd double %56, %57
  %59 = fsub double %58, 1.000000e+00
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi double [ %59, %54 ], [ 5.000000e+01, %60 ]
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %13, align 8
  %67 = fsub double %65, %66
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %21, align 4
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %13, align 8
  %72 = fadd double %70, %71
  %73 = fsub double %72, 1.000000e+00
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %21, align 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %131, %61
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %23, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %134

80:                                               ; preds = %76
  %81 = load double**, double*** %4, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %22, align 4
  %85 = call double @norm(double** noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %84)
  %86 = fcmp une double %85, 0.000000e+00
  br i1 %86, label %87, label %124

87:                                               ; preds = %80
  %88 = load double**, double*** %4, align 8
  %89 = load double*, double** %24, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %22, align 4
  call void @House(double** noundef %88, double* noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92)
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %102, %87
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load double*, double** %24, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  store double 0.000000e+00, double* %101, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %93, !llvm.loop !9

105:                                              ; preds = %93
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %116, %105
  %109 = load i32, i32* %19, align 4
  %110 = icmp slt i32 %109, 51
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load double*, double** %24, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  store double 0.000000e+00, double* %115, align 8
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %108, !llvm.loop !10

119:                                              ; preds = %108
  %120 = load double**, double*** %4, align 8
  %121 = load double*, double** %24, align 8
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %22, align 4
  call void @ApplyHouse(double** noundef %120, double* noundef %121, i32 noundef %122, i32 noundef %123)
  br label %124

124:                                              ; preds = %119, %80
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %125, i32 noundef %126, i32 noundef %127)
  %129 = load double*, double** %24, align 8
  call void @printVector(double* noundef %129)
  %130 = load double**, double*** %4, align 8
  call void @printMatrix(double** noundef %130)
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %76, !llvm.loop !11

134:                                              ; preds = %76
  %135 = load double**, double*** %4, align 8
  %136 = load double*, double** %24, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %23, align 4
  call void @WeirdHouse(double** noundef %135, double* noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139)
  %140 = load double**, double*** %4, align 8
  %141 = load double*, double** %24, align 8
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %23, align 4
  call void @ApplyHouse(double** noundef %140, double* noundef %141, i32 noundef %142, i32 noundef %143)
  br label %144

144:                                              ; preds = %177, %134
  %145 = load double**, double*** %4, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double*, double** %145, i64 %147
  %149 = load double*, double** %148, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load double**, double*** %4, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double*, double** %154, i64 %157
  %159 = load double*, double** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = load double, double* %162, align 8
  %164 = load double**, double*** %4, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double*, double** %164, i64 %166
  %168 = load double*, double** %167, align 8
  %169 = load i32, i32* %23, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %168, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fsub double %163, %173
  %175 = fmul double %174, 1.000000e-10
  %176 = fcmp ogt double %153, %175
  br i1 %176, label %177, label %271

177:                                              ; preds = %144
  %178 = load double**, double*** %4, align 8
  call void @printMatrix(double** noundef %178)
  %179 = load double**, double*** %4, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double*, double** %179, i64 %182
  %184 = load double*, double** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = load double**, double*** %4, align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double*, double** %189, i64 %191
  %193 = load double*, double** %192, align 8
  %194 = load i32, i32* %23, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %193, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fsub double %188, %198
  %200 = fdiv double %199, 2.000000e+00
  store double %200, double* %8, align 8
  %201 = load double**, double*** %4, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double*, double** %201, i64 %203
  %205 = load double*, double** %204, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  store double %209, double* %7, align 8
  %210 = load double**, double*** %4, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double*, double** %210, i64 %212
  %214 = load double*, double** %213, align 8
  %215 = load i32, i32* %23, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %214, i64 %217
  %219 = load double, double* %218, align 8
  %220 = load double, double* %8, align 8
  %221 = fadd double %219, %220
  %222 = load double, double* %8, align 8
  %223 = call i32 @sign(double noundef %222)
  %224 = sitofp i32 %223 to double
  %225 = load double, double* %8, align 8
  %226 = load double, double* %8, align 8
  %227 = load double, double* %7, align 8
  %228 = load double, double* %7, align 8
  %229 = fmul double %227, %228
  %230 = call double @llvm.fmuladd.f64(double %225, double %226, double %229)
  %231 = call double @sqrt(double noundef %230) #4
  %232 = fneg double %224
  %233 = call double @llvm.fmuladd.f64(double %232, double %231, double %221)
  store double %233, double* %12, align 8
  %234 = load double**, double*** %4, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double*, double** %234, i64 %237
  %239 = load double*, double** %238, align 8
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %239, i64 %241
  %243 = load double, double* %242, align 8
  %244 = load double, double* %12, align 8
  %245 = fsub double %243, %244
  %246 = load double**, double*** %4, align 8
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double*, double** %246, i64 %248
  %250 = load double*, double** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, double* %250, i64 %252
  %254 = load double, double* %253, align 8
  call void @Givens(double noundef %245, double noundef %254, double* noundef %10, double* noundef %11)
  %255 = load double**, double*** %4, align 8
  %256 = load double, double* %10, align 8
  %257 = load double, double* %11, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sub nsw i32 %258, 1
  %260 = load i32, i32* %20, align 4
  call void @ApplyGivens(double** noundef %255, double noundef %256, double noundef %257, i32 noundef %259, i32 noundef %260, i32 noundef 0, i32 noundef 50)
  %261 = load double**, double*** %4, align 8
  %262 = load i32, i32* %21, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds double*, double** %261, i64 %263
  %265 = load double*, double** %264, align 8
  %266 = load i32, i32* %23, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %265, i64 %267
  %269 = load double, double* %268, align 8
  %270 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double noundef %269)
  br label %144, !llvm.loop !12

271:                                              ; preds = %144
  %272 = load double, double* %13, align 8
  %273 = load i32, i32* %20, align 4
  %274 = sitofp i32 %273 to double
  %275 = fadd double %274, %272
  %276 = fptosi double %275 to i32
  store i32 %276, i32* %20, align 4
  %277 = load double, double* %13, align 8
  %278 = load i32, i32* %21, align 4
  %279 = sitofp i32 %278 to double
  %280 = fadd double %279, %277
  %281 = fptosi double %280 to i32
  store i32 %281, i32* %21, align 4
  br label %44, !llvm.loop !13

282:                                              ; preds = %44
  %283 = load double**, double*** %3, align 8
  ret double** %283
}

declare dso_local double** @newIdMatrix() #1

declare dso_local double* @newVector() #1

declare dso_local double @norm(double** noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @House(double** noundef, double* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @printVector(double* noundef) #1

declare dso_local void @printMatrix(double** noundef) #1

declare dso_local void @Givens(double noundef, double noundef, double* noundef, double* noundef) #1

declare dso_local void @ApplyGivens(double** noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
