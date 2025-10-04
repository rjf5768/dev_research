; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20030331-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20030331-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global float -1.500000e+00, align 4
@rintf.TWO23 = internal constant float 0x4160000000000000, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @rintf() #0 {
  %1 = load float, float* @x, align 4
  %2 = fpext float %1 to double
  %3 = call double @llvm.fabs.f64(double %2)
  %4 = fcmp olt double %3, 0x4160000000000000
  br i1 %4, label %5, label %26

5:                                                ; preds = %0
  %6 = load float, float* @x, align 4
  %7 = fpext float %6 to double
  %8 = fcmp ogt double %7, 0.000000e+00
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load float, float* @x, align 4
  %11 = fadd float %10, 0x4160000000000000
  store float %11, float* @x, align 4
  %12 = load float, float* @x, align 4
  %13 = fsub float %12, 0x4160000000000000
  store float %13, float* @x, align 4
  br label %25

14:                                               ; preds = %5
  %15 = load float, float* @x, align 4
  %16 = fpext float %15 to double
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load float, float* @x, align 4
  %20 = fsub float 0x4160000000000000, %19
  store float %20, float* @x, align 4
  %21 = load float, float* @x, align 4
  %22 = fsub float %21, 0x4160000000000000
  %23 = fneg float %22
  store float %23, float* @x, align 4
  br label %24

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %24, %9
  br label %26

26:                                               ; preds = %25, %0
  %27 = load float, float* @x, align 4
  ret float %27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call float @rintf()
  %3 = fpext float %2 to double
  %4 = fcmp une double %3, -2.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
