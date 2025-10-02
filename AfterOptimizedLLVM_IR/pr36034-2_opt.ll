; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36034-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [50 x double] [double 1.000000e+01, double 1.100000e+01, double 1.200000e+01, double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 2.100000e+01, double 2.200000e+01, double 2.300000e+01, double 2.400000e+01, double 2.500000e+01, double 2.600000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 3.200000e+01, double 3.300000e+01, double 3.400000e+01, double 3.500000e+01, double 3.600000e+01, double 3.700000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 4.300000e+01, double 4.400000e+01, double 4.500000e+01, double 4.600000e+01, double 4.700000e+01, double 4.800000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double 5.400000e+01, double 5.500000e+01, double 5.600000e+01, double 5.700000e+01, double 5.800000e+01, double 5.900000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@tmp = dso_local global [30 x double] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %71, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %74

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 %7, 10
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = load i32, i32* %1, align 4
  %13 = mul nsw i32 %12, 6
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %14
  store double %11, double* %15, align 8
  %16 = load i32, i32* %1, align 4
  %17 = mul nsw i32 %16, 10
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load i32, i32* %1, align 4
  %23 = mul nsw i32 %22, 6
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %25
  store double %21, double* %26, align 8
  %27 = load i32, i32* %1, align 4
  %28 = mul nsw i32 %27, 10
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 %33, 6
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %36
  store double %32, double* %37, align 8
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 %38, 10
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load i32, i32* %1, align 4
  %45 = mul nsw i32 %44, 6
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %47
  store double %43, double* %48, align 8
  %49 = load i32, i32* %1, align 4
  %50 = mul nsw i32 %49, 10
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load i32, i32* %1, align 4
  %56 = mul nsw i32 %55, 6
  %57 = add nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %58
  store double %54, double* %59, align 8
  %60 = load i32, i32* %1, align 4
  %61 = mul nsw i32 %60, 10
  %62 = add nsw i32 %61, 5
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load i32, i32* %1, align 4
  %67 = mul nsw i32 %66, 6
  %68 = add nsw i32 %67, 5
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %69
  store double %65, double* %70, align 8
  br label %71

71:                                               ; preds = %6
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %3, !llvm.loop !4

74:                                               ; preds = %3
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
  %13 = mul nsw i32 %12, 6
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [30 x double], [30 x double]* @tmp, i64 0, i64 %16
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
