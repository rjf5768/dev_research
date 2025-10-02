; ModuleID = './c_f_pointer_complex_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_complex_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca { float, float }, align 4
  %4 = alloca { double, double }, align 8
  %5 = alloca { x86_fp80, x86_fp80 }, align 16
  %6 = alloca [10 x { float, float }], align 16
  %7 = alloca [10 x { double, double }], align 16
  %8 = alloca [10 x { x86_fp80, x86_fp80 }], align 16
  %9 = getelementptr inbounds { float, float }, { float, float }* %3, i64 0, i32 0
  %10 = getelementptr inbounds { float, float }, { float, float }* %3, i64 0, i32 1
  store float 1.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  store double 2.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %13 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i64 0, i32 0
  %14 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %5, i64 0, i32 1
  store x86_fp80 0xK4000C000000000000000, x86_fp80* %13, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %14, align 16
  call void @test_complex_scalars({ float, float }* noundef nonnull %3, { double, double }* noundef nonnull %4, { x86_fp80, x86_fp80 }* noundef nonnull %5) #2
  br label %15

15:                                               ; preds = %33, %2
  %.0 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %16 = icmp ult i32 %.0, 10
  br i1 %16, label %17, label %35

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %.0, 1
  %19 = sitofp i32 %18 to float
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [10 x { float, float }], [10 x { float, float }]* %6, i64 0, i64 %20, i32 0
  %22 = getelementptr inbounds [10 x { float, float }], [10 x { float, float }]* %6, i64 0, i64 %20, i32 1
  store float %19, float* %21, align 8
  store float 0.000000e+00, float* %22, align 4
  %23 = add nuw nsw i32 %.0, 1
  %24 = sitofp i32 %23 to double
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [10 x { double, double }], [10 x { double, double }]* %7, i64 0, i64 %25, i32 0
  %27 = getelementptr inbounds [10 x { double, double }], [10 x { double, double }]* %7, i64 0, i64 %25, i32 1
  store double %24, double* %26, align 16
  store double 0.000000e+00, double* %27, align 8
  %28 = add nuw nsw i32 %.0, 1
  %29 = sitofp i32 %28 to x86_fp80
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds [10 x { x86_fp80, x86_fp80 }], [10 x { x86_fp80, x86_fp80 }]* %8, i64 0, i64 %30, i32 0
  %32 = getelementptr inbounds [10 x { x86_fp80, x86_fp80 }], [10 x { x86_fp80, x86_fp80 }]* %8, i64 0, i64 %30, i32 1
  store x86_fp80 %29, x86_fp80* %31, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %32, align 16
  br label %33

33:                                               ; preds = %17
  %34 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !4

35:                                               ; preds = %15
  %36 = getelementptr inbounds [10 x { float, float }], [10 x { float, float }]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [10 x { double, double }], [10 x { double, double }]* %7, i64 0, i64 0
  %38 = getelementptr inbounds [10 x { x86_fp80, x86_fp80 }], [10 x { x86_fp80, x86_fp80 }]* %8, i64 0, i64 0
  call void @test_complex_arrays({ float, float }* noundef nonnull %36, { double, double }* noundef nonnull %37, { x86_fp80, x86_fp80 }* noundef nonnull %38, i32 noundef 10) #2
  ret i32 0
}

declare dso_local void @test_complex_scalars({ float, float }* noundef, { double, double }* noundef, { x86_fp80, x86_fp80 }* noundef) #1

declare dso_local void @test_complex_arrays({ float, float }* noundef, { double, double }* noundef, { x86_fp80, x86_fp80 }* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
