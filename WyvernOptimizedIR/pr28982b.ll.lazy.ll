; ModuleID = './pr28982b.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28982b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [65536 x i32] }

@incs = dso_local global [20 x i32] zeroinitializer, align 16
@ptrs = dso_local global [20 x float*] zeroinitializer, align 16
@results = dso_local global [20 x float] zeroinitializer, align 16
@input = dso_local global [80 x float] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bar(%struct.big* nocapture noundef readonly byval(%struct.big) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.big, %struct.big* %0, i64 0, i32 0, i64 0
  %3 = load i32, i32* %2, align 8
  %4 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  %5 = add nsw i32 %4, %3
  store i32 %5, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo(i32 noundef %0) #1 {
  %2 = alloca %struct.big, align 8
  %3 = bitcast %struct.big* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(262144) %3, i8 0, i64 262144, i1 false)
  %4 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 0), align 16
  %5 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 1), align 4
  %6 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 2), align 8
  %7 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 3), align 4
  %8 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 4), align 16
  %9 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 5), align 4
  %10 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 6), align 8
  %11 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 7), align 4
  %12 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 8), align 16
  %13 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 9), align 4
  %14 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 10), align 8
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 11), align 4
  %16 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 12), align 16
  %17 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 13), align 4
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 14), align 8
  %19 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 15), align 4
  %20 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 16), align 16
  %21 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 17), align 4
  %22 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 18), align 8
  %23 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @incs, i64 0, i64 19), align 4
  %24 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 0), align 16
  %25 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 1), align 8
  %26 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 2), align 16
  %27 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 3), align 8
  %28 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 4), align 16
  %29 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 5), align 8
  %30 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 6), align 16
  %31 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 7), align 8
  %32 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 8), align 16
  %33 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 9), align 8
  %34 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 10), align 16
  %35 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 11), align 8
  %36 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 12), align 16
  %37 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 13), align 8
  %38 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 14), align 16
  %39 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 15), align 8
  %40 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 16), align 16
  %41 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 17), align 8
  %42 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 18), align 16
  %43 = load float*, float** getelementptr inbounds ([20 x float*], [20 x float*]* @ptrs, i64 0, i64 19), align 8
  br label %44

