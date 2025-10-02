; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/Galign11.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/Galign11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@penalty = external dso_local global i32, align 4
@penalty_ex = external dso_local global i32, align 4
@G__align11.mi = internal global float 0.000000e+00, align 4
@G__align11.m = internal global float* null, align 8
@G__align11.ijp = internal global i32** null, align 8
@G__align11.mpi = internal global i32 0, align 4
@G__align11.mp = internal global i32* null, align 8
@G__align11.w1 = internal global float* null, align 8
@G__align11.w2 = internal global float* null, align 8
@G__align11.match = internal global float* null, align 8
@G__align11.initverticalw = internal global float* null, align 8
@G__align11.lastverticalw = internal global float* null, align 8
@G__align11.mseq1 = internal global i8** null, align 8
@G__align11.mseq2 = internal global i8** null, align 8
@G__align11.mseq = internal global i8** null, align 8
@G__align11.intwork = internal global i32** null, align 8
@G__align11.floatwork = internal global float** null, align 8
@G__align11.orlgth1 = internal global i32 0, align 4
@G__align11.orlgth2 = internal global i32 0, align 4
@njob = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"WARNING (g11): lgth1=%d, lgth2=%d\0A\00", align 1
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@outgap = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@G__align11_noalign.mi = internal global float 0.000000e+00, align 4
@G__align11_noalign.m = internal global float* null, align 8
@G__align11_noalign.w1 = internal global float* null, align 8
@G__align11_noalign.w2 = internal global float* null, align 8
@G__align11_noalign.match = internal global float* null, align 8
@G__align11_noalign.initverticalw = internal global float* null, align 8
@G__align11_noalign.lastverticalw = internal global float* null, align 8
@G__align11_noalign.intwork = internal global i32** null, align 8
@G__align11_noalign.floatwork = internal global float** null, align 8
@G__align11_noalign.orlgth1 = internal global i32 0, align 4
@G__align11_noalign.orlgth2 = internal global i32 0, align 4
@amino_dis = external dso_local global [128 x [128 x i32]], align 16
@__const.Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @G__align11(i8** noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load i32, i32* @penalty, align 4
  %30 = sitofp i32 %29 to float
  store float %30, float* %17, align 4
  %31 = load i32, i32* @penalty_ex, align 4
  %32 = sitofp i32 %31 to float
  store float %32, float* %18, align 4
  store float 0.000000e+00, float* %13, align 4
  %33 = load i32, i32* @G__align11.orlgth1, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32, i32* @njob, align 4
  %37 = call i8** @AllocateCharMtx(i32 noundef %36, i32 noundef 0)
  store i8** %37, i8*** @G__align11.mseq1, align 8
  %38 = load i32, i32* @njob, align 4
  %39 = call i8** @AllocateCharMtx(i32 noundef %38, i32 noundef 0)
  store i8** %39, i8*** @G__align11.mseq2, align 8
  br label %40

40:                                               ; preds = %35, %3
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* noundef %43) #5
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlen(i8* noundef %48) #5
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %40
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %58, i32 noundef %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @G__align11.orlgth1, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @G__align11.orlgth2, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %171

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @G__align11.orlgth1, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* @G__align11.orlgth2, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load float*, float** @G__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %76)
  %77 = load float*, float** @G__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %77)
  %78 = load float*, float** @G__align11.match, align 8
  call void @FreeFloatVec(float* noundef %78)
  %79 = load float*, float** @G__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %79)
  %80 = load float*, float** @G__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %80)
  %81 = load float*, float** @G__align11.m, align 8
  call void @FreeFloatVec(float* noundef %81)
  %82 = load i32*, i32** @G__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %82)
  %83 = load i8**, i8*** @G__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %83)
  %84 = load float**, float*** @G__align11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %84)
  %85 = load i32**, i32*** @G__align11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %85)
  br label %86

86:                                               ; preds = %75, %72, %69
  %87 = load i32, i32* %10, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double 1.300000e+00, %88
  %90 = fptosi double %89 to i32
  %91 = load i32, i32* @G__align11.orlgth1, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = sitofp i32 %94 to double
  %96 = fmul double 1.300000e+00, %95
  %97 = fptosi double %96 to i32
  br label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @G__align11.orlgth1, align 4
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %97, %93 ], [ %99, %98 ]
  %102 = add nsw i32 %101, 100
  store i32 %102, i32* %25, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double 1.300000e+00, %104
  %106 = fptosi double %105 to i32
  %107 = load i32, i32* @G__align11.orlgth2, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = sitofp i32 %110 to double
  %112 = fmul double 1.300000e+00, %111
  %113 = fptosi double %112 to i32
  br label %116

