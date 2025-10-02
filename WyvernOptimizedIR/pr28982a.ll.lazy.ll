; ModuleID = './pr28982a.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incs = dso_local global [20 x i32] zeroinitializer, align 16
@ptrs = dso_local global [20 x float*] zeroinitializer, align 16
@results = dso_local global [20 x float] zeroinitializer, align 16
@input = dso_local global [80 x float] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  %3 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 1), align 4
  %4 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 2), align 8
  %5 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 3), align 4
  %6 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 4), align 16
  %7 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 5), align 4
  %8 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 6), align 8
  %9 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 7), align 4
  %10 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 8), align 16
  %11 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 9), align 4
  %12 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 10), align 8
  %13 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 11), align 4
  %14 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 12), align 16
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 13), align 4
  %16 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 14), align 8
  %17 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 15), align 4
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 16), align 16
  %19 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 17), align 4
  %20 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 18), align 8
  %21 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 19), align 4
  %22 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 0), align 16
  %23 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 1), align 8
  %24 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 2), align 16
  %25 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 3), align 8
  %26 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 4), align 16
  %27 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 5), align 8
  %28 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 6), align 16
  %29 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 7), align 8
  %30 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 8), align 16
  %31 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 9), align 8
  %32 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 10), align 16
  %33 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 11), align 8
  %34 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 12), align 16
  %35 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 13), align 8
  %36 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 14), align 16
  %37 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 15), align 8
  %38 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 16), align 16
  %39 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 17), align 8
  %40 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 18), align 16
  %41 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 19), align 8
  br label %42

