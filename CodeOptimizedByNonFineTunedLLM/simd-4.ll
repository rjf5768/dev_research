; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@s64 = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca i32, align 4
  %4 = alloca <2 x i32>, align 8
  %5 = alloca <2 x i32>, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast %union.anon* %2 to i64*
  store i64 1, i64* %6, align 8
  %7 = bitcast %union.anon* %2 to [2 x i32]*
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  store <2 x i32> <i32 1, i32 -1>, <2 x i32>* %4, align 8
  %10 = load <2 x i32>, <2 x i32>* %4, align 8
  store <2 x i32> %10, <2 x i32>* %5, align 8
  %11 = bitcast <2 x i32>* %5 to double*
  %12 = load double, double* %11, align 8
  %13 = call i64 @__ev_convert_s64(double noundef %12)
  store i64 %13, i64* @s64, align 8
  %14 = load i64, i64* @s64, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i64 -4294967295, i64 8589934591
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  call void @abort() #2
  unreachable

21:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__ev_convert_s64(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = bitcast <2 x i32>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x i32>, <2 x i32>* %2, align 8
  store <2 x i32> %5, <2 x i32>* %3, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  %7 = bitcast <2 x i32> %6 to i64
  ret i64 %7
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