114:                                              ; preds = %100
  %115 = load i32, i32* @G__align11.orlgth2, align 4
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i32 [ %113, %109 ], [ %115, %114 ]
  %118 = add nsw i32 %117, 100
  store i32 %118, i32* %26, align 4
  %119 = load i32, i32* %26, align 4
  %120 = add nsw i32 %119, 2
  %121 = call float* @AllocateFloatVec(i32 noundef %120)
  store float* %121, float** @G__align11.w1, align 8
  %122 = load i32, i32* %26, align 4
  %123 = add nsw i32 %122, 2
  %124 = call float* @AllocateFloatVec(i32 noundef %123)
  store float* %124, float** @G__align11.w2, align 8
  %125 = load i32, i32* %26, align 4
  %126 = add nsw i32 %125, 2
  %127 = call float* @AllocateFloatVec(i32 noundef %126)
  store float* %127, float** @G__align11.match, align 8
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %128, 2
  %130 = call float* @AllocateFloatVec(i32 noundef %129)
  store float* %130, float** @G__align11.initverticalw, align 8
  %131 = load i32, i32* %25, align 4
  %132 = add nsw i32 %131, 2
  %133 = call float* @AllocateFloatVec(i32 noundef %132)
  store float* %133, float** @G__align11.lastverticalw, align 8
  %134 = load i32, i32* %26, align 4
  %135 = add nsw i32 %134, 2
  %136 = call float* @AllocateFloatVec(i32 noundef %135)
  store float* %136, float** @G__align11.m, align 8
  %137 = load i32, i32* %26, align 4
  %138 = add nsw i32 %137, 2
  %139 = call i32* @AllocateIntVec(i32 noundef %138)
  store i32* %139, i32** @G__align11.mp, align 8
  %140 = load i32, i32* @njob, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %26, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i8** @AllocateCharMtx(i32 noundef %140, i32 noundef %143)
  store i8** %144, i8*** @G__align11.mseq, align 8
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %116
  %149 = load i32, i32* %25, align 4
  br label %152

150:                                              ; preds = %116
  %151 = load i32, i32* %26, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = add nsw i32 %153, 2
  %155 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %154)
  store float** %155, float*** @G__align11.floatwork, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %26, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %25, align 4
  br label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %26, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = add nsw i32 %164, 2
  %166 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %165)
  store i32** %166, i32*** @G__align11.intwork, align 8
  %167 = load i32, i32* %25, align 4
  %168 = sub nsw i32 %167, 100
  store i32 %168, i32* @G__align11.orlgth1, align 4
  %169 = load i32, i32* %26, align 4
  %170 = sub nsw i32 %169, 100
  store i32 %170, i32* @G__align11.orlgth2, align 4
  br label %171

171:                                              ; preds = %163, %65
  %172 = load i8**, i8*** @G__align11.mseq, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** @G__align11.mseq1, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  store i8* %174, i8** %176, align 8
  %177 = load i8**, i8*** @G__align11.mseq, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** @G__align11.mseq2, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @G__align11.orlgth1, align 4
  %183 = load i32, i32* @commonAlloc1, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %171
  %186 = load i32, i32* @G__align11.orlgth2, align 4
  %187 = load i32, i32* @commonAlloc2, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %223

189:                                              ; preds = %185, %171
  %190 = load i32, i32* @commonAlloc1, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* @commonAlloc2, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %196)
  br label %197

197:                                              ; preds = %195, %192, %189
  %198 = load i32, i32* @G__align11.orlgth1, align 4
  %199 = load i32, i32* @commonAlloc1, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @G__align11.orlgth1, align 4
  br label %205

203:                                              ; preds = %197
  %204 = load i32, i32* @commonAlloc1, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  store i32 %206, i32* %27, align 4
  %207 = load i32, i32* @G__align11.orlgth2, align 4
  %208 = load i32, i32* @commonAlloc2, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @G__align11.orlgth2, align 4
  br label %214

212:                                              ; preds = %205
  %213 = load i32, i32* @commonAlloc2, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  store i32 %215, i32* %28, align 4
  %216 = load i32, i32* %27, align 4
  %217 = add nsw i32 %216, 10
  %218 = load i32, i32* %28, align 4
  %219 = add nsw i32 %218, 10
  %220 = call i32** @AllocateIntMtx(i32 noundef %217, i32 noundef %219)
  store i32** %220, i32*** @commonIP, align 8
  %221 = load i32, i32* %27, align 4
  store i32 %221, i32* @commonAlloc1, align 4
  %222 = load i32, i32* %28, align 4
  store i32 %222, i32* @commonAlloc2, align 4
  br label %223

223:                                              ; preds = %214, %185
  %224 = load i32**, i32*** @commonIP, align 8
  store i32** %224, i32*** @G__align11.ijp, align 8
  %225 = load float*, float** @G__align11.w1, align 8
  store float* %225, float** %15, align 8
  %226 = load float*, float** @G__align11.w2, align 8
  store float* %226, float** %16, align 8
  %227 = load float*, float** @G__align11.initverticalw, align 8
  %228 = load i8**, i8*** %5, align 8
  %229 = load i8**, i8*** %4, align 8
  %230 = load i32, i32* %10, align 4
  call void @match_calc(float* noundef %227, i8** noundef %228, i8** noundef %229, i32 noundef 0, i32 noundef %230)
  %231 = load float*, float** %15, align 8
  %232 = load i8**, i8*** %4, align 8
  %233 = load i8**, i8*** %5, align 8
  %234 = load i32, i32* %11, align 4
  call void @match_calc(float* noundef %231, i8** noundef %232, i8** noundef %233, i32 noundef 0, i32 noundef %234)
  %235 = load i32, i32* @outgap, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %272

