; ModuleID = './bicubicKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bicubicKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @bicubicKernel(i32 noundef %0, i32 noundef %1, [256 x i32]* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x double], align 16
  %7 = shl nsw i32 %1, 2
  %8 = zext i32 %7 to i64
  %9 = shl nsw i32 %0, 2
  %10 = shl nsw i32 %1, 2
  br label %11

11:                                               ; preds = %222, %4
  %.03 = phi i32 [ 0, %4 ], [ %223, %222 ]
  %12 = add nsw i32 %9, -12
  %13 = icmp slt i32 %.03, %12
  br i1 %13, label %14, label %224

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %219, %14
  %.02 = phi i32 [ 0, %14 ], [ %220, %219 ]
  %16 = add nsw i32 %10, -12
  %17 = icmp slt i32 %.02, %16
  br i1 %17, label %18, label %221

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %40, %18
  %.01 = phi i32 [ 0, %18 ], [ %41, %40 ]
  %20 = icmp ult i32 %.01, 4
  br i1 %20, label %21, label %42

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %37, %21
  %.0 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %23 = icmp ult i32 %.0, 4
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = lshr i32 %.03, 2
  %26 = add nuw nsw i32 %25, %.01
  %27 = zext i32 %26 to i64
  %28 = lshr i32 %.02, 2
  %29 = add nuw nsw i32 %28, %.0
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sitofp i32 %32 to double
  %34 = zext i32 %.01 to i64
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 %34, i64 %35
  store double %33, double* %36, align 8
  br label %37

37:                                               ; preds = %24
  %38 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !4

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !6

