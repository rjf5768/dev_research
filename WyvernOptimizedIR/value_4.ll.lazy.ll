; ModuleID = './value_4.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/value_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float* @f_to_f__(float noundef %0, float* noundef returned %1) #0 {
  %3 = load float, float* %1, align 4
  %4 = fcmp une float %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @abort() #3
  unreachable

6:                                                ; preds = %2
  %7 = fmul float %0, 2.000000e+00
  store float %7, float* %1, align 4
  ret float* %1
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @i_to_i__(i32 noundef %0, i32* noundef returned %1) #0 {
  %3 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %3, %0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  %6 = mul nsw i32 %0, 3
  store i32 %6, i32* %1, align 4
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_to_c__({ float, float }* nocapture noundef writeonly %0, <2 x float> noundef %1, { float, float }* nocapture noundef readonly %2) #2 {
  %4 = alloca <2 x float>, align 8
  store <2 x float> %1, <2 x float>* %4, align 8
  %5 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %6 = load float, float* %5, align 8
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fcmp une float %6, %10
  %14 = fcmp une float %8, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  call void @abort() #3
  unreachable

17:                                               ; preds = %3
  %18 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %19 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  store float 0.000000e+00, float* %18, align 8
  store float 0.000000e+00, float* %19, align 4
  %20 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = fmul float %21, 4.000000e+00
  %25 = fmul float %23, 4.000000e+00
  %26 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 0
  %27 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 1
  store float %24, float* %26, align 4
  store float %25, float* %27, align 4
  ret void
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
