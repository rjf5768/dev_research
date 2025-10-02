; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/Lalign11.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/Lalign11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@L__align11.mi = internal global float 0.000000e+00, align 4
@L__align11.m = internal global float* null, align 8
@L__align11.ijp = internal global i32** null, align 8
@L__align11.mpi = internal global i32 0, align 4
@L__align11.mp = internal global i32* null, align 8
@L__align11.w1 = internal global float* null, align 8
@L__align11.w2 = internal global float* null, align 8
@L__align11.match = internal global float* null, align 8
@L__align11.initverticalw = internal global float* null, align 8
@L__align11.lastverticalw = internal global float* null, align 8
@L__align11.mseq1 = internal global i8** null, align 8
@L__align11.mseq2 = internal global i8** null, align 8
@L__align11.mseq = internal global i8** null, align 8
@L__align11.orlgth1 = internal global i32 0, align 4
@L__align11.orlgth2 = internal global i32 0, align 4
@offset = external dso_local global i32, align 4
@penalty = external dso_local global i32, align 4
@penalty_ex = external dso_local global i32, align 4
@njob = external dso_local global i32, align 4
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@localstop = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external dso_local global [128 x [128 x i32]], align 16
@__const.Ltracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @L__align11(i8** noundef %0, i8** noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %40 = load i32, i32* @offset, align 4
  %41 = sub nsw i32 0, %40
  %42 = sitofp i32 %41 to float
  store float %42, float* %32, align 4
  %43 = load i32, i32* @offset, align 4
  %44 = sub nsw i32 0, %43
  %45 = sitofp i32 %44 to float
  store float %45, float* %33, align 4
  %46 = load i32, i32* @penalty, align 4
  %47 = sitofp i32 %46 to float
  store float %47, float* %34, align 4
  %48 = load i32, i32* @penalty_ex, align 4
  %49 = sitofp i32 %48 to float
  store float %49, float* %35, align 4
  %50 = load i32, i32* @L__align11.orlgth1, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %5
  %53 = load i32, i32* @njob, align 4
  %54 = call i8** @AllocateCharMtx(i32 noundef %53, i32 noundef 0)
  store i8** %54, i8*** @L__align11.mseq1, align 8
  %55 = load i32, i32* @njob, align 4
  %56 = call i8** @AllocateCharMtx(i32 noundef %55, i32 noundef 0)
  store i8** %56, i8*** @L__align11.mseq2, align 8
  br label %57

57:                                               ; preds = %52, %5
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* noundef %60) #5
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i8**, i8*** %8, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* noundef %65) #5
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @L__align11.orlgth1, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @L__align11.orlgth2, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %153

75:                                               ; preds = %71, %57
  %76 = load i32, i32* @L__align11.orlgth1, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* @L__align11.orlgth2, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load float*, float** @L__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %82)
  %83 = load float*, float** @L__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %83)
  %84 = load float*, float** @L__align11.match, align 8
  call void @FreeFloatVec(float* noundef %84)
  %85 = load float*, float** @L__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %85)
  %86 = load float*, float** @L__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %86)
  %87 = load float*, float** @L__align11.m, align 8
  call void @FreeFloatVec(float* noundef %87)
  %88 = load i32*, i32** @L__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %88)
  %89 = load i8**, i8*** @L__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %89)
  br label %90

