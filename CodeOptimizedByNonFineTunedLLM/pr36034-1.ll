; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [5 x [10 x double]] [[10 x double] [double 1.000000e+01, double 1.100000e+01, double 1.200000e+01, double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 2.100000e+01, double 2.200000e+01, double 2.300000e+01, double 2.400000e+01, double 2.500000e+01, double 2.600000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 3.200000e+01, double 3.300000e+01, double 3.400000e+01, double 3.500000e+01, double 3.600000e+01, double 3.700000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 4.300000e+01, double 4.400000e+01, double 4.500000e+01, double 4.600000e+01, double 4.700000e+01, double 4.800000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [10 x double] [double 5.400000e+01, double 5.500000e+01, double 5.600000e+01, double 5.700000e+01, double 5.800000e+01, double 5.900000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00]], align 16
@tmp = dso_local global [5 x [6 x double]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %61, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %64

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %8
  %10 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 0
  %11 = load double, double* %10, align 16
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %13
  %15 = getelementptr inbounds [6 x double], [6 x double]* %14, i64 0, i64 0
  store double %11, double* %15, align 16
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %17
  %19 = getelementptr inbounds [10 x double], [10 x double]* %18, i64 0, i64 1
  %20 = load double, double* %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %22
  %24 = getelementptr inbounds [6 x double], [6 x double]* %23, i64 0, i64 1
  store double %20, double* %24, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %26
  %28 = getelementptr inbounds [10 x double], [10 x double]* %27, i64 0, i64 2
  %29 = load double, double* %28, align 16
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %31
  %33 = getelementptr inbounds [6 x double], [6 x double]* %32, i64 0, i64 2
  store double %29, double* %33, align 16
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %35
  %37 = getelementptr inbounds [10 x double], [10 x double]* %36, i64 0, i64 3
  %38 = load double, double* %37, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %40
  %42 = getelementptr inbounds [6 x double], [6 x double]* %41, i64 0, i64 3
  store double %38, double* %42, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %44
  %46 = getelementptr inbounds [10 x double], [10 x double]* %45, i64 0, i64 4
  %47 = load double, double* %46, align 16
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %49
  %51 = getelementptr inbounds [6 x double], [6 x double]* %50, i64 0, i64 4
  store double %47, double* %51, align 16
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x [10 x double]], [5 x [10 x double]]* @x, i64 0, i64 %53
  %55 = getelementptr inbounds [10 x double], [10 x double]* %54, i64 0, i64 5
  %56 = load double, double* %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %58
  %60 = getelementptr inbounds [6 x double], [6 x double]* %59, i64 0, i64 5
  store double %56, double* %60, align 8
  br label %61

61:                                               ; preds = %6
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %3, !llvm.loop !4

64:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test()
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x [6 x double]], [5 x [6 x double]]* @tmp, i64 0, i64 %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [6 x double], [6 x double]* %14, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = fcmp oeq double %18, -1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  call void @abort() #2
  unreachable

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8, !llvm.loop !6

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %4, !llvm.loop !7

29:                                               ; preds = %4
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
