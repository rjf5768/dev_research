; ModuleID = './Crystal_Cholesky.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_Cholesky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Crystal_Cholesky(i32 noundef %0, double* nocapture noundef %1, double* nocapture noundef readonly %2, double* nocapture noundef %3) #0 {
  br label %5

5:                                                ; preds = %13, %4
  %.05 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %.05, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = zext i32 %.05 to i64
  %9 = getelementptr inbounds double, double* %2, i64 %8
  %10 = load double, double* %9, align 8
  %11 = zext i32 %.05 to i64
  %12 = getelementptr inbounds double, double* %3, i64 %11
  store double %10, double* %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %.05, 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %28, %15
  %.16 = phi i32 [ 1, %15 ], [ %29, %28 ]
  %17 = icmp slt i32 %.16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = zext i32 %.16 to i64
  %20 = mul nuw nsw i64 %19, 12
  %21 = getelementptr inbounds double, double* %1, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double, double* %1, align 8
  %24 = fdiv double %22, %23
  %25 = zext i32 %.16 to i64
  %26 = mul nuw nsw i64 %25, 12
  %27 = getelementptr inbounds double, double* %1, i64 %26
  store double %24, double* %27, align 8
  br label %28

28:                                               ; preds = %18
  %29 = add nuw nsw i32 %.16, 1
  br label %16, !llvm.loop !6

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %139, %30
  %.27 = phi i32 [ 1, %30 ], [ %140, %139 ]
  %32 = icmp slt i32 %.27, %0
  br i1 %32, label %33, label %141

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %37, %33
  %.01 = phi i32 [ 0, %33 ], [ %51, %37 ]
  %.0 = phi double [ 0.000000e+00, %33 ], [ %50, %37 ]
  %35 = icmp ult i32 %.01, %.27
  br i1 %35, label %36, label %52

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = zext i32 %.27 to i64
  %39 = mul nuw nsw i64 %38, 12
  %40 = getelementptr inbounds double, double* %1, i64 %39
  %41 = zext i32 %.01 to i64
  %42 = getelementptr inbounds double, double* %40, i64 %41
  %43 = load double, double* %42, align 8
  %44 = zext i32 %.01 to i64
  %45 = mul nuw nsw i64 %44, 12
  %46 = getelementptr inbounds double, double* %1, i64 %45
  %47 = zext i32 %.27 to i64
  %48 = getelementptr inbounds double, double* %46, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call double @llvm.fmuladd.f64(double %43, double %49, double %.0)
  %51 = add nuw nsw i32 %.01, 1
  br label %34, !llvm.loop !7

52:                                               ; preds = %34
  %53 = zext i32 %.27 to i64
  %54 = mul nuw nsw i64 %53, 12
  %55 = getelementptr inbounds double, double* %1, i64 %54
  %56 = zext i32 %.27 to i64
  %57 = getelementptr inbounds double, double* %55, i64 %56
  %58 = load double, double* %57, align 8
  %59 = fsub double %58, %.0
  %60 = zext i32 %.27 to i64
  %61 = mul nuw nsw i64 %60, 12
  %62 = getelementptr inbounds double, double* %1, i64 %61
  %63 = zext i32 %.27 to i64
  %64 = getelementptr inbounds double, double* %62, i64 %63
  store double %59, double* %64, align 8
  br label %65

65:                                               ; preds = %137, %52
  %.04.in = phi i32 [ %.27, %52 ], [ %.04, %137 ]
  %.04 = add nuw nsw i32 %.04.in, 1
  %66 = icmp slt i32 %.04, %0
  br i1 %66, label %67, label %138

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %71, %67
  %.12 = phi i32 [ 0, %67 ], [ %85, %71 ]
  %.1 = phi double [ 0.000000e+00, %67 ], [ %84, %71 ]
  %69 = icmp ult i32 %.12, %.27
  br i1 %69, label %70, label %86

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = zext i32 %.27 to i64
  %73 = mul nuw nsw i64 %72, 12
  %74 = getelementptr inbounds double, double* %1, i64 %73
  %75 = zext i32 %.12 to i64
  %76 = getelementptr inbounds double, double* %74, i64 %75
  %77 = load double, double* %76, align 8
  %78 = zext i32 %.12 to i64
  %79 = mul nuw nsw i64 %78, 12
  %80 = getelementptr inbounds double, double* %1, i64 %79
  %81 = zext i32 %.04 to i64
  %82 = getelementptr inbounds double, double* %80, i64 %81
  %83 = load double, double* %82, align 8
  %84 = call double @llvm.fmuladd.f64(double %77, double %83, double %.1)
  %85 = add nuw nsw i32 %.12, 1
  br label %68, !llvm.loop !8

