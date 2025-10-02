; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/dt.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c" %i iterations of each test. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" inner loop / array size %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast double** %6 to i8**
  %10 = call i32 @posix_memalign(i8** noundef %9, i64 noundef 16, i64 noundef 16384) #4
  %11 = bitcast double** %7 to i8**
  %12 = call i32 @posix_memalign(i8** noundef %11, i64 noundef 16, i64 noundef 16384) #4
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 131072)
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2048)
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %16, 2048
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 2048, %19
  %21 = sitofp i64 %20 to float
  %22 = call float @cosf(float noundef %21) #4
  %23 = fpext float %22 to double
  %24 = fmul double 0x3FF000001AD7F29B, %23
  %25 = load double*, double** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds double, double* %25, i64 %26
  store double %24, double* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sitofp i64 %28 to float
  %30 = call float @sinf(float noundef %29) #4
  %31 = fpext float %30 to double
  %32 = call double @llvm.fmuladd.f64(double 1.000000e-10, double %31, double 1.000000e+00)
  %33 = load double*, double** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds double, double* %33, i64 %34
  store double %32, double* %35, align 8
  br label %36

36:                                               ; preds = %18
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %15, !llvm.loop !4

39:                                               ; preds = %15
  %40 = load double*, double** %6, align 8
  %41 = load double*, double** %7, align 8
  call void @double_array_divs_variable(double* noundef %40, double* noundef %41)
  %42 = load double*, double** %6, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %44)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float noundef) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define internal void @double_array_divs_variable(double* noalias noundef %0, double* noalias noundef %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 131072
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 2048
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load double*, double** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds double, double* %19, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fdiv double %22, %18
  store double %23, double* %21, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %11, !llvm.loop !6

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %7, !llvm.loop !7

31:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
