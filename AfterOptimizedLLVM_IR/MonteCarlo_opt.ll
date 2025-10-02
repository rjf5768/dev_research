; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/MonteCarlo.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/MonteCarlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

; Function Attrs: noinline nounwind uwtable
define dso_local double @MonteCarlo_num_flops(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 4.000000e+00
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @MonteCarlo_integrate(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %8 = call %struct.Random_struct* @new_Random_seed(i32 noundef 113)
  store %struct.Random_struct* %8, %struct.Random_struct** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = call double @Random_nextDouble(%struct.Random_struct* noundef %14)
  store double %15, double* %6, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %17 = call double @Random_nextDouble(%struct.Random_struct* noundef %16)
  store double %17, double* %7, align 8
  %18 = load double, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* %7, align 8
  %21 = load double, double* %7, align 8
  %22 = fmul double %20, %21
  %23 = call double @llvm.fmuladd.f64(double %18, double %19, double %22)
  %24 = fcmp ole double %23, 1.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9, !llvm.loop !4

32:                                               ; preds = %9
  %33 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  call void @Random_delete(%struct.Random_struct* noundef %33)
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to double
  %36 = load i32, i32* %2, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  %39 = fmul double %38, 4.000000e+00
  ret double %39
}

declare dso_local %struct.Random_struct* @new_Random_seed(i32 noundef) #1

declare dso_local double @Random_nextDouble(%struct.Random_struct* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local void @Random_delete(%struct.Random_struct* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
