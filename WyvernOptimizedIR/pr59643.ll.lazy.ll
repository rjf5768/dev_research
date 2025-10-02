; ModuleID = './pr59643.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59643.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expected = dso_local global [32 x double] [double 0.000000e+00, double 1.000000e+01, double 4.400000e+01, double 1.100000e+02, double 2.320000e+02, double 4.900000e+02, double 1.020000e+03, double 2.078000e+03, double 4.152000e+03, double 8.314000e+03, double 1.665200e+04, double 3.332600e+04, double 6.666400e+04, double 1.333540e+05, double 2.667480e+05, double 5.335340e+05, double 0x4130483800000000, double 0x4140483D00000000, double 4.268300e+06, double 0x41604845C0000000, double 0x4170484680000000, double 0x4180484750000000, double 0x41904847F0000000, double 0x41A048483C000000, double 0x41B0484838000000, double 0x41C048483D000000, double 0x41D0484843000000, double 0x41E0484845C00000, double 0x41F0484846800000, double 0x4200484847500000, double 0x4210484847F00000, double 6.000000e+00], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo(double* nocapture noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef readonly %2, double noundef %3, double noundef %4, i32 noundef %5) #0 {
  br label %7

7:                                                ; preds = %35, %6
  %.0 = phi i32 [ 1, %6 ], [ %36, %35 ]
  %8 = add nsw i32 %5, -1
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds double, double* %1, i64 %11
  %13 = load double, double* %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds double, double* %2, i64 %14
  %16 = load double, double* %15, align 8
  %17 = fadd double %13, %16
  %18 = add nsw i32 %.0, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fadd double %17, %21
  %23 = add nuw nsw i32 %.0, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fadd double %22, %26
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds double, double* %0, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, %4
  %32 = call double @llvm.fmuladd.f64(double %3, double %27, double %31)
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds double, double* %0, i64 %33
  store double %32, double* %34, align 8
  br label %35

35:                                               ; preds = %10
  %36 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

37:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [32 x double], align 16
  %2 = alloca [32 x double], align 16
  %3 = alloca [32 x double], align 16
  br label %4

4:                                                ; preds = %21, %0
  %.0 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %5 = icmp ult i32 %.0, 32
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = and i32 %.0, 3
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 2.000000e+00
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [32 x double], [32 x double]* %1, i64 0, i64 %10
  store double %9, double* %11, align 8
  %12 = and i32 %.0, 7
  %13 = add nsw i32 %12, -4
  %14 = sitofp i32 %13 to double
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [32 x double], [32 x double]* %2, i64 0, i64 %15
  store double %14, double* %16, align 8
  %17 = and i32 %.0, 7
  %18 = sitofp i32 %17 to double
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [32 x double], [32 x double]* %3, i64 0, i64 %19
  store double %18, double* %20, align 8
  br label %21

21:                                               ; preds = %6
  %22 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

23:                                               ; preds = %4
  %24 = getelementptr inbounds [32 x double], [32 x double]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [32 x double], [32 x double]* %2, i64 0, i64 0
  %26 = getelementptr inbounds [32 x double], [32 x double]* %3, i64 0, i64 0
  call void @foo(double* noundef nonnull %24, double* noundef nonnull %25, double* noundef nonnull %26, double noundef 2.000000e+00, double noundef 3.000000e+00, i32 noundef 32)
  br label %27

27:                                               ; preds = %39, %23
  %.1 = phi i32 [ 0, %23 ], [ %40, %39 ]
  %28 = icmp ult i32 %.1, 32
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = zext i32 %.1 to i64
  %31 = getelementptr inbounds [32 x double], [32 x double]* %1, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = zext i32 %.1 to i64
  %34 = getelementptr inbounds [32 x double], [32 x double]* @expected, i64 0, i64 %33
  %35 = load double, double* %34, align 8
  %36 = fcmp une double %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @abort() #4
  unreachable

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !7

41:                                               ; preds = %27
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
