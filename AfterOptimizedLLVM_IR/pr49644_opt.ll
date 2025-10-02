; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49644.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49644.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.b = private unnamed_addr constant [12 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01, double 1.100000e+01, double 1.200000e+01], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [12 x { double, double }], align 16
  %3 = alloca { double, double }*, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca [12 x double], align 16
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = getelementptr inbounds [12 x { double, double }], [12 x { double, double }]* %2, i64 0, i64 0
  store { double, double }* %8, { double, double }** %3, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double 3.000000e+00, double* %9, align 8
  store double 1.000000e+00, double* %10, align 8
  %11 = bitcast [12 x double]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([12 x double]* @__const.main.b to i8*), i64 96, i1 false)
  %12 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 0
  store double* %12, double** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %0
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load double*, double** %6, align 8
  %18 = getelementptr inbounds double, double* %17, i32 1
  store double* %18, double** %6, align 8
  %19 = load double, double* %17, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fmul double %19, %21
  %25 = fmul double %19, %23
  %26 = load { double, double }*, { double, double }** %3, align 8
  %27 = getelementptr inbounds { double, double }, { double, double }* %26, i32 1
  store { double, double }* %27, { double, double }** %3, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  store double %24, double* %28, align 8
  store double %25, double* %29, align 8
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %13, !llvm.loop !4

33:                                               ; preds = %13
  %34 = load { double, double }*, { double, double }** %3, align 8
  %35 = getelementptr inbounds [12 x { double, double }], [12 x { double, double }]* %2, i64 0, i64 0
  %36 = getelementptr inbounds { double, double }, { double, double }* %35, i64 6
  %37 = icmp ne { double, double }* %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load double*, double** %6, align 8
  %40 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 0
  %41 = getelementptr inbounds double, double* %40, i64 6
  %42 = icmp ne double* %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  call void @abort() #3
  unreachable

44:                                               ; preds = %38
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
