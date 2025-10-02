; ModuleID = './backpropKernel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/backprop/backpropKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @bpnn_train_kernel(i32 noundef %0, i32 noundef %1, i32 noundef %2, float* noalias nocapture noundef nonnull align 4 %3, float* noalias nocapture noundef nonnull align 4 %4, float* noalias nocapture noundef nonnull align 4 %5, float* noalias nocapture noundef nonnull readonly align 4 %6, float* noalias nocapture noundef nonnull align 4 %7, float* noalias nocapture noundef nonnull readonly align 4 %8, float* noalias nocapture noundef nonnull align 4 %9, float* noalias nocapture noundef nonnull align 4 %10, float* noalias nocapture noundef nonnull align 4 %11, float* noalias nocapture noundef nonnull align 4 %12, i32 noundef %13) #0 {
  %15 = add nsw i32 %1, 1
  %16 = zext i32 %15 to i64
  %17 = add nsw i32 %2, 1
  %18 = zext i32 %17 to i64
  %19 = add nsw i32 %1, 1
  %20 = zext i32 %19 to i64
  %21 = add nsw i32 %2, 1
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %192, %14
  %.08 = phi float [ 0.000000e+00, %14 ], [ %.19, %192 ]
  %.07 = phi i32 [ 0, %14 ], [ %193, %192 ]
  %24 = icmp slt i32 %.07, %13
  br i1 %24, label %25, label %194

25:                                               ; preds = %23
  store float 1.000000e+00, float* %3, align 4
  br label %26

26:                                               ; preds = %52, %25
  %.01 = phi i32 [ 1, %25 ], [ %53, %52 ]
  %.not = icmp sgt i32 %.01, %1
  br i1 %.not, label %54, label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %30, %27
  %.05 = phi double [ 0.000000e+00, %27 ], [ %42, %30 ]
  %.0 = phi i32 [ 0, %27 ], [ %43, %30 ]
  %.not17 = icmp sgt i32 %.0, %0
  br i1 %.not17, label %44, label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = zext i32 %.0 to i64
  %32 = mul nuw nsw i64 %31, %16
  %33 = getelementptr inbounds float, float* %9, i64 %32
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds float, float* %33, i64 %34
  %36 = load float, float* %35, align 4
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds float, float* %3, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fmul float %36, %39
  %41 = fpext float %40 to double
  %42 = fadd double %.05, %41
  %43 = add nuw nsw i32 %.0, 1
  br label %28, !llvm.loop !4

44:                                               ; preds = %28
  %45 = fneg double %.05
  %46 = call double @exp(double noundef %45) #4
  %47 = fadd double %46, 1.000000e+00
  %48 = fdiv double 1.000000e+00, %47
  %49 = fptrunc double %48 to float
  %50 = zext i32 %.01 to i64
  %51 = getelementptr inbounds float, float* %4, i64 %50
  store float %49, float* %51, align 4
  br label %52

52:                                               ; preds = %44
  %53 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !6

54:                                               ; preds = %26
  store float 1.000000e+00, float* %4, align 4
  br label %55

55:                                               ; preds = %81, %54
  %.12 = phi i32 [ 1, %54 ], [ %82, %81 ]
  %.not10 = icmp sgt i32 %.12, %2
  br i1 %.not10, label %83, label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %59, %56
  %.16 = phi double [ 0.000000e+00, %56 ], [ %71, %59 ]
  %.1 = phi i32 [ 0, %56 ], [ %72, %59 ]
  %.not16 = icmp sgt i32 %.1, %1
  br i1 %.not16, label %73, label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = zext i32 %.1 to i64
  %61 = mul nuw nsw i64 %60, %18
  %62 = getelementptr inbounds float, float* %10, i64 %61
  %63 = zext i32 %.12 to i64
  %64 = getelementptr inbounds float, float* %62, i64 %63
  %65 = load float, float* %64, align 4
  %66 = zext i32 %.1 to i64
  %67 = getelementptr inbounds float, float* %4, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = fpext float %69 to double
  %71 = fadd double %.16, %70
  %72 = add nuw nsw i32 %.1, 1
  br label %57, !llvm.loop !7

73:                                               ; preds = %57
  %74 = fneg double %.16
  %75 = call double @exp(double noundef %74) #4
  %76 = fadd double %75, 1.000000e+00
  %77 = fdiv double 1.000000e+00, %76
  %78 = fptrunc double %77 to float
  %79 = zext i32 %.12 to i64
  %80 = getelementptr inbounds float, float* %5, i64 %79
  store float %78, float* %80, align 4
  br label %81

81:                                               ; preds = %73
  %82 = add nuw nsw i32 %.12, 1
  br label %55, !llvm.loop !8

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %102, %83
  %.19 = phi float [ 0.000000e+00, %83 ], [ %107, %102 ]
  %.23 = phi i32 [ 1, %83 ], [ %108, %102 ]
  %.not11 = icmp sgt i32 %.23, %2
  br i1 %.not11, label %109, label %85

85:                                               ; preds = %84
  %86 = zext i32 %.23 to i64
  %87 = getelementptr inbounds float, float* %5, i64 %86
  %88 = load float, float* %87, align 4
  %89 = zext i32 %.23 to i64
  %90 = getelementptr inbounds float, float* %8, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fpext float %88 to double
  %93 = fpext float %88 to double
  %94 = fsub double 1.000000e+00, %93
  %95 = fmul double %94, %92
  %96 = fsub float %91, %88
  %97 = fpext float %96 to double
  %98 = fmul double %95, %97
  %99 = fptrunc double %98 to float
  %100 = zext i32 %.23 to i64
  %101 = getelementptr inbounds float, float* %7, i64 %100
  store float %99, float* %101, align 4
  br label %102

