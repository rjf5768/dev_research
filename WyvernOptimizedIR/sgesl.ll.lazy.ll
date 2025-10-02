; ModuleID = './sgesl.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgesl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @sgesl(%struct.FULL* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, float* nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %9, label %82

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %43, %9
  %.02 = phi i32 [ 0, %9 ], [ %44, %43 ]
  %.01 = phi i32* [ %1, %9 ], [ %45, %43 ]
  %11 = icmp slt i32 %.02, %7
  br i1 %11, label %12, label %46

12:                                               ; preds = %10
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %13
  %15 = load float*, float** %14, align 8
  %16 = zext i32 %.02 to i64
  %17 = getelementptr inbounds float, float* %15, i64 1
  %18 = load i32, i32* %.01, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %2, i64 %19
  %21 = load float, float* %20, align 4
  %.not = icmp eq i32 %18, %.02
  br i1 %.not, label %30, label %22

22:                                               ; preds = %12
  %23 = zext i32 %.02 to i64
  %24 = getelementptr inbounds float, float* %2, i64 %23
  %25 = load float, float* %24, align 4
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  store float %25, float* %27, align 4
  %28 = zext i32 %.02 to i64
  %29 = getelementptr inbounds float, float* %2, i64 %28
  store float %21, float* %29, align 4
  br label %30

30:                                               ; preds = %22, %12
  %31 = getelementptr inbounds float, float* %17, i64 %16
  br label %32

32:                                               ; preds = %40, %30
  %.010 = phi float* [ %31, %30 ], [ %41, %40 ]
  %.04.in = phi i32 [ %.02, %30 ], [ %.04, %40 ]
  %.04 = add nuw nsw i32 %.04.in, 1
  %33 = icmp slt i32 %.04, %6
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = load float, float* %.010, align 4
  %36 = zext i32 %.04 to i64
  %37 = getelementptr inbounds float, float* %2, i64 %36
  %38 = load float, float* %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %35, float %21, float %38)
  store float %39, float* %37, align 4
  br label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds float, float* %.010, i64 1
  br label %32, !llvm.loop !4

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.02, 1
  %45 = getelementptr inbounds i32, i32* %.01, i64 1
  br label %10, !llvm.loop !6

46:                                               ; preds = %10
  br label %47

47:                                               ; preds = %79, %46
  %.13 = phi i32 [ %7, %46 ], [ %80, %79 ]
  %48 = icmp sgt i32 %.13, -1
  br i1 %48, label %49, label %81

49:                                               ; preds = %47
  %50 = sext i32 %.13 to i64
  %51 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %50
  %52 = load float*, float** %51, align 8
  %53 = sext i32 %.13 to i64
  %54 = getelementptr inbounds float, float* %52, i64 %53
  %55 = load float, float* %54, align 4
  %56 = sext i32 %.13 to i64
  %57 = getelementptr inbounds float, float* %2, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fdiv float %58, %55
  store float %59, float* %57, align 4
  %60 = sext i32 %.13 to i64
  %61 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %60
  %62 = load float*, float** %61, align 8
  br label %63

63:                                               ; preds = %75, %49
  %.012 = phi float* [ %62, %49 ], [ %77, %75 ]
  %.15 = phi i32 [ 0, %49 ], [ %76, %75 ]
  %64 = icmp slt i32 %.15, %.13
  br i1 %64, label %65, label %78

65:                                               ; preds = %63
  %66 = load float, float* %.012, align 4
  %67 = sext i32 %.13 to i64
  %68 = getelementptr inbounds float, float* %2, i64 %67
  %69 = load float, float* %68, align 4
  %70 = zext i32 %.15 to i64
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fneg float %66
  %74 = call float @llvm.fmuladd.f32(float %73, float %69, float %72)
  store float %74, float* %71, align 4
  br label %75

75:                                               ; preds = %65
  %76 = add nuw nsw i32 %.15, 1
  %77 = getelementptr inbounds float, float* %.012, i64 1
  br label %63, !llvm.loop !7

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = add nsw i32 %.13, -1
  br label %47, !llvm.loop !8

81:                                               ; preds = %47
  br label %164

82:                                               ; preds = %4
  br label %83

83:                                               ; preds = %113, %82
  %.2 = phi i32 [ 0, %82 ], [ %114, %113 ]
  %84 = icmp slt i32 %.2, %6
  br i1 %84, label %85, label %115

85:                                               ; preds = %83
  %86 = zext i32 %.2 to i64
  %87 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %86
  %88 = load float*, float** %87, align 8
  %89 = zext i32 %.2 to i64
  %90 = getelementptr inbounds float, float* %88, i64 %89
  %91 = zext i32 %.2 to i64
  %92 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %91
  %93 = load float*, float** %92, align 8
  br label %94

