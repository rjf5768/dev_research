; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_div.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Crystal_div(i32 noundef %0, double noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, double* noundef %5, double* noundef %6, double* noundef %7, double* noundef %8, double* noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store double %1, double* %12, align 8
  store double* %2, double** %13, align 8
  store double* %3, double** %14, align 8
  store double* %4, double** %15, align 8
  store double* %5, double** %16, align 8
  store double* %6, double** %17, align 8
  store double* %7, double** %18, align 8
  store double* %8, double** %19, align 8
  store double* %9, double** %20, align 8
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca double, i64 12, align 16
  %31 = alloca double, i64 12, align 16
  %32 = alloca double, i64 12, align 16
  %33 = alloca double, i64 12, align 16
  %34 = alloca double, i64 12, align 16
  store double 0x3EB0C6F7A0B5ED8D, double* %22, align 8
  store double 3.000000e+01, double* %23, align 8
  store double 1.200000e+00, double* %24, align 8
  store double 1.000000e-02, double* %25, align 8
  store double 0.000000e+00, double* %26, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %35

35:                                               ; preds = %51, %10
  %36 = load i32, i32* %27, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32, i32* %27, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %31, i64 %41
  store double 1.000000e+00, double* %42, align 8
  %43 = load i32, i32* %27, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double 2.000000e-01, %44
  %46 = fdiv double %45, 1.200000e+01
  %47 = fadd double 9.000000e-01, %46
  %48 = load i32, i32* %27, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %32, i64 %49
  store double %47, double* %50, align 8
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %27, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %27, align 4
  br label %35, !llvm.loop !4

54:                                               ; preds = %35
  store i32 0, i32* %27, align 4
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %27, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load double*, double** %13, align 8
  %61 = load i32, i32* %27, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load i32, i32* %27, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %31, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double, double* %22, align 8
  %70 = call double @llvm.fmuladd.f64(double %64, double %68, double %69)
  %71 = fdiv double 1.000000e+00, %70
  %72 = load i32, i32* %27, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %30, i64 %73
  store double %71, double* %74, align 8
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %27, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %27, align 4
  br label %55, !llvm.loop !6

78:                                               ; preds = %55
  store i32 0, i32* %27, align 4
  br label %79

79:                                               ; preds = %150, %78
  %80 = load i32, i32* %27, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %153

83:                                               ; preds = %79
  %84 = load double, double* %23, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %32, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fmul double %84, %88
  %90 = load i32, i32* %27, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %31, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fmul double %89, %93
  %95 = load double*, double** %15, align 8
  %96 = load i32, i32* %27, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  store double %94, double* %98, align 8
  store i32 0, i32* %28, align 4
  br label %99

99:                                               ; preds = %120, %83
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load double, double* %24, align 8
  %105 = load double, double* %12, align 8
  %106 = fmul double %104, %105
  %107 = load i32, i32* %27, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %32, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fmul double %106, %110
  %112 = load double*, double** %18, align 8
  %113 = load i32, i32* %27, align 4
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %114, 12
  %116 = getelementptr inbounds double, double* %112, i64 %115
  %117 = load i32, i32* %28, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  store double %111, double* %119, align 8
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %28, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %28, align 4
  br label %99, !llvm.loop !7

123:                                              ; preds = %99
  %124 = load double*, double** %15, align 8
  %125 = load i32, i32* %27, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %124, i64 %126
  %128 = load double, double* %127, align 8
  %129 = load double, double* %25, align 8
  %130 = fmul double %128, %129
  %131 = load i32, i32* %27, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %31, i64 %132
  %134 = load double, double* %133, align 8
  %135 = fmul double %130, %134
  %136 = load i32, i32* %27, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %30, i64 %137
  %139 = load double, double* %138, align 8
  %140 = load double*, double** %18, align 8
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, 12
  %144 = getelementptr inbounds double, double* %140, i64 %143
  %145 = load i32, i32* %27, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  %148 = load double, double* %147, align 8
  %149 = call double @llvm.fmuladd.f64(double %135, double %139, double %148)
  store double %149, double* %147, align 8
  br label %150

150:                                              ; preds = %123
  %151 = load i32, i32* %27, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %27, align 4
  br label %79, !llvm.loop !8

153:                                              ; preds = %79
  store i32 0, i32* %27, align 4
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = load double*, double** %18, align 8
  %160 = load i32, i32* %27, align 4
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, 12
  %163 = getelementptr inbounds double, double* %159, i64 %162
  %164 = load i32, i32* %27, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = load double, double* %166, align 8
  %168 = fdiv double 1.000000e+00, %167
  %169 = load i32, i32* %27, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %30, i64 %170
  store double %168, double* %171, align 8
  br label %172

172:                                              ; preds = %158
  %173 = load i32, i32* %27, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %27, align 4
  br label %154, !llvm.loop !9

175:                                              ; preds = %154
  store i32 0, i32* %27, align 4
  br label %176

176:                                              ; preds = %271, %175
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %274

180:                                              ; preds = %176
  %181 = load double*, double** %15, align 8
  %182 = load i32, i32* %27, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double, double* %181, i64 %183
  %185 = load double, double* %184, align 8
  %186 = load i32, i32* %27, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %33, i64 %187
  store double %185, double* %188, align 8
  store i32 0, i32* %28, align 4
  br label %189

189:                                              ; preds = %241, %180
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %244

193:                                              ; preds = %189
  %194 = load double*, double** %19, align 8
  %195 = load i32, i32* %27, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, 12
  %198 = getelementptr inbounds double, double* %194, i64 %197
  %199 = load i32, i32* %28, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %198, i64 %200
  %202 = load double, double* %201, align 8
  %203 = load double, double* %12, align 8
  %204 = fmul double %202, %203
  store double %204, double* %26, align 8
  %205 = load double, double* %26, align 8
  %206 = load double*, double** %14, align 8
  %207 = load i32, i32* %28, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  %210 = load double, double* %209, align 8
  %211 = load i32, i32* %27, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %33, i64 %212
  %214 = load double, double* %213, align 8
  %215 = call double @llvm.fmuladd.f64(double %205, double %210, double %214)
  store double %215, double* %213, align 8
  %216 = load double, double* %26, align 8
  %217 = fneg double %216
  %218 = load double*, double** %18, align 8
  %219 = load i32, i32* %27, align 4
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %220, 12
  %222 = getelementptr inbounds double, double* %218, i64 %221
  %223 = load i32, i32* %28, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fadd double %217, %226
  %228 = load i32, i32* %27, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %30, i64 %229
  %231 = load double, double* %230, align 8
  %232 = fmul double %227, %231
  %233 = load double*, double** %20, align 8
  %234 = load i32, i32* %27, align 4
  %235 = sext i32 %234 to i64
  %236 = mul nsw i64 %235, 12
  %237 = getelementptr inbounds double, double* %233, i64 %236
  %238 = load i32, i32* %28, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, double* %237, i64 %239
  store double %232, double* %240, align 8
  br label %241

241:                                              ; preds = %193
  %242 = load i32, i32* %28, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %28, align 4
  br label %189, !llvm.loop !10

244:                                              ; preds = %189
  %245 = load i32, i32* %27, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %33, i64 %246
  %248 = load double, double* %247, align 8
  %249 = load double*, double** %16, align 8
  %250 = load i32, i32* %27, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %249, i64 %251
  %253 = load double, double* %252, align 8
  %254 = fsub double %248, %253
  %255 = load i32, i32* %27, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %34, i64 %256
  store double %254, double* %257, align 8
  %258 = load i32, i32* %27, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, double* %34, i64 %259
  %261 = load double, double* %260, align 8
  %262 = load i32, i32* %27, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds double, double* %30, i64 %263
  %265 = load double, double* %264, align 8
  %266 = fmul double %261, %265
  %267 = load double*, double** %17, align 8
  %268 = load i32, i32* %27, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds double, double* %267, i64 %269
  store double %266, double* %270, align 8
  br label %271

271:                                              ; preds = %244
  %272 = load i32, i32* %27, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %27, align 4
  br label %176, !llvm.loop !11

274:                                              ; preds = %176
  %275 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %275)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