90:                                               ; preds = %81, %78, %75
  %91 = load i32, i32* %16, align 4
  %92 = sitofp i32 %91 to double
  %93 = fmul double 1.300000e+00, %92
  %94 = fptosi double %93 to i32
  %95 = load i32, i32* @L__align11.orlgth1, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32, i32* %16, align 4
  %99 = sitofp i32 %98 to double
  %100 = fmul double 1.300000e+00, %99
  %101 = fptosi double %100 to i32
  br label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @L__align11.orlgth1, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i32 [ %101, %97 ], [ %103, %102 ]
  %106 = add nsw i32 %105, 100
  store i32 %106, i32* %36, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sitofp i32 %107 to double
  %109 = fmul double 1.300000e+00, %108
  %110 = fptosi double %109 to i32
  %111 = load i32, i32* @L__align11.orlgth2, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i32, i32* %17, align 4
  %115 = sitofp i32 %114 to double
  %116 = fmul double 1.300000e+00, %115
  %117 = fptosi double %116 to i32
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @L__align11.orlgth2, align 4
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi i32 [ %117, %113 ], [ %119, %118 ]
  %122 = add nsw i32 %121, 100
  store i32 %122, i32* %37, align 4
  %123 = load i32, i32* %37, align 4
  %124 = add nsw i32 %123, 2
  %125 = call float* @AllocateFloatVec(i32 noundef %124)
  store float* %125, float** @L__align11.w1, align 8
  %126 = load i32, i32* %37, align 4
  %127 = add nsw i32 %126, 2
  %128 = call float* @AllocateFloatVec(i32 noundef %127)
  store float* %128, float** @L__align11.w2, align 8
  %129 = load i32, i32* %37, align 4
  %130 = add nsw i32 %129, 2
  %131 = call float* @AllocateFloatVec(i32 noundef %130)
  store float* %131, float** @L__align11.match, align 8
  %132 = load i32, i32* %36, align 4
  %133 = add nsw i32 %132, 2
  %134 = call float* @AllocateFloatVec(i32 noundef %133)
  store float* %134, float** @L__align11.initverticalw, align 8
  %135 = load i32, i32* %36, align 4
  %136 = add nsw i32 %135, 2
  %137 = call float* @AllocateFloatVec(i32 noundef %136)
  store float* %137, float** @L__align11.lastverticalw, align 8
  %138 = load i32, i32* %37, align 4
  %139 = add nsw i32 %138, 2
  %140 = call float* @AllocateFloatVec(i32 noundef %139)
  store float* %140, float** @L__align11.m, align 8
  %141 = load i32, i32* %37, align 4
  %142 = add nsw i32 %141, 2
  %143 = call i32* @AllocateIntVec(i32 noundef %142)
  store i32* %143, i32** @L__align11.mp, align 8
  %144 = load i32, i32* @njob, align 4
  %145 = load i32, i32* %36, align 4
  %146 = load i32, i32* %37, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i8** @AllocateCharMtx(i32 noundef %144, i32 noundef %147)
  store i8** %148, i8*** @L__align11.mseq, align 8
  %149 = load i32, i32* %36, align 4
  %150 = sub nsw i32 %149, 100
  store i32 %150, i32* @L__align11.orlgth1, align 4
  %151 = load i32, i32* %37, align 4
  %152 = sub nsw i32 %151, 100
  store i32 %152, i32* @L__align11.orlgth2, align 4
  br label %153

153:                                              ; preds = %120, %71
  %154 = load i8**, i8*** @L__align11.mseq, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** @L__align11.mseq1, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  store i8* %156, i8** %158, align 8
  %159 = load i8**, i8*** @L__align11.mseq, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** @L__align11.mseq2, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @L__align11.orlgth1, align 4
  %165 = load i32, i32* @commonAlloc1, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %153
  %168 = load i32, i32* @L__align11.orlgth2, align 4
  %169 = load i32, i32* @commonAlloc2, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %205

171:                                              ; preds = %167, %153
  %172 = load i32, i32* @commonAlloc1, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* @commonAlloc2, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %178)
  br label %179

179:                                              ; preds = %177, %174, %171
  %180 = load i32, i32* @L__align11.orlgth1, align 4
  %181 = load i32, i32* @commonAlloc1, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* @L__align11.orlgth1, align 4
  br label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @commonAlloc1, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  store i32 %188, i32* %38, align 4
  %189 = load i32, i32* @L__align11.orlgth2, align 4
  %190 = load i32, i32* @commonAlloc2, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @L__align11.orlgth2, align 4
  br label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @commonAlloc2, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  store i32 %197, i32* %39, align 4
  %198 = load i32, i32* %38, align 4
  %199 = add nsw i32 %198, 10
  %200 = load i32, i32* %39, align 4
  %201 = add nsw i32 %200, 10
  %202 = call i32** @AllocateIntMtx(i32 noundef %199, i32 noundef %201)
  store i32** %202, i32*** @commonIP, align 8
  %203 = load i32, i32* %38, align 4
  store i32 %203, i32* @commonAlloc1, align 4
  %204 = load i32, i32* %39, align 4
  store i32 %204, i32* @commonAlloc2, align 4
  br label %205

