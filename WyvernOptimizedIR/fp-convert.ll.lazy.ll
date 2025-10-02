; ModuleID = './fp-convert.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/fp-convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Total is %g\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @loop(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %.01 = phi i64 [ 0, %3 ], [ %15, %7 ]
  %.0 = phi double [ 0.000000e+00, %3 ], [ %14, %7 ]
  %5 = icmp slt i64 %.01, %2
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds float, float* %0, i64 %.01
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, float* %1, i64 %.01
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = call double @llvm.fmuladd.f64(double %10, double %13, double %.0)
  %15 = add nuw nsw i64 %.01, 1
  br label %4, !llvm.loop !4

16:                                               ; preds = %4
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  %3 = alloca [2048 x float], align 16
  %4 = alloca [2048 x float], align 16
  br label %5

5:                                                ; preds = %31, %2
  %.04 = phi i32 [ 0, %2 ], [ %33, %31 ]
  %.03 = phi double [ 0.000000e+00, %2 ], [ %32, %31 ]
  %.01 = phi float [ 0.000000e+00, %2 ], [ %.12, %31 ]
  %.0 = phi float [ 1.000000e+00, %2 ], [ %.1, %31 ]
  %6 = icmp ult i32 %.04, 500000
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %8 = urem i32 %.04, 10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  %11 = fadd float %.01, 0x3FB99999A0000000
  %12 = fadd float %.0, 0x3FC99999A0000000
  br label %13

13:                                               ; preds = %10, %9
  %.12 = phi float [ 0.000000e+00, %9 ], [ %11, %10 ]
  %.1 = phi float [ 1.000000e+00, %9 ], [ %12, %10 ]
  br label %14

14:                                               ; preds = %25, %13
  %.05 = phi i32 [ 0, %13 ], [ %26, %25 ]
  %15 = icmp ult i32 %.05, 2048
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = sitofp i32 %.05 to float
  %18 = fadd float %.12, %17
  %19 = zext i32 %.05 to i64
  %20 = getelementptr inbounds [2048 x float], [2048 x float]* %3, i64 0, i64 %19
  store float %18, float* %20, align 4
  %21 = sitofp i32 %.05 to float
  %22 = fadd float %.1, %21
  %23 = zext i32 %.05 to i64
  %24 = getelementptr inbounds [2048 x float], [2048 x float]* %4, i64 0, i64 %23
  store float %22, float* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %.05, 1
  br label %14, !llvm.loop !6

27:                                               ; preds = %14
  %28 = getelementptr inbounds [2048 x float], [2048 x float]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [2048 x float], [2048 x float]* %4, i64 0, i64 0
  %30 = call double @loop(float* noundef nonnull %28, float* noundef nonnull %29, i64 noundef 2048)
  br label %31

31:                                               ; preds = %27
  %32 = fadd double %.03, %30
  %33 = add nuw nsw i32 %.04, 1
  br label %5, !llvm.loop !7

34:                                               ; preds = %5
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %.03) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
