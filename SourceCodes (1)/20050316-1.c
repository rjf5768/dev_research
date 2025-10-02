; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i32> }
%union.anon.0 = type { <2 x i32> }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = bitcast <2 x i32>* %2 to double*
  store double %0, double* %4, align 8
  %5 = load <2 x i32>, <2 x i32>* %2, align 8
  store <2 x i32> %5, <2 x i32>* %3, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  %7 = bitcast <2 x i32> %6 to i64
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test3() #0 {
  %1 = alloca <2 x i32>, align 8
  store <2 x i32> zeroinitializer, <2 x i32>* %1, align 8
  %2 = bitcast <2 x i32>* %1 to double*
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test4(i32 noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i16>, align 4
  %4 = alloca <2 x i16>, align 4
  %5 = bitcast <2 x i16>* %3 to i32*
  store i32 %0, i32* %5, align 4
  %6 = load <2 x i16>, <2 x i16>* %3, align 4
  store <2 x i16> %6, <2 x i16>* %4, align 4
  %7 = load <2 x i16>, <2 x i16>* %4, align 4
  %8 = bitcast <2 x i16> %7 to i32
  %9 = sext i32 %8 to i64
  %10 = bitcast i64 %9 to <2 x i32>
  store <2 x i32> %10, <2 x i32>* %2, align 8
  %11 = bitcast <2 x i32>* %2 to double*
  %12 = load double, double* %11, align 8
  ret double %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @test5(double noundef %0) #0 {
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = alloca <2 x i32>, align 8
  %5 = bitcast <2 x i32>* %3 to double*
  store double %0, double* %5, align 8
  %6 = load <2 x i32>, <2 x i32>* %3, align 8
  store <2 x i32> %6, <2 x i32>* %4, align 8
  %7 = load <2 x i32>, <2 x i32>* %4, align 8
  store <2 x i32> %7, <2 x i32>* %2, align 8
  %8 = bitcast <2 x i32>* %2 to double*
  %9 = load double, double* %8, align 8
  ret double %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <2 x i32>, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca <2 x i32>, align 8
  %6 = alloca <2 x i16>, align 4
  %7 = alloca %union.anon.0, align 8
  %8 = alloca <2 x i16>, align 4
  %9 = alloca <2 x i32>, align 8
  %10 = alloca <2 x i32>, align 8
  %11 = alloca <2 x i32>, align 8
  %12 = alloca <2 x i32>, align 8
  store i32 0, i32* %1, align 4
  %13 = call i32 @test1()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %0
  store <2 x i32> <i32 2, i32 2>, <2 x i32>* %2, align 8
  %17 = load <2 x i32>, <2 x i32>* %2, align 8
  store <2 x i32> %17, <2 x i32>* %3, align 8
  %18 = bitcast <2 x i32>* %3 to double*
  %19 = load double, double* %18, align 8
  %20 = call i32 @test2(double noundef %19)
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void @abort() #2
  unreachable

23:                                               ; preds = %16
  %24 = call double @test3()
  %25 = bitcast <2 x i32>* %5 to double*
  store double %24, double* %25, align 8
  %26 = load <2 x i32>, <2 x i32>* %5, align 8
  %27 = bitcast %union.anon* %4 to <2 x i32>*
  store <2 x i32> %26, <2 x i32>* %27, align 8
  %28 = bitcast %union.anon* %4 to [2 x i32]*
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = bitcast %union.anon* %4 to [2 x i32]*
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %23
  call void @abort() #2
  unreachable

38:                                               ; preds = %32
  store <2 x i16> <i16 4, i16 4>, <2 x i16>* %6, align 4
  %39 = load <2 x i16>, <2 x i16>* %6, align 4
  store <2 x i16> %39, <2 x i16>* %8, align 4
  %40 = bitcast <2 x i16>* %8 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call double @test4(i32 noundef %41)
  %43 = bitcast <2 x i32>* %9 to double*
  store double %42, double* %43, align 8
  %44 = load <2 x i32>, <2 x i32>* %9, align 8
  %45 = bitcast %union.anon.0* %7 to <2 x i32>*
  store <2 x i32> %44, <2 x i32>* %45, align 8
  %46 = bitcast %union.anon.0* %7 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 262148
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  call void @abort() #2
  unreachable

50:                                               ; preds = %38
  store <2 x i32> <i32 6, i32 6>, <2 x i32>* %10, align 8
  %51 = load <2 x i32>, <2 x i32>* %10, align 8
  store <2 x i32> %51, <2 x i32>* %11, align 8
  %52 = bitcast <2 x i32>* %11 to double*
  %53 = load double, double* %52, align 8
  %54 = call double @test5(double noundef %53)
  %55 = bitcast <2 x i32>* %12 to double*
  store double %54, double* %55, align 8
  %56 = load <2 x i32>, <2 x i32>* %12, align 8
  %57 = bitcast %union.anon* %4 to <2 x i32>*
  store <2 x i32> %56, <2 x i32>* %57, align 8
  %58 = bitcast %union.anon* %4 to [2 x i32]*
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 6
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = bitcast %union.anon* %4 to [2 x i32]*
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %63, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 6
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %50
  call void @abort() #2
  unreachable

68:                                               ; preds = %62
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