205:                                              ; preds = %196, %167
  %206 = load i32**, i32*** @commonIP, align 8
  store i32** %206, i32*** @L__align11.ijp, align 8
  %207 = load float*, float** @L__align11.w1, align 8
  store float* %207, float** %21, align 8
  %208 = load float*, float** @L__align11.w2, align 8
  store float* %208, float** %22, align 8
  %209 = load float*, float** @L__align11.initverticalw, align 8
  %210 = load i8**, i8*** %8, align 8
  %211 = load i8**, i8*** %7, align 8
  %212 = load i32, i32* %16, align 4
  call void @match_calc(float* noundef %209, i8** noundef %210, i8** noundef %211, i32 noundef 0, i32 noundef %212)
  %213 = load float*, float** %21, align 8
  %214 = load i8**, i8*** %7, align 8
  %215 = load i8**, i8*** %8, align 8
  %216 = load i32, i32* %17, align 4
  call void @match_calc(float* noundef %213, i8** noundef %214, i8** noundef %215, i32 noundef 0, i32 noundef %216)
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %219

219:                                              ; preds = %238, %205
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load float*, float** %21, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %224, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float*, float** @L__align11.m, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  store float %229, float* %233, align 4
  %234 = load i32*, i32** @L__align11.mp, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %223
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %219, !llvm.loop !4

241:                                              ; preds = %219
  %242 = load float*, float** %21, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %242, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** @L__align11.lastverticalw, align 8
  %249 = getelementptr inbounds float, float* %248, i64 0
  store float %247, float* %249, align 4
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %252, %253
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @localstop, align 4
  store float -1.000000e+09, float* %29, align 4
  store i32 1, i32* %12, align 4
  br label %256

256:                                              ; preds = %410, %241
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %413

260:                                              ; preds = %256
  %261 = load float*, float** %22, align 8
  store float* %261, float** %23, align 8
  %262 = load float*, float** %21, align 8
  store float* %262, float** %22, align 8
  %263 = load float*, float** %23, align 8
  store float* %263, float** %21, align 8
  %264 = load float*, float** @L__align11.initverticalw, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %264, i64 %267
  %269 = load float, float* %268, align 4
  %270 = load float*, float** %22, align 8
  %271 = getelementptr inbounds float, float* %270, i64 0
  store float %269, float* %271, align 4
  %272 = load float*, float** %21, align 8
  %273 = load i8**, i8*** %7, align 8
  %274 = load i8**, i8*** %8, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %17, align 4
  call void @match_calc(float* noundef %272, i8** noundef %273, i8** noundef %274, i32 noundef %275, i32 noundef %276)
  %277 = load float*, float** @L__align11.initverticalw, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = load float*, float** %21, align 8
  %283 = getelementptr inbounds float, float* %282, i64 0
  store float %281, float* %283, align 4
  %284 = load float*, float** %22, align 8
  %285 = getelementptr inbounds float, float* %284, i64 0
  %286 = load float, float* %285, align 4
  store float %286, float* @L__align11.mi, align 4
  store i32 0, i32* @L__align11.mpi, align 4
  %287 = load i32**, i32*** @L__align11.ijp, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32* %292, i32** %24, align 8
  %293 = load float*, float** @L__align11.m, align 8
  %294 = getelementptr inbounds float, float* %293, i64 1
  store float* %294, float** %25, align 8
  %295 = load float*, float** %22, align 8
  store float* %295, float** %26, align 8
  %296 = load float*, float** %21, align 8
  %297 = getelementptr inbounds float, float* %296, i64 1
  store float* %297, float** %27, align 8
  %298 = load i32*, i32** @L__align11.mp, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32* %299, i32** %28, align 8
  %300 = load i32, i32* %17, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %302

302:                                              ; preds = %396, %260
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %399

