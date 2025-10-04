; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42691.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42691.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._D_rep = type { double }

@__const.add._D_inf = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8
@__const.add._D_inf2 = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8
@__const.main.infinit = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(double* noundef %0, double* noundef %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %union._D_rep, align 8
  %9 = alloca %union._D_rep, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  store i32 0, i32* %5, align 4
  store double* null, double** %6, align 8
  br label %10

10:                                               ; preds = %2, %36
  %11 = load double*, double** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %11, i64 %13
  store double* %14, double** %7, align 8
  %15 = load double*, double** %7, align 8
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %3, align 8
  %18 = load double, double* %17, align 8
  %19 = fcmp oeq double %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %39

21:                                               ; preds = %10
  %22 = bitcast %union._D_rep* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast ({ [4 x i16] }* @__const.add._D_inf to i8*), i64 8, i1 false)
  %23 = load double*, double** %7, align 8
  %24 = load double, double* %23, align 8
  %25 = bitcast %union._D_rep* %8 to double*
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  call void @abort() #3
  unreachable

29:                                               ; preds = %21
  %30 = bitcast %union._D_rep* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast ({ [4 x i16] }* @__const.add._D_inf2 to i8*), i64 8, i1 false)
  %31 = bitcast %union._D_rep* %9 to double*
  %32 = load double, double* %31, align 8
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load double*, double** %7, align 8
  store double* %35, double** %6, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %20
  %40 = load double*, double** %6, align 8
  %41 = icmp ne double* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %43, align 8
  br label %44

44:                                               ; preds = %42, %39
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union._D_rep, align 8
  %3 = alloca [2 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast %union._D_rep* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ({ [4 x i16] }* @__const.main.infinit to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %8 = bitcast %union._D_rep* %2 to double*
  %9 = load double, double* %8, align 8
  store double %9, double* %7, align 8
  %10 = getelementptr inbounds double, double* %7, i64 1
  store double 2.300000e+01, double* %10, align 8
  store double 2.300000e+01, double* %4, align 8
  %11 = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0, i64 0
  %12 = call i32 @add(double* noundef %4, double* noundef %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

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