237:                                              ; preds = %223
  store i32 1, i32* %7, align 4
  br label %238

238:                                              ; preds = %251, %237
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, 1
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load float, float* %17, align 4
  %245 = load float*, float** @G__align11.initverticalw, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fadd float %249, %244
  store float %250, float* %248, align 4
  br label %251

251:                                              ; preds = %243
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %7, align 4
  br label %238, !llvm.loop !4

254:                                              ; preds = %238
  store i32 1, i32* %8, align 4
  br label %255

255:                                              ; preds = %268, %254
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %255
  %261 = load float, float* %17, align 4
  %262 = load float*, float** %15, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fadd float %266, %261
  store float %267, float* %265, align 4
  br label %268

268:                                              ; preds = %260
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %255, !llvm.loop !6

271:                                              ; preds = %255
  br label %272

272:                                              ; preds = %271, %223
  store i32 1, i32* %8, align 4
  br label %273

273:                                              ; preds = %293, %272
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  %277 = icmp slt i32 %274, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %273
  %279 = load float*, float** %15, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %279, i64 %282
  %284 = load float, float* %283, align 4
  %285 = load float*, float** @G__align11.m, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  store float %284, float* %288, align 4
  %289 = load i32*, i32** @G__align11.mp, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %278
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %273, !llvm.loop !7

296:                                              ; preds = %273
  %297 = load i32, i32* %11, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load float*, float** @G__align11.lastverticalw, align 8
  %301 = getelementptr inbounds float, float* %300, i64 0
  store float 0.000000e+00, float* %301, align 4
  br label %311

302:                                              ; preds = %296
  %303 = load float*, float** %15, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sub nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %303, i64 %306
  %308 = load float, float* %307, align 4
  %309 = load float*, float** @G__align11.lastverticalw, align 8
  %310 = getelementptr inbounds float, float* %309, i64 0
  store float %308, float* %310, align 4
  br label %311

311:                                              ; preds = %302, %299
  %312 = load i32, i32* @outgap, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %319

317:                                              ; preds = %311
  %318 = load i32, i32* %10, align 4
  store i32 %318, i32* %9, align 4
  br label %319

319:                                              ; preds = %317, %314
  store i32 1, i32* %7, align 4
  br label %320

320:                                              ; preds = %458, %319
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %9, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %461

324:                                              ; preds = %320
  %325 = load float*, float** %16, align 8
  store float* %325, float** %19, align 8
  %326 = load float*, float** %15, align 8
  store float* %326, float** %16, align 8
  %327 = load float*, float** %19, align 8
  store float* %327, float** %15, align 8
  %328 = load float*, float** @G__align11.initverticalw, align 8
  %329 = load i32, i32* %7, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %328, i64 %331
  %333 = load float, float* %332, align 4
  %334 = load float*, float** %16, align 8
  %335 = getelementptr inbounds float, float* %334, i64 0
  store float %333, float* %335, align 4
  %336 = load float*, float** %15, align 8
  %337 = load i8**, i8*** %4, align 8
  %338 = load i8**, i8*** %5, align 8
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %11, align 4
  call void @match_calc(float* noundef %336, i8** noundef %337, i8** noundef %338, i32 noundef %339, i32 noundef %340)
  %341 = load float*, float** @G__align11.initverticalw, align 8
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  %345 = load float, float* %344, align 4
  %346 = load float*, float** %15, align 8
  %347 = getelementptr inbounds float, float* %346, i64 0
  store float %345, float* %347, align 4
  %348 = load float*, float** %16, align 8
  %349 = getelementptr inbounds float, float* %348, i64 0
  %350 = load float, float* %349, align 4
  store float %350, float* @G__align11.mi, align 4
  store i32 0, i32* @G__align11.mpi, align 4
  %351 = load i32**, i32*** @G__align11.ijp, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 1
  store i32* %356, i32** %20, align 8
  %357 = load float*, float** @G__align11.m, align 8
  %358 = getelementptr inbounds float, float* %357, i64 1
  store float* %358, float** %21, align 8
  %359 = load float*, float** %16, align 8
  store float* %359, float** %22, align 8
  %360 = load float*, float** %15, align 8
  %361 = getelementptr inbounds float, float* %360, i64 1
  store float* %361, float** %23, align 8
  %362 = load i32*, i32** @G__align11.mp, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  store i32* %363, i32** %24, align 8
  store i32 1, i32* %8, align 4
  br label %364

364:                                              ; preds = %444, %324
  %365 = load i32, i32* %8, align 4
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  %368 = icmp slt i32 %365, %367
  br i1 %368, label %369, label %447

