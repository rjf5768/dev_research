; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/bisect_test.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/bisect_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_matrix(i32 noundef %0, double* noundef %1, double* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = sitofp i32 %13 to double
  %15 = load double*, double** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %15, i64 %17
  store double %14, double* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = sitofp i32 %20 to double
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = sitofp i32 %23 to double
  %25 = fmul double %21, %24
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  store double %25, double* %29, align 8
  %30 = load double*, double** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fmul double %34, %39
  %41 = load double*, double** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  store double %40, double* %44, align 8
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8, !llvm.loop !4

48:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %6)
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %7)
  %19 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double* noundef %11)
  %20 = load i32, i32* %7, align 4
  call void @dallocvector(i32 noundef %20, double** noundef %13)
  %21 = load i32, i32* %7, align 4
  call void @dallocvector(i32 noundef %21, double** noundef %14)
  %22 = load i32, i32* %7, align 4
  call void @dallocvector(i32 noundef %22, double** noundef %15)
  %23 = load i32, i32* %7, align 4
  call void @dallocvector(i32 noundef %23, double** noundef %16)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %72, %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load double*, double** %13, align 8
  %31 = load double*, double** %14, align 8
  call void @test_matrix(i32 noundef %29, double* noundef %30, double* noundef %31)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load double*, double** %14, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %14, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fmul double %41, %46
  %48 = load double*, double** %15, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  %52 = load double*, double** %16, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  store double 0.000000e+00, double* %55, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32, !llvm.loop !6

59:                                               ; preds = %32
  %60 = load double*, double** %15, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  store double 0.000000e+00, double* %61, align 8
  %62 = load double*, double** %14, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  store double 0.000000e+00, double* %63, align 8
  %64 = load double*, double** %13, align 8
  %65 = load double*, double** %14, align 8
  %66 = load double*, double** %15, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load double, double* %11, align 8
  %70 = load double*, double** %16, align 8
  %71 = getelementptr inbounds double, double* %70, i64 -1
  call void @dbisect(double* noundef %64, double* noundef %65, double* noundef %66, i32 noundef %67, i32 noundef 1, i32 noundef %68, double noundef %69, double* noundef %12, i32* noundef %8, double* noundef %71)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %24, !llvm.loop !7

75:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = load double*, double** %16, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %82, double noundef %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %76, !llvm.loop !8

92:                                               ; preds = %76
  %93 = load double, double* %12, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double noundef %93, i32 noundef %94)
  ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

declare dso_local void @dallocvector(i32 noundef, double** noundef) #1

declare dso_local void @dbisect(double* noundef, double* noundef, double* noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double* noundef, i32* noundef, double* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !5}
