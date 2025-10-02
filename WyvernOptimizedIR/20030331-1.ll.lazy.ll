; ModuleID = './20030331-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20030331-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global float -1.500000e+00, align 4
@rintf.TWO23 = internal constant float 0x4160000000000000, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local float @rintf() #0 {
  %1 = load float, float* @x, align 4
  %2 = call float @llvm.fabs.f32(float %1)
  %3 = fcmp olt float %2, 0x4160000000000000
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load float, float* @x, align 4
  %6 = fcmp ogt float %5, 0.000000e+00
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load float, float* @x, align 4
  %9 = fadd float %8, 0x4160000000000000
  %10 = fadd float %9, 0xC160000000000000
  store float %10, float* @x, align 4
  br label %20

11:                                               ; preds = %4
  %12 = load float, float* @x, align 4
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load float, float* @x, align 4
  %16 = fsub float 0x4160000000000000, %15
  %17 = fadd float %16, 0xC160000000000000
  %18 = fneg float %17
  store float %18, float* @x, align 4
  br label %19

19:                                               ; preds = %14, %11
  br label %20

20:                                               ; preds = %19, %7
  br label %21

21:                                               ; preds = %20, %0
  %22 = load float, float* @x, align 4
  ret float %22
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call float @rintf()
  %2 = fcmp une float %1, -2.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
