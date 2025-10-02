; ModuleID = './QRfact.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/QRfact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Givens(double noundef %0, double noundef %1, double* nocapture noundef %2, double* nocapture noundef %3) #0 {
  %5 = fcmp oeq double %1, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store double 1.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %2, align 8
  br label %26

7:                                                ; preds = %4
  %8 = call double @llvm.fabs.f64(double %1)
  %9 = call double @llvm.fabs.f64(double %0)
  %10 = fcmp ogt double %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = fneg double %0
  %13 = fdiv double %12, %1
  %14 = call double @llvm.fmuladd.f64(double %13, double %13, double 1.000000e+00)
  %15 = call double @sqrt(double noundef %14) #5
  %16 = fdiv double 1.000000e+00, %15
  store double %16, double* %2, align 8
  %17 = fmul double %16, %13
  store double %17, double* %3, align 8
  br label %25

18:                                               ; preds = %7
  %19 = fneg double %1
  %20 = fdiv double %19, %0
  %21 = call double @llvm.fmuladd.f64(double %20, double %20, double 1.000000e+00)
  %22 = call double @sqrt(double noundef %21) #5
  %23 = fdiv double 1.000000e+00, %22
  store double %23, double* %3, align 8
  %24 = fmul double %23, %20
  store double %24, double* %2, align 8
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25, %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @sign(double noundef %0) #3 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ -1, %3 ], [ 1, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @ApplyRGivens(double** nocapture noundef readonly %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  br label %6

6:                                                ; preds = %36, %5
  %.0 = phi i32 [ 0, %5 ], [ %37, %36 ]
  %7 = icmp ult i32 %.0, 51
  br i1 %7, label %8, label %38

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds double*, double** %0, i64 %9
  %11 = load double*, double** %10, align 8
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds double, double* %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds double*, double** %0, i64 %15
  %17 = load double*, double** %16, align 8
  %18 = sext i32 %4 to i64
  %19 = getelementptr inbounds double, double* %17, i64 %18
  %20 = load double, double* %19, align 8
  %21 = fneg double %20
  %22 = fmul double %21, %1
  %23 = call double @llvm.fmuladd.f64(double %2, double %14, double %22)
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds double*, double** %0, i64 %24
  %26 = load double*, double** %25, align 8
  %27 = sext i32 %3 to i64
  %28 = getelementptr inbounds double, double* %26, i64 %27
  store double %23, double* %28, align 8
  %29 = fmul double %20, %2
  %30 = call double @llvm.fmuladd.f64(double %1, double %14, double %29)
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds double*, double** %0, i64 %31
  %33 = load double*, double** %32, align 8
  %34 = sext i32 %4 to i64
  %35 = getelementptr inbounds double, double* %33, i64 %34
  store double %30, double* %35, align 8
  br label %36

36:                                               ; preds = %8
  %37 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

38:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @QRiterate(double** noundef readonly %0, double** nocapture noundef readonly %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  br label %5

5:                                                ; preds = %259, %2
  %.02 = phi i32 [ 1, %2 ], [ %.13, %259 ]
  %.01 = phi i32 [ undef, %2 ], [ %.2, %259 ]
  br i1 true, label %6, label %.loopexit

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %51, %6
  %.06 = phi i32 [ 0, %6 ], [ %52, %51 ]
  %8 = icmp ult i32 %.06, 50
  br i1 %8, label %9, label %53

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %.06, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds double*, double** %0, i64 %11
  %13 = load double*, double** %12, align 8
  %14 = zext i32 %.06 to i64
  %15 = getelementptr inbounds double, double* %13, i64 %14
  %16 = load double, double* %15, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = zext i32 %.06 to i64
  %19 = getelementptr inbounds double*, double** %0, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = zext i32 %.06 to i64
  %22 = getelementptr inbounds double, double* %20, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = add nuw nsw i32 %.06, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds double*, double** %0, i64 %26
  %28 = load double*, double** %27, align 8
  %29 = add nuw nsw i32 %.06, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fadd double %24, %33
  %35 = fmul double %34, 1.000000e-10
  %36 = fcmp olt double %17, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %9
  %38 = zext i32 %.06 to i64
  %39 = getelementptr inbounds double*, double** %0, i64 %38
  %40 = load double*, double** %39, align 8
  %41 = add nuw nsw i32 %.06, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  store double 0.000000e+00, double* %43, align 8
  %44 = add nuw nsw i32 %.06, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %0, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = zext i32 %.06 to i64
  %49 = getelementptr inbounds double, double* %47, i64 %48
  store double 0.000000e+00, double* %49, align 8
  br label %50

50:                                               ; preds = %37, %9
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.06, 1
  br label %7, !llvm.loop !6

53:                                               ; preds = %7
  br label %54

54:                                               ; preds = %67, %53
  %.0 = phi i32 [ 50, %53 ], [ %68, %67 ]
  %55 = icmp sgt i32 %.0, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = add nsw i32 %.0, -1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double*, double** %0, i64 %58
  %60 = load double*, double** %59, align 8
  %61 = sext i32 %.0 to i64
  %62 = getelementptr inbounds double, double* %60, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fcmp oeq double %63, 0.000000e+00
  br label %65

65:                                               ; preds = %56, %54
  %66 = phi i1 [ false, %54 ], [ %64, %56 ]
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = add nsw i32 %.0, -1
  br label %54, !llvm.loop !7

69:                                               ; preds = %65
  %70 = icmp eq i32 %.0, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %89

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %86, %72
  %.1 = phi i32 [ %.0, %72 ], [ %87, %86 ]
  %74 = icmp sgt i32 %.1, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = add nsw i32 %.1, -1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double*, double** %0, i64 %77
  %79 = load double*, double** %78, align 8
  %80 = sext i32 %.1 to i64
  %81 = getelementptr inbounds double, double* %79, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fcmp une double %82, 0.000000e+00
  br label %84

84:                                               ; preds = %75, %73
  %85 = phi i1 [ false, %73 ], [ %83, %75 ]
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = add nsw i32 %.1, -1
  br label %73, !llvm.loop !8

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %71
  %.13 = phi i32 [ 0, %71 ], [ %.02, %88 ]
  %.2 = phi i32 [ %.01, %71 ], [ %.1, %88 ]
  %.not = icmp eq i32 %.13, 0
  br i1 %.not, label %90, label %91

90:                                               ; preds = %89
  br label %260

91:                                               ; preds = %89
  %92 = add nsw i32 %.0, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double*, double** %0, i64 %93
  %95 = load double*, double** %94, align 8
  %96 = add nsw i32 %.0, -1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  %100 = sext i32 %.0 to i64
  %101 = getelementptr inbounds double*, double** %0, i64 %100
  %102 = load double*, double** %101, align 8
  %103 = sext i32 %.0 to i64
  %104 = getelementptr inbounds double, double* %102, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fsub double %99, %105
  %107 = fmul double %106, 5.000000e-01
  %108 = sext i32 %.0 to i64
  %109 = getelementptr inbounds double*, double** %0, i64 %108
  %110 = load double*, double** %109, align 8
  %111 = add nsw i32 %.0, -1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %110, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fmul double %114, %114
  %116 = sext i32 %.0 to i64
  %117 = getelementptr inbounds double*, double** %0, i64 %116
  %118 = load double*, double** %117, align 8
  %119 = sext i32 %.0 to i64
  %120 = getelementptr inbounds double, double* %118, i64 %119
  %121 = load double, double* %120, align 8
  %122 = call i32 @sign(double noundef %107)
  %123 = sitofp i32 %122 to double
  %124 = call double @llvm.fmuladd.f64(double %107, double %107, double %115)
  %125 = call double @sqrt(double noundef %124) #5
  %126 = call double @llvm.fmuladd.f64(double %123, double %125, double %107)
  %127 = fdiv double %115, %126
  %128 = fsub double %121, %127
  %129 = sext i32 %.2 to i64
  %130 = getelementptr inbounds double*, double** %0, i64 %129
  %131 = load double*, double** %130, align 8
  %132 = sext i32 %.2 to i64
  %133 = getelementptr inbounds double, double* %131, i64 %132
  %134 = load double, double* %133, align 8
  %135 = fsub double %134, %128
  %136 = add nsw i32 %.2, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double*, double** %0, i64 %137
  %139 = load double*, double** %138, align 8
  %140 = sext i32 %.2 to i64
  %141 = getelementptr inbounds double, double* %139, i64 %140
  %142 = load double, double* %141, align 8
  br label %143

143:                                              ; preds = %257, %91
  %.010 = phi double [ %135, %91 ], [ %.111, %257 ]
  %.08 = phi double [ %142, %91 ], [ %.19, %257 ]
  %.17 = phi i32 [ %.2, %91 ], [ %258, %257 ]
  %144 = icmp slt i32 %.17, %.0
  br i1 %144, label %145, label %259

145:                                              ; preds = %143
  call void @Givens(double noundef %.010, double noundef %.08, double* noundef nonnull %4, double* noundef nonnull %3)
  %146 = add nsw i32 %.17, -1
  %147 = icmp sgt i32 %146, %.2
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = add nsw i32 %.17, -1
  br label %151

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ %.2, %150 ]
  %153 = add nsw i32 %.17, 2
  %154 = icmp slt i32 %.0, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %158

156:                                              ; preds = %151
  %157 = add nsw i32 %.17, 2
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ %.0, %155 ], [ %157, %156 ]
  br label %160

160:                                              ; preds = %195, %158
  %.04 = phi i32 [ %152, %158 ], [ %196, %195 ]
  %.not12 = icmp sgt i32 %.04, %159
  br i1 %.not12, label %197, label %161

