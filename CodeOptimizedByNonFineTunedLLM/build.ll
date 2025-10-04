; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca float, align 4
  %7 = alloca %union.FV, align 16
  %8 = alloca <4 x float>, align 16
  %9 = alloca <4 x float>, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0x3FF3BE76C0000000, float* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1123
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store float 0x40030E9A20000000, float* %6, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load float, float* %6, align 4
  %15 = insertelement <4 x float> undef, float %14, i32 0
  %16 = load float, float* %6, align 4
  %17 = insertelement <4 x float> %15, float %16, i32 1
  %18 = load float, float* %6, align 4
  %19 = insertelement <4 x float> %17, float %18, i32 2
  %20 = load float, float* %6, align 4
  %21 = insertelement <4 x float> %19, float %20, i32 3
  store <4 x float> %21, <4 x float>* %8, align 16
  %22 = load <4 x float>, <4 x float>* %8, align 16
  %23 = bitcast %union.FV* %7 to <4 x float>*
  store <4 x float> %22, <4 x float>* %23, align 16
  call void @printFV(%union.FV* noundef %7)
  %24 = bitcast %union.FV* %7 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 16
  %26 = bitcast %union.FV* %7 to <4 x float>*
  %27 = load <4 x float>, <4 x float>* %26, align 16
  %28 = fmul <4 x float> %25, %27
  %29 = bitcast %union.FV* %7 to <4 x float>*
  store <4 x float> %28, <4 x float>* %29, align 16
  call void @printFV(%union.FV* noundef %7)
  %30 = load float, float* %6, align 4
  %31 = insertelement <4 x float> undef, float %30, i32 0
  %32 = load float, float* %6, align 4
  %33 = insertelement <4 x float> %31, float %32, i32 1
  %34 = insertelement <4 x float> %33, float 0.000000e+00, i32 2
  %35 = insertelement <4 x float> %34, float 0.000000e+00, i32 3
  store <4 x float> %35, <4 x float>* %9, align 16
  %36 = load <4 x float>, <4 x float>* %9, align 16
  %37 = bitcast %union.FV* %7 to <4 x float>*
  store <4 x float> %36, <4 x float>* %37, align 16
  call void @printFV(%union.FV* noundef %7)
  %38 = bitcast %union.FV* %7 to <4 x float>*
  %39 = load <4 x float>, <4 x float>* %38, align 16
  %40 = bitcast %union.FV* %7 to <4 x float>*
  %41 = load <4 x float>, <4 x float>* %40, align 16
  %42 = fadd <4 x float> %39, %41
  %43 = bitcast %union.FV* %7 to <4 x float>*
  store <4 x float> %42, <4 x float>* %43, align 16
  call void @printFV(%union.FV* noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* noundef %0) #0 {
  %2 = alloca %union.FV*, align 8
  store %union.FV* %0, %union.FV** %2, align 8
  %3 = load %union.FV*, %union.FV** %2, align 8
  %4 = bitcast %union.FV* %3 to [4 x float]*
  %5 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %6 = load float, float* %5, align 16
  %7 = fpext float %6 to double
  %8 = load %union.FV*, %union.FV** %2, align 8
  %9 = bitcast %union.FV* %8 to [4 x float]*
  %10 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = load %union.FV*, %union.FV** %2, align 8
  %14 = bitcast %union.FV* %13 to [4 x float]*
  %15 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = load %union.FV*, %union.FV** %2, align 8
  %19 = bitcast %union.FV* %18 to [4 x float]*
  %20 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %7, double noundef %12, double noundef %17, double noundef %22)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
