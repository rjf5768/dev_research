; ModuleID = './pr38969.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @foo(<2 x float> noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  store <2 x float> %0, <2 x float>* %3, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %5 = load float, float* %4, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %5, float* %8, align 8
  store float %7, float* %9, align 4
  %10 = load <2 x float>, <2 x float>* %2, align 8
  ret <2 x float> %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @bar(<2 x float> noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  %4 = alloca <2 x float>, align 8
  %5 = alloca <2 x float>, align 8
  store <2 x float> %0, <2 x float>* %3, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %11 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  store float %7, float* %10, align 8
  store float %9, float* %11, align 4
  %12 = load <2 x float>, <2 x float>* %4, align 8
  %13 = call <2 x float> @foo(<2 x float> noundef %12)
  store <2 x float> %13, <2 x float>* %5, align 8
  %14 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %15 = load float, float* %14, align 8
  %16 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %19 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %15, float* %18, align 8
  store float %17, float* %19, align 4
  %20 = load <2 x float>, <2 x float>* %2, align 8
  ret <2 x float> %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca <2 x float>, align 8
  %4 = alloca <2 x float>, align 8
  %5 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  store float 9.000000e+00, float* %5, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  store float 4.200000e+01, float* %6, align 4
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  store float 9.000000e+00, float* %7, align 8
  store float 4.200000e+01, float* %8, align 4
  %9 = load <2 x float>, <2 x float>* %3, align 8
  %10 = call <2 x float> @bar(<2 x float> noundef %9)
  store <2 x float> %10, <2 x float>* %4, align 8
  %11 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %12 = load float, float* %11, align 8
  %13 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %16 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  store float %12, float* %15, align 4
  store float %14, float* %16, align 4
  %17 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = fcmp une float %18, %22
  %26 = fcmp une float %20, %24
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %0
  call void @abort() #3
  unreachable

29:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