161:                                              ; preds = %160
  %162 = sext i32 %.17 to i64
  %163 = getelementptr inbounds double*, double** %0, i64 %162
  %164 = load double*, double** %163, align 8
  %165 = sext i32 %.04 to i64
  %166 = getelementptr inbounds double, double* %164, i64 %165
  %167 = load double, double* %166, align 8
  %168 = add nsw i32 %.17, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double*, double** %0, i64 %169
  %171 = load double*, double** %170, align 8
  %172 = sext i32 %.04 to i64
  %173 = getelementptr inbounds double, double* %171, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load double, double* %3, align 8
  %176 = load double, double* %4, align 8
  %177 = fneg double %176
  %178 = fmul double %174, %177
  %179 = call double @llvm.fmuladd.f64(double %175, double %167, double %178)
  %180 = sext i32 %.17 to i64
  %181 = getelementptr inbounds double*, double** %0, i64 %180
  %182 = load double*, double** %181, align 8
  %183 = sext i32 %.04 to i64
  %184 = getelementptr inbounds double, double* %182, i64 %183
  store double %179, double* %184, align 8
  %185 = load double, double* %4, align 8
  %186 = load double, double* %3, align 8
  %187 = fmul double %186, %174
  %188 = call double @llvm.fmuladd.f64(double %185, double %167, double %187)
  %189 = add nsw i32 %.17, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double*, double** %0, i64 %190
  %192 = load double*, double** %191, align 8
  %193 = sext i32 %.04 to i64
  %194 = getelementptr inbounds double, double* %192, i64 %193
  store double %188, double* %194, align 8
  br label %195

195:                                              ; preds = %161
  %196 = add nsw i32 %.04, 1
  br label %160, !llvm.loop !9

197:                                              ; preds = %160
  br label %198

198:                                              ; preds = %233, %197
  %.15 = phi i32 [ %152, %197 ], [ %234, %233 ]
  %.not13 = icmp sgt i32 %.15, %159
  br i1 %.not13, label %235, label %199

199:                                              ; preds = %198
  %200 = sext i32 %.15 to i64
  %201 = getelementptr inbounds double*, double** %0, i64 %200
  %202 = load double*, double** %201, align 8
  %203 = sext i32 %.17 to i64
  %204 = getelementptr inbounds double, double* %202, i64 %203
  %205 = load double, double* %204, align 8
  %206 = sext i32 %.15 to i64
  %207 = getelementptr inbounds double*, double** %0, i64 %206
  %208 = load double*, double** %207, align 8
  %209 = add nsw i32 %.17, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %208, i64 %210
  %212 = load double, double* %211, align 8
  %213 = load double, double* %3, align 8
  %214 = load double, double* %4, align 8
  %215 = fneg double %214
  %216 = fmul double %212, %215
  %217 = call double @llvm.fmuladd.f64(double %213, double %205, double %216)
  %218 = sext i32 %.15 to i64
  %219 = getelementptr inbounds double*, double** %0, i64 %218
  %220 = load double*, double** %219, align 8
  %221 = sext i32 %.17 to i64
  %222 = getelementptr inbounds double, double* %220, i64 %221
  store double %217, double* %222, align 8
  %223 = load double, double* %4, align 8
  %224 = load double, double* %3, align 8
  %225 = fmul double %224, %212
  %226 = call double @llvm.fmuladd.f64(double %223, double %205, double %225)
  %227 = sext i32 %.15 to i64
  %228 = getelementptr inbounds double*, double** %0, i64 %227
  %229 = load double*, double** %228, align 8
  %230 = add nsw i32 %.17, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %229, i64 %231
  store double %226, double* %232, align 8
  br label %233

233:                                              ; preds = %199
  %234 = add nsw i32 %.15, 1
  br label %198, !llvm.loop !10

235:                                              ; preds = %198
  %236 = load double, double* %4, align 8
  %237 = load double, double* %3, align 8
  %238 = add nsw i32 %.17, 1
  call void @ApplyRGivens(double** noundef %1, double noundef %236, double noundef %237, i32 noundef %.17, i32 noundef %238)
  %239 = add nsw i32 %.0, -1
  %240 = icmp slt i32 %.17, %239
  br i1 %240, label %241, label %256

241:                                              ; preds = %235
  %242 = add nsw i32 %.17, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds double*, double** %0, i64 %243
  %245 = load double*, double** %244, align 8
  %246 = sext i32 %.17 to i64
  %247 = getelementptr inbounds double, double* %245, i64 %246
  %248 = load double, double* %247, align 8
  %249 = add nsw i32 %.17, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double*, double** %0, i64 %250
  %252 = load double*, double** %251, align 8
  %253 = sext i32 %.17 to i64
  %254 = getelementptr inbounds double, double* %252, i64 %253
  %255 = load double, double* %254, align 8
  br label %256

256:                                              ; preds = %241, %235
  %.111 = phi double [ %248, %241 ], [ %.010, %235 ]
  %.19 = phi double [ %255, %241 ], [ %.08, %235 ]
  br label %257

257:                                              ; preds = %256
  %258 = add nsw i32 %.17, 1
  br label %143, !llvm.loop !11

259:                                              ; preds = %143
  br label %5, !llvm.loop !12

.loopexit:                                        ; preds = %5
  br label %260

260:                                              ; preds = %.loopexit, %90
  ret double** undef
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
