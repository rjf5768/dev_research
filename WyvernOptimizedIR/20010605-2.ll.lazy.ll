; ModuleID = './20010605-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010605-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca <2 x float>, align 8
  %2 = alloca { x86_fp80, x86_fp80 }, align 16
  call void @foo(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %3 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  store float 3.000000e+00, float* %3, align 8
  store float 4.000000e+00, float* %4, align 4
  %5 = load <2 x float>, <2 x float>* %1, align 8
  call void @bar(<2 x float> noundef %5)
  %6 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i64 0, i32 0
  %7 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %2, i64 0, i32 1
  store x86_fp80 0xK4001A000000000000000, x86_fp80* %6, align 16
  store x86_fp80 0xK4001C000000000000000, x86_fp80* %7, align 16
  call void @baz({ x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %2)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(double noundef %0, double noundef %1) #2 {
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  store double %0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %1, double* %5, align 8
  %6 = fcmp une double %0, 1.000000e+00
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fcmp une double %9, 2.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  call void @abort() #4
  unreachable

12:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(<2 x float> noundef %0) #3 {
  %2 = alloca <2 x float>, align 8
  store <2 x float> %0, <2 x float>* %2, align 8
  %3 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %4 = load float, float* %3, align 8
  %5 = fcmp une float %4, 3.000000e+00
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  %8 = load float, float* %7, align 4
  %9 = fcmp une float %8, 4.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  call void @abort() #4
  unreachable

11:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz({ x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %0) #2 {
  %2 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i64 0, i32 0
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = fcmp une x86_fp80 %3, 0xK4001A000000000000000
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i64 0, i32 1
  %7 = load x86_fp80, x86_fp80* %6, align 16
  %8 = fcmp une x86_fp80 %7, 0xK4001C000000000000000
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  call void @abort() #4
  unreachable

10:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
