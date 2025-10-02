; ModuleID = './sgefa.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgefa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sgefa(%struct.FULL* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %4, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  br label %109

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 0
  %13 = load float*, float** %12, align 8
  %14 = icmp slt i32 %10, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %104

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %100, %16
  %.011 = phi i32 [ 0, %16 ], [ %.112, %100 ]
  %.09 = phi float* [ %13, %16 ], [ %24, %100 ]
  %.07 = phi i32 [ 0, %16 ], [ %101, %100 ]
  %.02 = phi i32* [ %1, %16 ], [ %102, %100 ]
  %18 = icmp slt i32 %.07, %11
  br i1 %18, label %19, label %103

19:                                               ; preds = %17
  %20 = zext i32 %.07 to i64
  %21 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %20
  %22 = load float*, float** %21, align 8
  %23 = zext i32 %.07 to i64
  %24 = getelementptr inbounds float, float* %22, i64 %23
  %25 = sub nsw i32 %10, %.07
  %26 = call i32 (i32, float*, i32, ...) bitcast (i32 (...)* @isamax to i32 (i32, float*, i32, ...)*)(i32 noundef %25, float* noundef %24, i32 noundef 1) #3
  %27 = add nsw i32 %26, %.07
  store i32 %27, i32* %.02, align 4
  %28 = zext i32 %.07 to i64
  %29 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %28
  %30 = load float*, float** %29, align 8
  %31 = sext i32 %27 to i64
  %32 = getelementptr inbounds float, float* %30, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %100

36:                                               ; preds = %19
  %.not14 = icmp eq i32 %26, 0
  br i1 %.not14, label %40, label %37

37:                                               ; preds = %36
  %38 = load float, float* %32, align 4
  %39 = load float, float* %24, align 4
  store float %39, float* %32, align 4
  store float %38, float* %24, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load float, float* %24, align 4
  %42 = fdiv float -1.000000e+00, %41
  br label %43

43:                                               ; preds = %48, %40
  %.04.in = phi i32 [ %.07, %40 ], [ %.04, %48 ]
  %.pn16 = phi float* [ %24, %40 ], [ %.01, %48 ]
  %.01 = getelementptr inbounds float, float* %.pn16, i64 1
  %.04 = add nuw nsw i32 %.04.in, 1
  %44 = icmp slt i32 %.04, %10
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load float, float* %.01, align 4
  %47 = fmul float %46, %42
  store float %47, float* %.01, align 4
  br label %48

48:                                               ; preds = %45
  br label %43, !llvm.loop !4

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %98, %49
  %.06.in = phi i32 [ %.07, %49 ], [ %.06, %98 ]
  %.06 = add nuw nsw i32 %.06.in, 1
  %51 = icmp slt i32 %.06, %10
  br i1 %51, label %52, label %99

52:                                               ; preds = %50
  %53 = zext i32 %.06 to i64
  %54 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %53
  %55 = load float*, float** %54, align 8
  %56 = zext i32 %.07 to i64
  %57 = getelementptr inbounds float, float* %55, i64 %56
  %58 = load float, float* %57, align 4
  %.not15 = icmp eq i32 %26, 0
  br i1 %.not15, label %82, label %59

59:                                               ; preds = %52
  %60 = zext i32 %.06 to i64
  %61 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = sext i32 %27 to i64
  %64 = getelementptr inbounds float, float* %62, i64 %63
  %65 = load float, float* %64, align 4
  %66 = zext i32 %.06 to i64
  %67 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = zext i32 %.07 to i64
  %70 = getelementptr inbounds float, float* %68, i64 %69
  store float %65, float* %70, align 4
  %71 = zext i32 %.06 to i64
  %72 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %71
  %73 = load float*, float** %72, align 8
  %74 = sext i32 %27 to i64
  %75 = getelementptr inbounds float, float* %73, i64 %74
  store float %58, float* %75, align 4
  %76 = zext i32 %.06 to i64
  %77 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %76
  %78 = load float*, float** %77, align 8
  %79 = zext i32 %.07 to i64
  %80 = getelementptr inbounds float, float* %78, i64 %79
  %81 = load float, float* %80, align 4
  br label %82

82:                                               ; preds = %59, %52
  %.013 = phi float [ %81, %59 ], [ %58, %52 ]
  %83 = zext i32 %.06 to i64
  %84 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = zext i32 %.07 to i64
  %87 = getelementptr inbounds float, float* %85, i64 1
  %88 = getelementptr inbounds float, float* %87, i64 %86
  br label %89

89:                                               ; preds = %95, %82
  %.08 = phi float* [ %88, %82 ], [ %96, %95 ]
  %.15.in = phi i32 [ %.07, %82 ], [ %.15, %95 ]
  %.pn = phi float* [ %24, %82 ], [ %.1, %95 ]
  %.1 = getelementptr inbounds float, float* %.pn, i64 1
  %.15 = add nuw nsw i32 %.15.in, 1
  %90 = icmp slt i32 %.15, %10
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = load float, float* %.1, align 4
  %93 = load float, float* %.08, align 4
  %94 = call float @llvm.fmuladd.f32(float %.013, float %92, float %93)
  store float %94, float* %.08, align 4
  br label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds float, float* %.08, i64 1
  br label %89, !llvm.loop !6

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97
  br label %50, !llvm.loop !7

99:                                               ; preds = %50
  br label %100

100:                                              ; preds = %99, %35
  %.112 = phi i32 [ %.07, %35 ], [ %.011, %99 ]
  %101 = add nuw nsw i32 %.07, 1
  %102 = getelementptr inbounds i32, i32* %.02, i64 1
  br label %17, !llvm.loop !8

103:                                              ; preds = %17
  br label %104

104:                                              ; preds = %103, %15
  %.2 = phi i32 [ 0, %15 ], [ %.011, %103 ]
  %.110 = phi float* [ %13, %15 ], [ %.09, %103 ]
  %.13 = phi i32* [ %1, %15 ], [ %.02, %103 ]
  store i32 %11, i32* %.13, align 4
  %105 = load float, float* %.110, align 4
  %106 = fcmp oeq float %105, 0.000000e+00
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %104
  %.3 = phi i32 [ %10, %107 ], [ %.2, %104 ]
  br label %109

109:                                              ; preds = %108, %7
  %.0 = phi i32 [ -1, %7 ], [ %.3, %108 ]
  ret i32 %.0
}

declare dso_local i32 @isamax(...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

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
