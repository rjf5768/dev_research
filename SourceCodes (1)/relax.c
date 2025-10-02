; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/relax.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* noundef %0, %struct.hypre_Vector* noundef %1, %struct.hypre_Vector* noundef %2) #0 {
  %4 = alloca %struct.hypre_CSRMatrix*, align 8
  %5 = alloca %struct.hypre_Vector*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %4, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %5, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %6, align 8
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 0
  %27 = load double*, double** %26, align 8
  store double* %27, double** %7, align 8
  %28 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %29 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  store double* %39, double** %11, align 8
  %40 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %41 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %40, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  store double* %42, double** %12, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @hypre_CAlloc(i32 noundef %43, i32 noundef 8)
  %45 = bitcast i8* %44 to double*
  store double* %45, double** %13, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %60, %3
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load double*, double** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %46, !llvm.loop !4

63:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %209, %63
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %24, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %212

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %24, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %24, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %21, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %105

93:                                               ; preds = %68
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %21, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %93, %80
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %205, %105
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %208

111:                                              ; preds = %107
  %112 = load double*, double** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %112, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fcmp une double %120, 0.000000e+00
  br i1 %121, label %122, label %204

122:                                              ; preds = %111
  %123 = load double*, double** %12, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  %127 = load double, double* %126, align 8
  store double %127, double* %14, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %185, %122
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %188

143:                                              ; preds = %134
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %143
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load double*, double** %7, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %157, i64 %159
  %161 = load double, double* %160, align 8
  %162 = load double*, double** %11, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load double, double* %14, align 8
  %168 = fneg double %161
  %169 = call double @llvm.fmuladd.f64(double %168, double %166, double %167)
  store double %169, double* %14, align 8
  br label %184

170:                                              ; preds = %152, %143
  %171 = load double*, double** %7, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = load double*, double** %13, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  %180 = load double, double* %179, align 8
  %181 = load double, double* %14, align 8
  %182 = fneg double %175
  %183 = call double @llvm.fmuladd.f64(double %182, double %180, double %181)
  store double %183, double* %14, align 8
  br label %184

184:                                              ; preds = %170, %156
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %134, !llvm.loop !6

188:                                              ; preds = %134
  %189 = load double, double* %14, align 8
  %190 = load double*, double** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %190, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fdiv double %189, %198
  %200 = load double*, double** %11, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  store double %199, double* %203, align 8
  br label %204

204:                                              ; preds = %188, %111
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %107, !llvm.loop !7

208:                                              ; preds = %107
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %64, !llvm.loop !8

212:                                              ; preds = %64
  %213 = load double*, double** %13, align 8
  %214 = bitcast double* %213 to i8*
  call void @hypre_Free(i8* noundef %214)
  store double* null, double** %13, align 8
  %215 = load i32, i32* %23, align 4
  ret i32 %215
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local void @hypre_Free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
