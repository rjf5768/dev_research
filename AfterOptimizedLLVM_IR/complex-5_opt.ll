; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global { float, float } { float 1.000000e+00, float 1.400000e+01 }, align 4
@y = dso_local global { float, float } { float 7.000000e+00, float 5.000000e+00 }, align 4
@w = dso_local global { float, float } { float 8.000000e+00, float 1.900000e+01 }, align 4
@z = dso_local global { float, float } zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @p(<2 x float> noundef %0, <2 x float> noundef %1) #0 {
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = bitcast { float, float }* %4 to <2 x float>*
  store <2 x float> %0, <2 x float>* %6, align 4
  %7 = bitcast { float, float }* %5 to <2 x float>*
  store <2 x float> %1, <2 x float>* %7, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fadd float %9, %13
  %17 = fadd float %11, %15
  %18 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %19 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float %16, float* %18, align 4
  store float %17, float* %19, align 4
  %20 = bitcast { float, float }* %3 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 4
  ret <2 x float> %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %8 = alloca { float, float }, align 4
  store i32 0, i32* %1, align 4
  %9 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i32 0, i32 0), align 4
  %10 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i32 0, i32 1), align 4
  %11 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i32 0, i32 0), align 4
  %12 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i32 0, i32 1), align 4
  %13 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %14 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float %9, float* %13, align 4
  store float %10, float* %14, align 4
  %15 = bitcast { float, float }* %2 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %18 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  store float %11, float* %17, align 4
  store float %12, float* %18, align 4
  %19 = bitcast { float, float }* %3 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4
  %21 = call <2 x float> @p(<2 x float> noundef %16, <2 x float> noundef %20)
  %22 = bitcast { float, float }* %4 to <2 x float>*
  store <2 x float> %21, <2 x float>* %22, align 4
  %23 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %26 = load float, float* %25, align 4
  store float %24, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 0), align 4
  store float %26, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 1), align 4
  %27 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i32 0, i32 0), align 4
  %28 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i32 0, i32 1), align 4
  %29 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 0), align 4
  %30 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 1), align 4
  %31 = call <2 x float> @__divsc3(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %29, float noundef %30) #2
  %32 = bitcast { float, float }* %5 to <2 x float>*
  store <2 x float> %31, <2 x float>* %32, align 4
  %33 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = getelementptr inbounds { float, float }, { float, float }* %5, i32 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 0
  %38 = getelementptr inbounds { float, float }, { float, float }* %6, i32 0, i32 1
  store float %27, float* %37, align 4
  store float %28, float* %38, align 4
  %39 = bitcast { float, float }* %6 to <2 x float>*
  %40 = load <2 x float>, <2 x float>* %39, align 4
  %41 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 0
  %42 = getelementptr inbounds { float, float }, { float, float }* %7, i32 0, i32 1
  store float %34, float* %41, align 4
  store float %36, float* %42, align 4
  %43 = bitcast { float, float }* %7 to <2 x float>*
  %44 = load <2 x float>, <2 x float>* %43, align 4
  %45 = call <2 x float> @p(<2 x float> noundef %40, <2 x float> noundef %44)
  %46 = bitcast { float, float }* %8 to <2 x float>*
  store <2 x float> %45, <2 x float>* %46, align 4
  %47 = getelementptr inbounds { float, float }, { float, float }* %8, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = getelementptr inbounds { float, float }, { float, float }* %8, i32 0, i32 1
  %50 = load float, float* %49, align 4
  store float %48, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i32 0, i32 0), align 4
  store float %50, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i32 0, i32 1), align 4
  %51 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 0), align 4
  %52 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i32 0, i32 1), align 4
  %53 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @w, i32 0, i32 0), align 4
  %54 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @w, i32 0, i32 1), align 4
  %55 = fcmp une float %51, %53
  %56 = fcmp une float %52, %54
  %57 = or i1 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %0
  call void @abort() #3
  unreachable

59:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare dso_local <2 x float> @__divsc3(float, float, float, float)

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
