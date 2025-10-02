; ModuleID = './volume.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @volume(%struct.IndexKey* nocapture noundef readonly byval(%struct.IndexKey) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 0
  %3 = load float, float* %2, align 8
  %4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 0
  %5 = load float, float* %4, align 8
  %6 = fsub float %3, %5
  %7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 1
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = fsub float %8, %10
  %12 = fmul float %6, %11
  %13 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 2
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 2
  %16 = load float, float* %15, align 8
  %17 = fsub float %14, %16
  %18 = fmul float %12, %17
  %19 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 3
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 3
  %22 = load float, float* %21, align 4
  %23 = fsub float %20, %22
  %24 = fmul float %18, %23
  %25 = fcmp ugt float %24, 0.000000e+00
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store float poison, float* null, align 4294967296
  br label %27

27:                                               ; preds = %26, %1
  ret float %24
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