369:                                              ; preds = %364
  %370 = load float*, float** %22, align 8
  %371 = load float, float* %370, align 4
  store float %371, float* %13, align 4
  %372 = load i32*, i32** %20, align 8
  store i32 0, i32* %372, align 4
  %373 = load float, float* @G__align11.mi, align 4
  %374 = load float, float* %17, align 4
  %375 = fadd float %373, %374
  store float %375, float* %14, align 4
  %376 = load float, float* %13, align 4
  %377 = fcmp ogt float %375, %376
  br i1 %377, label %378, label %385

378:                                              ; preds = %369
  %379 = load float, float* %14, align 4
  store float %379, float* %13, align 4
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @G__align11.mpi, align 4
  %382 = sub nsw i32 %380, %381
  %383 = sub nsw i32 0, %382
  %384 = load i32*, i32** %20, align 8
  store i32 %383, i32* %384, align 4
  br label %385

385:                                              ; preds = %378, %369
  %386 = load float*, float** %22, align 8
  %387 = load float, float* %386, align 4
  store float %387, float* %14, align 4
  %388 = load float, float* @G__align11.mi, align 4
  %389 = fcmp oge float %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = load float, float* %14, align 4
  store float %391, float* @G__align11.mi, align 4
  %392 = load i32, i32* %8, align 4
  %393 = sub nsw i32 %392, 1
  store i32 %393, i32* @G__align11.mpi, align 4
  br label %394

394:                                              ; preds = %390, %385
  %395 = load float, float* %18, align 4
  %396 = load float, float* @G__align11.mi, align 4
  %397 = fadd float %396, %395
  store float %397, float* @G__align11.mi, align 4
  %398 = load float*, float** %21, align 8
  %399 = load float, float* %398, align 4
  %400 = load float, float* %17, align 4
  %401 = fadd float %399, %400
  store float %401, float* %14, align 4
  %402 = load float, float* %13, align 4
  %403 = fcmp ogt float %401, %402
  br i1 %403, label %404, label %411

404:                                              ; preds = %394
  %405 = load float, float* %14, align 4
  store float %405, float* %13, align 4
  %406 = load i32, i32* %7, align 4
  %407 = load i32*, i32** %24, align 8
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %406, %408
  %410 = load i32*, i32** %20, align 8
  store i32 %409, i32* %410, align 4
  br label %411

411:                                              ; preds = %404, %394
  %412 = load float*, float** %22, align 8
  %413 = load float, float* %412, align 4
  store float %413, float* %14, align 4
  %414 = load float*, float** %21, align 8
  %415 = load float, float* %414, align 4
  %416 = fcmp oge float %413, %415
  br i1 %416, label %417, label %423

417:                                              ; preds = %411
  %418 = load float, float* %14, align 4
  %419 = load float*, float** %21, align 8
  store float %418, float* %419, align 4
  %420 = load i32, i32* %7, align 4
  %421 = sub nsw i32 %420, 1
  %422 = load i32*, i32** %24, align 8
  store i32 %421, i32* %422, align 4
  br label %423

423:                                              ; preds = %417, %411
  %424 = load float, float* %18, align 4
  %425 = load float*, float** @G__align11.m, align 8
  %426 = load i32, i32* %8, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %425, i64 %427
  %429 = load float, float* %428, align 4
  %430 = fadd float %429, %424
  store float %430, float* %428, align 4
  %431 = load float, float* %13, align 4
  %432 = load float*, float** %23, align 8
  %433 = getelementptr inbounds float, float* %432, i32 1
  store float* %433, float** %23, align 8
  %434 = load float, float* %432, align 4
  %435 = fadd float %434, %431
  store float %435, float* %432, align 4
  %436 = load i32*, i32** %20, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %20, align 8
  %438 = load float*, float** %21, align 8
  %439 = getelementptr inbounds float, float* %438, i32 1
  store float* %439, float** %21, align 8
  %440 = load float*, float** %22, align 8
  %441 = getelementptr inbounds float, float* %440, i32 1
  store float* %441, float** %22, align 8
  %442 = load i32*, i32** %24, align 8
  %443 = getelementptr inbounds i32, i32* %442, i32 1
  store i32* %443, i32** %24, align 8
  br label %444

444:                                              ; preds = %423
  %445 = load i32, i32* %8, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %8, align 4
  br label %364, !llvm.loop !8

447:                                              ; preds = %364
  %448 = load float*, float** %15, align 8
  %449 = load i32, i32* %11, align 4
  %450 = sub nsw i32 %449, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %448, i64 %451
  %453 = load float, float* %452, align 4
  %454 = load float*, float** @G__align11.lastverticalw, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %454, i64 %456
  store float %453, float* %457, align 4
  br label %458

458:                                              ; preds = %447
  %459 = load i32, i32* %7, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %7, align 4
  br label %320, !llvm.loop !9

