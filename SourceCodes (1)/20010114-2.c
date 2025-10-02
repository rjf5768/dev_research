; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20010114-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20010114-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rintf.TWO23 = internal constant float 0x4160000000000000, align 4

; Function Attrs: noinline nounwind readnone uwtable willreturn
define dso_local float @rintf(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = call double @llvm.fabs.f64(double %4)
  %6 = fcmp olt double %5, 0x4160000000000000
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load float, float* %2, align 4
  %13 = fadd float %12, 0x4160000000000000
  store float %13, float* %2, align 4
  %14 = load float, float* %2, align 4
  %15 = fsub float %14, 0x4160000000000000
  store float %15, float* %2, align 4
  br label %27

16:                                               ; preds = %7
  %17 = load float, float* %2, align 4
  %18 = fpext float %17 to double
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load float, float* %2, align 4
  %22 = fsub float 0x4160000000000000, %21
  store float %22, float* %2, align 4
  %23 = load float, float* %2, align 4
  %24 = fsub float %23, 0x4160000000000000
  %25 = fneg float %24
  store float %25, float* %2, align 4
  br label %26

26:                                               ; preds = %20, %16
  br label %27

27:                                               ; preds = %26, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load float, float* %2, align 4
  ret float %29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call float @llvm.rint.f32(float -1.500000e+00)
  %3 = fpext float %2 to double
  %4 = fcmp une double %3, -2.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.rint.f32(float) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
