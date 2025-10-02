; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/value_4.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/value_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float* @f_to_f__(float noundef %0, float* noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  %5 = load float, float* %3, align 4
  %6 = load float*, float** %4, align 8
  %7 = load float, float* %6, align 4
  %8 = fcmp une float %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #3
  unreachable

10:                                               ; preds = %2
  %11 = load float, float* %3, align 4
  %12 = fpext float %11 to double
  %13 = fmul double %12, 2.000000e+00
  %14 = fptrunc double %13 to float
  %15 = load float*, float** %4, align 8
  store float %14, float* %15, align 4
  store float 0.000000e+00, float* %3, align 4
  %16 = load float*, float** %4, align 8
  ret float* %16
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @i_to_i__(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #3
  unreachable

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 3
  %13 = load i32*, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  ret i32* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c__({ float, float }* noundef %0, <2 x float> noundef %1, { float, float }* noundef %2) #2 {
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }*, align 8
  %6 = alloca { float, float }*, align 8
  %7 = bitcast { float, float }* %4 to <2 x float>*
  store <2 x float> %1, <2 x float>* %7, align 4
  store { float, float }* %0, { float, float }** %5, align 8
  store { float, float }* %2, { float, float }** %6, align 8
  %8 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = load { float, float }*, { float, float }** %6, align 8
  %13 = getelementptr inbounds { float, float }, { float, float }* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds { float, float }, { float, float }* %12, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fcmp une float %9, %14
  %18 = fcmp une float %11, %16
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @abort() #3
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %23 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  %24 = load { float, float }*, { float, float }** %6, align 8
  %25 = getelementptr inbounds { float, float }, { float, float }* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds { float, float }, { float, float }* %24, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fpext float %26 to double
  %30 = fpext float %28 to double
  %31 = fmul double %29, 4.000000e+00
  %32 = fmul double %30, 4.000000e+00
  %33 = fptrunc double %31 to float
  %34 = fptrunc double %32 to float
  %35 = load { float, float }*, { float, float }** %5, align 8
  %36 = getelementptr inbounds { float, float }, { float, float }* %35, i32 0, i32 0
  %37 = getelementptr inbounds { float, float }, { float, float }* %35, i32 0, i32 1
  store float %33, float* %36, align 4
  store float %34, float* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
