; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test1(double noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  %4 = bitcast <2 x float>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x float>, <2 x float>* %2, align 8
  store <2 x float> %5, <2 x float>* %3, align 8
  %6 = load <2 x float>, <2 x float>* %3, align 8
  %7 = bitcast <2 x float> %6 to <2 x i32>
  %8 = bitcast <2 x i32> %7 to i64
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test2(double noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  %4 = bitcast <2 x float>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x float>, <2 x float>* %2, align 8
  store <2 x float> %5, <2 x float>* %3, align 8
  %6 = load <2 x float>, <2 x float>* %3, align 8
  %7 = bitcast <2 x float> %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test3(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = bitcast <2 x i32>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x i32>, <2 x i32>* %2, align 8
  store <2 x i32> %5, <2 x i32>* %3, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  %7 = bitcast <2 x i32> %6 to <2 x float>
  %8 = bitcast <2 x float> %7 to i64
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <2 x float>, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca <2 x float>, align 8
  %5 = alloca <2 x float>, align 8
  %6 = alloca <2 x float>, align 8
  %7 = alloca <2 x i32>, align 8
  %8 = alloca <2 x i32>, align 8
  store i32 0, i32* %1, align 4
  store <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float>* %2, align 8
  %9 = load <2 x float>, <2 x float>* %2, align 8
  store <2 x float> %9, <2 x float>* %4, align 8
  %10 = bitcast <2 x float>* %4 to double*
  %11 = load double, double* %10, align 8
  %12 = call i64 @test1(double noundef %11)
  %13 = bitcast %union.anon* %3 to i64*
  store i64 %12, i64* %13, align 8
  %14 = bitcast %union.anon* %3 to [2 x float]*
  %15 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 0
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = fcmp une double %17, 2.000000e+00
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = bitcast %union.anon* %3 to [2 x float]*
  %21 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = fcmp une double %23, 2.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %0
  call void @abort() #2
  unreachable

26:                                               ; preds = %19
  store <2 x float> <float 6.000000e+00, float 6.000000e+00>, <2 x float>* %5, align 8
  %27 = load <2 x float>, <2 x float>* %5, align 8
  store <2 x float> %27, <2 x float>* %6, align 8
  %28 = bitcast <2 x float>* %6 to double*
  %29 = load double, double* %28, align 8
  %30 = call i64 @test2(double noundef %29)
  %31 = bitcast %union.anon* %3 to i64*
  store i64 %30, i64* %31, align 8
  %32 = bitcast %union.anon* %3 to [2 x float]*
  %33 = getelementptr inbounds [2 x float], [2 x float]* %32, i64 0, i64 0
  %34 = load float, float* %33, align 8
  %35 = fpext float %34 to double
  %36 = fcmp une double %35, 6.000000e+00
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = bitcast %union.anon* %3 to [2 x float]*
  %39 = getelementptr inbounds [2 x float], [2 x float]* %38, i64 0, i64 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = fcmp une double %41, 6.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %26
  call void @abort() #2
  unreachable

44:                                               ; preds = %37
  store <2 x i32> <i32 4, i32 4>, <2 x i32>* %7, align 8
  %45 = load <2 x i32>, <2 x i32>* %7, align 8
  store <2 x i32> %45, <2 x i32>* %8, align 8
  %46 = bitcast <2 x i32>* %8 to double*
  %47 = load double, double* %46, align 8
  %48 = call i64 @test3(double noundef %47)
  %49 = bitcast %union.anon* %3 to i64*
  store i64 %48, i64* %49, align 8
  %50 = bitcast %union.anon* %3 to [2 x i32]*
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 4
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = bitcast %union.anon* %3 to [2 x i32]*
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %44
  call void @abort() #2
  unreachable

60:                                               ; preds = %54
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
