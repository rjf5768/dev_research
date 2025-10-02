; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/unsafe-fp-assoc-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/unsafe-fp-assoc-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hexdouble = type { double }
%struct.anon = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @func(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.hexdouble, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = bitcast %union.hexdouble* %3 to double*
  store double %7, double* %8, align 8
  %9 = bitcast %union.hexdouble* %3 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 1127219200
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load double, double* %2, align 8
  %22 = fsub double %21, 0x4330000000000000
  %23 = fadd double %22, 0x4330000000000000
  store double %23, double* %4, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %2, align 8
  %26 = fcmp une double %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @abort() #2
  unreachable

28:                                               ; preds = %20
  %29 = load double, double* %2, align 8
  %30 = fsub double %29, 5.000000e-01
  store double %30, double* %5, align 8
  %31 = load double, double* %5, align 8
  %32 = fsub double %31, 0x4330000000000000
  %33 = fadd double %32, 0x4330000000000000
  store double %33, double* %4, align 8
  %34 = load double, double* %4, align 8
  %35 = load double, double* %2, align 8
  %36 = fsub double %35, 0x4330000000000000
  %37 = fadd double %36, 0x4330000000000000
  %38 = fcmp oeq double %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  call void @abort() #2
  unreachable

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @func(double noundef 1.000000e+00)
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
