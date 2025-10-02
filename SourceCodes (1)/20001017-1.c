; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001017-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001017-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bug(double* noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double* noundef %6, i32 noundef %7, double* noundef %8, i32 noundef %9, double noundef %10, double* noundef %11, i32 noundef %12) #0 {
  %14 = alloca double*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double*, align 8
  %26 = alloca i32, align 4
  store double* %0, double** %14, align 8
  store i8 %1, i8* %15, align 1
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store double %5, double* %19, align 8
  store double* %6, double** %20, align 8
  store i32 %7, i32* %21, align 4
  store double* %8, double** %22, align 8
  store i32 %9, i32* %23, align 4
  store double %10, double* %24, align 8
  store double* %11, double** %25, align 8
  store i32 %12, i32* %26, align 4
  %27 = load double*, double** %25, align 8
  %28 = load double*, double** %14, align 8
  %29 = icmp ne double* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  call void @abort() #2
  unreachable

31:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x double], align 8
  %3 = alloca [1 x double], align 8
  %4 = alloca [1 x double], align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [1 x double], [1 x double]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [1 x double], [1 x double]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [1 x double], [1 x double]* %3, i64 0, i64 0
  %8 = getelementptr inbounds [1 x double], [1 x double]* %4, i64 0, i64 0
  call void @bug(double* noundef %5, i8 noundef signext 66, i32 noundef 1, i32 noundef 2, i32 noundef 3, double noundef 4.000000e+00, double* noundef %6, i32 noundef 5, double* noundef %7, i32 noundef 6, double noundef 7.000000e+00, double* noundef %8, i32 noundef 8)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
