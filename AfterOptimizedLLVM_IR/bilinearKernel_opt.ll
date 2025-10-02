; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bilinearKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bilinearKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bilinearKernel(i32 noundef %0, i32 noundef %1, [256 x i32]* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [256 x i32]* %2, [256 x i32]** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 4, %17
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 4, %20
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 4, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 4, %25
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %208, %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %211

31:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %204, %31
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %207

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %42, 4.000000e+00
  %44 = load i32, i32* %9, align 4
  %45 = sitofp i32 %44 to float
  %46 = fsub float %43, %45
  store float %46, float* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 4.000000e+00
  %50 = load i32, i32* %10, align 4
  %51 = sitofp i32 %50 to float
  %52 = fsub float %49, %51
  store float %52, float* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %36
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %132

62:                                               ; preds = %57
  %63 = load [256 x i32]*, [256 x i32]** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %63, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %66, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to float
  %72 = load float, float* %11, align 4
  %73 = fsub float 1.000000e+00, %72
  %74 = fmul float %71, %73
  %75 = load float, float* %12, align 4
  %76 = fsub float 1.000000e+00, %75
  %77 = load [256 x i32]*, [256 x i32]** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %77, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %80, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to float
  %87 = load float, float* %12, align 4
  %88 = fsub float 1.000000e+00, %87
  %89 = fmul float %86, %88
  %90 = load float, float* %11, align 4
  %91 = fmul float %89, %90
  %92 = call float @llvm.fmuladd.f32(float %74, float %76, float %91)
  %93 = load [256 x i32]*, [256 x i32]** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %93, i64 %96
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %97, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %12, align 4
  %104 = fmul float %102, %103
  %105 = load float, float* %11, align 4
  %106 = fsub float 1.000000e+00, %105
  %107 = call float @llvm.fmuladd.f32(float %104, float %106, float %92)
  %108 = load [256 x i32]*, [256 x i32]** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %108, i64 %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* %112, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sitofp i32 %117 to float
  %119 = load float, float* %12, align 4
  %120 = fmul float %118, %119
  %121 = load float, float* %11, align 4
  %122 = call float @llvm.fmuladd.f32(float %120, float %121, float %107)
  %123 = fptosi float %122 to i32
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, %22
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %123, i32* %131, align 4
  br label %203

132:                                              ; preds = %57, %36
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %132
  %138 = load [256 x i32]*, [256 x i32]** %7, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i32], [256 x i32]* %138, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [256 x i32], [256 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sitofp i32 %145 to float
  %147 = load float, float* %11, align 4
  %148 = fsub float 1.000000e+00, %147
  %149 = fmul float %146, %148
  %150 = load float, float* %12, align 4
  %151 = fsub float 1.000000e+00, %150
  %152 = load [256 x i32]*, [256 x i32]** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %152, i64 %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [256 x i32], [256 x i32]* %155, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to float
  %162 = load float, float* %12, align 4
  %163 = fsub float 1.000000e+00, %162
  %164 = fmul float %161, %163
  %165 = load float, float* %11, align 4
  %166 = fmul float %164, %165
  %167 = call float @llvm.fmuladd.f32(float %149, float %151, float %166)
  %168 = fptosi float %167 to i32
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %171, %22
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %168, i32* %176, align 4
  br label %202

177:                                              ; preds = %132
  %178 = load [256 x i32]*, [256 x i32]** %7, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %178, i64 %180
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [256 x i32], [256 x i32]* %181, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sitofp i32 %185 to float
  %187 = load float, float* %11, align 4
  %188 = fsub float 1.000000e+00, %187
  %189 = fmul float %186, %188
  %190 = load float, float* %12, align 4
  %191 = fsub float 1.000000e+00, %190
  %192 = fmul float %189, %191
  %193 = fptosi float %192 to i32
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, %22
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %193, i32* %201, align 4
  br label %202

202:                                              ; preds = %177, %137
  br label %203

203:                                              ; preds = %202, %62
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %32, !llvm.loop !4

207:                                              ; preds = %32
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %27, !llvm.loop !6

211:                                              ; preds = %27
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
