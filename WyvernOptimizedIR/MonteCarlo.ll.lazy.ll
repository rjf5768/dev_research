; ModuleID = './MonteCarlo.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/MonteCarlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @MonteCarlo_num_flops(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  %3 = fmul double %2, 4.000000e+00
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @MonteCarlo_integrate(i32 noundef %0) #1 {
  %2 = call %struct.Random_struct* @new_Random_seed(i32 noundef 113) #4
  br label %3

3:                                                ; preds = %14, %1
  %.01 = phi i32 [ 0, %1 ], [ %.1, %14 ]
  %.0 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %4 = icmp slt i32 %.0, %0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = call double @Random_nextDouble(%struct.Random_struct* noundef %2) #4
  %7 = call double @Random_nextDouble(%struct.Random_struct* noundef %2) #4
  %8 = fmul double %7, %7
  %9 = call double @llvm.fmuladd.f64(double %6, double %6, double %8)
  %10 = fcmp ugt double %9, 1.000000e+00
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %.01, 1
  br label %13

13:                                               ; preds = %11, %5
  %.1 = phi i32 [ %12, %11 ], [ %.01, %5 ]
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

16:                                               ; preds = %3
  call void @Random_delete(%struct.Random_struct* noundef %2) #4
  %17 = sitofp i32 %.01 to double
  %18 = sitofp i32 %0 to double
  %19 = fdiv double %17, %18
  %20 = fmul double %19, 4.000000e+00
  ret double %20
}

declare dso_local %struct.Random_struct* @new_Random_seed(i32 noundef) #2

declare dso_local double @Random_nextDouble(%struct.Random_struct* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local void @Random_delete(%struct.Random_struct* noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
