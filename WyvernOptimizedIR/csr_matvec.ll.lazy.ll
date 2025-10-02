; ModuleID = './csr_matvec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"num_vectors == hypre_VectorNumVectors(y)\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matvec.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec(double noundef %0, %struct.hypre_CSRMatrix* nocapture noundef readonly %1, %struct.hypre_Vector* nocapture noundef readonly %2, double noundef %3, %struct.hypre_Vector* nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 0
  %21 = load double*, double** %20, align 8
  %22 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 0
  %23 = load double*, double** %22, align 8
  %24 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %29, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %5
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #4
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 noundef 91, i32 noundef 1) #5
  br label %44

44:                                               ; preds = %41, %5
  %.not = icmp eq i32 %15, %25
  br i1 %.not, label %46, label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %44
  %.01 = phi i32 [ 1, %45 ], [ 0, %44 ]
  %.not15 = icmp eq i32 %13, %27
  br i1 %.not15, label %48, label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %46
  %.1 = phi i32 [ 2, %47 ], [ %.01, %46 ]
  %.not16 = icmp eq i32 %15, %25
  br i1 %.not16, label %51, label %49

49:                                               ; preds = %48
  %.not17 = icmp eq i32 %13, %27
  br i1 %.not17, label %51, label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %49, %48
  %.2 = phi i32 [ 3, %50 ], [ %.1, %49 ], [ %.1, %48 ]
  %52 = fcmp oeq double %0, 0.000000e+00
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %62, %53
  %.07 = phi i32 [ 0, %53 ], [ %63, %62 ]
  %55 = mul nsw i32 %13, %29
  %56 = icmp slt i32 %.07, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = zext i32 %.07 to i64
  %59 = getelementptr inbounds double, double* %23, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, %3
  store double %61, double* %59, align 8
  br label %62

62:                                               ; preds = %57
  %63 = add nuw nsw i32 %.07, 1
  br label %54, !llvm.loop !4

64:                                               ; preds = %54
  br label %280

65:                                               ; preds = %51
  %66 = fdiv double %3, %0
  %67 = fcmp une double %66, 1.000000e+00
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = fcmp oeq double %66, 0.000000e+00
  br i1 %69, label %70, label %80

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %77, %70
  %.18 = phi i32 [ 0, %70 ], [ %78, %77 ]
  %72 = mul nsw i32 %13, %29
  %73 = icmp slt i32 %.18, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = zext i32 %.18 to i64
  %76 = getelementptr inbounds double, double* %23, i64 %75
  store double 0.000000e+00, double* %76, align 8
  br label %77

77:                                               ; preds = %74
  %78 = add nuw nsw i32 %.18, 1
  br label %71, !llvm.loop !6

79:                                               ; preds = %71
  br label %92

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %89, %80
  %.29 = phi i32 [ 0, %80 ], [ %90, %89 ]
  %82 = mul nsw i32 %13, %29
  %83 = icmp slt i32 %.29, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = zext i32 %.29 to i64
  %86 = getelementptr inbounds double, double* %23, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fmul double %87, %66
  store double %88, double* %86, align 8
  br label %89

89:                                               ; preds = %84
  %90 = add nuw nsw i32 %.29, 1
  br label %81, !llvm.loop !7

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %79
  br label %93

93:                                               ; preds = %92, %65
  %94 = sitofp i32 %19 to double
  %95 = sitofp i32 %13 to double
  %96 = fmul double %95, 0x3FE6666666666666
  %97 = fcmp ogt double %96, %94
  br i1 %97, label %98, label %183

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %180, %98
  %.310 = phi i32 [ 0, %98 ], [ %181, %180 ]
  %100 = icmp slt i32 %.310, %19
  br i1 %100, label %101, label %182

101:                                              ; preds = %99
  %102 = zext i32 %.310 to i64
  %103 = getelementptr inbounds i32, i32* %17, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %29, 1
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  %107 = sext i32 %104 to i64
  %108 = getelementptr inbounds double, double* %23, i64 %107
  %109 = load double, double* %108, align 8
  %110 = sext i32 %104 to i64
  %111 = getelementptr inbounds i32, i32* %9, i64 %110
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %120, %106
  %.011 = phi double [ %109, %106 ], [ %130, %120 ]
  %.02 = phi i32 [ %112, %106 ], [ %131, %120 ]
  %114 = add nsw i32 %104, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %9, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %.02, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  %121 = sext i32 %.02 to i64
  %122 = getelementptr inbounds double, double* %7, i64 %121
  %123 = load double, double* %122, align 8
  %124 = sext i32 %.02 to i64
  %125 = getelementptr inbounds i32, i32* %11, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %21, i64 %127
  %129 = load double, double* %128, align 8
  %130 = call double @llvm.fmuladd.f64(double %123, double %129, double %.011)
  %131 = add nsw i32 %.02, 1
  br label %113, !llvm.loop !8