44:                                               ; preds = %45, %1
  %.040 = phi float [ 0.000000e+00, %1 ], [ %84, %45 ]
  %.039 = phi float* [ %33, %1 ], [ %86, %45 ]
  %.038 = phi float [ 0.000000e+00, %1 ], [ %80, %45 ]
  %.037 = phi float* [ %32, %1 ], [ %82, %45 ]
  %.036 = phi float [ 0.000000e+00, %1 ], [ %76, %45 ]
  %.035 = phi float* [ %31, %1 ], [ %78, %45 ]
  %.034 = phi float [ 0.000000e+00, %1 ], [ %72, %45 ]
  %.033 = phi float* [ %30, %1 ], [ %74, %45 ]
  %.032 = phi float [ 0.000000e+00, %1 ], [ %68, %45 ]
  %.031 = phi float* [ %29, %1 ], [ %70, %45 ]
  %.030 = phi float [ 0.000000e+00, %1 ], [ %64, %45 ]
  %.029 = phi float* [ %28, %1 ], [ %66, %45 ]
  %.028 = phi float [ 0.000000e+00, %1 ], [ %60, %45 ]
  %.027 = phi float* [ %27, %1 ], [ %62, %45 ]
  %.026 = phi float [ 0.000000e+00, %1 ], [ %56, %45 ]
  %.025 = phi float* [ %26, %1 ], [ %58, %45 ]
  %.024 = phi float [ 0.000000e+00, %1 ], [ %52, %45 ]
  %.023 = phi float* [ %25, %1 ], [ %54, %45 ]
  %.022 = phi float [ 0.000000e+00, %1 ], [ %48, %45 ]
  %.021 = phi float* [ %24, %1 ], [ %50, %45 ]
  %.020 = phi float* [ %34, %1 ], [ %90, %45 ]
  %.019 = phi float [ 0.000000e+00, %1 ], [ %88, %45 ]
  %.018 = phi float* [ %35, %1 ], [ %94, %45 ]
  %.017 = phi float [ 0.000000e+00, %1 ], [ %92, %45 ]
  %.016 = phi float* [ %36, %1 ], [ %98, %45 ]
  %.015 = phi float [ 0.000000e+00, %1 ], [ %96, %45 ]
  %.014 = phi float* [ %37, %1 ], [ %102, %45 ]
  %.013 = phi float [ 0.000000e+00, %1 ], [ %100, %45 ]
  %.012 = phi float* [ %38, %1 ], [ %106, %45 ]
  %.011 = phi float [ 0.000000e+00, %1 ], [ %104, %45 ]
  %.010 = phi float* [ %39, %1 ], [ %110, %45 ]
  %.09 = phi float [ 0.000000e+00, %1 ], [ %108, %45 ]
  %.08 = phi float* [ %40, %1 ], [ %114, %45 ]
  %.07 = phi float [ 0.000000e+00, %1 ], [ %112, %45 ]
  %.06 = phi float* [ %41, %1 ], [ %118, %45 ]
  %.05 = phi float [ 0.000000e+00, %1 ], [ %116, %45 ]
  %.04 = phi float* [ %42, %1 ], [ %122, %45 ]
  %.03 = phi float [ 0.000000e+00, %1 ], [ %120, %45 ]
  %.02 = phi float* [ %43, %1 ], [ %126, %45 ]
  %.01 = phi float [ 0.000000e+00, %1 ], [ %124, %45 ]
  %.0 = phi i32 [ %0, %1 ], [ %46, %45 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %127, label %45

45:                                               ; preds = %44
  %46 = add nsw i32 %.0, -1
  %47 = load float, float* %.021, align 4
  %48 = fadd float %.022, %47
  %49 = sext i32 %4 to i64
  %50 = getelementptr inbounds float, float* %.021, i64 %49
  %51 = load float, float* %.023, align 4
  %52 = fadd float %.024, %51
  %53 = sext i32 %5 to i64
  %54 = getelementptr inbounds float, float* %.023, i64 %53
  %55 = load float, float* %.025, align 4
  %56 = fadd float %.026, %55
  %57 = sext i32 %6 to i64
  %58 = getelementptr inbounds float, float* %.025, i64 %57
  %59 = load float, float* %.027, align 4
  %60 = fadd float %.028, %59
  %61 = sext i32 %7 to i64
  %62 = getelementptr inbounds float, float* %.027, i64 %61
  %63 = load float, float* %.029, align 4
  %64 = fadd float %.030, %63
  %65 = sext i32 %8 to i64
  %66 = getelementptr inbounds float, float* %.029, i64 %65
  %67 = load float, float* %.031, align 4
  %68 = fadd float %.032, %67
  %69 = sext i32 %9 to i64
  %70 = getelementptr inbounds float, float* %.031, i64 %69
  %71 = load float, float* %.033, align 4
  %72 = fadd float %.034, %71
  %73 = sext i32 %10 to i64
  %74 = getelementptr inbounds float, float* %.033, i64 %73
  %75 = load float, float* %.035, align 4
  %76 = fadd float %.036, %75
  %77 = sext i32 %11 to i64
  %78 = getelementptr inbounds float, float* %.035, i64 %77
  %79 = load float, float* %.037, align 4
  %80 = fadd float %.038, %79
  %81 = sext i32 %12 to i64
  %82 = getelementptr inbounds float, float* %.037, i64 %81
  %83 = load float, float* %.039, align 4
  %84 = fadd float %.040, %83
  %85 = sext i32 %13 to i64
  %86 = getelementptr inbounds float, float* %.039, i64 %85
  %87 = load float, float* %.020, align 4
  %88 = fadd float %.019, %87
  %89 = sext i32 %14 to i64
  %90 = getelementptr inbounds float, float* %.020, i64 %89
  %91 = load float, float* %.018, align 4
  %92 = fadd float %.017, %91
  %93 = sext i32 %15 to i64
  %94 = getelementptr inbounds float, float* %.018, i64 %93
  %95 = load float, float* %.016, align 4
  %96 = fadd float %.015, %95
  %97 = sext i32 %16 to i64
  %98 = getelementptr inbounds float, float* %.016, i64 %97
  %99 = load float, float* %.014, align 4
  %100 = fadd float %.013, %99
  %101 = sext i32 %17 to i64
  %102 = getelementptr inbounds float, float* %.014, i64 %101
  %103 = load float, float* %.012, align 4
  %104 = fadd float %.011, %103
  %105 = sext i32 %18 to i64
  %106 = getelementptr inbounds float, float* %.012, i64 %105
  %107 = load float, float* %.010, align 4
  %108 = fadd float %.09, %107
  %109 = sext i32 %19 to i64
  %110 = getelementptr inbounds float, float* %.010, i64 %109
  %111 = load float, float* %.08, align 4
  %112 = fadd float %.07, %111
  %113 = sext i32 %20 to i64
  %114 = getelementptr inbounds float, float* %.08, i64 %113
  %115 = load float, float* %.06, align 4
  %116 = fadd float %.05, %115
  %117 = sext i32 %21 to i64
  %118 = getelementptr inbounds float, float* %.06, i64 %117
  %119 = load float, float* %.04, align 4
  %120 = fadd float %.03, %119
  %121 = sext i32 %22 to i64
  %122 = getelementptr inbounds float, float* %.04, i64 %121
  %123 = load float, float* %.02, align 4
  %124 = fadd float %.01, %123
  %125 = sext i32 %23 to i64
  %126 = getelementptr inbounds float, float* %.02, i64 %125
  br label %44, !llvm.loop !4

127:                                              ; preds = %44
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
  call void @bar(%struct.big* noundef nonnull byval(%struct.big) align 8 %2)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #1 {
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

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
