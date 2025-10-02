; ModuleID = './pr36034-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [5 x [10 x double]] [[10 x double] [double 1.000000e+01, double 1.100000e+01, double 1.200000e+01, double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 2.100000e+01, double 2.200000e+01, double 2.300000e+01, double 2.400000e+01, double 2.500000e+01, double 2.600000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 3.200000e+01, double 3.300000e+01, double 3.400000e+01, double 3.500000e+01, double 3.600000e+01, double 3.700000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 4.300000e+01, double 4.400000e+01, double 4.500000e+01, double 4.600000e+01, double 4.700000e+01, double 4.800000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 5.400000e+01, double 5.500000e+01, double 5.600000e+01, double 5.700000e+01, double 5.800000e+01, double 5.900000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00]], align 16
@tmp = dso_local global [5 x [6 x double]] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @test() #0 {
  br label %1

1:                                                ; preds = %34, %0
  %.0 = phi i32 [ 0, %0 ], [ %35, %34 ]
  %2 = icmp ult i32 %.0, 5
  br i1 %2, label %3, label %36

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %4, i64 0
  %6 = load double, double* %5, align 16
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %7, i64 0
  store double %6, double* %8, align 16
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %9, i64 1
  %11 = load double, double* %10, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %12, i64 1
  store double %11, double* %13, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %14, i64 2
  %16 = load double, double* %15, align 16
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %17, i64 2
  store double %16, double* %18, align 16
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %19, i64 3
  %21 = load double, double* %20, align 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %22, i64 3
  store double %21, double* %23, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %24, i64 4
  %26 = load double, double* %25, align 16
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %27, i64 4
  store double %26, double* %28, align 16
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %29, i64 5
  %31 = load double, double* %30, align 8
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %32, i64 5
  store double %31, double* %33, align 8
  br label %34

34:                                               ; preds = %3
  %35 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

36:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @test()
  br label %1

1:                                                ; preds = %17, %0
  %.01 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.01, 5
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %5 = icmp ult i32 %.0, 6
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %7, i64 %8
  %10 = load double, double* %9, align 8
  %11 = fcmp oeq double %10, -1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  call void @abort() #3
  unreachable

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !7

19:                                               ; preds = %1
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
