; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70903.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70903.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <8 x i32>, align 32
  %3 = alloca <4 x i64>, align 32
  %4 = alloca <4 x i64>, align 32
  store i32 0, i32* %1, align 4
  store <4 x i64> zeroinitializer, <4 x i64>* %3, align 32
  %5 = load <4 x i64>, <4 x i64>* %3, align 32
  store <4 x i64> %5, <4 x i64>* %4, align 32
  %6 = call <8 x i32> @foo(<4 x i64>* noundef byval(<4 x i64>) align 32 %4)
  store <8 x i32> %6, <8 x i32>* %2, align 32
  %7 = load <8 x i32>, <8 x i32>* %2, align 32
  %8 = extractelement <8 x i32> %7, i32 1
  %9 = icmp ne i32 %8, 255
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal <8 x i32> @foo(<4 x i64>* noundef byval(<4 x i64>) align 32 %0) #0 {
  %2 = alloca <4 x i64>, align 32
  %3 = alloca <4 x i64>, align 32
  %4 = alloca <32 x i8>, align 32
  %5 = alloca <4 x i64>, align 32
  %6 = alloca <8 x i32>, align 32
  %7 = load <4 x i64>, <4 x i64>* %0, align 32
  store <4 x i64> %7, <4 x i64>* %2, align 32
  %8 = load <4 x i64>, <4 x i64>* %2, align 32
  %9 = extractelement <4 x i64> %8, i32 0
  %10 = insertelement <4 x i64> <i64 65535, i64 undef, i64 undef, i64 undef>, i64 %9, i32 1
  %11 = insertelement <4 x i64> %10, i64 0, i32 2
  %12 = insertelement <4 x i64> %11, i64 0, i32 3
  store <4 x i64> %12, <4 x i64>* %5, align 32
  %13 = load <4 x i64>, <4 x i64>* %5, align 32
  %14 = bitcast <4 x i64> %13 to <32 x i8>
  %15 = extractelement <32 x i8> %14, i32 1
  %16 = insertelement <32 x i8> undef, i8 %15, i32 0
  %17 = insertelement <32 x i8> %16, i8 0, i32 1
  %18 = insertelement <32 x i8> %17, i8 0, i32 2
  %19 = insertelement <32 x i8> %18, i8 0, i32 3
  %20 = insertelement <32 x i8> %19, i8 0, i32 4
  %21 = insertelement <32 x i8> %20, i8 0, i32 5
  %22 = insertelement <32 x i8> %21, i8 0, i32 6
  %23 = insertelement <32 x i8> %22, i8 0, i32 7
  %24 = insertelement <32 x i8> %23, i8 0, i32 8
  %25 = insertelement <32 x i8> %24, i8 0, i32 9
  %26 = insertelement <32 x i8> %25, i8 0, i32 10
  %27 = insertelement <32 x i8> %26, i8 0, i32 11
  %28 = insertelement <32 x i8> %27, i8 0, i32 12
  %29 = insertelement <32 x i8> %28, i8 0, i32 13
  %30 = insertelement <32 x i8> %29, i8 0, i32 14
  %31 = insertelement <32 x i8> %30, i8 0, i32 15
  %32 = insertelement <32 x i8> %31, i8 0, i32 16
  %33 = insertelement <32 x i8> %32, i8 0, i32 17
  %34 = insertelement <32 x i8> %33, i8 0, i32 18
  %35 = insertelement <32 x i8> %34, i8 0, i32 19
  %36 = insertelement <32 x i8> %35, i8 0, i32 20
  %37 = insertelement <32 x i8> %36, i8 0, i32 21
  %38 = insertelement <32 x i8> %37, i8 0, i32 22
  %39 = insertelement <32 x i8> %38, i8 0, i32 23
  %40 = insertelement <32 x i8> %39, i8 0, i32 24
  %41 = insertelement <32 x i8> %40, i8 0, i32 25
  %42 = insertelement <32 x i8> %41, i8 0, i32 26
  %43 = insertelement <32 x i8> %42, i8 0, i32 27
  %44 = insertelement <32 x i8> %43, i8 0, i32 28
  %45 = insertelement <32 x i8> %44, i8 0, i32 29
  %46 = insertelement <32 x i8> %45, i8 0, i32 30
  %47 = insertelement <32 x i8> %46, i8 0, i32 31
  store <32 x i8> %47, <32 x i8>* %4, align 32
  %48 = load <32 x i8>, <32 x i8>* %4, align 32
  %49 = bitcast <32 x i8> %48 to <4 x i64>
  store <4 x i64> %49, <4 x i64>* %3, align 32
  %50 = load <4 x i64>, <4 x i64>* %3, align 32
  %51 = extractelement <4 x i64> %50, i32 0
  %52 = trunc i64 %51 to i32
  %53 = insertelement <8 x i32> undef, i32 %52, i32 0
  %54 = insertelement <8 x i32> %53, i32 255, i32 1
  %55 = insertelement <8 x i32> %54, i32 0, i32 2
  %56 = insertelement <8 x i32> %55, i32 0, i32 3
  %57 = insertelement <8 x i32> %56, i32 0, i32 4
  %58 = insertelement <8 x i32> %57, i32 0, i32 5
  %59 = insertelement <8 x i32> %58, i32 0, i32 6
  %60 = insertelement <8 x i32> %59, i32 0, i32 7
  store <8 x i32> %60, <8 x i32>* %6, align 32
  %61 = load <8 x i32>, <8 x i32>* %6, align 32
  ret <8 x i32> %61
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
