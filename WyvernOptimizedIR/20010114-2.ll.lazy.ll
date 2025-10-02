; ModuleID = './20010114-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20010114-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rintf.TWO23 = internal constant float 0x4160000000000000, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local float @rintf(float noundef %0) #0 {
  %2 = call float @llvm.fabs.f32(float %0)
  %3 = fcmp olt float %2, 0x4160000000000000
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = fcmp ogt float %0, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = fadd float %0, 0x4160000000000000
  %8 = fadd float %7, 0xC160000000000000
  br label %16

9:                                                ; preds = %4
  %10 = fcmp olt float %0, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = fsub float 0x4160000000000000, %0
  %13 = fadd float %12, 0xC160000000000000
  %14 = fneg float %13
  br label %15

15:                                               ; preds = %11, %9
  %.0 = phi float [ %14, %11 ], [ %0, %9 ]
  br label %16

16:                                               ; preds = %15, %6
  %.1 = phi float [ %8, %6 ], [ %.0, %15 ]
  br label %17

17:                                               ; preds = %16, %1
  %.2 = phi float [ %.1, %16 ], [ %0, %1 ]
  ret float %.2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %2, %1
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.rint.f32(float) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