42:                                               ; preds = %43, %1
  %.040 = phi float [ 0.000000e+00, %1 ], [ %82, %43 ]
  %.039 = phi float* [ %31, %1 ], [ %84, %43 ]
  %.038 = phi float [ 0.000000e+00, %1 ], [ %78, %43 ]
  %.037 = phi float* [ %30, %1 ], [ %80, %43 ]
  %.036 = phi float [ 0.000000e+00, %1 ], [ %74, %43 ]
  %.035 = phi float* [ %29, %1 ], [ %76, %43 ]
  %.034 = phi float [ 0.000000e+00, %1 ], [ %70, %43 ]
  %.033 = phi float* [ %28, %1 ], [ %72, %43 ]
  %.032 = phi float [ 0.000000e+00, %1 ], [ %66, %43 ]
  %.031 = phi float* [ %27, %1 ], [ %68, %43 ]
  %.030 = phi float [ 0.000000e+00, %1 ], [ %62, %43 ]
  %.029 = phi float* [ %26, %1 ], [ %64, %43 ]
  %.028 = phi float [ 0.000000e+00, %1 ], [ %58, %43 ]
  %.027 = phi float* [ %25, %1 ], [ %60, %43 ]
  %.026 = phi float [ 0.000000e+00, %1 ], [ %54, %43 ]
  %.025 = phi float* [ %24, %1 ], [ %56, %43 ]
  %.024 = phi float [ 0.000000e+00, %1 ], [ %50, %43 ]
  %.023 = phi float* [ %23, %1 ], [ %52, %43 ]
  %.022 = phi float [ 0.000000e+00, %1 ], [ %46, %43 ]
  %.021 = phi float* [ %22, %1 ], [ %48, %43 ]
  %.020 = phi float* [ %32, %1 ], [ %88, %43 ]
  %.019 = phi float [ 0.000000e+00, %1 ], [ %86, %43 ]
  %.018 = phi float* [ %33, %1 ], [ %92, %43 ]
  %.017 = phi float [ 0.000000e+00, %1 ], [ %90, %43 ]
  %.016 = phi float* [ %34, %1 ], [ %96, %43 ]
  %.015 = phi float [ 0.000000e+00, %1 ], [ %94, %43 ]
  %.014 = phi float* [ %35, %1 ], [ %100, %43 ]
  %.013 = phi float [ 0.000000e+00, %1 ], [ %98, %43 ]
  %.012 = phi float* [ %36, %1 ], [ %104, %43 ]
  %.011 = phi float [ 0.000000e+00, %1 ], [ %102, %43 ]
  %.010 = phi float* [ %37, %1 ], [ %108, %43 ]
  %.09 = phi float [ 0.000000e+00, %1 ], [ %106, %43 ]
  %.08 = phi float* [ %38, %1 ], [ %112, %43 ]
  %.07 = phi float [ 0.000000e+00, %1 ], [ %110, %43 ]
  %.06 = phi float* [ %39, %1 ], [ %116, %43 ]
  %.05 = phi float [ 0.000000e+00, %1 ], [ %114, %43 ]
  %.04 = phi float* [ %40, %1 ], [ %120, %43 ]
  %.03 = phi float [ 0.000000e+00, %1 ], [ %118, %43 ]
  %.02 = phi float* [ %41, %1 ], [ %124, %43 ]
  %.01 = phi float [ 0.000000e+00, %1 ], [ %122, %43 ]
  %.0 = phi i32 [ %0, %1 ], [ %44, %43 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %125, label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %.0, -1
  %45 = load float, float* %.021, align 4
  %46 = fadd float %.022, %45
  %47 = sext i32 %2 to i64
  %48 = getelementptr inbounds float, float* %.021, i64 %47
  %49 = load float, float* %.023, align 4
  %50 = fadd float %.024, %49
  %51 = sext i32 %3 to i64
  %52 = getelementptr inbounds float, float* %.023, i64 %51
  %53 = load float, float* %.025, align 4
  %54 = fadd float %.026, %53
  %55 = sext i32 %4 to i64
  %56 = getelementptr inbounds float, float* %.025, i64 %55
  %57 = load float, float* %.027, align 4
  %58 = fadd float %.028, %57
  %59 = sext i32 %5 to i64
  %60 = getelementptr inbounds float, float* %.027, i64 %59
  %61 = load float, float* %.029, align 4
  %62 = fadd float %.030, %61
  %63 = sext i32 %6 to i64
  %64 = getelementptr inbounds float, float* %.029, i64 %63
  %65 = load float, float* %.031, align 4
  %66 = fadd float %.032, %65
  %67 = sext i32 %7 to i64
  %68 = getelementptr inbounds float, float* %.031, i64 %67
  %69 = load float, float* %.033, align 4
  %70 = fadd float %.034, %69
  %71 = sext i32 %8 to i64
  %72 = getelementptr inbounds float, float* %.033, i64 %71
  %73 = load float, float* %.035, align 4
  %74 = fadd float %.036, %73
  %75 = sext i32 %9 to i64
  %76 = getelementptr inbounds float, float* %.035, i64 %75
  %77 = load float, float* %.037, align 4
  %78 = fadd float %.038, %77
  %79 = sext i32 %10 to i64
  %80 = getelementptr inbounds float, float* %.037, i64 %79
  %81 = load float, float* %.039, align 4
  %82 = fadd float %.040, %81
  %83 = sext i32 %11 to i64
  %84 = getelementptr inbounds float, float* %.039, i64 %83
  %85 = load float, float* %.020, align 4
  %86 = fadd float %.019, %85
  %87 = sext i32 %12 to i64
  %88 = getelementptr inbounds float, float* %.020, i64 %87
  %89 = load float, float* %.018, align 4
  %90 = fadd float %.017, %89
  %91 = sext i32 %13 to i64
  %92 = getelementptr inbounds float, float* %.018, i64 %91
  %93 = load float, float* %.016, align 4
  %94 = fadd float %.015, %93
  %95 = sext i32 %14 to i64
  %96 = getelementptr inbounds float, float* %.016, i64 %95
  %97 = load float, float* %.014, align 4
  %98 = fadd float %.013, %97
  %99 = sext i32 %15 to i64
  %100 = getelementptr inbounds float, float* %.014, i64 %99
  %101 = load float, float* %.012, align 4
  %102 = fadd float %.011, %101
  %103 = sext i32 %16 to i64
  %104 = getelementptr inbounds float, float* %.012, i64 %103
  %105 = load float, float* %.010, align 4
  %106 = fadd float %.09, %105
  %107 = sext i32 %17 to i64
  %108 = getelementptr inbounds float, float* %.010, i64 %107
  %109 = load float, float* %.08, align 4
  %110 = fadd float %.07, %109
  %111 = sext i32 %18 to i64
  %112 = getelementptr inbounds float, float* %.08, i64 %111
  %113 = load float, float* %.06, align 4
  %114 = fadd float %.05, %113
  %115 = sext i32 %19 to i64
  %116 = getelementptr inbounds float, float* %.06, i64 %115
  %117 = load float, float* %.04, align 4
  %118 = fadd float %.03, %117
  %119 = sext i32 %20 to i64
  %120 = getelementptr inbounds float, float* %.04, i64 %119
  %121 = load float, float* %.02, align 4
  %122 = fadd float %.01, %121
  %123 = sext i32 %21 to i64
  %124 = getelementptr inbounds float, float* %.02, i64 %123
  br label %42, !llvm.loop !4

125:                                              ; preds = %42
  store float %.022, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 0), align 16
  store float %.024, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 1), align 4
  store float %.026, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 2), align 8
  store float %.028, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 3), align 4
  store float %.030, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 4), align 16
  store float %.032, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 5), align 4
  store float %.034, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 6), align 8
  store float %.036, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 7), align 4
  store float %.038, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 8), align 16
  store float %.040, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 9), align 4
  store float %.019, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 10), align 8
  store float %.017, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 11), align 4
  store float %.015, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 12), align 16
  store float %.013, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 13), align 4
  store float %.011, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 14), align 8
  store float %.09, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 15), align 4
  store float %.07, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 16), align 16
  store float %.05, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 17), align 4
  store float %.03, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 18), align 8
  store float %.01, float* getelementptr inbounds ([20 x float], [20 x float]* @results, i64 0, i64 19), align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.01 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.01, 20
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds [80 x float], [80 x float]* @input, i64 0, i64 %4
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [20 x float*], [20 x float*]* @ptrs, i64 0, i64 %6
  store float* %5, float** %7, align 8
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [20 x i32], [20 x i32]* @incs, i64 0, i64 %8
  store i32 %.01, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %19, %12
  %.1 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp ult i32 %.1, 80
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = sitofp i32 %.1 to float
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds [80 x float], [80 x float]* @input, i64 0, i64 %17
  store float %16, float* %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !7

21:                                               ; preds = %13
  call void @foo(i32 noundef 4)
  br label %22

22:                                               ; preds = %33, %21
  %.2 = phi i32 [ 0, %21 ], [ %34, %33 ]
  %23 = icmp ult i32 %.2, 20
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = zext i32 %.2 to i64
  %26 = getelementptr inbounds [20 x float], [20 x float]* @results, i64 0, i64 %25
  %27 = load float, float* %26, align 4
  %28 = mul nsw i32 %.2, 10
  %29 = sitofp i32 %28 to float
  %30 = fcmp une float %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.2, 1
  br label %22, !llvm.loop !8

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %31
  %.0 = phi i32 [ 1, %31 ], [ 0, %35 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
