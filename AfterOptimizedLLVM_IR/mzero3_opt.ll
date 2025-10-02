; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nzerod = dso_local global double -0.000000e+00, align 8
@nzerof = dso_local global float -0.000000e+00, align 4
@zerod = dso_local global double 0.000000e+00, align 8
@zerof = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load double, double* @zerod, align 8
  %3 = call double @negd(double noundef %2)
  %4 = load double, double* @nzerod, align 8
  call void @expectd(double noundef %3, double noundef %4)
  %5 = load float, float* @zerof, align 4
  %6 = call float @negf(float noundef %5)
  %7 = load float, float* @nzerof, align 4
  call void @expectf(float noundef %6, float noundef %7)
  %8 = load double, double* @nzerod, align 8
  %9 = call double @negd(double noundef %8)
  %10 = load double, double* @zerod, align 8
  call void @expectd(double noundef %9, double noundef %10)
  %11 = load float, float* @nzerof, align 4
  %12 = call float @negf(float noundef %11)
  %13 = load float, float* @zerof, align 4
  call void @expectf(float noundef %12, float noundef %13)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectd(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp une double %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = bitcast double* %3 to i8*
  %10 = bitcast double* %4 to i8*
  %11 = call i32 @memcmp(i8* noundef %9, i8* noundef %10, i64 noundef 8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  call void @abort() #3
  unreachable

14:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @negd(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fneg double %3
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectf(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp une float %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = bitcast float* %3 to i8*
  %10 = bitcast float* %4 to i8*
  %11 = call i32 @memcmp(i8* noundef %9, i8* noundef %10, i64 noundef 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  call void @abort() #3
  unreachable

14:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @negf(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fneg float %3
  ret float %4
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