306:                                              ; preds = %302
  %307 = load float*, float** %26, align 8
  %308 = load float, float* %307, align 4
  store float %308, float* %19, align 4
  %309 = load i32*, i32** %24, align 8
  store i32 0, i32* %309, align 4
  %310 = load float, float* @L__align11.mi, align 4
  %311 = load float, float* %34, align 4
  %312 = fadd float %310, %311
  store float %312, float* %20, align 4
  %313 = load float, float* %19, align 4
  %314 = fcmp ogt float %312, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %306
  %316 = load float, float* %20, align 4
  store float %316, float* %19, align 4
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* @L__align11.mpi, align 4
  %319 = sub nsw i32 %317, %318
  %320 = sub nsw i32 0, %319
  %321 = load i32*, i32** %24, align 8
  store i32 %320, i32* %321, align 4
  br label %322

322:                                              ; preds = %315, %306
  %323 = load float*, float** %26, align 8
  %324 = load float, float* %323, align 4
  %325 = load float, float* @L__align11.mi, align 4
  %326 = fcmp ogt float %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load float*, float** %26, align 8
  %329 = load float, float* %328, align 4
  store float %329, float* @L__align11.mi, align 4
  %330 = load i32, i32* %13, align 4
  %331 = sub nsw i32 %330, 1
  store i32 %331, i32* @L__align11.mpi, align 4
  br label %332

332:                                              ; preds = %327, %322
  %333 = load float, float* %35, align 4
  %334 = load float, float* @L__align11.mi, align 4
  %335 = fadd float %334, %333
  store float %335, float* @L__align11.mi, align 4
  %336 = load float*, float** %25, align 8
  %337 = load float, float* %336, align 4
  %338 = load float, float* %34, align 4
  %339 = fadd float %337, %338
  store float %339, float* %20, align 4
  %340 = load float, float* %19, align 4
  %341 = fcmp ogt float %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %332
  %343 = load float, float* %20, align 4
  store float %343, float* %19, align 4
  %344 = load i32, i32* %12, align 4
  %345 = load i32*, i32** %28, align 8
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %344, %346
  %348 = load i32*, i32** %24, align 8
  store i32 %347, i32* %348, align 4
  br label %349

349:                                              ; preds = %342, %332
  %350 = load float*, float** %26, align 8
  %351 = load float, float* %350, align 4
  %352 = load float*, float** %25, align 8
  %353 = load float, float* %352, align 4
  %354 = fcmp ogt float %351, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %349
  %356 = load float*, float** %26, align 8
  %357 = load float, float* %356, align 4
  %358 = load float*, float** %25, align 8
  store float %357, float* %358, align 4
  %359 = load i32, i32* %12, align 4
  %360 = sub nsw i32 %359, 1
  %361 = load i32*, i32** %28, align 8
  store i32 %360, i32* %361, align 4
  br label %362

362:                                              ; preds = %355, %349
  %363 = load float, float* %35, align 4
  %364 = load float*, float** %25, align 8
  %365 = load float, float* %364, align 4
  %366 = fadd float %365, %363
  store float %366, float* %364, align 4
  %367 = load float, float* %29, align 4
  %368 = load float, float* %19, align 4
  %369 = fcmp olt float %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %362
  %371 = load float, float* %19, align 4
  store float %371, float* %29, align 4
  %372 = load i32, i32* %12, align 4
  store i32 %372, i32* %30, align 4
  %373 = load i32, i32* %13, align 4
  store i32 %373, i32* %31, align 4
  br label %374

374:                                              ; preds = %370, %362
  %375 = load float, float* %19, align 4
  %376 = load float, float* %32, align 4
  %377 = fcmp olt float %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %374
  %379 = load i32, i32* @localstop, align 4
  %380 = load i32*, i32** %24, align 8
  store i32 %379, i32* %380, align 4
  %381 = load float, float* %33, align 4
  store float %381, float* %19, align 4
  br label %382

