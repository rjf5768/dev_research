; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgefa.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgefa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sgefa(%struct.FULL* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FULL*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store %struct.FULL* %0, %struct.FULL** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.FULL*, %struct.FULL** %4, align 8
  %19 = getelementptr inbounds %struct.FULL, %struct.FULL* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.FULL*, %struct.FULL** %4, align 8
  %22 = getelementptr inbounds %struct.FULL, %struct.FULL* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %230

26:                                               ; preds = %2
  %27 = load %struct.FULL*, %struct.FULL** %4, align 8
  %28 = getelementptr inbounds %struct.FULL, %struct.FULL* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load %struct.FULL*, %struct.FULL** %4, align 8
  %33 = getelementptr inbounds %struct.FULL, %struct.FULL* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1000 x float*], [1000 x float*]* %33, i64 0, i64 0
  %35 = load float*, float** %34, align 8
  store float* %35, float** %14, align 8
  store i32 0, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %219

39:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %213, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %218

44:                                               ; preds = %40
  %45 = load %struct.FULL*, %struct.FULL** %4, align 8
  %46 = getelementptr inbounds %struct.FULL, %struct.FULL* %45, i32 0, i32 2
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1000 x float*], [1000 x float*]* %46, i64 0, i64 %48
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float* %53, float** %14, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load float*, float** %14, align 8
  %58 = call i32 (i32, float*, i32, ...) bitcast (i32 (...)* @isamax to i32 (i32, float*, i32, ...)*)(i32 noundef %56, float* noundef %57, i32 noundef 1)
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.FULL*, %struct.FULL** %4, align 8
  %64 = getelementptr inbounds %struct.FULL, %struct.FULL* %63, i32 0, i32 2
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000 x float*], [1000 x float*]* %64, i64 0, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float* %71, float** %15, align 8
  %72 = load float*, float** %15, align 8
  %73 = load float, float* %72, align 4
  %74 = fpext float %73 to double
  %75 = fcmp oeq double %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %44
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %11, align 4
  br label %213

78:                                               ; preds = %44
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load float*, float** %15, align 8
  %84 = load float, float* %83, align 4
  store float %84, float* %13, align 4
  %85 = load float*, float** %14, align 8
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %15, align 8
  store float %86, float* %87, align 4
  %88 = load float, float* %13, align 4
  %89 = load float*, float** %14, align 8
  store float %88, float* %89, align 4
  br label %90

90:                                               ; preds = %82, %78
  %91 = load float*, float** %14, align 8
  %92 = load float, float* %91, align 4
  %93 = fpext float %92 to double
  %94 = fdiv double -1.000000e+00, %93
  %95 = fptrunc double %94 to float
  store float %95, float* %13, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load float*, float** %14, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  store float* %99, float** %17, align 8
  br label %100

100:                                              ; preds = %109, %90
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load float, float* %13, align 4
  %106 = load float*, float** %17, align 8
  %107 = load float, float* %106, align 4
  %108 = fmul float %107, %105
  store float %108, float* %106, align 4
  br label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load float*, float** %17, align 8
  %113 = getelementptr inbounds float, float* %112, i32 1
  store float* %113, float** %17, align 8
  br label %100, !llvm.loop !4

114:                                              ; preds = %100
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %209, %114
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %212

121:                                              ; preds = %117
  %122 = load %struct.FULL*, %struct.FULL** %4, align 8
  %123 = getelementptr inbounds %struct.FULL, %struct.FULL* %122, i32 0, i32 2
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1000 x float*], [1000 x float*]* %123, i64 0, i64 %125
  %127 = load float*, float** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  store float %131, float* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %175

135:                                              ; preds = %121
  %136 = load %struct.FULL*, %struct.FULL** %4, align 8
  %137 = getelementptr inbounds %struct.FULL, %struct.FULL* %136, i32 0, i32 2
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [1000 x float*], [1000 x float*]* %137, i64 0, i64 %139
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load %struct.FULL*, %struct.FULL** %4, align 8
  %147 = getelementptr inbounds %struct.FULL, %struct.FULL* %146, i32 0, i32 2
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [1000 x float*], [1000 x float*]* %147, i64 0, i64 %149
  %151 = load float*, float** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  store float %145, float* %154, align 4
  %155 = load float, float* %13, align 4
  %156 = load %struct.FULL*, %struct.FULL** %4, align 8
  %157 = getelementptr inbounds %struct.FULL, %struct.FULL* %156, i32 0, i32 2
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1000 x float*], [1000 x float*]* %157, i64 0, i64 %159
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %155, float* %164, align 4
  %165 = load %struct.FULL*, %struct.FULL** %4, align 8
  %166 = getelementptr inbounds %struct.FULL, %struct.FULL* %165, i32 0, i32 2
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [1000 x float*], [1000 x float*]* %166, i64 0, i64 %168
  %170 = load float*, float** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  store float %174, float* %13, align 4
  br label %175

175:                                              ; preds = %135, %121
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  %178 = load %struct.FULL*, %struct.FULL** %4, align 8
  %179 = getelementptr inbounds %struct.FULL, %struct.FULL* %178, i32 0, i32 2
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [1000 x float*], [1000 x float*]* %179, i64 0, i64 %181
  %183 = load float*, float** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  %187 = getelementptr inbounds float, float* %186, i64 1
  store float* %187, float** %16, align 8
  %188 = load float*, float** %14, align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  store float* %189, float** %17, align 8
  br label %190

190:                                              ; preds = %201, %175
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load float, float* %13, align 4
  %196 = load float*, float** %17, align 8
  %197 = load float, float* %196, align 4
  %198 = load float*, float** %16, align 8
  %199 = load float, float* %198, align 4
  %200 = call float @llvm.fmuladd.f32(float %195, float %197, float %199)
  store float %200, float* %198, align 4
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  %204 = load float*, float** %16, align 8
  %205 = getelementptr inbounds float, float* %204, i32 1
  store float* %205, float** %16, align 8
  %206 = load float*, float** %17, align 8
  %207 = getelementptr inbounds float, float* %206, i32 1
  store float* %207, float** %17, align 8
  br label %190, !llvm.loop !6

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %117, !llvm.loop !7

212:                                              ; preds = %117
  br label %213

213:                                              ; preds = %212, %76
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %5, align 8
  br label %40, !llvm.loop !8

218:                                              ; preds = %40
  br label %219

219:                                              ; preds = %218, %38
  %220 = load i32, i32* %10, align 4
  %221 = load i32*, i32** %5, align 8
  store i32 %220, i32* %221, align 4
  %222 = load float*, float** %14, align 8
  %223 = load float, float* %222, align 4
  %224 = fpext float %223 to double
  %225 = fcmp oeq double %224, 0.000000e+00
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %226, %219
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %228, %25
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @isamax(...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

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
