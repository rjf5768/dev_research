; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_loc_tests_2_funcs.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_loc_tests_2_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctype = type { i32, double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_scalar_address(i32* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 100
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_array_address(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 100
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %7, !llvm.loop !4

23:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_type_address(%struct.ctype* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctype*, align 8
  store %struct.ctype* %0, %struct.ctype** %3, align 8
  %4 = load %struct.ctype*, %struct.ctype** %3, align 8
  %5 = getelementptr inbounds %struct.ctype, %struct.ctype* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 100
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.ctype*, %struct.ctype** %3, align 8
  %11 = getelementptr inbounds %struct.ctype, %struct.ctype* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fsub double %12, 1.000000e+00
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = fcmp ogt double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
