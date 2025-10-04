; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgesl.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/sgesl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sgesl(%struct.FULL* noundef %0, i32* noundef %1, float* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FULL*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.FULL* %0, %struct.FULL** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.FULL*, %struct.FULL** %6, align 8
  %21 = getelementptr inbounds %struct.FULL, %struct.FULL* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %155

27:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %92, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %97

32:                                               ; preds = %28
  %33 = load %struct.FULL*, %struct.FULL** %6, align 8
  %34 = getelementptr inbounds %struct.FULL, %struct.FULL* %33, i32 0, i32 2
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1000 x float*], [1000 x float*]* %34, i64 0, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float* %41, float** %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load float*, float** %8, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  store float %48, float* %10, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %32
  %53 = load float*, float** %8, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %8, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  store float %57, float* %61, align 4
  %62 = load float, float* %10, align 4
  %63 = load float*, float** %8, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  store float %62, float* %66, align 4
  br label %67

67:                                               ; preds = %52, %32
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load float*, float** %11, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  store float* %71, float** %12, align 8
  br label %72

72:                                               ; preds = %86, %67
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load float*, float** %12, align 8
  %78 = load float, float* %77, align 4
  %79 = load float, float* %10, align 4
  %80 = load float*, float** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = call float @llvm.fmuladd.f32(float %78, float %79, float %84)
  store float %85, float* %83, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load float*, float** %12, align 8
  %90 = getelementptr inbounds float, float* %89, i32 1
  store float* %90, float** %12, align 8
  br label %72, !llvm.loop !4

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  br label %28, !llvm.loop !6

97:                                               ; preds = %28
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %151, %97
  %100 = load i32, i32* %16, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %154

102:                                              ; preds = %99
  %103 = load %struct.FULL*, %struct.FULL** %6, align 8
  %104 = getelementptr inbounds %struct.FULL, %struct.FULL* %103, i32 0, i32 2
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1000 x float*], [1000 x float*]* %104, i64 0, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float* %111, float** %11, align 8
  %112 = load float*, float** %11, align 8
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %8, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fdiv float %118, %113
  store float %119, float* %117, align 4
  store i32 0, i32* %15, align 4
  %120 = load %struct.FULL*, %struct.FULL** %6, align 8
  %121 = getelementptr inbounds %struct.FULL, %struct.FULL* %120, i32 0, i32 2
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1000 x float*], [1000 x float*]* %121, i64 0, i64 %123
  %125 = load float*, float** %124, align 8
  store float* %125, float** %13, align 8
  br label %126

126:                                              ; preds = %145, %102
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load float*, float** %13, align 8
  %132 = load float, float* %131, align 4
  %133 = load float*, float** %8, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = load float*, float** %8, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fneg float %132
  %144 = call float @llvm.fmuladd.f32(float %143, float %137, float %142)
  store float %144, float* %141, align 4
  br label %145

145:                                              ; preds = %130
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  %148 = load float*, float** %13, align 8
  %149 = getelementptr inbounds float, float* %148, i32 1
  store float* %149, float** %13, align 8
  br label %126, !llvm.loop !7

150:                                              ; preds = %126
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %16, align 4
  br label %99, !llvm.loop !8

154:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %300

155:                                              ; preds = %4
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %210, %155
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %213

160:                                              ; preds = %156
  %161 = load %struct.FULL*, %struct.FULL** %6, align 8
  %162 = getelementptr inbounds %struct.FULL, %struct.FULL* %161, i32 0, i32 2
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [1000 x float*], [1000 x float*]* %162, i64 0, i64 %164
  %166 = load float*, float** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  store float* %169, float** %11, align 8
  store i32 0, i32* %15, align 4
  store float 0.000000e+00, float* %10, align 4
  %170 = load %struct.FULL*, %struct.FULL** %6, align 8
  %171 = getelementptr inbounds %struct.FULL, %struct.FULL* %170, i32 0, i32 2
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1000 x float*], [1000 x float*]* %171, i64 0, i64 %173
  %175 = load float*, float** %174, align 8
  store float* %175, float** %13, align 8
  %176 = load float*, float** %8, align 8
  store float* %176, float** %14, align 8
  br label %177