132:                                              ; preds = %113
  %133 = sext i32 %104 to i64
  %134 = getelementptr inbounds double, double* %23, i64 %133
  store double %.011, double* %134, align 8
  br label %179

135:                                              ; preds = %101
  br label %136

136:                                              ; preds = %176, %135
  %.05 = phi i32 [ 0, %135 ], [ %177, %176 ]
  %137 = icmp slt i32 %.05, %29
  br i1 %137, label %138, label %178

138:                                              ; preds = %136
  %139 = mul nsw i32 %.05, %33
  %140 = mul nsw i32 %104, %31
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %23, i64 %142
  %144 = load double, double* %143, align 8
  %145 = sext i32 %104 to i64
  %146 = getelementptr inbounds i32, i32* %9, i64 %145
  %147 = load i32, i32* %146, align 4
  br label %148

148:                                              ; preds = %155, %138
  %.112 = phi double [ %144, %138 ], [ %168, %155 ]
  %.13 = phi i32 [ %147, %138 ], [ %169, %155 ]
  %149 = add nsw i32 %104, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %9, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %.13, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154
  %156 = sext i32 %.13 to i64
  %157 = getelementptr inbounds double, double* %7, i64 %156
  %158 = load double, double* %157, align 8
  %159 = mul nsw i32 %.05, %37
  %160 = sext i32 %.13 to i64
  %161 = getelementptr inbounds i32, i32* %11, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %162, %35
  %164 = add nsw i32 %159, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %21, i64 %165
  %167 = load double, double* %166, align 8
  %168 = call double @llvm.fmuladd.f64(double %158, double %167, double %.112)
  %169 = add nsw i32 %.13, 1
  br label %148, !llvm.loop !9

170:                                              ; preds = %148
  %171 = mul nsw i32 %.05, %33
  %172 = mul nsw i32 %104, %31
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %23, i64 %174
  store double %.112, double* %175, align 8
  br label %176

176:                                              ; preds = %170
  %177 = add nuw nsw i32 %.05, 1
  br label %136, !llvm.loop !10

178:                                              ; preds = %136
  br label %179

179:                                              ; preds = %178, %132
  br label %180

180:                                              ; preds = %179
  %181 = add nuw nsw i32 %.310, 1
  br label %99, !llvm.loop !11

182:                                              ; preds = %99
  br label %265

183:                                              ; preds = %93
  br label %184

184:                                              ; preds = %262, %183
  %.4 = phi i32 [ 0, %183 ], [ %263, %262 ]
  %185 = icmp slt i32 %.4, %13
  br i1 %185, label %186, label %264

186:                                              ; preds = %184
  %187 = icmp eq i32 %29, 1
  br i1 %187, label %188, label %217

188:                                              ; preds = %186
  %189 = zext i32 %.4 to i64
  %190 = getelementptr inbounds double, double* %23, i64 %189
  %191 = load double, double* %190, align 8
  %192 = zext i32 %.4 to i64
  %193 = getelementptr inbounds i32, i32* %9, i64 %192
  %194 = load i32, i32* %193, align 4
  br label %195

195:                                              ; preds = %202, %188
  %.013 = phi double [ %191, %188 ], [ %212, %202 ]
  %.24 = phi i32 [ %194, %188 ], [ %213, %202 ]
  %196 = add nuw nsw i32 %.4, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %9, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %.24, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201
  %203 = sext i32 %.24 to i64
  %204 = getelementptr inbounds double, double* %7, i64 %203
  %205 = load double, double* %204, align 8
  %206 = sext i32 %.24 to i64
  %207 = getelementptr inbounds i32, i32* %11, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, double* %21, i64 %209
  %211 = load double, double* %210, align 8
  %212 = call double @llvm.fmuladd.f64(double %205, double %211, double %.013)
  %213 = add nsw i32 %.24, 1
  br label %195, !llvm.loop !12

