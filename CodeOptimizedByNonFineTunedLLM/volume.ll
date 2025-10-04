; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/volume.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: noinline nounwind uwtable
define dso_local float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %4, i32 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %8 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %7, i32 0, i32 0
  %9 = load float, float* %8, align 8
  %10 = fsub float %6, %9
  store float %10, float* %2, align 4
  %11 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %11, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fsub float %13, %16
  %18 = load float, float* %2, align 4
  %19 = fmul float %18, %17
  store float %19, float* %2, align 4
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %20, i32 0, i32 2
  %22 = load float, float* %21, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 2
  %25 = load float, float* %24, align 8
  %26 = fsub float %22, %25
  %27 = load float, float* %2, align 4
  %28 = fmul float %27, %26
  store float %28, float* %2, align 4
  %29 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %29, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 3
  %34 = load float, float* %33, align 4
  %35 = fsub float %31, %34
  %36 = load float, float* %2, align 4
  %37 = fmul float %36, %35
  store float %37, float* %2, align 4
  %38 = load float, float* %2, align 4
  %39 = fpext float %38 to double
  %40 = fcmp ole double %39, 0.000000e+00
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  store float* null, float** %3, align 8
  %42 = load float*, float** %3, align 8
  %43 = load float, float* %42, align 4
  store float %43, float* %2, align 4
  br label %44

44:                                               ; preds = %41, %1
  %45 = load float, float* %2, align 4
  ret float %45
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
