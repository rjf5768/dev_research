; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }
%struct.B = type { i32*, float }

@X = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* %0, float %1, %struct.A* noundef %2, float* noundef %3) #0 {
  %5 = alloca %struct.B, align 8
  %6 = alloca %struct.A*, align 8
  %7 = alloca float*, align 8
  %8 = bitcast %struct.B* %5 to { i32*, float }*
  %9 = getelementptr inbounds { i32*, float }, { i32*, float }* %8, i32 0, i32 0
  store i32* %0, i32** %9, align 8
  %10 = getelementptr inbounds { i32*, float }, { i32*, float }* %8, i32 0, i32 1
  store float %1, float* %10, align 8
  store %struct.A* %2, %struct.A** %6, align 8
  store float* %3, float** %7, align 8
  %11 = load float*, float** %7, align 8
  %12 = load float, float* %11, align 4
  %13 = load float, float* @X, align 4
  %14 = fadd float %13, %12
  store float %14, float* @X, align 4
  %15 = getelementptr inbounds %struct.B, %struct.B* %5, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32 3, i32* %16, align 4
  %17 = load %struct.A*, %struct.A** %6, align 8
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.B, %struct.B* %5, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca %struct.B, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %5 = getelementptr inbounds %struct.B, %struct.B* %3, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = bitcast %struct.B* %3 to { i32*, float }*
  %7 = getelementptr inbounds { i32*, float }, { i32*, float }* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds { i32*, float }, { i32*, float }* %6, i32 0, i32 1
  %10 = load float, float* %9, align 8
  %11 = call i32 @foo(i32* %8, float %10, %struct.A* noundef %2, float* noundef @X)
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
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