177:                                              ; preds = %188, %160
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load float*, float** %13, align 8
  %183 = load float, float* %182, align 4
  %184 = load float*, float** %14, align 8
  %185 = load float, float* %184, align 4
  %186 = load float, float* %10, align 4
  %187 = call float @llvm.fmuladd.f32(float %183, float %185, float %186)
  store float %187, float* %10, align 4
  br label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  %191 = load float*, float** %13, align 8
  %192 = getelementptr inbounds float, float* %191, i32 1
  store float* %192, float** %13, align 8
  %193 = load float*, float** %14, align 8
  %194 = getelementptr inbounds float, float* %193, i32 1
  store float* %194, float** %14, align 8
  br label %177, !llvm.loop !9

195:                                              ; preds = %177
  %196 = load float*, float** %8, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* %10, align 4
  %202 = fsub float %200, %201
  %203 = load float*, float** %11, align 8
  %204 = load float, float* %203, align 4
  %205 = fdiv float %202, %204
  %206 = load float*, float** %8, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  store float %205, float* %209, align 4
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %156, !llvm.loop !10

213:                                              ; preds = %156
  %214 = load i32, i32* %18, align 4
  %215 = sub nsw i32 %214, 2
  %216 = load i32*, i32** %7, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %7, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sub nsw i32 %219, 2
  store i32 %220, i32* %16, align 4
  br label %221

221:                                              ; preds = %294, %213
  %222 = load i32, i32* %16, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %299

224:                                              ; preds = %221
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %15, align 4
  store float 0.000000e+00, float* %10, align 4
  %227 = load %struct.FULL*, %struct.FULL** %6, align 8
  %228 = getelementptr inbounds %struct.FULL, %struct.FULL* %227, i32 0, i32 2
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [1000 x float*], [1000 x float*]* %228, i64 0, i64 %230
  %232 = load float*, float** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = getelementptr inbounds float, float* %235, i64 1
  store float* %236, float** %12, align 8
  %237 = load float*, float** %8, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %237, i64 %239
  %241 = getelementptr inbounds float, float* %240, i64 1
  store float* %241, float** %14, align 8
  br label %242

242:                                              ; preds = %253, %224
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %242
  %247 = load float*, float** %12, align 8
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %14, align 8
  %250 = load float, float* %249, align 4
  %251 = load float, float* %10, align 4
  %252 = call float @llvm.fmuladd.f32(float %248, float %250, float %251)
  store float %252, float* %10, align 4
  br label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %15, align 4
  %256 = load float*, float** %12, align 8
  %257 = getelementptr inbounds float, float* %256, i32 1
  store float* %257, float** %12, align 8
  %258 = load float*, float** %14, align 8
  %259 = getelementptr inbounds float, float* %258, i32 1
  store float* %259, float** %14, align 8
  br label %242, !llvm.loop !11

260:                                              ; preds = %242
  %261 = load float, float* %10, align 4
  %262 = load float*, float** %8, align 8
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fadd float %266, %261
  store float %267, float* %265, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %17, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %16, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %260
  br label %294

274:                                              ; preds = %260
  %275 = load float*, float** %8, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  store float %279, float* %10, align 4
  %280 = load float*, float** %8, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %280, i64 %282
  %284 = load float, float* %283, align 4
  %285 = load float*, float** %8, align 8
  %286 = load i32, i32* %17, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  store float %284, float* %288, align 4
  %289 = load float, float* %10, align 4
  %290 = load float*, float** %8, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  store float %289, float* %293, align 4
  br label %294

294:                                              ; preds = %274, %273
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %16, align 4
  %297 = load i32*, i32** %7, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 -1
  store i32* %298, i32** %7, align 8
  br label %221, !llvm.loop !12

299:                                              ; preds = %221
  store i32 0, i32* %5, align 4
  br label %300

300:                                              ; preds = %299, %154
  %301 = load i32, i32* %5, align 4
  ret i32 %301
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