94:                                               ; preds = %97, %85
  %.014 = phi float* [ %2, %85 ], [ %103, %97 ]
  %.113 = phi float* [ %93, %85 ], [ %102, %97 ]
  %.08 = phi float [ 0.000000e+00, %85 ], [ %100, %97 ]
  %.26 = phi i32 [ 0, %85 ], [ %101, %97 ]
  %95 = icmp ult i32 %.26, %.2
  br i1 %95, label %96, label %104

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96
  %98 = load float, float* %.113, align 4
  %99 = load float, float* %.014, align 4
  %100 = call float @llvm.fmuladd.f32(float %98, float %99, float %.08)
  %101 = add nuw nsw i32 %.26, 1
  %102 = getelementptr inbounds float, float* %.113, i64 1
  %103 = getelementptr inbounds float, float* %.014, i64 1
  br label %94, !llvm.loop !9

104:                                              ; preds = %94
  %105 = zext i32 %.2 to i64
  %106 = getelementptr inbounds float, float* %2, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fsub float %107, %.08
  %109 = load float, float* %90, align 4
  %110 = fdiv float %108, %109
  %111 = zext i32 %.2 to i64
  %112 = getelementptr inbounds float, float* %2, i64 %111
  store float %110, float* %112, align 4
  br label %113

113:                                              ; preds = %104
  %114 = add nuw nsw i32 %.2, 1
  br label %83, !llvm.loop !10

115:                                              ; preds = %83
  %116 = add nsw i32 %6, -2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %1, i64 %117
  %119 = add nsw i32 %6, -2
  br label %120

120:                                              ; preds = %160, %115
  %.3 = phi i32 [ %119, %115 ], [ %161, %160 ]
  %.1 = phi i32* [ %118, %115 ], [ %162, %160 ]
  %121 = icmp sgt i32 %.3, -1
  br i1 %121, label %122, label %163

122:                                              ; preds = %120
  %123 = sext i32 %.3 to i64
  %124 = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i64 0, i32 2, i64 %123
  %125 = load float*, float** %124, align 8
  %126 = sext i32 %.3 to i64
  %127 = getelementptr inbounds float, float* %125, i64 1
  %128 = getelementptr inbounds float, float* %127, i64 %126
  %129 = sext i32 %.3 to i64
  %130 = getelementptr inbounds float, float* %2, i64 1
  %131 = getelementptr inbounds float, float* %130, i64 %129
  br label %132

132:                                              ; preds = %135, %122
  %.115 = phi float* [ %131, %122 ], [ %140, %135 ]
  %.111 = phi float* [ %128, %122 ], [ %139, %135 ]
  %.19 = phi float [ 0.000000e+00, %122 ], [ %138, %135 ]
  %.37.in = phi i32 [ %.3, %122 ], [ %.37, %135 ]
  %.37 = add nsw i32 %.37.in, 1
  %133 = icmp slt i32 %.37, %6
  br i1 %133, label %134, label %141

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load float, float* %.111, align 4
  %137 = load float, float* %.115, align 4
  %138 = call float @llvm.fmuladd.f32(float %136, float %137, float %.19)
  %139 = getelementptr inbounds float, float* %.111, i64 1
  %140 = getelementptr inbounds float, float* %.115, i64 1
  br label %132, !llvm.loop !11

141:                                              ; preds = %132
  %142 = sext i32 %.3 to i64
  %143 = getelementptr inbounds float, float* %2, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fadd float %144, %.19
  store float %145, float* %143, align 4
  %146 = load i32, i32* %.1, align 4
  %147 = icmp eq i32 %146, %.3
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %160

149:                                              ; preds = %141
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds float, float* %2, i64 %150
  %152 = load float, float* %151, align 4
  %153 = sext i32 %.3 to i64
  %154 = getelementptr inbounds float, float* %2, i64 %153
  %155 = load float, float* %154, align 4
  %156 = sext i32 %146 to i64
  %157 = getelementptr inbounds float, float* %2, i64 %156
  store float %155, float* %157, align 4
  %158 = sext i32 %.3 to i64
  %159 = getelementptr inbounds float, float* %2, i64 %158
  store float %152, float* %159, align 4
  br label %160

160:                                              ; preds = %149, %148
  %161 = add nsw i32 %.3, -1
  %162 = getelementptr inbounds i32, i32* %.1, i64 -1
  br label %120, !llvm.loop !12

163:                                              ; preds = %120
  br label %164

164:                                              ; preds = %163, %81
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
