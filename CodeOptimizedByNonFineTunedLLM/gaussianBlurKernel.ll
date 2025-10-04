; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/gaussianBlurKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/gaussianBlurKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @gaussianBlurKernel(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca [9 x [9 x float]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  store float 9.000000e+00, float* %9, align 4
  %29 = load float, float* %9, align 4
  %30 = fpext float %29 to double
  %31 = fmul double 2.000000e+00, %30
  %32 = load float, float* %9, align 4
  %33 = fpext float %32 to double
  %34 = fmul double %31, %33
  %35 = fptrunc double %34 to float
  store float %35, float* %10, align 4
  store i32 4, i32* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %36 = bitcast [9 x [9 x float]]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 324, i1 false)
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 -1, %37
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %96, %4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 -1, %44
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %92, %43
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  %58 = sub nsw i32 0, %57
  %59 = sitofp i32 %58 to float
  %60 = load float, float* %10, align 4
  %61 = fdiv float %59, %60
  %62 = fpext float %61 to double
  %63 = call double @exp(double noundef %62) #4
  %64 = load float, float* %10, align 4
  %65 = fpext float %64 to double
  %66 = fmul double 0x400921FB54442D18, %65
  %67 = fdiv double %63, %66
  %68 = fptrunc double %67 to float
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %13, i64 0, i64 %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [9 x float], [9 x float]* %73, i64 0, i64 %77
  store float %68, float* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %13, i64 0, i64 %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [9 x float], [9 x float]* %83, i64 0, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float, float* %12, align 4
  %91 = fadd float %90, %89
  store float %91, float* %12, align 4
  br label %92

92:                                               ; preds = %50
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %46, !llvm.loop !4

95:                                               ; preds = %46
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %39, !llvm.loop !6

99:                                               ; preds = %39
  store float 0.000000e+00, float* %16, align 4
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %181, %99
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %184

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %177, %107
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %180

115:                                              ; preds = %109
  store float 0.000000e+00, float* %16, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 -1, %116
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %161, %115
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 -1, %123
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %157, %122
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %125
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, %24
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sitofp i32 %142 to float
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %13, i64 0, i64 %147
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [9 x float], [9 x float]* %148, i64 0, i64 %152
  %154 = load float, float* %153, align 4
  %155 = load float, float* %16, align 4
  %156 = call float @llvm.fmuladd.f32(float %143, float %154, float %155)
  store float %156, float* %16, align 4
  br label %157

157:                                              ; preds = %129
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  br label %125, !llvm.loop !7

160:                                              ; preds = %125
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  br label %118, !llvm.loop !8

164:                                              ; preds = %118
  %165 = load float, float* %16, align 4
  %166 = load float, float* %12, align 4
  %167 = fdiv float %165, %166
  %168 = fptosi float %167 to i32
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %171, %28
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %109, !llvm.loop !9

180:                                              ; preds = %109
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  br label %101, !llvm.loop !10

184:                                              ; preds = %101
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
