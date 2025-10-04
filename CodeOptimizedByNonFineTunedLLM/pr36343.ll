; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36343.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36343.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca float*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = bitcast i32** %4 to float*
  store float* %5, float** %3, align 8
  %6 = load float*, float** %3, align 8
  store float 0.000000e+00, float* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @foo(i32 noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store float 1.000000e+00, float* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32** %4, i32*** %6, align 8
  br label %12

10:                                               ; preds = %1
  %11 = bitcast float* %5 to i32**
  store i32** %11, i32*** %6, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = load i32**, i32*** %6, align 8
  call void @bar(i32** noundef %13)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to float
  store float %20, float* %2, align 4
  br label %23

21:                                               ; preds = %12
  %22 = load float, float* %5, align 4
  store float %22, float* %2, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load float, float* %2, align 4
  ret float %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call float @foo(i32 noundef 0)
  %3 = fpext float %2 to double
  %4 = fcmp une double %3, 0.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
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