461:                                              ; preds = %320
  %462 = load float*, float** %15, align 8
  %463 = load float*, float** @G__align11.lastverticalw, align 8
  %464 = load i8**, i8*** %4, align 8
  %465 = load i8**, i8*** %5, align 8
  %466 = load i8**, i8*** @G__align11.mseq1, align 8
  %467 = load i8**, i8*** @G__align11.mseq2, align 8
  %468 = load i32**, i32*** @G__align11.ijp, align 8
  %469 = call float @Atracking(float* noundef %462, float* noundef %463, i8** noundef %464, i8** noundef %465, i8** noundef %466, i8** noundef %467, i32** noundef %468)
  %470 = load i8**, i8*** @G__align11.mseq1, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 0
  %472 = load i8*, i8** %471, align 8
  %473 = call i64 @strlen(i8* noundef %472) #5
  %474 = trunc i64 %473 to i32
  store i32 %474, i32* %12, align 4
  %475 = load i32, i32* %6, align 4
  %476 = load i32, i32* %12, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %481, label %478

478:                                              ; preds = %461
  %479 = load i32, i32* %12, align 4
  %480 = icmp sgt i32 %479, 5000000
  br i1 %480, label %481, label %486

481:                                              ; preds = %478, %461
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %483 = load i32, i32* %6, align 4
  %484 = load i32, i32* %12, align 4
  %485 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %482, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %483, i32 noundef %484, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %486

486:                                              ; preds = %481, %478
  %487 = load i8**, i8*** %4, align 8
  %488 = getelementptr inbounds i8*, i8** %487, i64 0
  %489 = load i8*, i8** %488, align 8
  %490 = load i8**, i8*** @G__align11.mseq1, align 8
  %491 = getelementptr inbounds i8*, i8** %490, i64 0
  %492 = load i8*, i8** %491, align 8
  %493 = call i8* @strcpy(i8* noundef %489, i8* noundef %492) #6
  %494 = load i8**, i8*** %5, align 8
  %495 = getelementptr inbounds i8*, i8** %494, i64 0
  %496 = load i8*, i8** %495, align 8
  %497 = load i8**, i8*** @G__align11.mseq2, align 8
  %498 = getelementptr inbounds i8*, i8** %497, i64 0
  %499 = load i8*, i8** %498, align 8
  %500 = call i8* @strcpy(i8* noundef %496, i8* noundef %499) #6
  %501 = load float, float* %13, align 4
  ret float %501
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @FreeFloatVec(float* noundef) #1

declare dso_local void @FreeIntVec(i32* noundef) #1

declare dso_local void @FreeCharMtx(i8** noundef) #1

declare dso_local void @FreeFloatMtx(float** noundef) #1

declare dso_local void @FreeIntMtx(i32** noundef) #1

declare dso_local float* @AllocateFloatVec(i32 noundef) #1

declare dso_local i32* @AllocateIntVec(i32 noundef) #1

declare dso_local float** @AllocateFloatMtx(i32 noundef, i32 noundef) #1

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
  br label %27, !llvm.loop !10

43:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @Atracking(float* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, i8** noundef %5, i32** noundef %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32**, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca [2 x i8], align 1
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %27 = bitcast [2 x i8]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.Atracking.gap, i32 0, i32 0), i64 2, i1 false)
  %28 = load i8**, i8*** %10, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* noundef %30) #5
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %22, align 4
  %33 = load i8**, i8*** %11, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* noundef %35) #5
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %23, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %52, %7
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %22, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32**, i32*** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %38, !llvm.loop !11

55:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %23, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  %64 = sub nsw i32 0, %63
  %65 = load i32**, i32*** %14, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %56, !llvm.loop !12

74:                                               ; preds = %56
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %23, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i8**, i8*** %12, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %79, align 8
  %83 = load i8**, i8*** %12, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i8**, i8*** %13, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %90, align 8
  %94 = load i8**, i8*** %13, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %22, align 4
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %23, align 4
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %23, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %103

103:                                              ; preds = %257, %74
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %25, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %260

107:                                              ; preds = %103
  %108 = load i32**, i32*** %14, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load i32, i32* %18, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %19, align 4
  %122 = load i32**, i32*** %14, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %121, %130
  store i32 %131, i32* %21, align 4
  br label %163

132:                                              ; preds = %107
  %133 = load i32**, i32*** %14, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %132
  %144 = load i32, i32* %18, align 4
  %145 = load i32**, i32*** %14, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %144, %153
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %19, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %162

157:                                              ; preds = %132
  %158 = load i32, i32* %18, align 4
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %21, align 4
  br label %162

162:                                              ; preds = %157, %143
  br label %163

163:                                              ; preds = %162, %118
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %20, align 4
  %166 = sub nsw i32 %164, %165
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %171, %163
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %167
  %172 = load i8**, i8*** %10, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = load i8**, i8*** %12, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 -1
  store i8* %184, i8** %182, align 8
  store i8 %180, i8* %184, align 1
  %185 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = load i8**, i8*** %13, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 0
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %190, i8** %188, align 8
  store i8 %186, i8* %190, align 1
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %24, align 4
  br label %167, !llvm.loop !13

