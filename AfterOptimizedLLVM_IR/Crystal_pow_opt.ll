; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_pow.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @Crystal_pow(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca double, i64 12, align 16
  %14 = alloca double, i64 12, align 16
  store double 6.000000e+04, double* %6, align 8
  store double 5.000000e+04, double* %7, align 8
  store double 0x3EB0C6F7A0B5ED8D, double* %8, align 8
  store double 2.000000e+00, double* %9, align 8
  store double 1.000000e-02, double* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %14, i64 %21
  store double 1.000000e+00, double* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double 2.000000e-01, %24
  %26 = fmul double 9.000000e-01, %25
  %27 = fdiv double %26, 1.200000e+01
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %13, i64 %29
  store double %27, double* %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %15, !llvm.loop !4

34:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load double, double* %6, align 8
  %41 = load double, double* %7, align 8
  %42 = fdiv double %40, %41
  %43 = load double*, double** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %14, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load double, double* %8, align 8
  %53 = call double @llvm.fmuladd.f64(double %47, double %51, double %52)
  %54 = load double, double* %9, align 8
  %55 = fdiv double %53, %54
  %56 = load double, double* %10, align 8
  %57 = call double @pow(double noundef %55, double noundef %56) #4
  %58 = fmul double %42, %57
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %13, i64 %60
  store double %58, double* %61, align 8
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %35, !llvm.loop !6

65:                                               ; preds = %35
  %66 = getelementptr inbounds double, double* %13, i64 3
  %67 = load double, double* %66, align 8
  %68 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %68)
  ret double %67
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