102:                                              ; preds = %85
  %103 = zext i32 %.23 to i64
  %104 = getelementptr inbounds float, float* %7, i64 %103
  %105 = load float, float* %104, align 4
  %106 = call float @llvm.fabs.f32(float %105)
  %107 = fadd float %.19, %106
  %108 = add nuw nsw i32 %.23, 1
  br label %84, !llvm.loop !9

109:                                              ; preds = %84
  store float 1.000000e+00, float* %4, align 4
  br label %110

110:                                              ; preds = %148, %109
  %.34 = phi i32 [ 1, %109 ], [ %149, %148 ]
  %.not12 = icmp sgt i32 %.34, %2
  br i1 %.not12, label %150, label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %145, %111
  %.2 = phi i32 [ 0, %111 ], [ %146, %145 ]
  %.not15 = icmp sgt i32 %.2, %1
  br i1 %.not15, label %147, label %113

113:                                              ; preds = %112
  %114 = zext i32 %.34 to i64
  %115 = getelementptr inbounds float, float* %7, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fpext float %116 to double
  %118 = fmul double %117, 3.000000e-01
  %119 = zext i32 %.2 to i64
  %120 = getelementptr inbounds float, float* %4, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = zext i32 %.2 to i64
  %124 = mul nuw nsw i64 %123, %22
  %125 = getelementptr inbounds float, float* %12, i64 %124
  %126 = zext i32 %.34 to i64
  %127 = getelementptr inbounds float, float* %125, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fpext float %128 to double
  %130 = fmul double %129, 3.000000e-01
  %131 = call double @llvm.fmuladd.f64(double %118, double %122, double %130)
  %132 = fptrunc double %131 to float
  %133 = zext i32 %.2 to i64
  %134 = mul nuw nsw i64 %133, %18
  %135 = getelementptr inbounds float, float* %10, i64 %134
  %136 = zext i32 %.34 to i64
  %137 = getelementptr inbounds float, float* %135, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fadd float %138, %132
  store float %139, float* %137, align 4
  %140 = zext i32 %.2 to i64
  %141 = mul nuw nsw i64 %140, %22
  %142 = getelementptr inbounds float, float* %12, i64 %141
  %143 = zext i32 %.34 to i64
  %144 = getelementptr inbounds float, float* %142, i64 %143
  store float %132, float* %144, align 4
  br label %145

145:                                              ; preds = %113
  %146 = add nuw nsw i32 %.2, 1
  br label %112, !llvm.loop !10

147:                                              ; preds = %112
  br label %148

148:                                              ; preds = %147
  %149 = add nuw nsw i32 %.34, 1
  br label %110, !llvm.loop !11

150:                                              ; preds = %110
  store float 1.000000e+00, float* %3, align 4
  br label %151

151:                                              ; preds = %189, %150
  %.4 = phi i32 [ 1, %150 ], [ %190, %189 ]
  %.not13 = icmp sgt i32 %.4, %1
  br i1 %.not13, label %191, label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %186, %152
  %.3 = phi i32 [ 0, %152 ], [ %187, %186 ]
  %.not14 = icmp sgt i32 %.3, %0
  br i1 %.not14, label %188, label %154

154:                                              ; preds = %153
  %155 = zext i32 %.4 to i64
  %156 = getelementptr inbounds float, float* %6, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fpext float %157 to double
  %159 = fmul double %158, 3.000000e-01
  %160 = zext i32 %.3 to i64
  %161 = getelementptr inbounds float, float* %3, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fpext float %162 to double
  %164 = zext i32 %.3 to i64
  %165 = mul nuw nsw i64 %164, %20
  %166 = getelementptr inbounds float, float* %11, i64 %165
  %167 = zext i32 %.4 to i64
  %168 = getelementptr inbounds float, float* %166, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fpext float %169 to double
  %171 = fmul double %170, 3.000000e-01
  %172 = call double @llvm.fmuladd.f64(double %159, double %163, double %171)
  %173 = fptrunc double %172 to float
  %174 = zext i32 %.3 to i64
  %175 = mul nuw nsw i64 %174, %16
  %176 = getelementptr inbounds float, float* %9, i64 %175
  %177 = zext i32 %.4 to i64
  %178 = getelementptr inbounds float, float* %176, i64 %177
  %179 = load float, float* %178, align 4
  %180 = fadd float %179, %173
  store float %180, float* %178, align 4
  %181 = zext i32 %.3 to i64
  %182 = mul nuw nsw i64 %181, %20
  %183 = getelementptr inbounds float, float* %11, i64 %182
  %184 = zext i32 %.4 to i64
  %185 = getelementptr inbounds float, float* %183, i64 %184
  store float %173, float* %185, align 4
  br label %186

186:                                              ; preds = %154
  %187 = add nuw nsw i32 %.3, 1
  br label %153, !llvm.loop !12

188:                                              ; preds = %153
  br label %189

189:                                              ; preds = %188
  %190 = add nuw nsw i32 %.4, 1
  br label %151, !llvm.loop !13

191:                                              ; preds = %151
  br label %192

192:                                              ; preds = %191
  %193 = add nuw nsw i32 %.07, 1
  br label %23, !llvm.loop !14

194:                                              ; preds = %23
  ret float %.08
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
