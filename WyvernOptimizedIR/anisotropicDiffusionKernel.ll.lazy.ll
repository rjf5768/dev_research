; ModuleID = './anisotropicDiffusionKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/AnisotropicDiffusion/anisotropicDiffusionKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @anisotropicDiffusionKernel(i32 noundef %0, i32 noundef %1, [512 x i32]* noundef readonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %212, %5
  %.0 = phi i32 [ 0, %5 ], [ %213, %212 ]
  %8 = icmp slt i32 %.0, %4
  br i1 %8, label %9, label %214

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %209, %9
  %.02 = phi i32 [ 2, %9 ], [ %210, %209 ]
  %11 = add nsw i32 %0, -2
  %12 = icmp slt i32 %.02, %11
  br i1 %12, label %13, label %211

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %206, %13
  %.01 = phi i32 [ 2, %13 ], [ %207, %206 ]
  %15 = add nsw i32 %1, -2
  %16 = icmp slt i32 %.01, %15
  br i1 %16, label %17, label %208

17:                                               ; preds = %14
  %18 = zext i32 %.02 to i64
  %19 = add nuw nsw i32 %.01, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %.02 to i64
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  %28 = add nuw nsw i32 %.02, 1
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i32 %.01, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %.02, -1
  %35 = sext i32 %34 to i64
  %36 = add nuw nsw i32 %.01, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %33, %39
  %41 = add nsw i32 %27, %40
  %42 = mul nsw i32 %41, %41
  %43 = sub nsw i32 0, %42
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 2.000000e+00
  %46 = fmul double %45, 5.000000e-01
  %47 = call double @exp(double noundef %46) #3
  %48 = zext i32 %.02 to i64
  %49 = add nuw nsw i32 %.01, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %.02 to i64
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %52, %56
  %58 = sitofp i32 %57 to double
  %59 = fmul double %47, %58
  %60 = fptrunc double %59 to float
  %61 = zext i32 %.02 to i64
  %62 = zext i32 %.01 to i64
  %63 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %.02 to i64
  %66 = add nsw i32 %.01, -2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %64, %69
  %71 = add nuw nsw i32 %.02, 1
  %72 = zext i32 %71 to i64
  %73 = add nsw i32 %.01, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %.02, -1
  %78 = sext i32 %77 to i64
  %79 = add nsw i32 %.01, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %76, %82
  %84 = add nsw i32 %70, %83
  %85 = mul nsw i32 %84, %84
  %86 = sub nsw i32 0, %85
  %87 = sitofp i32 %86 to double
  %88 = fmul double %87, 2.000000e+00
  %89 = fmul double %88, 5.000000e-01
  %90 = call double @exp(double noundef %89) #3
  %91 = zext i32 %.02 to i64
  %92 = add nsw i32 %.01, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %.02 to i64
  %97 = zext i32 %.01 to i64
  %98 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %95, %99
  %101 = sitofp i32 %100 to double
  %102 = fmul double %90, %101
  %103 = fptrunc double %102 to float
  %104 = add nsw i32 %.02, -1
  %105 = sext i32 %104 to i64
  %106 = add nuw nsw i32 %.01, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %.02, -1
  %111 = sext i32 %110 to i64
  %112 = add nsw i32 %.01, -1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %109, %115
  %117 = zext i32 %.02 to i64
  %118 = zext i32 %.01 to i64
  %119 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %.02, -2
  %122 = sext i32 %121 to i64
  %123 = zext i32 %.01 to i64
  %124 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %120, %125
  %127 = add nsw i32 %116, %126
  %128 = mul nsw i32 %127, %127
  %129 = sub nsw i32 0, %128
  %130 = sitofp i32 %129 to double
  %131 = fmul double %130, 2.000000e+00
  %132 = fmul double %131, 5.000000e-01
  %133 = call double @exp(double noundef %132) #3
  %134 = add nsw i32 %.02, -1
  %135 = sext i32 %134 to i64
  %136 = zext i32 %.01 to i64
  %137 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %.02 to i64
  %140 = zext i32 %.01 to i64
  %141 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %138, %142
  %144 = sitofp i32 %143 to double
  %145 = fmul double %133, %144
  %146 = fptrunc double %145 to float
  %147 = add nuw nsw i32 %.02, 1
  %148 = zext i32 %147 to i64
  %149 = add nuw nsw i32 %.01, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nuw nsw i32 %.02, 1
  %154 = zext i32 %153 to i64
  %155 = add nsw i32 %.01, -1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %152, %158
  %160 = add nuw nsw i32 %.02, 2
  %161 = zext i32 %160 to i64
  %162 = zext i32 %.01 to i64
  %163 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %.02 to i64
  %166 = zext i32 %.01 to i64
  %167 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %164, %168
  %170 = add nsw i32 %159, %169
  %171 = mul nsw i32 %170, %170
  %172 = sub nsw i32 0, %171
  %173 = sitofp i32 %172 to double
  %174 = fmul double %173, 2.000000e+00
  %175 = fmul double %174, 5.000000e-01
  %176 = call double @exp(double noundef %175) #3
  %177 = add nuw nsw i32 %.02, 1
  %178 = zext i32 %177 to i64
  %179 = zext i32 %.01 to i64
  %180 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %.02 to i64
  %183 = zext i32 %.01 to i64
  %184 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %181, %185
  %187 = sitofp i32 %186 to double
  %188 = fmul double %176, %187
  %189 = fptrunc double %188 to float
  %190 = zext i32 %.02 to i64
  %191 = zext i32 %.01 to i64
  %192 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sitofp i32 %193 to double
  %195 = fadd float %60, %103
  %196 = fadd float %195, %146
  %197 = fadd float %196, %189
  %198 = fpext float %197 to double
  %199 = call double @llvm.fmuladd.f64(double %198, double 1.250000e-01, double %194)
  %200 = fptosi double %199 to i32
  %201 = zext i32 %.02 to i64
  %202 = mul nuw nsw i64 %201, %6
  %203 = getelementptr inbounds i32, i32* %3, i64 %202
  %204 = zext i32 %.01 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %200, i32* %205, align 4
  br label %206

206:                                              ; preds = %17
  %207 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !4

208:                                              ; preds = %14
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i32 %.02, 1
  br label %10, !llvm.loop !6

211:                                              ; preds = %10
  br label %212

212:                                              ; preds = %211
  %213 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !7

214:                                              ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
