; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Jacobi.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Jacobi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyGivens(double** noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca double**, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store double** %0, double*** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %17, align 4
  br label %19

19:                                               ; preds = %71, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load double**, double*** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double*, double** %24, i64 %26
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  store double %32, double* %15, align 8
  %33 = load double**, double*** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double*, double** %33, i64 %35
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  store double %41, double* %16, align 8
  %42 = load double, double* %10, align 8
  %43 = load double, double* %15, align 8
  %44 = load double, double* %9, align 8
  %45 = load double, double* %16, align 8
  %46 = fmul double %44, %45
  %47 = fneg double %46
  %48 = call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = load double**, double*** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double*, double** %49, i64 %51
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  store double %48, double* %56, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %15, align 8
  %59 = load double, double* %10, align 8
  %60 = load double, double* %16, align 8
  %61 = fmul double %59, %60
  %62 = call double @llvm.fmuladd.f64(double %57, double %58, double %61)
  %63 = load double**, double*** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double*, double** %63, i64 %65
  %67 = load double*, double** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %62, double* %70, align 8
  br label %71

71:                                               ; preds = %23
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %19, !llvm.loop !4

74:                                               ; preds = %19
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %128, %74
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %76
  %81 = load double**, double*** %8, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double*, double** %81, i64 %83
  %85 = load double*, double** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  store double %89, double* %15, align 8
  %90 = load double**, double*** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double*, double** %90, i64 %92
  %94 = load double*, double** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  store double %98, double* %16, align 8
  %99 = load double, double* %10, align 8
  %100 = load double, double* %15, align 8
  %101 = load double, double* %9, align 8
  %102 = load double, double* %16, align 8
  %103 = fmul double %101, %102
  %104 = fneg double %103
  %105 = call double @llvm.fmuladd.f64(double %99, double %100, double %104)
  %106 = load double**, double*** %8, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double*, double** %106, i64 %108
  %110 = load double*, double** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %110, i64 %112
  store double %105, double* %113, align 8
  %114 = load double, double* %9, align 8
  %115 = load double, double* %15, align 8
  %116 = load double, double* %10, align 8
  %117 = load double, double* %16, align 8
  %118 = fmul double %116, %117
  %119 = call double @llvm.fmuladd.f64(double %114, double %115, double %118)
  %120 = load double**, double*** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double*, double** %120, i64 %122
  %124 = load double*, double** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %124, i64 %126
  store double %119, double* %127, align 8
  br label %128

128:                                              ; preds = %80
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %76, !llvm.loop !6

131:                                              ; preds = %76
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Jacobi(double** noundef %0, i32 noundef %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double**, align 8
  store double** %0, double*** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = call double** @newIdMatrix()
  store double** %15, double*** %14, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %161, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %164

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %157, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 51, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %160

26:                                               ; preds = %21
  %27 = load double**, double*** %3, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %31, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %3, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %43, i64 %47
  %49 = load double, double* %48, align 8
  call void @Givens(double noundef %38, double noundef %49, double* noundef %7, double* noundef %8)
  %50 = load double**, double*** %3, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = icmp slt i32 %64, 51
  br i1 %65, label %66, label %71

66:                                               ; preds = %26
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %67, %69
  br label %72

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i32 [ %70, %66 ], [ 50, %71 ]
  call void @ApplyGivens(double** noundef %50, double noundef %51, double noundef %52, i32 noundef %56, i32 noundef %59, i32 noundef %60, i32 noundef %73)
  %74 = load double**, double*** %14, align 8
  %75 = load double, double* %7, align 8
  %76 = load double, double* %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  call void @ApplyRGivens(double** noundef %74, double noundef %75, double noundef %76, i32 noundef %80, i32 noundef %83)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %141, %72
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 51, %89
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %156

92:                                               ; preds = %87
  %93 = load double**, double*** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double*, double** %93, i64 %96
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %98, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double**, double*** %3, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double*, double** %106, i64 %109
  %111 = load double*, double** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %111, i64 %115
  %117 = load double, double* %116, align 8
  call void @Givens(double noundef %105, double noundef %117, double* noundef %7, double* noundef %8)
  %118 = load double**, double*** %3, align 8
  %119 = load double, double* %7, align 8
  %120 = load double, double* %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 %130, %132
  %134 = icmp slt i32 %133, 51
  br i1 %134, label %135, label %140

135:                                              ; preds = %92
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %136, %138
  br label %141

140:                                              ; preds = %92
  br label %141

141:                                              ; preds = %140, %135
  %142 = phi i32 [ %139, %135 ], [ 50, %140 ]
  call void @ApplyGivens(double** noundef %118, double noundef %119, double noundef %120, i32 noundef %124, i32 noundef %127, i32 noundef %129, i32 noundef %142)
  %143 = load double**, double*** %14, align 8
  %144 = load double, double* %7, align 8
  %145 = load double, double* %8, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %150, %151
  call void @ApplyRGivens(double** noundef %143, double noundef %144, double noundef %145, i32 noundef %149, i32 noundef %152)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %13, align 4
  br label %87, !llvm.loop !7

156:                                              ; preds = %87
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %21, !llvm.loop !8

160:                                              ; preds = %21
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %9, align 4
  br label %17, !llvm.loop !9

164:                                              ; preds = %17
  %165 = load double**, double*** %14, align 8
  ret double** %165
}

declare dso_local double** @newIdMatrix() #2

declare dso_local void @Givens(double noundef, double noundef, double* noundef, double* noundef) #2

declare dso_local void @ApplyRGivens(double** noundef, double noundef, double noundef, i32 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
