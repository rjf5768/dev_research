; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070614-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070614-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global { double, double } { double 3.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(double noundef %0, double noundef %1, i32* noundef %2) #0 {
  %4 = alloca { double, double }, align 8
  %5 = alloca i32*, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %7, align 8
  store i32* %2, i32** %5, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i32 0, i32 0), align 8
  %13 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i32 0, i32 1), align 8
  %14 = fcmp une double %9, %12
  %15 = fcmp une double %11, %13
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @abort() #4
  unreachable

18:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local { double, double } @bar(double noundef %0, double noundef %1) #2 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %6, align 8
  %7 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i32 0, i32 0), align 8
  %8 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i32 0, i32 1), align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %7, double* %9, align 8
  store double %8, double* %10, align 8
  %11 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %46, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sitofp i32 %10 to float
  %12 = fmul float 0.000000e+00, %11
  %13 = fmul float 1.000000e+00, %11
  %14 = fsub float %12, 0.000000e+00
  %15 = fadd float 0.000000e+00, %13
  %16 = fcmp uno float %14, %14
  br i1 %16, label %17, label %26, !prof !4

17:                                               ; preds = %9
  %18 = fcmp uno float %15, %15
  br i1 %18, label %19, label %26, !prof !4

19:                                               ; preds = %17
  %20 = call <2 x float> @__mulsc3(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %11, float noundef 0.000000e+00) #5
  %21 = bitcast { float, float }* %3 to <2 x float>*
  store <2 x float> %20, <2 x float>* %21, align 4
  %22 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds { float, float }, { float, float }* %3, i32 0, i32 1
  %25 = load float, float* %24, align 4
  br label %26

26:                                               ; preds = %19, %17, %9
  %27 = phi float [ %14, %9 ], [ %14, %17 ], [ %23, %19 ]
  %28 = phi float [ %15, %9 ], [ %15, %17 ], [ %25, %19 ]
  %29 = fpext float %27 to double
  %30 = fpext float %28 to double
  %31 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %32 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %29, double* %31, align 8
  store double %30, double* %32, align 8
  %33 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = call { double, double } @bar(double noundef %34, double noundef %36) #6
  %38 = extractvalue { double, double } %37, 0
  %39 = extractvalue { double, double } %37, 1
  %40 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %41 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %38, double* %40, align 8
  store double %39, double* %41, align 8
  %42 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %45 = load double, double* %44, align 8
  call void @foo(double noundef %43, double noundef %45, i32* noundef %1)
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %6, !llvm.loop !5

49:                                               ; preds = %6
  ret i32 0
}

declare dso_local <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @baz()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
