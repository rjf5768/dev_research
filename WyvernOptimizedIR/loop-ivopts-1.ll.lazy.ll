; ModuleID = './loop-ivopts-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.t16 = internal global [16 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16
@foo.tmp = internal global [4 x float] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x float], align 16
  %2 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 0
  call void @foo(float* noundef nonnull %2)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(float* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %25, %1
  %.01 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %3 = icmp ult i32 %.01, 4
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = sub nsw i32 3, %.01
  %6 = mul nsw i32 %5, 5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x float], [16 x float]* @foo.t16, i64 0, i64 %7
  %9 = load float, float* %8, align 4
  %10 = sub nsw i32 4, %.01
  br label %11

11:                                               ; preds = %22, %4
  %.0 = phi i32 [ %10, %4 ], [ %23, %22 ]
  %12 = icmp slt i32 %.0, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %11
  %14 = shl nsw i32 %.0, 2
  %15 = add nsw i32 %5, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x float], [16 x float]* @foo.t16, i64 0, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fmul float %18, %9
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds [4 x float], [4 x float]* @foo.tmp, i64 0, i64 %20
  store float %19, float* %21, align 4
  br label %22

22:                                               ; preds = %13
  %23 = add nsw i32 %.0, 1
  br label %11, !llvm.loop !4

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !6

27:                                               ; preds = %2
  %28 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 0), align 16
  store float %28, float* %0, align 4
  %29 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 1), align 4
  %30 = getelementptr inbounds float, float* %0, i64 1
  store float %29, float* %30, align 4
  %31 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 2), align 8
  %32 = getelementptr inbounds float, float* %0, i64 2
  store float %31, float* %32, align 4
  %33 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* @foo.tmp, i64 0, i64 3), align 4
  %34 = getelementptr inbounds float, float* %0, i64 3
  store float %33, float* %34, align 4
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
