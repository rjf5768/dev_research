; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59643.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59643.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expected = dso_local global [32 x double] [double 0.000000e+00, double 1.000000e+01, double 4.400000e+01, double 1.100000e+02, double 2.320000e+02, double 4.900000e+02, double 1.020000e+03, double 2.078000e+03, double 4.152000e+03, double 8.314000e+03, double 1.665200e+04, double 3.332600e+04, double 6.666400e+04, double 1.333540e+05, double 2.667480e+05, double 5.335340e+05, double 0x4130483800000000, double 0x4140483D00000000, double 4.268300e+06, double 0x41604845C0000000, double 0x4170484680000000, double 0x4180484750000000, double 0x41904847F0000000, double 0x41A048483C000000, double 0x41B0484838000000, double 0x41C048483D000000, double 0x41D0484843000000, double 0x41E0484845C00000, double 0x41F0484846800000, double 0x4200484847500000, double 0x4210484847F00000, double 6.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(double* noundef %0, double* noundef %1, double* noundef %2, double noundef %3, double noundef %4, i32 noundef %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store double* %0, double** %7, align 8
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %58, %6
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = load double, double* %10, align 8
  %21 = load double*, double** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %9, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fadd double %25, %30
  %32 = load double*, double** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %32, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fadd double %31, %37
  %39 = load double*, double** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %39, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fadd double %38, %44
  %46 = load double, double* %11, align 8
  %47 = load double*, double** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fmul double %46, %51
  %53 = call double @llvm.fmuladd.f64(double %20, double %45, double %52)
  %54 = load double*, double** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  store double %53, double* %57, align 8
  br label %58

58:                                               ; preds = %19
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %14, !llvm.loop !4

61:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x double], align 16
  %4 = alloca [32 x double], align 16
  %5 = alloca [32 x double], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 3
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 2.000000e+00
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x double], [32 x double]* %3, i64 0, i64 %15
  store double %13, double* %16, align 8
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 7
  %19 = sub nsw i32 %18, 4
  %20 = sitofp i32 %19 to double
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32 x double], [32 x double]* %4, i64 0, i64 %22
  store double %20, double* %23, align 8
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 7
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x double], [32 x double]* %5, i64 0, i64 %28
  store double %26, double* %29, align 8
  br label %30

30:                                               ; preds = %9
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %6, !llvm.loop !6

33:                                               ; preds = %6
  %34 = getelementptr inbounds [32 x double], [32 x double]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [32 x double], [32 x double]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [32 x double], [32 x double]* %5, i64 0, i64 0
  call void @foo(double* noundef %34, double* noundef %35, double* noundef %36, double noundef 2.000000e+00, double noundef 3.000000e+00, i32 noundef 32)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %52, %33
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32 x double], [32 x double]* %3, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32 x double], [32 x double]* @expected, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fcmp une double %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  call void @abort() #3
  unreachable

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %37, !llvm.loop !7

55:                                               ; preds = %37
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
