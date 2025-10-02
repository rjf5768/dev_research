; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @foo(double noundef %0, double noundef %1) #0 {
  %3 = alloca <8 x i8>, align 8
  %4 = alloca <8 x i8>, align 8
  %5 = alloca <8 x i8>, align 8
  %6 = alloca <8 x i8>, align 8
  %7 = alloca <8 x i8>, align 8
  %8 = bitcast <8 x i8>* %4 to double*
  store double %0, double* %8, align 8
  %9 = load <8 x i8>, <8 x i8>* %4, align 8
  %10 = bitcast <8 x i8>* %5 to double*
  store double %1, double* %10, align 8
  %11 = load <8 x i8>, <8 x i8>* %5, align 8
  store <8 x i8> %9, <8 x i8>* %6, align 8
  store <8 x i8> %11, <8 x i8>* %7, align 8
  %12 = load <8 x i8>, <8 x i8>* %6, align 8
  %13 = load <8 x i8>, <8 x i8>* %7, align 8
  %14 = mul <8 x i8> %12, %13
  store <8 x i8> %14, <8 x i8>* %3, align 8
  %15 = bitcast <8 x i8>* %3 to double*
  %16 = load double, double* %15, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <8 x i8>, align 8
  %3 = alloca <8 x i8>, align 8
  %4 = alloca <8 x i8>, align 8
  %5 = alloca <8 x i8>, align 8
  %6 = alloca <8 x i8>, align 8
  %7 = alloca <8 x i8>, align 8
  %8 = alloca <8 x i8>, align 8
  store i32 0, i32* %1, align 4
  store <8 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, <8 x i8>* %2, align 8
  store <8 x i8> <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>, <8 x i8>* %3, align 8
  store <8 x i8> <i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 24>, <8 x i8>* %4, align 8
  %9 = load <8 x i8>, <8 x i8>* %2, align 8
  %10 = load <8 x i8>, <8 x i8>* %3, align 8
  store <8 x i8> %9, <8 x i8>* %6, align 8
  %11 = bitcast <8 x i8>* %6 to double*
  %12 = load double, double* %11, align 8
  store <8 x i8> %10, <8 x i8>* %7, align 8
  %13 = bitcast <8 x i8>* %7 to double*
  %14 = load double, double* %13, align 8
  %15 = call double @foo(double noundef %12, double noundef %14)
  %16 = bitcast <8 x i8>* %8 to double*
  store double %15, double* %16, align 8
  %17 = load <8 x i8>, <8 x i8>* %8, align 8
  store <8 x i8> %17, <8 x i8>* %5, align 8
  %18 = bitcast <8 x i8>* %5 to i8*
  %19 = bitcast <8 x i8>* %4 to i8*
  %20 = call i32 @memcmp(i8* noundef %18, i8* noundef %19, i64 noundef 8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  call void @abort() #3
  unreachable

23:                                               ; preds = %0
  ret i32 0
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