214:                                              ; preds = %195
  %215 = zext i32 %.4 to i64
  %216 = getelementptr inbounds double, double* %23, i64 %215
  store double %.013, double* %216, align 8
  br label %261

217:                                              ; preds = %186
  br label %218

218:                                              ; preds = %258, %217
  %.16 = phi i32 [ 0, %217 ], [ %259, %258 ]
  %219 = icmp slt i32 %.16, %29
  br i1 %219, label %220, label %260

220:                                              ; preds = %218
  %221 = mul nsw i32 %.16, %33
  %222 = mul nsw i32 %.4, %31
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %23, i64 %224
  %226 = load double, double* %225, align 8
  %227 = zext i32 %.4 to i64
  %228 = getelementptr inbounds i32, i32* %9, i64 %227
  %229 = load i32, i32* %228, align 4
  br label %230

230:                                              ; preds = %237, %220
  %.114 = phi double [ %226, %220 ], [ %250, %237 ]
  %.3 = phi i32 [ %229, %220 ], [ %251, %237 ]
  %231 = add nuw nsw i32 %.4, 1
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %9, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %.3, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236
  %238 = sext i32 %.3 to i64
  %239 = getelementptr inbounds double, double* %7, i64 %238
  %240 = load double, double* %239, align 8
  %241 = mul nsw i32 %.16, %37
  %242 = sext i32 %.3 to i64
  %243 = getelementptr inbounds i32, i32* %11, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %244, %35
  %246 = add nsw i32 %241, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %21, i64 %247
  %249 = load double, double* %248, align 8
  %250 = call double @llvm.fmuladd.f64(double %240, double %249, double %.114)
  %251 = add nsw i32 %.3, 1
  br label %230, !llvm.loop !13

252:                                              ; preds = %230
  %253 = mul nsw i32 %.16, %33
  %254 = mul nsw i32 %.4, %31
  %255 = add nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %23, i64 %256
  store double %.114, double* %257, align 8
  br label %258

258:                                              ; preds = %252
  %259 = add nuw nsw i32 %.16, 1
  br label %218, !llvm.loop !14

260:                                              ; preds = %218
  br label %261

261:                                              ; preds = %260, %214
  br label %262

262:                                              ; preds = %261
  %263 = add nuw nsw i32 %.4, 1
  br label %184, !llvm.loop !15

264:                                              ; preds = %184
  br label %265

265:                                              ; preds = %264, %182
  %266 = fcmp une double %0, 1.000000e+00
  br i1 %266, label %267, label %279

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %276, %267
  %.5 = phi i32 [ 0, %267 ], [ %277, %276 ]
  %269 = mul nsw i32 %13, %29
  %270 = icmp slt i32 %.5, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = zext i32 %.5 to i64
  %273 = getelementptr inbounds double, double* %23, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fmul double %274, %0
  store double %275, double* %273, align 8
  br label %276

276:                                              ; preds = %271
  %277 = add nuw nsw i32 %.5, 1
  br label %268, !llvm.loop !16

278:                                              ; preds = %268
  br label %279

279:                                              ; preds = %278, %265
  br label %280

