; ModuleID = './relax.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* nocapture noundef readonly %0, %struct.hypre_Vector* nocapture noundef readonly %1, %struct.hypre_Vector* nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 0
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %1, i64 0, i32 0
  %15 = load double*, double** %14, align 8
  %16 = call i8* @hypre_CAlloc(i32 noundef %11, i32 noundef 8) #3
  %17 = bitcast i8* %16 to double*
  br label %18

18:                                               ; preds = %26, %3
  %.04 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %19 = icmp slt i32 %.04, %11
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = zext i32 %.04 to i64
  %22 = getelementptr inbounds double, double* %13, i64 %21
  %23 = load double, double* %22, align 8
  %24 = zext i32 %.04 to i64
  %25 = getelementptr inbounds double, double* %17, i64 %24
  store double %23, double* %25, align 8
  br label %26

26:                                               ; preds = %20
  %27 = add nuw nsw i32 %.04, 1
  br label %18, !llvm.loop !4

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %101, %28
  %.03 = phi i32 [ 0, %28 ], [ %102, %101 ]
  %30 = icmp eq i32 %.03, 0
  br i1 %30, label %31, label %103

31:                                               ; preds = %29
  br i1 false, label %32, label %33

32:                                               ; preds = %31
  br label %37

33:                                               ; preds = %31
  %34 = mul nsw i32 %.03, %11
  %35 = add nuw nsw i32 %.03, 1
  %36 = mul nsw i32 %35, %11
  br label %37

37:                                               ; preds = %33, %32
  %.01 = phi i32 [ undef, %32 ], [ %34, %33 ]
  %.0 = phi i32 [ undef, %32 ], [ %36, %33 ]
  br label %38

38:                                               ; preds = %98, %37
  %.1 = phi i32 [ %.01, %37 ], [ %99, %98 ]
  %39 = icmp slt i32 %.1, %.0
  br i1 %39, label %40, label %100

40:                                               ; preds = %38
  %41 = sext i32 %.1 to i64
  %42 = getelementptr inbounds i32, i32* %7, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %5, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %46, 0.000000e+00
  br i1 %47, label %48, label %97

48:                                               ; preds = %40
  %49 = sext i32 %.1 to i64
  %50 = getelementptr inbounds double, double* %15, i64 %49
  %51 = load double, double* %50, align 8
  %52 = sext i32 %.1 to i64
  %53 = getelementptr inbounds i32, i32* %7, i64 %52
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %86, %48
  %.05 = phi double [ %51, %48 ], [ %.16, %86 ]
  %.02.in = phi i32 [ %54, %48 ], [ %.02, %86 ]
  %.02 = add nsw i32 %.02.in, 1
  %56 = add nsw i32 %.1, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %7, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %.02, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = sext i32 %.02 to i64
  %63 = getelementptr inbounds i32, i32* %9, i64 %62
  %64 = load i32, i32* %63, align 4
  %.not = icmp slt i32 %64, %.01
  br i1 %.not, label %76, label %65

65:                                               ; preds = %61
  %66 = icmp slt i32 %64, %.0
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = sext i32 %.02 to i64
  %69 = getelementptr inbounds double, double* %5, i64 %68
  %70 = load double, double* %69, align 8
  %71 = sext i32 %64 to i64
  %72 = getelementptr inbounds double, double* %13, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fneg double %70
  %75 = call double @llvm.fmuladd.f64(double %74, double %73, double %.05)
  br label %85

76:                                               ; preds = %65, %61
  %77 = sext i32 %.02 to i64
  %78 = getelementptr inbounds double, double* %5, i64 %77
  %79 = load double, double* %78, align 8
  %80 = sext i32 %64 to i64
  %81 = getelementptr inbounds double, double* %17, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fneg double %79
  %84 = call double @llvm.fmuladd.f64(double %83, double %82, double %.05)
  br label %85

85:                                               ; preds = %76, %67
  %.16 = phi double [ %75, %67 ], [ %84, %76 ]
  br label %86

86:                                               ; preds = %85
  br label %55, !llvm.loop !6

87:                                               ; preds = %55
  %88 = sext i32 %.1 to i64
  %89 = getelementptr inbounds i32, i32* %7, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %5, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fdiv double %.05, %93
  %95 = sext i32 %.1 to i64
  %96 = getelementptr inbounds double, double* %13, i64 %95
  store double %94, double* %96, align 8
  br label %97

97:                                               ; preds = %87, %40
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %.1, 1
  br label %38, !llvm.loop !7

100:                                              ; preds = %38
  br label %101

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %.03, 1
  br label %29, !llvm.loop !8

103:                                              ; preds = %29
  call void @hypre_Free(i8* noundef %16) #3
  ret i32 0
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local void @hypre_Free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