193:                                              ; preds = %167
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %21, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %17, align 4
  br label %197

197:                                              ; preds = %201, %193
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %197
  %202 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = load i8**, i8*** %12, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 -1
  store i8* %207, i8** %205, align 8
  store i8 %203, i8* %207, align 1
  %208 = load i8**, i8*** %11, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %210, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = load i8**, i8*** %13, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %220, i8** %218, align 8
  store i8 %216, i8* %220, align 1
  %221 = load i32, i32* %24, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %24, align 4
  br label %197, !llvm.loop !14

223:                                              ; preds = %197
  %224 = load i32, i32* %18, align 4
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %19, align 4
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %226, %223
  br label %260

230:                                              ; preds = %226
  %231 = load i8**, i8*** %10, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = load i8**, i8*** %12, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 -1
  store i8* %241, i8** %239, align 8
  store i8 %237, i8* %241, align 1
  %242 = load i8**, i8*** %11, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = load i8**, i8*** %13, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 0
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %252, i8** %250, align 8
  store i8 %248, i8* %252, align 1
  %253 = load i32, i32* %24, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %20, align 4
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %21, align 4
  store i32 %256, i32* %19, align 4
  br label %257

257:                                              ; preds = %230
  %258 = load i32, i32* %24, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %24, align 4
  br label %103, !llvm.loop !15

260:                                              ; preds = %229, %103
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local float @G__align11_noalign([128 x i32]* noundef %0, i32 noundef %1, i32 noundef %2, i8** noundef %3, i8** noundef %4, i32 noundef %5) #0 {
  %7 = alloca [128 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store [128 x i32]* %0, [128 x i32]** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to float
  store float %31, float* %22, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sitofp i32 %32 to float
  store float %33, float* %23, align 4
  store float 0.000000e+00, float* %18, align 4
  %34 = load i8**, i8*** %10, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* noundef %36) #5
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load i8**, i8*** %11, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* noundef %41) #5
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %6
  %47 = load i32, i32* %17, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %6
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %51, i32 noundef %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %154

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load float*, float** @G__align11_noalign.w1, align 8
  call void @FreeFloatVec(float* noundef %69)
  %70 = load float*, float** @G__align11_noalign.w2, align 8
  call void @FreeFloatVec(float* noundef %70)
  %71 = load float*, float** @G__align11_noalign.match, align 8
  call void @FreeFloatVec(float* noundef %71)
  %72 = load float*, float** @G__align11_noalign.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %72)
  %73 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %73)
  %74 = load float*, float** @G__align11_noalign.m, align 8
  call void @FreeFloatVec(float* noundef %74)
  %75 = load float**, float*** @G__align11_noalign.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %75)
  %76 = load i32**, i32*** @G__align11_noalign.intwork, align 8
  call void @FreeIntMtx(i32** noundef %76)
  br label %77

77:                                               ; preds = %68, %65, %62
  %78 = load i32, i32* %16, align 4
  %79 = sitofp i32 %78 to double
  %80 = fmul double 1.300000e+00, %79
  %81 = fptosi double %80 to i32
  %82 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  %86 = sitofp i32 %85 to double
  %87 = fmul double 1.300000e+00, %86
  %88 = fptosi double %87 to i32
  br label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi i32 [ %88, %84 ], [ %90, %89 ]
  %93 = add nsw i32 %92, 100
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sitofp i32 %94 to double
  %96 = fmul double 1.300000e+00, %95
  %97 = fptosi double %96 to i32
  %98 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32, i32* %17, align 4
  %102 = sitofp i32 %101 to double
  %103 = fmul double 1.300000e+00, %102
  %104 = fptosi double %103 to i32
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %104, %100 ], [ %106, %105 ]
  %109 = add nsw i32 %108, 100
  store i32 %109, i32* %29, align 4
  %110 = load i32, i32* %29, align 4
  %111 = add nsw i32 %110, 2
  %112 = call float* @AllocateFloatVec(i32 noundef %111)
  store float* %112, float** @G__align11_noalign.w1, align 8
  %113 = load i32, i32* %29, align 4
  %114 = add nsw i32 %113, 2
  %115 = call float* @AllocateFloatVec(i32 noundef %114)
  store float* %115, float** @G__align11_noalign.w2, align 8
  %116 = load i32, i32* %29, align 4
  %117 = add nsw i32 %116, 2
  %118 = call float* @AllocateFloatVec(i32 noundef %117)
  store float* %118, float** @G__align11_noalign.match, align 8
  %119 = load i32, i32* %28, align 4
  %120 = add nsw i32 %119, 2
  %121 = call float* @AllocateFloatVec(i32 noundef %120)
  store float* %121, float** @G__align11_noalign.initverticalw, align 8
  %122 = load i32, i32* %28, align 4
  %123 = add nsw i32 %122, 2
  %124 = call float* @AllocateFloatVec(i32 noundef %123)
  store float* %124, float** @G__align11_noalign.lastverticalw, align 8
  %125 = load i32, i32* %29, align 4
  %126 = add nsw i32 %125, 2
  %127 = call float* @AllocateFloatVec(i32 noundef %126)
  store float* %127, float** @G__align11_noalign.m, align 8
  %128 = load i32, i32* %28, align 4
  %129 = load i32, i32* %29, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %107
  %132 = load i32, i32* %28, align 4
  br label %135