280:                                              ; preds = %279, %64
  ret i32 %.2
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @hypre_error_handler(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvecT(double noundef %0, %struct.hypre_CSRMatrix* nocapture noundef readonly %1, %struct.hypre_Vector* nocapture noundef readonly %2, double noundef %3, %struct.hypre_Vector* nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 0
  %19 = load double*, double** %18, align 8
  %20 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %25, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #4
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 noundef 258, i32 noundef 1) #5
  br label %40

40:                                               ; preds = %37, %5
  %.not = icmp eq i32 %13, %21
  br i1 %.not, label %42, label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %40
  %.01 = phi i32 [ 1, %41 ], [ 0, %40 ]
  %.not14 = icmp eq i32 %15, %23
  br i1 %.not14, label %44, label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %42
  %.1 = phi i32 [ 2, %43 ], [ %.01, %42 ]
  %.not15 = icmp eq i32 %13, %21
  br i1 %.not15, label %47, label %45

45:                                               ; preds = %44
  %.not16 = icmp eq i32 %15, %23
  br i1 %.not16, label %47, label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %45, %44
  %.2 = phi i32 [ 3, %46 ], [ %.1, %45 ], [ %.1, %44 ]
  %48 = fcmp oeq double %0, 0.000000e+00
  br i1 %48, label %49, label %61

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %58, %49
  %.010 = phi i32 [ 0, %49 ], [ %59, %58 ]
  %51 = mul nsw i32 %15, %25
  %52 = icmp slt i32 %.010, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = zext i32 %.010 to i64
  %55 = getelementptr inbounds double, double* %19, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, %3
  store double %57, double* %55, align 8
  br label %58

58:                                               ; preds = %53
  %59 = add nuw nsw i32 %.010, 1
  br label %50, !llvm.loop !17

60:                                               ; preds = %50
  br label %217

61:                                               ; preds = %47
  %62 = fdiv double %3, %0
  %63 = fcmp une double %62, 1.000000e+00
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = fcmp oeq double %62, 0.000000e+00
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %73, %66
  %.111 = phi i32 [ 0, %66 ], [ %74, %73 ]
  %68 = mul nsw i32 %15, %25
  %69 = icmp slt i32 %.111, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = zext i32 %.111 to i64
  %72 = getelementptr inbounds double, double* %19, i64 %71
  store double 0.000000e+00, double* %72, align 8
  br label %73

73:                                               ; preds = %70
  %74 = add nuw nsw i32 %.111, 1
  br label %67, !llvm.loop !18

75:                                               ; preds = %67
  br label %88

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %85, %76
  %.212 = phi i32 [ 0, %76 ], [ %86, %85 ]
  %78 = mul nsw i32 %15, %25
  %79 = icmp slt i32 %.212, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = zext i32 %.212 to i64
  %82 = getelementptr inbounds double, double* %19, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fmul double %83, %62
  store double %84, double* %82, align 8
  br label %85

85:                                               ; preds = %80
  %86 = add nuw nsw i32 %.212, 1
  br label %77, !llvm.loop !19

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88, %61
  br i1 false, label %90, label %127

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %125, %90
  br i1 undef, label %92, label %126

92:                                               ; preds = %91
  br i1 undef, label %93, label %94

93:                                               ; preds = %92
  br label %95

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %93
  br i1 undef, label %96, label %108

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %106, %96
  br i1 undef, label %98, label %107

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %104, %98
  br i1 undef, label %100, label %105

100:                                              ; preds = %99
  br i1 undef, label %101, label %103

101:                                              ; preds = %100
  br i1 undef, label %102, label %103

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %101, %100
  br label %104

104:                                              ; preds = %103
  br label %99, !llvm.loop !20

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105
  br label %97, !llvm.loop !21

107:                                              ; preds = %97
  br label %124

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %122, %108
  br i1 undef, label %110, label %123

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %120, %110
  br i1 undef, label %112, label %121

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %118, %112
  br i1 undef, label %114, label %119

114:                                              ; preds = %113
  br i1 undef, label %115, label %117

115:                                              ; preds = %114
  br i1 undef, label %116, label %117

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %115, %114
  br label %118

118:                                              ; preds = %117
  br label %113, !llvm.loop !22

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  br label %111, !llvm.loop !23

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  br label %109, !llvm.loop !24

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124
  br label %91, !llvm.loop !25

126:                                              ; preds = %91
  br label %202

127:                                              ; preds = %89
  br label %128

128:                                              ; preds = %199, %127
  %.5 = phi i32 [ 0, %127 ], [ %200, %199 ]
  %129 = icmp slt i32 %.5, %13
  br i1 %129, label %130, label %201

130:                                              ; preds = %128
  %131 = icmp eq i32 %25, 1
  br i1 %131, label %132, label %159

132:                                              ; preds = %130
  %133 = zext i32 %.5 to i64
  %134 = getelementptr inbounds i32, i32* %9, i64 %133
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %156, %132
  %.26 = phi i32 [ %135, %132 ], [ %157, %156 ]
  %137 = add nuw nsw i32 %.5, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %9, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %.26, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = sext i32 %.26 to i64
  %144 = getelementptr inbounds i32, i32* %11, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %.26 to i64
  %147 = getelementptr inbounds double, double* %7, i64 %146
  %148 = load double, double* %147, align 8
  %149 = zext i32 %.5 to i64
  %150 = getelementptr inbounds double, double* %17, i64 %149
  %151 = load double, double* %150, align 8
  %152 = sext i32 %145 to i64
  %153 = getelementptr inbounds double, double* %19, i64 %152
  %154 = load double, double* %153, align 8
  %155 = call double @llvm.fmuladd.f64(double %148, double %151, double %154)
  store double %155, double* %153, align 8
  br label %156

156:                                              ; preds = %142
  %157 = add nsw i32 %.26, 1
  br label %136, !llvm.loop !26

158:                                              ; preds = %136
  br label %198

159:                                              ; preds = %130
  br label %160

160:                                              ; preds = %195, %159
  %.18 = phi i32 [ 0, %159 ], [ %196, %195 ]
  %161 = icmp slt i32 %.18, %25
  br i1 %161, label %162, label %197

162:                                              ; preds = %160
  %163 = zext i32 %.5 to i64
  %164 = getelementptr inbounds i32, i32* %9, i64 %163
  %165 = load i32, i32* %164, align 4
  br label %166

166:                                              ; preds = %192, %162
  %.3 = phi i32 [ %165, %162 ], [ %193, %192 ]
  %167 = add nuw nsw i32 %.5, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %9, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %.3, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %166
  %173 = sext i32 %.3 to i64
  %174 = getelementptr inbounds i32, i32* %11, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %.3 to i64
  %177 = getelementptr inbounds double, double* %7, i64 %176
  %178 = load double, double* %177, align 8
  %179 = mul nsw i32 %.5, %31
  %180 = mul nsw i32 %.18, %33
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %17, i64 %182
  %184 = load double, double* %183, align 8
  %185 = mul nsw i32 %175, %27
  %186 = mul nsw i32 %.18, %29
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, double* %19, i64 %188
  %190 = load double, double* %189, align 8
  %191 = call double @llvm.fmuladd.f64(double %178, double %184, double %190)
  store double %191, double* %189, align 8
  br label %192

192:                                              ; preds = %172
  %193 = add nsw i32 %.3, 1
  br label %166, !llvm.loop !27

194:                                              ; preds = %166
  br label %195

195:                                              ; preds = %194
  %196 = add nuw nsw i32 %.18, 1
  br label %160, !llvm.loop !28

197:                                              ; preds = %160
  br label %198

198:                                              ; preds = %197, %158
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.5, 1
  br label %128, !llvm.loop !29

201:                                              ; preds = %128
  br label %202

202:                                              ; preds = %201, %126
  %203 = fcmp une double %0, 1.000000e+00
  br i1 %203, label %204, label %216

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %213, %204
  %.6 = phi i32 [ 0, %204 ], [ %214, %213 ]
  %206 = mul nsw i32 %15, %25
  %207 = icmp slt i32 %.6, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = zext i32 %.6 to i64
  %210 = getelementptr inbounds double, double* %19, i64 %209
  %211 = load double, double* %210, align 8
  %212 = fmul double %211, %0
  store double %212, double* %210, align 8
  br label %213

213:                                              ; preds = %208
  %214 = add nuw nsw i32 %.6, 1
  br label %205, !llvm.loop !30

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %202
  br label %217

217:                                              ; preds = %216, %60
  ret i32 %.2
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec_FF(double noundef %0, %struct.hypre_CSRMatrix* nocapture noundef readonly %1, %struct.hypre_Vector* nocapture noundef readonly %2, double noundef %3, %struct.hypre_Vector* nocapture noundef readonly %4, i32* nocapture noundef readonly %5, i32* nocapture noundef readonly %6, i32 noundef %7) #3 {
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 0
  %10 = load double*, double** %9, align 8
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %2, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %4, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %.not = icmp eq i32 %18, %24
  br i1 %.not, label %28, label %27

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27, %8
  %.01 = phi i32 [ 1, %27 ], [ 0, %8 ]
  %.not8 = icmp eq i32 %16, %26
  br i1 %.not8, label %30, label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %28
  %.1 = phi i32 [ 2, %29 ], [ %.01, %28 ]
  %.not9 = icmp eq i32 %18, %24
  br i1 %.not9, label %33, label %31

31:                                               ; preds = %30
  %.not10 = icmp eq i32 %16, %26
  br i1 %.not10, label %33, label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %31, %30
  %.2 = phi i32 [ 3, %32 ], [ %.1, %31 ], [ %.1, %30 ]
  %34 = fcmp oeq double %0, 0.000000e+00
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %49, %35
  %.03 = phi i32 [ 0, %35 ], [ %50, %49 ]
  %37 = icmp slt i32 %.03, %16
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = zext i32 %.03 to i64
  %40 = getelementptr inbounds i32, i32* %5, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, %7
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = zext i32 %.03 to i64
  %45 = getelementptr inbounds double, double* %22, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fmul double %46, %3
  store double %47, double* %45, align 8
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.03, 1
  br label %36, !llvm.loop !31

51:                                               ; preds = %36
  br label %159

52:                                               ; preds = %33
  %53 = fdiv double %3, %0
  %54 = fcmp une double %53, 1.000000e+00
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = fcmp oeq double %53, 0.000000e+00
  br i1 %56, label %57, label %72

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %69, %57
  %.14 = phi i32 [ 0, %57 ], [ %70, %69 ]
  %59 = icmp slt i32 %.14, %16
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = zext i32 %.14 to i64
  %62 = getelementptr inbounds i32, i32* %5, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, %7
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = zext i32 %.14 to i64
  %67 = getelementptr inbounds double, double* %22, i64 %66
  store double 0.000000e+00, double* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68
  %70 = add nuw nsw i32 %.14, 1
  br label %58, !llvm.loop !32

71:                                               ; preds = %58
  br label %89

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %86, %72
  %.25 = phi i32 [ 0, %72 ], [ %87, %86 ]
  %74 = icmp slt i32 %.25, %16
  br i1 %74, label %75, label %88

75:                                               ; preds = %73
  %76 = zext i32 %.25 to i64
  %77 = getelementptr inbounds i32, i32* %5, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, %7
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = zext i32 %.25 to i64
  %82 = getelementptr inbounds double, double* %22, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fmul double %83, %53
  store double %84, double* %82, align 8
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85
  %87 = add nuw nsw i32 %.25, 1
  br label %73, !llvm.loop !33

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %137, %90
  %.3 = phi i32 [ 0, %90 ], [ %138, %137 ]
  %92 = icmp slt i32 %.3, %16
  br i1 %92, label %93, label %139

93:                                               ; preds = %91
  %94 = zext i32 %.3 to i64
  %95 = getelementptr inbounds i32, i32* %5, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, %7
  br i1 %97, label %98, label %136

98:                                               ; preds = %93
  %99 = zext i32 %.3 to i64
  %100 = getelementptr inbounds double, double* %22, i64 %99
  %101 = load double, double* %100, align 8
  %102 = zext i32 %.3 to i64
  %103 = getelementptr inbounds i32, i32* %12, i64 %102
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %131, %98
  %.06 = phi double [ %101, %98 ], [ %.17, %131 ]
  %.02 = phi i32 [ %104, %98 ], [ %132, %131 ]
  %106 = add nuw nsw i32 %.3, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %12, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %.02, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = sext i32 %.02 to i64
  %113 = getelementptr inbounds i32, i32* %14, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %6, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, %7
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = sext i32 %.02 to i64
  %121 = getelementptr inbounds double, double* %10, i64 %120
  %122 = load double, double* %121, align 8
  %123 = sext i32 %.02 to i64
  %124 = getelementptr inbounds i32, i32* %14, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %20, i64 %126
  %128 = load double, double* %127, align 8
  %129 = call double @llvm.fmuladd.f64(double %122, double %128, double %.06)
  br label %130

130:                                              ; preds = %119, %111
  %.17 = phi double [ %129, %119 ], [ %.06, %111 ]
  br label %131

131:                                              ; preds = %130
  %132 = add nsw i32 %.02, 1
  br label %105, !llvm.loop !34

133:                                              ; preds = %105
  %134 = zext i32 %.3 to i64
  %135 = getelementptr inbounds double, double* %22, i64 %134
  store double %.06, double* %135, align 8
  br label %136

136:                                              ; preds = %133, %93
  br label %137

137:                                              ; preds = %136
  %138 = add nuw nsw i32 %.3, 1
  br label %91, !llvm.loop !35

139:                                              ; preds = %91
  %140 = fcmp une double %0, 1.000000e+00
  br i1 %140, label %141, label %158

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %155, %141
  %.4 = phi i32 [ 0, %141 ], [ %156, %155 ]
  %143 = icmp slt i32 %.4, %16
  br i1 %143, label %144, label %157

144:                                              ; preds = %142
  %145 = zext i32 %.4 to i64
  %146 = getelementptr inbounds i32, i32* %5, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, %7
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = zext i32 %.4 to i64
  %151 = getelementptr inbounds double, double* %22, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fmul double %152, %0
  store double %153, double* %151, align 8
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154
  %156 = add nuw nsw i32 %.4, 1
  br label %142, !llvm.loop !36

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %139
  br label %159

159:                                              ; preds = %158, %51
  ret i32 %.2
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind }
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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
