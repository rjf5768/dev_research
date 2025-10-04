; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38969.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @foo(<2 x float> noundef %0) #0 {
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %4, align 4
  %5 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %10 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %6, float* %9, align 4
  store float %8, float* %10, align 4
  %11 = bitcast { float, float }* %2 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  ret <2 x float> %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @bar(<2 x float> noundef %0) #0 {
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %6, align 4
  %7 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %12 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float %8, float* %11, align 4
  store float %10, float* %12, align 4
  %13 = bitcast { float, float }* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %15 = call <2 x float> @foo(<2 x float> noundef %14)
  %16 = bitcast { float, float }* %5 to <2 x float>*
  store <2 x float> %15, <2 x float>* %16, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %22 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %18, float* %21, align 4
  store float %20, float* %22, align 4
  %23 = bitcast { float, float }* %2 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 4
  ret <2 x float> %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  store float 9.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float 4.200000e+01, float* %7, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %13 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  store float %9, float* %12, align 4
  store float %11, float* %13, align 4
  %14 = bitcast { float, float }* %4 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 4
  %16 = call <2 x float> @bar(<2 x float> noundef %15)
  %17 = bitcast { float, float }* %5 to <2 x float>*
  store <2 x float> %16, <2 x float>* %17, align 4
  %18 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %23 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float %19, float* %22, align 4
  store float %21, float* %23, align 4
  %24 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = fcmp une float %25, %29
  %33 = fcmp une float %27, %31
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %0
  call void @abort() #2
  unreachable

36:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