133:                                              ; preds = %107
  %134 = load i32, i32* %29, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = add nsw i32 %136, 2
  %138 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %137)
  store float** %138, float*** @G__align11_noalign.floatwork, align 8
  %139 = load i32, i32* %28, align 4
  %140 = load i32, i32* %29, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %28, align 4
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %29, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = add nsw i32 %147, 2
  %149 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %148)
  store i32** %149, i32*** @G__align11_noalign.intwork, align 8
  %150 = load i32, i32* %28, align 4
  %151 = sub nsw i32 %150, 100
  store i32 %151, i32* @G__align11_noalign.orlgth1, align 4
  %152 = load i32, i32* %29, align 4
  %153 = sub nsw i32 %152, 100
  store i32 %153, i32* @G__align11_noalign.orlgth2, align 4
  br label %154

154:                                              ; preds = %146, %58
  %155 = load float*, float** @G__align11_noalign.w1, align 8
  store float* %155, float** %20, align 8
  %156 = load float*, float** @G__align11_noalign.w2, align 8
  store float* %156, float** %21, align 8
  %157 = load [128 x i32]*, [128 x i32]** %7, align 8
  %158 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %159 = load i8**, i8*** %11, align 8
  %160 = load i8**, i8*** %10, align 8
  %161 = load i32, i32* %16, align 4
  call void @match_calc_mtx([128 x i32]* noundef %157, float* noundef %158, i8** noundef %159, i8** noundef %160, i32 noundef 0, i32 noundef %161)
  %162 = load [128 x i32]*, [128 x i32]** %7, align 8
  %163 = load float*, float** %20, align 8
  %164 = load i8**, i8*** %10, align 8
  %165 = load i8**, i8*** %11, align 8
  %166 = load i32, i32* %17, align 4
  call void @match_calc_mtx([128 x i32]* noundef %162, float* noundef %163, i8** noundef %164, i8** noundef %165, i32 noundef 0, i32 noundef %166)
  %167 = load i32, i32* @outgap, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %204

169:                                              ; preds = %154
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %183, %169
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load float, float* %22, align 4
  %177 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, %176
  store float %182, float* %180, align 4
  br label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %170, !llvm.loop !16

186:                                              ; preds = %170
  store i32 1, i32* %14, align 4
  br label %187

187:                                              ; preds = %200, %186
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load float, float* %22, align 4
  %194 = load float*, float** %20, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fadd float %198, %193
  store float %199, float* %197, align 4
  br label %200

200:                                              ; preds = %192
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %187, !llvm.loop !17

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %154
  store i32 1, i32* %14, align 4
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %207, 1
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load float*, float** %20, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %211, i64 %214
  %216 = load float, float* %215, align 4
  %217 = load float*, float** @G__align11_noalign.m, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  store float %216, float* %220, align 4
  br label %221

221:                                              ; preds = %210
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %205, !llvm.loop !18

224:                                              ; preds = %205
  %225 = load i32, i32* %17, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %229 = getelementptr inbounds float, float* %228, i64 0
  store float 0.000000e+00, float* %229, align 4
  br label %239

230:                                              ; preds = %224
  %231 = load float*, float** %20, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %231, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %238 = getelementptr inbounds float, float* %237, i64 0
  store float %236, float* %238, align 4
  br label %239

239:                                              ; preds = %230, %227
  %240 = load i32, i32* @outgap, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %247

245:                                              ; preds = %239
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %245, %242
  store i32 1, i32* %13, align 4
  br label %248

248:                                              ; preds = %359, %247
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %362

252:                                              ; preds = %248
  %253 = load float*, float** %21, align 8
  store float* %253, float** %24, align 8
  %254 = load float*, float** %20, align 8
  store float* %254, float** %21, align 8
  %255 = load float*, float** %24, align 8
  store float* %255, float** %20, align 8
  %256 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %256, i64 %259
  %261 = load float, float* %260, align 4
  %262 = load float*, float** %21, align 8
  %263 = getelementptr inbounds float, float* %262, i64 0
  store float %261, float* %263, align 4
  %264 = load [128 x i32]*, [128 x i32]** %7, align 8
  %265 = load float*, float** %20, align 8
  %266 = load i8**, i8*** %10, align 8
  %267 = load i8**, i8*** %11, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %17, align 4
  call void @match_calc_mtx([128 x i32]* noundef %264, float* noundef %265, i8** noundef %266, i8** noundef %267, i32 noundef %268, i32 noundef %269)
  %270 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  %274 = load float, float* %273, align 4
  %275 = load float*, float** %20, align 8
  %276 = getelementptr inbounds float, float* %275, i64 0
  store float %274, float* %276, align 4
  %277 = load float*, float** %21, align 8
  %278 = getelementptr inbounds float, float* %277, i64 0
  %279 = load float, float* %278, align 4
  store float %279, float* @G__align11_noalign.mi, align 4
  %280 = load float*, float** @G__align11_noalign.m, align 8
  %281 = getelementptr inbounds float, float* %280, i64 1
  store float* %281, float** %25, align 8
  %282 = load float*, float** %21, align 8
  store float* %282, float** %26, align 8
  %283 = load float*, float** %20, align 8
  %284 = getelementptr inbounds float, float* %283, i64 1
  store float* %284, float** %27, align 8
  store i32 1, i32* %14, align 4
  br label %285

