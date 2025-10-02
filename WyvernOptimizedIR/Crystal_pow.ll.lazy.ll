; ModuleID = './Crystal_pow.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @Crystal_pow(i32 noundef %0, double* nocapture noundef readonly %1) #0 {
  %3 = alloca [12 x double], align 16
  %4 = alloca [12 x double], align 16
  br label %5

5:                                                ; preds = %16, %2
  %.0 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 %8
  store double 1.000000e+00, double* %9, align 8
  %10 = sitofp i32 %.0 to double
  %11 = fmul double %10, 2.000000e-01
  %12 = fmul double %11, 9.000000e-01
  %13 = fdiv double %12, 1.200000e+01
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [12 x double], [12 x double]* %3, i64 0, i64 %14
  store double %13, double* %15, align 8
  br label %16

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %34, %18
  %.1 = phi i32 [ 0, %18 ], [ %35, %34 ]
  %20 = icmp slt i32 %.1, %0
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = zext i32 %.1 to i64
  %23 = getelementptr inbounds double, double* %1, i64 %22
  %24 = load double, double* %23, align 8
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call double @llvm.fmuladd.f64(double %24, double %27, double 0x3EB0C6F7A0B5ED8D)
  %29 = fmul double %28, 5.000000e-01
  %30 = call double @pow(double noundef %29, double noundef 1.000000e-02) #4
  %31 = fmul double %30, 1.200000e+00
  %32 = zext i32 %.1 to i64
  %33 = getelementptr inbounds [12 x double], [12 x double]* %3, i64 0, i64 %32
  store double %31, double* %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = add nuw nsw i32 %.1, 1
  br label %19, !llvm.loop !6

36:                                               ; preds = %19
  %37 = getelementptr inbounds [12 x double], [12 x double]* %3, i64 0, i64 3
  %38 = load double, double* %37, align 8
  ret double %38
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