42:                                               ; preds = %19
  %43 = and i32 %.03, 3
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 2.500000e-01
  %46 = and i32 %.02, 3
  %47 = sitofp i32 %46 to double
  %48 = fmul double %47, 2.500000e-01
  %49 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 1
  %50 = load double, double* %49, align 8
  %51 = fmul double %48, 5.000000e-01
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 2
  %53 = load double, double* %52, align 16
  %54 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 0
  %55 = load double, double* %54, align 16
  %56 = fsub double %53, %55
  %57 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = fmul double %58, -5.000000e+00
  %60 = call double @llvm.fmuladd.f64(double %55, double 2.000000e+00, double %59)
  %61 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 2
  %62 = load double, double* %61, align 16
  %63 = call double @llvm.fmuladd.f64(double %62, double 4.000000e+00, double %60)
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 3
  %65 = load double, double* %64, align 8
  %66 = fsub double %63, %65
  %67 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 1
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 2
  %70 = load double, double* %69, align 16
  %71 = fsub double %68, %70
  %72 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 3
  %73 = load double, double* %72, align 8
  %74 = call double @llvm.fmuladd.f64(double %71, double 3.000000e+00, double %73)
  %75 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, i64 0
  %76 = load double, double* %75, align 16
  %77 = fsub double %74, %76
  %78 = call double @llvm.fmuladd.f64(double %48, double %77, double %66)
  %79 = call double @llvm.fmuladd.f64(double %48, double %78, double %56)
  %80 = call double @llvm.fmuladd.f64(double %51, double %79, double %50)
  %81 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  store double %80, double* %81, align 16
  %82 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 1
  %83 = load double, double* %82, align 8
  %84 = fmul double %48, 5.000000e-01
  %85 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 2
  %86 = load double, double* %85, align 16
  %87 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 0
  %88 = load double, double* %87, align 16
  %89 = fsub double %86, %88
  %90 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 1
  %91 = load double, double* %90, align 8
  %92 = fmul double %91, -5.000000e+00
  %93 = call double @llvm.fmuladd.f64(double %88, double 2.000000e+00, double %92)
  %94 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 2
  %95 = load double, double* %94, align 16
  %96 = call double @llvm.fmuladd.f64(double %95, double 4.000000e+00, double %93)
  %97 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 3
  %98 = load double, double* %97, align 8
  %99 = fsub double %96, %98
  %100 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 1
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 2
  %103 = load double, double* %102, align 16
  %104 = fsub double %101, %103
  %105 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 3
  %106 = load double, double* %105, align 8
  %107 = call double @llvm.fmuladd.f64(double %104, double 3.000000e+00, double %106)
  %108 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 1, i64 0
  %109 = load double, double* %108, align 16
  %110 = fsub double %107, %109
  %111 = call double @llvm.fmuladd.f64(double %48, double %110, double %99)
  %112 = call double @llvm.fmuladd.f64(double %48, double %111, double %89)
  %113 = call double @llvm.fmuladd.f64(double %84, double %112, double %83)
  %114 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  store double %113, double* %114, align 8
  %115 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 1
  %116 = load double, double* %115, align 8
  %117 = fmul double %48, 5.000000e-01
  %118 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 2
  %119 = load double, double* %118, align 16
  %120 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 0
  %121 = load double, double* %120, align 16
  %122 = fsub double %119, %121
  %123 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 1
  %124 = load double, double* %123, align 8
  %125 = fmul double %124, -5.000000e+00
  %126 = call double @llvm.fmuladd.f64(double %121, double 2.000000e+00, double %125)
  %127 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 2
  %128 = load double, double* %127, align 16
  %129 = call double @llvm.fmuladd.f64(double %128, double 4.000000e+00, double %126)
  %130 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 3
  %131 = load double, double* %130, align 8
  %132 = fsub double %129, %131
  %133 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 1
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 2
  %136 = load double, double* %135, align 16
  %137 = fsub double %134, %136
  %138 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 3
  %139 = load double, double* %138, align 8
  %140 = call double @llvm.fmuladd.f64(double %137, double 3.000000e+00, double %139)
  %141 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 2, i64 0
  %142 = load double, double* %141, align 16
  %143 = fsub double %140, %142
  %144 = call double @llvm.fmuladd.f64(double %48, double %143, double %132)
  %145 = call double @llvm.fmuladd.f64(double %48, double %144, double %122)
  %146 = call double @llvm.fmuladd.f64(double %117, double %145, double %116)
  %147 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  store double %146, double* %147, align 16
  %148 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 1
  %149 = load double, double* %148, align 8
  %150 = fmul double %48, 5.000000e-01
  %151 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 2
  %152 = load double, double* %151, align 16
  %153 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 0
  %154 = load double, double* %153, align 16
  %155 = fsub double %152, %154
  %156 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %157, -5.000000e+00
  %159 = call double @llvm.fmuladd.f64(double %154, double 2.000000e+00, double %158)
  %160 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 2
  %161 = load double, double* %160, align 16
  %162 = call double @llvm.fmuladd.f64(double %161, double 4.000000e+00, double %159)
  %163 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 3
  %164 = load double, double* %163, align 8
  %165 = fsub double %162, %164
  %166 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 1
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 2
  %169 = load double, double* %168, align 16
  %170 = fsub double %167, %169
  %171 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 3
  %172 = load double, double* %171, align 8
  %173 = call double @llvm.fmuladd.f64(double %170, double 3.000000e+00, double %172)
  %174 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 3, i64 0
  %175 = load double, double* %174, align 16
  %176 = fsub double %173, %175
  %177 = call double @llvm.fmuladd.f64(double %48, double %176, double %165)
  %178 = call double @llvm.fmuladd.f64(double %48, double %177, double %155)
  %179 = call double @llvm.fmuladd.f64(double %150, double %178, double %149)
  %180 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  store double %179, double* %180, align 8
  %181 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  %182 = load double, double* %181, align 8
  %183 = fmul double %45, 5.000000e-01
  %184 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  %185 = load double, double* %184, align 16
  %186 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %187 = load double, double* %186, align 16
  %188 = fsub double %185, %187
  %189 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  %190 = load double, double* %189, align 8
  %191 = fmul double %190, -5.000000e+00
  %192 = call double @llvm.fmuladd.f64(double %187, double 2.000000e+00, double %191)
  %193 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  %194 = load double, double* %193, align 16
  %195 = call double @llvm.fmuladd.f64(double %194, double 4.000000e+00, double %192)
  %196 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  %197 = load double, double* %196, align 8
  %198 = fsub double %195, %197
  %199 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 1
  %200 = load double, double* %199, align 8
  %201 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 2
  %202 = load double, double* %201, align 16
  %203 = fsub double %200, %202
  %204 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 3
  %205 = load double, double* %204, align 8
  %206 = call double @llvm.fmuladd.f64(double %203, double 3.000000e+00, double %205)
  %207 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %208 = load double, double* %207, align 16
  %209 = fsub double %206, %208
  %210 = call double @llvm.fmuladd.f64(double %45, double %209, double %198)
  %211 = call double @llvm.fmuladd.f64(double %45, double %210, double %188)
  %212 = call double @llvm.fmuladd.f64(double %183, double %211, double %182)
  %213 = fptosi double %212 to i32
  %214 = zext i32 %.03 to i64
  %215 = mul nuw nsw i64 %214, %8
  %216 = getelementptr inbounds i32, i32* %3, i64 %215
  %217 = zext i32 %.02 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %213, i32* %218, align 4
  br label %219

219:                                              ; preds = %42
  %220 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !7

221:                                              ; preds = %15
  br label %222

222:                                              ; preds = %221
  %223 = add nuw nsw i32 %.03, 1
  br label %11, !llvm.loop !8

224:                                              ; preds = %11
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
