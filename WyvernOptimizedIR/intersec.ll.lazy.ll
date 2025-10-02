; ModuleID = './intersec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/intersec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpoint = type { double, double }
%struct.point = type { i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @midpoint(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.dpoint, align 8
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %5 to %struct.point*
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = bitcast i64* %4 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = sitofp i32 %7 to double
  %9 = bitcast i64* %5 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = sitofp i32 %10 to double
  %12 = fadd double %8, %11
  %13 = fmul double %12, 5.000000e-01
  %14 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 0
  store double %13, double* %14, align 8
  %15 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sitofp i32 %16 to double
  %18 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to double
  %21 = fadd double %17, %20
  %22 = fmul double %21, 5.000000e-01
  %23 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 1
  store double %22, double* %23, align 8
  %.elt = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %24 = insertvalue { double, double } undef, double %.unpack, 0
  %25 = insertvalue { double, double } %24, double %22, 1
  ret { double, double } %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @vector(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %tmpcast2 = bitcast i64* %3 to %struct.point*
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %5 to %struct.point*
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = bitcast i64* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = bitcast i64* %4 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %7, %9
  %11 = bitcast i64* %3 to i32*
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @length2(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.point*
  %4 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %4 to %struct.point*
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = bitcast i64* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = bitcast i64* %3 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %6, %8
  %10 = sub nsw i32 %6, %8
  %11 = mul nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = sub nsw i32 %13, %15
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %11, %18
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @calculate_c(i64 %0, double %1, double %2) #1 {
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca %struct.dpoint, align 8
  store i64 %0, i64* %4, align 8
  %6 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  store double %2, double* %7, align 8
  %8 = bitcast i64* %4 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sitofp i32 %14 to double
  %16 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %17, %15
  %19 = call double @llvm.fmuladd.f64(double %10, double %12, double %18)
  ret double %19
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @intersect(i64 %0, i64 %1, double noundef %2, double noundef %3) #1 {
  %5 = alloca %struct.dpoint, align 8
  %6 = alloca i64, align 8
  %tmpcast = bitcast i64* %6 to %struct.point*
  %7 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %7 to %struct.point*
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fneg double %13
  %15 = fmul double %14, %3
  %16 = call double @llvm.fmuladd.f64(double %2, double %10, double %15)
  %17 = bitcast i64* %6 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = sitofp i32 %18 to double
  %20 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = bitcast i64* %7 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = sitofp i32 %27 to double
  %29 = fneg double %25
  %30 = fmul double %29, %28
  %31 = call double @llvm.fmuladd.f64(double %19, double %22, double %30)
  %32 = fdiv double %16, %31
  %33 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  store double %32, double* %33, align 8
  %34 = bitcast i64* %6 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = sitofp i32 %35 to double
  %37 = bitcast i64* %7 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = sitofp i32 %38 to double
  %40 = fneg double %39
  %41 = fmul double %40, %2
  %42 = call double @llvm.fmuladd.f64(double %36, double %3, double %41)
  %43 = bitcast i64* %6 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = sitofp i32 %44 to double
  %46 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to double
  %52 = bitcast i64* %7 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = sitofp i32 %53 to double
  %55 = fneg double %51
  %56 = fmul double %55, %54
  %57 = call double @llvm.fmuladd.f64(double %45, double %48, double %56)
  %58 = fdiv double %42, %57
  %59 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  store double %58, double* %59, align 8
  %.elt = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  %.unpack = load double, double* %.elt, align 8
  %60 = insertvalue { double, double } undef, double %.unpack, 0
  %61 = insertvalue { double, double } %60, double %58, 1
  ret { double, double } %61
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @centre(i64 %0, i64 %1, i64 %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i64 @vector(i64 %0, i64 %1)
  store i64 %9, i64* %7, align 8
  %10 = call i64 @vector(i64 %1, i64 %2)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call { double, double } @midpoint(i64 %11, i64 %12)
  %14 = extractvalue { double, double } %13, 0
  %15 = extractvalue { double, double } %13, 1
  %16 = load i64, i64* %7, align 8
  %17 = call double @calculate_c(i64 %16, double %14, double %15)
  %18 = load i64, i64* %6, align 8
  %19 = call { double, double } @midpoint(i64 %12, i64 %18)
  %20 = extractvalue { double, double } %19, 0
  %21 = extractvalue { double, double } %19, 1
  %22 = load i64, i64* %8, align 8
  %23 = call double @calculate_c(i64 %22, double %20, double %21)
  %24 = load i64, i64* %7, align 8
  %25 = call { double, double } @intersect(i64 %24, i64 %22, double noundef %17, double noundef %23)
  ret { double, double } %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @radius2(i64 %0, double %1, double %2) #1 {
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca %struct.dpoint, align 8
  store i64 %0, i64* %4, align 8
  %6 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  store double %2, double* %7, align 8
  %8 = bitcast i64* %4 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fsub double %10, %12
  %14 = sitofp i32 %9 to double
  %15 = fsub double %14, %12
  %16 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i64 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fsub double %18, %20
  %22 = sitofp i32 %17 to double
  %23 = fsub double %22, %20
  %24 = fmul double %21, %23
  %25 = call double @llvm.fmuladd.f64(double %13, double %15, double %24)
  ret double %25
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