86:                                               ; preds = %68
  %87 = zext i32 %.27 to i64
  %88 = mul nuw nsw i64 %87, 12
  %89 = getelementptr inbounds double, double* %1, i64 %88
  %90 = zext i32 %.04 to i64
  %91 = getelementptr inbounds double, double* %89, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fsub double %92, %.1
  %94 = zext i32 %.27 to i64
  %95 = mul nuw nsw i64 %94, 12
  %96 = getelementptr inbounds double, double* %1, i64 %95
  %97 = zext i32 %.04 to i64
  %98 = getelementptr inbounds double, double* %96, i64 %97
  store double %93, double* %98, align 8
  br label %99

99:                                               ; preds = %102, %86
  %.23 = phi i32 [ 0, %86 ], [ %116, %102 ]
  %.2 = phi double [ 0.000000e+00, %86 ], [ %115, %102 ]
  %100 = icmp ult i32 %.23, %.27
  br i1 %100, label %101, label %117

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101
  %103 = zext i32 %.04 to i64
  %104 = mul nuw nsw i64 %103, 12
  %105 = getelementptr inbounds double, double* %1, i64 %104
  %106 = zext i32 %.23 to i64
  %107 = getelementptr inbounds double, double* %105, i64 %106
  %108 = load double, double* %107, align 8
  %109 = zext i32 %.23 to i64
  %110 = mul nuw nsw i64 %109, 12
  %111 = getelementptr inbounds double, double* %1, i64 %110
  %112 = zext i32 %.27 to i64
  %113 = getelementptr inbounds double, double* %111, i64 %112
  %114 = load double, double* %113, align 8
  %115 = call double @llvm.fmuladd.f64(double %108, double %114, double %.2)
  %116 = add nuw nsw i32 %.23, 1
  br label %99, !llvm.loop !9

117:                                              ; preds = %99
  %118 = zext i32 %.04 to i64
  %119 = mul nuw nsw i64 %118, 12
  %120 = getelementptr inbounds double, double* %1, i64 %119
  %121 = zext i32 %.27 to i64
  %122 = getelementptr inbounds double, double* %120, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fsub double %123, %.2
  %125 = zext i32 %.27 to i64
  %126 = mul nuw nsw i64 %125, 12
  %127 = getelementptr inbounds double, double* %1, i64 %126
  %128 = zext i32 %.27 to i64
  %129 = getelementptr inbounds double, double* %127, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fdiv double %124, %130
  %132 = zext i32 %.04 to i64
  %133 = mul nuw nsw i64 %132, 12
  %134 = getelementptr inbounds double, double* %1, i64 %133
  %135 = zext i32 %.27 to i64
  %136 = getelementptr inbounds double, double* %134, i64 %135
  store double %131, double* %136, align 8
  br label %137

137:                                              ; preds = %117
  br label %65, !llvm.loop !10

138:                                              ; preds = %65
  br label %139

139:                                              ; preds = %138
  %140 = add nuw nsw i32 %.27, 1
  br label %31, !llvm.loop !11

141:                                              ; preds = %31
  br label %142

142:                                              ; preds = %167, %141
  %.38 = phi i32 [ 1, %141 ], [ %168, %167 ]
  %143 = icmp slt i32 %.38, %0
  br i1 %143, label %144, label %169

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %164, %144
  %.3 = phi i32 [ 0, %144 ], [ %165, %164 ]
  %146 = icmp ult i32 %.3, %.38
  br i1 %146, label %147, label %166