382:                                              ; preds = %378, %374
  %383 = load float, float* %19, align 4
  %384 = load float*, float** %27, align 8
  %385 = getelementptr inbounds float, float* %384, i32 1
  store float* %385, float** %27, align 8
  %386 = load float, float* %384, align 4
  %387 = fadd float %386, %383
  store float %387, float* %384, align 4
  %388 = load i32*, i32** %24, align 8
  %389 = getelementptr inbounds i32, i32* %388, i32 1
  store i32* %389, i32** %24, align 8
  %390 = load float*, float** %25, align 8
  %391 = getelementptr inbounds float, float* %390, i32 1
  store float* %391, float** %25, align 8
  %392 = load float*, float** %26, align 8
  %393 = getelementptr inbounds float, float* %392, i32 1
  store float* %393, float** %26, align 8
  %394 = load i32*, i32** %28, align 8
  %395 = getelementptr inbounds i32, i32* %394, i32 1
  store i32* %395, i32** %28, align 8
  br label %396

396:                                              ; preds = %382
  %397 = load i32, i32* %13, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %13, align 4
  br label %302, !llvm.loop !6

399:                                              ; preds = %302
  %400 = load float*, float** %21, align 8
  %401 = load i32, i32* %17, align 4
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds float, float* %400, i64 %403
  %405 = load float, float* %404, align 4
  %406 = load float*, float** @L__align11.lastverticalw, align 8
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds float, float* %406, i64 %408
  store float %405, float* %409, align 4
  br label %410

410:                                              ; preds = %399
  %411 = load i32, i32* %12, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %12, align 4
  br label %256, !llvm.loop !7

413:                                              ; preds = %256
  %414 = load i32**, i32*** @L__align11.ijp, align 8
  %415 = load i32, i32* %30, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %31, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @localstop, align 4
  %424 = icmp eq i32 %422, %423
  br i1 %424, label %425, label %436

