; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x float> @f(float noundef %0, float noundef %1) #0 {
  %3 = alloca %struct.complex, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = getelementptr inbounds %struct.complex, %struct.complex* %3, i32 0, i32 0
  store float %6, float* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = getelementptr inbounds %struct.complex, %struct.complex* %3, i32 0, i32 1
  store float %8, float* %9, align 4
  %10 = bitcast %struct.complex* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 4
  ret <2 x float> %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.complex, align 4
  store i32 0, i32* %1, align 4
  %3 = call <2 x float> @f(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %4 = bitcast %struct.complex* %2 to <2 x float>*
  store <2 x float> %3, <2 x float>* %4, align 4
  %5 = getelementptr inbounds %struct.complex, %struct.complex* %2, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = fpext float %6 to double
  %8 = fcmp une double %7, 1.000000e+00
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.complex, %struct.complex* %2, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %9
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
