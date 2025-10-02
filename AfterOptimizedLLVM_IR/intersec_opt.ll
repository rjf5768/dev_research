; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/intersec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/intersec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpoint = type { double, double }
%struct.point = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @midpoint(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.dpoint, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fadd double %10, %13
  %15 = fdiv double %14, 2.000000e+00
  %16 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to double
  %20 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to double
  %23 = fadd double %19, %22
  %24 = fdiv double %23, 2.000000e+00
  %25 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  store double %24, double* %25, align 8
  %26 = bitcast %struct.dpoint* %3 to { double, double }*
  %27 = load { double, double }, { double, double }* %26, align 8
  ret { double, double } %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @vector(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.point* %3 to i64*
  %21 = load i64, i64* %20, align 4
  ret i64 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @length2(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = bitcast %struct.point* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = mul nsw i32 %22, %27
  %29 = add nsw i32 %17, %28
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @calculate_c(i64 %0, double %1, double %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.dpoint, align 8
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.dpoint* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %1, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %2, double* %9, align 8
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sitofp i32 %16 to double
  %18 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fmul double %17, %19
  %21 = call double @llvm.fmuladd.f64(double %12, double %14, double %20)
  ret double %21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @intersect(i64 %0, i64 %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca %struct.dpoint, align 8
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = bitcast %struct.point* %6 to i64*
  store i64 %0, i64* %10, align 4
  %11 = bitcast %struct.point* %7 to i64*
  store i64 %1, i64* %11, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %12 = load double, double* %8, align 8
  %13 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sitofp i32 %14 to double
  %16 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = load double, double* %9, align 8
  %20 = fmul double %18, %19
  %21 = fneg double %20
  %22 = call double @llvm.fmuladd.f64(double %12, double %15, double %21)
  %23 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to double
  %32 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = fmul double %31, %34
  %36 = fneg double %35
  %37 = call double @llvm.fmuladd.f64(double %25, double %28, double %36)
  %38 = fdiv double %22, %37
  %39 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  store double %38, double* %39, align 8
  %40 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = load double, double* %9, align 8
  %44 = load double, double* %8, align 8
  %45 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = fmul double %44, %47
  %49 = fneg double %48
  %50 = call double @llvm.fmuladd.f64(double %42, double %43, double %49)
  %51 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to double
  %57 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to double
  %60 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %59, %62
  %64 = fneg double %63
  %65 = call double @llvm.fmuladd.f64(double %53, double %56, double %64)
  %66 = fdiv double %50, %65
  %67 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  store double %66, double* %67, align 8
  %68 = bitcast %struct.dpoint* %5 to { double, double }*
  %69 = load { double, double }, { double, double }* %68, align 8
  ret { double, double } %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @centre(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dpoint, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca %struct.point, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.point, align 4
  %13 = alloca %struct.point, align 4
  %14 = alloca %struct.dpoint, align 8
  %15 = alloca %struct.dpoint, align 8
  %16 = bitcast %struct.point* %5 to i64*
  store i64 %0, i64* %16, align 4
  %17 = bitcast %struct.point* %6 to i64*
  store i64 %1, i64* %17, align 4
  %18 = bitcast %struct.point* %7 to i64*
  store i64 %2, i64* %18, align 4
  %19 = bitcast %struct.point* %5 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = bitcast %struct.point* %6 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i64 @vector(i64 %20, i64 %22)
  %24 = bitcast %struct.point* %12 to i64*
  store i64 %23, i64* %24, align 4
  %25 = bitcast %struct.point* %8 to i8*
  %26 = bitcast %struct.point* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = bitcast %struct.point* %6 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.point* %7 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i64 @vector(i64 %28, i64 %30)
  %32 = bitcast %struct.point* %13 to i64*
  store i64 %31, i64* %32, align 4
  %33 = bitcast %struct.point* %9 to i8*
  %34 = bitcast %struct.point* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = bitcast %struct.point* %5 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = bitcast %struct.point* %6 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call { double, double } @midpoint(i64 %36, i64 %38)
  %40 = bitcast %struct.dpoint* %14 to { double, double }*
  %41 = getelementptr inbounds { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %39, 0
  store double %42, double* %41, align 8
  %43 = getelementptr inbounds { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %39, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.point* %8 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = bitcast %struct.dpoint* %14 to { double, double }*
  %48 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = call double @calculate_c(i64 %46, double %49, double %51)
  store double %52, double* %10, align 8
  %53 = bitcast %struct.point* %6 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = bitcast %struct.point* %7 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call { double, double } @midpoint(i64 %54, i64 %56)
  %58 = bitcast %struct.dpoint* %15 to { double, double }*
  %59 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 0
  %60 = extractvalue { double, double } %57, 0
  store double %60, double* %59, align 8
  %61 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 1
  %62 = extractvalue { double, double } %57, 1
  store double %62, double* %61, align 8
  %63 = bitcast %struct.point* %9 to i64*
  %64 = load i64, i64* %63, align 4
  %65 = bitcast %struct.dpoint* %15 to { double, double }*
  %66 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = call double @calculate_c(i64 %64, double %67, double %69)
  store double %70, double* %11, align 8
  %71 = load double, double* %10, align 8
  %72 = load double, double* %11, align 8
  %73 = bitcast %struct.point* %8 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = bitcast %struct.point* %9 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call { double, double } @intersect(i64 %74, i64 %76, double noundef %71, double noundef %72)
  %78 = bitcast %struct.dpoint* %4 to { double, double }*
  %79 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = extractvalue { double, double } %77, 0
  store double %80, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = extractvalue { double, double } %77, 1
  store double %82, double* %81, align 8
  %83 = bitcast %struct.dpoint* %4 to { double, double }*
  %84 = load { double, double }, { double, double }* %83, align 8
  ret { double, double } %84
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @radius2(i64 %0, double %1, double %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.dpoint, align 8
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.dpoint* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %1, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %2, double* %9, align 8
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fsub double %12, %14
  %16 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sitofp i32 %23 to double
  %25 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fsub double %24, %26
  %28 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fsub double %30, %32
  %34 = fmul double %27, %33
  %35 = call double @llvm.fmuladd.f64(double %15, double %21, double %34)
  ret double %35
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
