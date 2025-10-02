; ModuleID = './pr36034-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [50 x double] [double 1.000000e+01, double 1.100000e+01, double 1.200000e+01, double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 2.100000e+01, double 2.200000e+01, double 2.300000e+01, double 2.400000e+01, double 2.500000e+01, double 2.600000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 3.200000e+01, double 3.300000e+01, double 3.400000e+01, double 3.500000e+01, double 3.600000e+01, double 3.700000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 4.300000e+01, double 4.400000e+01, double 4.500000e+01, double 4.600000e+01, double 4.700000e+01, double 4.800000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 5.400000e+01, double 5.500000e+01, double 5.600000e+01, double 5.700000e+01, double 5.800000e+01, double 5.900000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@tmp = dso_local global [30 x double] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @test() #0 {
  br label %1

1:                                                ; preds = %56, %0
  %.0 = phi i32 [ 0, %0 ], [ %57, %56 ]
  %2 = icmp ult i32 %.0, 5
  br i1 %2, label %3, label %58

3:                                                ; preds = %1
  %4 = mul nsw i32 %.0, 10
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %5
  %7 = load double, double* %6, align 16
  %8 = mul nsw i32 %.0, 6
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %9
  store double %7, double* %10, align 16
  %11 = mul nsw i32 %.0, 10
  %12 = or i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = mul nsw i32 %.0, 6
  %17 = or i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %18
  store double %15, double* %19, align 8
  %20 = mul nsw i32 %.0, 10
  %21 = add nuw nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %22
  %24 = load double, double* %23, align 16
  %25 = mul nsw i32 %.0, 6
  %26 = add nuw nsw i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %27
  store double %24, double* %28, align 16
  %29 = mul nsw i32 %.0, 10
  %30 = add nuw nsw i32 %29, 3
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %31
  %33 = load double, double* %32, align 8
  %34 = mul nsw i32 %.0, 6
  %35 = add nuw nsw i32 %34, 3
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %36
  store double %33, double* %37, align 8
  %38 = mul nsw i32 %.0, 10
  %39 = add nuw nsw i32 %38, 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %40
  %42 = load double, double* %41, align 16
  %43 = mul nsw i32 %.0, 6
  %44 = add nuw nsw i32 %43, 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %45
  store double %42, double* %46, align 16
  %47 = mul nsw i32 %.0, 10
  %48 = add nuw nsw i32 %47, 5
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = mul nsw i32 %.0, 6
  %53 = add nuw nsw i32 %52, 5
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %54
  store double %51, double* %55, align 8
  br label %56

56:                                               ; preds = %3
  %57 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

58:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @test()
  br label %1

1:                                                ; preds = %18, %0
  %.01 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %2 = icmp ult i32 %.01, 5
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp ult i32 %.0, 6
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = mul nsw i32 %.01, 6
  %8 = add nuw nsw i32 %7, %.0
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = fcmp oeq double %11, -1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  call void @abort() #3
  unreachable

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !7

20:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