425:                                              ; preds = %413
  %426 = load i8**, i8*** %7, align 8
  %427 = getelementptr inbounds i8*, i8** %426, i64 0
  %428 = load i8*, i8** %427, align 8
  %429 = call i8* @strcpy(i8* noundef %428, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %430 = load i8**, i8*** %8, align 8
  %431 = getelementptr inbounds i8*, i8** %430, i64 0
  %432 = load i8*, i8** %431, align 8
  %433 = call i8* @strcpy(i8* noundef %432, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %434 = load i32*, i32** %11, align 8
  store i32 0, i32* %434, align 4
  %435 = load i32*, i32** %10, align 8
  store i32 0, i32* %435, align 4
  store float 0.000000e+00, float* %6, align 4
  br label %481

436:                                              ; preds = %413
  %437 = load float*, float** %21, align 8
  %438 = load float*, float** @L__align11.lastverticalw, align 8
  %439 = load i8**, i8*** %7, align 8
  %440 = load i8**, i8*** %8, align 8
  %441 = load i8**, i8*** @L__align11.mseq1, align 8
  %442 = load i8**, i8*** @L__align11.mseq2, align 8
  %443 = load i32**, i32*** @L__align11.ijp, align 8
  %444 = load i32*, i32** %10, align 8
  %445 = load i32*, i32** %11, align 8
  %446 = load i32, i32* %30, align 4
  %447 = load i32, i32* %31, align 4
  %448 = call float @Ltracking(float* noundef %437, float* noundef %438, i8** noundef %439, i8** noundef %440, i8** noundef %441, i8** noundef %442, i32** noundef %443, i32* noundef %444, i32* noundef %445, i32 noundef %446, i32 noundef %447)
  %449 = load i8**, i8*** @L__align11.mseq1, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 0
  %451 = load i8*, i8** %450, align 8
  %452 = call i64 @strlen(i8* noundef %451) #5
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %18, align 4
  %454 = load i32, i32* %9, align 4
  %455 = load i32, i32* %18, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %460, label %457

457:                                              ; preds = %436
  %458 = load i32, i32* %18, align 4
  %459 = icmp sgt i32 %458, 5000000
  br i1 %459, label %460, label %465

460:                                              ; preds = %457, %436
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %462 = load i32, i32* %9, align 4
  %463 = load i32, i32* %18, align 4
  %464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %461, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %462, i32 noundef %463, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %465

465:                                              ; preds = %460, %457
  %466 = load i8**, i8*** %7, align 8
  %467 = getelementptr inbounds i8*, i8** %466, i64 0
  %468 = load i8*, i8** %467, align 8
  %469 = load i8**, i8*** @L__align11.mseq1, align 8
  %470 = getelementptr inbounds i8*, i8** %469, i64 0
  %471 = load i8*, i8** %470, align 8
  %472 = call i8* @strcpy(i8* noundef %468, i8* noundef %471) #6
  %473 = load i8**, i8*** %8, align 8
  %474 = getelementptr inbounds i8*, i8** %473, i64 0
  %475 = load i8*, i8** %474, align 8
  %476 = load i8**, i8*** @L__align11.mseq2, align 8
  %477 = getelementptr inbounds i8*, i8** %476, i64 0
  %478 = load i8*, i8** %477, align 8
  %479 = call i8* @strcpy(i8* noundef %475, i8* noundef %478) #6
  %480 = load float, float* %29, align 4
  store float %480, float* %6, align 4
  br label %481

481:                                              ; preds = %465, %425
  %482 = load float, float* %6, align 4
  ret float %482
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @FreeFloatVec(float* noundef) #1

declare dso_local void @FreeIntVec(i32* noundef) #1

declare dso_local void @FreeCharMtx(i8** noundef) #1

declare dso_local float* @AllocateFloatVec(i32 noundef) #1

declare dso_local i32* @AllocateIntVec(i32 noundef) #1

declare dso_local void @FreeIntMtx(i32** noundef) #1

declare dso_local i32** @AllocateIntMtx(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @match_calc(float* noundef %0, i8** noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store float* %0, float** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8**, i8*** %8, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i64 0, i64 %24
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %25, i64 0, i64 0
  store i32* %26, i32** %12, align 8
  br label %27

27:                                               ; preds = %31, %5
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %11, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sitofp i32 %39 to float
  %41 = load float*, float** %6, align 8
  %42 = getelementptr inbounds float, float* %41, i32 1
  store float* %42, float** %6, align 8
  store float %40, float* %41, align 4
  br label %27, !llvm.loop !8

43:                                               ; preds = %27
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal float @Ltracking(float* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, i8** noundef %5, i32** noundef %6, i32* noundef %7, i32* noundef %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca [2 x i8], align 1
  store float* %0, float** %12, align 8
  store float* %1, float** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i8** %5, i8*** %17, align 8
  store i32** %6, i32*** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %35 = bitcast [2 x i8]* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.Ltracking.gap, i32 0, i32 0), i64 2, i1 false)
  %36 = load i8**, i8*** %14, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* noundef %38) #5
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %28, align 4
  %41 = load i8**, i8*** %15, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* noundef %43) #5
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %29, align 4
  store i32 0, i32* %23, align 4
  br label %46

46:                                               ; preds = %59, %11
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %28, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* @localstop, align 4
  %53 = load i32**, i32*** %18, align 8
  %54 = load i32, i32* %23, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %23, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %23, align 4
  br label %46, !llvm.loop !9

62:                                               ; preds = %46
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %29, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* @localstop, align 4
  %70 = load i32**, i32*** %18, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %24, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %24, align 4
  br label %63, !llvm.loop !10

79:                                               ; preds = %63
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* %29, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i8**, i8*** %16, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %84, align 8
  %88 = load i8**, i8*** %16, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %28, align 4
  %92 = load i32, i32* %29, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i8**, i8*** %17, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %95, align 8
  %99 = load i8**, i8*** %17, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* %21, align 4
  store i32 %102, i32* %26, align 4
  %103 = load i32, i32* %22, align 4
  store i32 %103, i32* %27, align 4
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %29, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %31, align 4
  store i32 0, i32* %30, align 4
  br label %107

107:                                              ; preds = %274, %79
  %108 = load i32, i32* %30, align 4
  %109 = load i32, i32* %31, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %277

111:                                              ; preds = %107
  %112 = load i32**, i32*** %18, align 8
  %113 = load i32, i32* %26, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %27, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %111
  %123 = load i32, i32* %26, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %32, align 4
  %125 = load i32, i32* %27, align 4
  %126 = load i32**, i32*** %18, align 8
  %127 = load i32, i32* %26, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %27, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %125, %134
  store i32 %135, i32* %33, align 4
  br label %167

136:                                              ; preds = %111
  %137 = load i32**, i32*** %18, align 8
  %138 = load i32, i32* %26, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %27, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %136
  %148 = load i32, i32* %26, align 4
  %149 = load i32**, i32*** %18, align 8
  %150 = load i32, i32* %26, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %27, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %148, %157
  store i32 %158, i32* %32, align 4
  %159 = load i32, i32* %27, align 4
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %33, align 4
  br label %166

161:                                              ; preds = %136
  %162 = load i32, i32* %26, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %32, align 4
  %164 = load i32, i32* %27, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %33, align 4
  br label %166

166:                                              ; preds = %161, %147
  br label %167

167:                                              ; preds = %166, %122
  %168 = load i32, i32* %26, align 4
  %169 = load i32, i32* %32, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %25, align 4
  br label %171

171:                                              ; preds = %175, %167
  %172 = load i32, i32* %25, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %25, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %197

175:                                              ; preds = %171
  %176 = load i8**, i8*** %14, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %25, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i8**, i8*** %16, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 -1
  store i8* %188, i8** %186, align 8
  store i8 %184, i8* %188, align 1
  %189 = getelementptr inbounds [2 x i8], [2 x i8]* %34, i64 0, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = load i8**, i8*** %17, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 -1
  store i8* %194, i8** %192, align 8
  store i8 %190, i8* %194, align 1
  %195 = load i32, i32* %30, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %30, align 4
  br label %171, !llvm.loop !11

197:                                              ; preds = %171
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %33, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %25, align 4
  br label %201

201:                                              ; preds = %205, %197
  %202 = load i32, i32* %25, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %25, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  %206 = getelementptr inbounds [2 x i8], [2 x i8]* %34, i64 0, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = load i8**, i8*** %16, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 -1
  store i8* %211, i8** %209, align 8
  store i8 %207, i8* %211, align 1
  %212 = load i8**, i8*** %15, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i32, i32* %33, align 4
  %216 = load i32, i32* %25, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %214, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = load i8**, i8*** %17, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 0
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 -1
  store i8* %224, i8** %222, align 8
  store i8 %220, i8* %224, align 1
  %225 = load i32, i32* %30, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %30, align 4
  br label %201, !llvm.loop !12

227:                                              ; preds = %201
  %228 = load i32, i32* %26, align 4
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %27, align 4
  %232 = icmp sle i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230, %227
  br label %277

234:                                              ; preds = %230
  %235 = load i8**, i8*** %14, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* %32, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8**, i8*** %16, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 -1
  store i8* %245, i8** %243, align 8
  store i8 %241, i8* %245, align 1
  %246 = load i8**, i8*** %15, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %33, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = load i8**, i8*** %17, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 -1
  store i8* %256, i8** %254, align 8
  store i8 %252, i8* %256, align 1
  %257 = load i32**, i32*** %18, align 8
  %258 = load i32, i32* %32, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %33, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @localstop, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %234
  br label %277

269:                                              ; preds = %234
  %270 = load i32, i32* %30, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %30, align 4
  %272 = load i32, i32* %32, align 4
  store i32 %272, i32* %26, align 4
  %273 = load i32, i32* %33, align 4
  store i32 %273, i32* %27, align 4
  br label %274

274:                                              ; preds = %269
  %275 = load i32, i32* %30, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %30, align 4
  br label %107, !llvm.loop !13

277:                                              ; preds = %268, %233, %107
  %278 = load i32, i32* %32, align 4
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = load i32*, i32** %19, align 8
  store i32 0, i32* %281, align 4
  br label %285

282:                                              ; preds = %277
  %283 = load i32, i32* %32, align 4
  %284 = load i32*, i32** %19, align 8
  store i32 %283, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %280
  %286 = load i32, i32* %33, align 4
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = load i32*, i32** %20, align 8
  store i32 0, i32* %289, align 4
  br label %293

290:                                              ; preds = %285
  %291 = load i32, i32* %33, align 4
  %292 = load i32*, i32** %20, align 8
  store i32 %291, i32* %292, align 4
  br label %293

293:                                              ; preds = %290, %288
  ret float 0.000000e+00
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
