; ModuleID = './SparseCompRow.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/SparseCompRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @SparseCompRow_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = srem i32 %1, %0
  %5 = sub i32 %1, %4
  %6 = sitofp i32 %5 to double
  %7 = fmul double %6, 2.000000e+00
  %8 = sitofp i32 %2 to double
  %9 = fmul double %7, %8
  ret double %9
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @SparseCompRow_matmult(i32 noundef %0, double* nocapture noundef writeonly %1, double* nocapture noundef readonly %2, i32* nocapture noundef readonly %3, i32* nocapture noundef readonly %4, double* nocapture noundef readonly %5, i32 noundef %6) #1 {
  br label %8

8:                                                ; preds = %42, %7
  %.03 = phi i32 [ 0, %7 ], [ %43, %42 ]
  %9 = icmp slt i32 %.03, %6
  br i1 %9, label %10, label %44

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %39, %10
  %.02 = phi i32 [ 0, %10 ], [ %40, %39 ]
  %12 = icmp slt i32 %.02, %0
  br i1 %12, label %13, label %41

13:                                               ; preds = %11
  %14 = zext i32 %.02 to i64
  %15 = getelementptr inbounds i32, i32* %3, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nuw nsw i32 %.02, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %3, i64 %18
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %24, %13
  %.01 = phi i32 [ %16, %13 ], [ %35, %24 ]
  %.0 = phi double [ 0.000000e+00, %13 ], [ %34, %24 ]
  %22 = icmp slt i32 %.01, %20
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = sext i32 %.01 to i64
  %26 = getelementptr inbounds i32, i32* %4, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %5, i64 %28
  %30 = load double, double* %29, align 8
  %31 = sext i32 %.01 to i64
  %32 = getelementptr inbounds double, double* %2, i64 %31
  %33 = load double, double* %32, align 8
  %34 = call double @llvm.fmuladd.f64(double %30, double %33, double %.0)
  %35 = add nsw i32 %.01, 1
  br label %21, !llvm.loop !4

36:                                               ; preds = %21
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds double, double* %1, i64 %37
  store double %.0, double* %38, align 8
  br label %39

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %.02, 1
  br label %11, !llvm.loop !6

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

44:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
