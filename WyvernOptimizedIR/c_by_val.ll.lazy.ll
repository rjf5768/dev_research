; ModuleID = './c_by_val.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_by_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_to_f__(float* nocapture noundef writeonly %0, float noundef %1, float* nocapture noundef readonly %2, float** nocapture noundef readonly %3) #0 {
  %5 = load float, float* %2, align 4
  %6 = fcmp une float %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load float*, float** %3, align 8
  %10 = load float, float* %9, align 4
  %11 = fcmp une float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  %14 = load float, float* %2, align 4
  %15 = fmul float %14, 2.000000e+00
  store float %15, float* %0, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %12, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_to_f8__(double* nocapture noundef writeonly %0, double noundef %1, double* nocapture noundef readonly %2, double** nocapture noundef readonly %3) #0 {
  %5 = load double, double* %2, align 8
  %6 = fcmp une double %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load double*, double** %3, align 8
  %10 = load double, double* %9, align 8
  %11 = fcmp une double %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  %14 = load double, double* %2, align 8
  %15 = fmul double %14, 2.000000e+00
  store double %15, double* %0, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %12, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @i_to_i__(i32* nocapture noundef writeonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32** nocapture noundef readonly %3) #0 {
  %5 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %5, %1
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, %1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %12, 3
  store i32 %13, i32* %0, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %10, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @i_to_i8__(i64* nocapture noundef writeonly %0, i64 noundef %1, i64* nocapture noundef readonly %2, i64** nocapture noundef readonly %3) #0 {
  %5 = load i64, i64* %2, align 8
  %.not = icmp eq i64 %5, %1
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  %.not1 = icmp eq i64 %9, %1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = mul nsw i64 %12, 3
  store i64 %13, i64* %0, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %10, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c__({ float, float }* nocapture noundef writeonly %0, <2 x float> noundef %1, { float, float }* nocapture noundef readonly %2, { float, float }** nocapture noundef readonly %3) #2 {
  %5 = alloca <2 x float>, align 8
  store <2 x float> %1, <2 x float>* %5, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = fcmp une float %7, %11
  %15 = fcmp une float %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %4
  %19 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %20 = load float, float* %19, align 8
  %21 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = load { float, float }*, { float, float }** %3, align 8
  %24 = getelementptr inbounds { float, float }, { float, float }* %23, i64 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds { float, float }, { float, float }* %23, i64 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp une float %20, %25
  %29 = fcmp une float %22, %27
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %18
  %33 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %34 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  store float 0.000000e+00, float* %33, align 8
  store float 0.000000e+00, float* %34, align 4
  %35 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = fmul float %36, 4.000000e+00
  %40 = fmul float %38, 4.000000e+00
  %41 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 0
  %42 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 1
  store float %39, float* %41, align 4
  store float %40, float* %42, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %31, %17
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c8__({ double, double }* nocapture noundef writeonly %0, double noundef %1, double noundef %2, { double, double }* nocapture noundef readonly %3, { double, double }** nocapture noundef readonly %4) #0 {
  %6 = alloca { double, double }, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  store double %1, double* %7, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  store double %2, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp une double %10, %1
  %14 = fcmp une double %12, %2
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %5
  %18 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = load { double, double }*, { double, double }** %4, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %22, i64 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %22, i64 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %19, %24
  %28 = fcmp une double %21, %26
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %17
  %32 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 0
  %33 = getelementptr inbounds { double, double }, { double, double }* %6, i64 0, i32 1
  store double 0.000000e+00, double* %32, align 8
  store double 0.000000e+00, double* %33, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fmul double %35, 4.000000e+00
  %39 = fmul double %37, 4.000000e+00
  %40 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 0
  %41 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 1
  store double %38, double* %40, align 8
  store double %39, double* %41, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %16
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