285:                                              ; preds = %345, %252
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %17, align 4
  %288 = add nsw i32 %287, 1
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %348

290:                                              ; preds = %285
  %291 = load float*, float** %26, align 8
  %292 = load float, float* %291, align 4
  store float %292, float* %18, align 4
  %293 = load float, float* @G__align11_noalign.mi, align 4
  %294 = load float, float* %22, align 4
  %295 = fadd float %293, %294
  store float %295, float* %19, align 4
  %296 = load float, float* %18, align 4
  %297 = fcmp ogt float %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %290
  %299 = load float, float* %19, align 4
  store float %299, float* %18, align 4
  br label %300

300:                                              ; preds = %298, %290
  %301 = load float*, float** %26, align 8
  %302 = load float, float* %301, align 4
  store float %302, float* %19, align 4
  %303 = load float, float* @G__align11_noalign.mi, align 4
  %304 = fcmp oge float %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load float, float* %19, align 4
  store float %306, float* @G__align11_noalign.mi, align 4
  br label %307

307:                                              ; preds = %305, %300
  %308 = load float, float* %23, align 4
  %309 = load float, float* @G__align11_noalign.mi, align 4
  %310 = fadd float %309, %308
  store float %310, float* @G__align11_noalign.mi, align 4
  %311 = load float*, float** %25, align 8
  %312 = load float, float* %311, align 4
  %313 = load float, float* %22, align 4
  %314 = fadd float %312, %313
  store float %314, float* %19, align 4
  %315 = load float, float* %18, align 4
  %316 = fcmp ogt float %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %307
  %318 = load float, float* %19, align 4
  store float %318, float* %18, align 4
  br label %319

319:                                              ; preds = %317, %307
  %320 = load float*, float** %26, align 8
  %321 = load float, float* %320, align 4
  store float %321, float* %19, align 4
  %322 = load float*, float** %25, align 8
  %323 = load float, float* %322, align 4
  %324 = fcmp oge float %321, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load float, float* %19, align 4
  %327 = load float*, float** %25, align 8
  store float %326, float* %327, align 4
  br label %328

328:                                              ; preds = %325, %319
  %329 = load float, float* %23, align 4
  %330 = load float*, float** @G__align11_noalign.m, align 8
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %330, i64 %332
  %334 = load float, float* %333, align 4
  %335 = fadd float %334, %329
  store float %335, float* %333, align 4
  %336 = load float, float* %18, align 4
  %337 = load float*, float** %27, align 8
  %338 = getelementptr inbounds float, float* %337, i32 1
  store float* %338, float** %27, align 8
  %339 = load float, float* %337, align 4
  %340 = fadd float %339, %336
  store float %340, float* %337, align 4
  %341 = load float*, float** %25, align 8
  %342 = getelementptr inbounds float, float* %341, i32 1
  store float* %342, float** %25, align 8
  %343 = load float*, float** %26, align 8
  %344 = getelementptr inbounds float, float* %343, i32 1
  store float* %344, float** %26, align 8
  br label %345

345:                                              ; preds = %328
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %14, align 4
  br label %285, !llvm.loop !19

348:                                              ; preds = %285
  %349 = load float*, float** %20, align 8
  %350 = load i32, i32* %17, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %349, i64 %352
  %354 = load float, float* %353, align 4
  %355 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %355, i64 %357
  store float %354, float* %358, align 4
  br label %359

359:                                              ; preds = %348
  %360 = load i32, i32* %13, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %13, align 4
  br label %248, !llvm.loop !20

362:                                              ; preds = %248
  %363 = load float, float* %18, align 4
  ret float %363
}

; Function Attrs: noinline nounwind uwtable
define internal void @match_calc_mtx([128 x i32]* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca [128 x i32]*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store [128 x i32]* %0, [128 x i32]** %7, align 8
  store float* %1, float** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8**, i8*** %10, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load [128 x i32]*, [128 x i32]** %7, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* %18, i64 %27
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %28, i64 0, i64 0
  store i32* %29, i32** %14, align 8
  br label %30

30:                                               ; preds = %34, %6
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %13, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = load float*, float** %8, align 8
  %45 = getelementptr inbounds float, float* %44, i32 1
  store float* %45, float** %8, align 8
  store float %43, float* %44, align 4
  br label %30, !llvm.loop !21

46:                                               ; preds = %30
  ret void
}

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
