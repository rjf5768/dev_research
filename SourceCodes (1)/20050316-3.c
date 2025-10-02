; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i32> }

; Function Attrs: noinline nounwind uwtable
define dso_local double @test1(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = alloca <2 x i32>, align 8
  %5 = bitcast <2 x i32>* %3 to double*
  store double %0, double* %5, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  store <2 x i32> %6, <2 x i32>* %4, align 8
  %7 = load <2 x i32>, <2 x i32>* %4, align 8
  %8 = bitcast <2 x i32> %7 to i64
  %9 = bitcast i64 %8 to <2 x i32>
  store <2 x i32> %9, <2 x i32>* %2, align 8
  %10 = bitcast <2 x i32>* %2 to double*
  %11 = load double, double* %10, align 8
  ret double %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test2(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = bitcast <2 x i32>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x i32>, <2 x i32>* %2, align 8
  store <2 x i32> %5, <2 x i32>* %3, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  %7 = bitcast <2 x i32> %6 to i64
  %8 = bitcast i64 %7 to <2 x i32>
  %9 = bitcast <2 x i32> %8 to i64
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = alloca <2 x i32>, align 8
  %5 = alloca <2 x i32>, align 8
  %6 = alloca <2 x i32>, align 8
  store i32 0, i32* %1, align 4
  store <2 x i32> <i32 -3, i32 -3>, <2 x i32>* %3, align 8
  %7 = load <2 x i32>, <2 x i32>* %3, align 8
  store <2 x i32> %7, <2 x i32>* %4, align 8
  %8 = bitcast <2 x i32>* %4 to double*
  %9 = load double, double* %8, align 8
  %10 = call double @test1(double noundef %9)
  %11 = bitcast <2 x i32>* %5 to double*
  store double %10, double* %11, align 8
  %12 = load <2 x i32>, <2 x i32>* %5, align 8
  %13 = bitcast %union.anon* %2 to <2 x i32>*
  store <2 x i32> %12, <2 x i32>* %13, align 8
  %14 = bitcast %union.anon* %2 to [2 x i32]*
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -3
  br i1 %17, label %23, label %18

18:                                               ; preds = %0
  %19 = bitcast %union.anon* %2 to [2 x i32]*
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, -3
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %0
  call void @abort() #2
  unreachable

24:                                               ; preds = %18
  %25 = load <2 x i32>, <2 x i32>* %3, align 8
  store <2 x i32> %25, <2 x i32>* %6, align 8
  %26 = bitcast <2 x i32>* %6 to double*
  %27 = load double, double* %26, align 8
  %28 = call i64 @test2(double noundef %27)
  %29 = bitcast %union.anon* %2 to i64*
  store i64 %28, i64* %29, align 8
  %30 = bitcast %union.anon* %2 to [2 x i32]*
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -3
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = bitcast %union.anon* %2 to [2 x i32]*
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -3
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %24
  call void @abort() #2
  unreachable

40:                                               ; preds = %34
  ret i32 0
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