147:                                              ; preds = %145
  %148 = zext i32 %.38 to i64
  %149 = getelementptr inbounds double, double* %3, i64 %148
  %150 = load double, double* %149, align 8
  %151 = zext i32 %.38 to i64
  %152 = mul nuw nsw i64 %151, 12
  %153 = getelementptr inbounds double, double* %1, i64 %152
  %154 = zext i32 %.3 to i64
  %155 = getelementptr inbounds double, double* %153, i64 %154
  %156 = load double, double* %155, align 8
  %157 = zext i32 %.3 to i64
  %158 = getelementptr inbounds double, double* %3, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fneg double %156
  %161 = call double @llvm.fmuladd.f64(double %160, double %159, double %150)
  %162 = zext i32 %.38 to i64
  %163 = getelementptr inbounds double, double* %3, i64 %162
  store double %161, double* %163, align 8
  br label %164

164:                                              ; preds = %147
  %165 = add nuw nsw i32 %.3, 1
  br label %145, !llvm.loop !12

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166
  %168 = add nuw nsw i32 %.38, 1
  br label %142, !llvm.loop !13

169:                                              ; preds = %142
  %170 = add nsw i32 %0, -1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %3, i64 %171
  %173 = load double, double* %172, align 8
  %174 = add nsw i32 %0, -1
  %175 = sext i32 %174 to i64
  %176 = mul nsw i64 %175, 12
  %177 = getelementptr inbounds double, double* %1, i64 %176
  %178 = add nsw i32 %0, -1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fdiv double %173, %181
  %183 = add nsw i32 %0, -1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %3, i64 %184
  store double %182, double* %185, align 8
  %186 = add nsw i32 %0, -2
  br label %187

187:                                              ; preds = %223, %169
  %.49 = phi i32 [ %186, %169 ], [ %224, %223 ]
  %188 = icmp sgt i32 %.49, -1
  br i1 %188, label %189, label %225

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %209, %189
  %.4.in = phi i32 [ %.49, %189 ], [ %.4, %209 ]
  %.4 = add nsw i32 %.4.in, 1
  %191 = icmp slt i32 %.4, %0
  br i1 %191, label %192, label %210

192:                                              ; preds = %190
  %193 = sext i32 %.49 to i64
  %194 = getelementptr inbounds double, double* %3, i64 %193
  %195 = load double, double* %194, align 8
  %196 = sext i32 %.49 to i64
  %197 = mul nsw i64 %196, 12
  %198 = getelementptr inbounds double, double* %1, i64 %197
  %199 = sext i32 %.4 to i64
  %200 = getelementptr inbounds double, double* %198, i64 %199
  %201 = load double, double* %200, align 8
  %202 = sext i32 %.4 to i64
  %203 = getelementptr inbounds double, double* %3, i64 %202
  %204 = load double, double* %203, align 8
  %205 = fneg double %201
  %206 = call double @llvm.fmuladd.f64(double %205, double %204, double %195)
  %207 = sext i32 %.49 to i64
  %208 = getelementptr inbounds double, double* %3, i64 %207
  store double %206, double* %208, align 8
  br label %209

209:                                              ; preds = %192
  br label %190, !llvm.loop !14

210:                                              ; preds = %190
  %211 = sext i32 %.49 to i64
  %212 = getelementptr inbounds double, double* %3, i64 %211
  %213 = load double, double* %212, align 8
  %214 = sext i32 %.49 to i64
  %215 = mul nsw i64 %214, 12
  %216 = getelementptr inbounds double, double* %1, i64 %215
  %217 = sext i32 %.49 to i64
  %218 = getelementptr inbounds double, double* %216, i64 %217
  %219 = load double, double* %218, align 8
  %220 = fdiv double %213, %219
  %221 = sext i32 %.49 to i64
  %222 = getelementptr inbounds double, double* %3, i64 %221
  store double %220, double* %222, align 8
  br label %223

223:                                              ; preds = %210
  %224 = add nsw i32 %.49, -1
  br label %187, !llvm.loop !15

225:                                              ; preds = %187
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
