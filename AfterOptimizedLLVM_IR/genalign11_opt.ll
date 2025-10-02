; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/genalign11.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/genalign11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@genL__align11.mi = internal global float 0.000000e+00, align 4
@genL__align11.m = internal global float* null, align 8
@genL__align11.Mi = internal global float 0.000000e+00, align 4
@genL__align11.largeM = internal global float* null, align 8
@genL__align11.ijpi = internal global i32** null, align 8
@genL__align11.ijpj = internal global i32** null, align 8
@genL__align11.mpi = internal global i32 0, align 4
@genL__align11.mp = internal global i32* null, align 8
@genL__align11.Mpi = internal global i32 0, align 4
@genL__align11.Mp = internal global i32* null, align 8
@genL__align11.w1 = internal global float* null, align 8
@genL__align11.w2 = internal global float* null, align 8
@genL__align11.match = internal global float* null, align 8
@genL__align11.initverticalw = internal global float* null, align 8
@genL__align11.lastverticalw = internal global float* null, align 8
@genL__align11.mseq1 = internal global i8** null, align 8
@genL__align11.mseq2 = internal global i8** null, align 8
@genL__align11.mseq = internal global i8** null, align 8
@genL__align11.cpmx1 = internal global float** null, align 8
@genL__align11.cpmx2 = internal global float** null, align 8
@genL__align11.intwork = internal global i32** null, align 8
@genL__align11.floatwork = internal global float** null, align 8
@genL__align11.orlgth1 = internal global i32 0, align 4
@genL__align11.orlgth2 = internal global i32 0, align 4
@penalty = external dso_local global i32, align 4
@penalty_OP = external dso_local global i32, align 4
@penalty_ex = external dso_local global i32, align 4
@offset = external dso_local global i32, align 4
@njob = external dso_local global i32, align 4
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@commonJP = external dso_local global i32**, align 8
@localstop = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external dso_local global [128 x [128 x i32]], align 16
@__const.gentracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @genL__align11(i8** noundef %0, i8** noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4) #0 {
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
  %25 = alloca i32*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store float 0.000000e+00, float* %19, align 4
  %48 = load i32, i32* @penalty, align 4
  %49 = sitofp i32 %48 to float
  store float %49, float* %38, align 4
  %50 = load i32, i32* @penalty_OP, align 4
  %51 = sitofp i32 %50 to float
  store float %51, float* %39, align 4
  %52 = load i32, i32* @penalty_ex, align 4
  %53 = sitofp i32 %52 to float
  store float %53, float* %40, align 4
  %54 = load i32, i32* @offset, align 4
  %55 = sitofp i32 %54 to float
  store float %55, float* %41, align 4
  %56 = load float, float* %41, align 4
  %57 = fneg float %56
  store float %57, float* %42, align 4
  %58 = load float, float* %41, align 4
  %59 = fneg float %58
  store float %59, float* %43, align 4
  %60 = load i32, i32* @genL__align11.orlgth1, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %5
  %63 = load i32, i32* @njob, align 4
  %64 = call i8** @AllocateCharMtx(i32 noundef %63, i32 noundef 0)
  store i8** %64, i8*** @genL__align11.mseq1, align 8
  %65 = load i32, i32* @njob, align 4
  %66 = call i8** @AllocateCharMtx(i32 noundef %65, i32 noundef 0)
  store i8** %66, i8*** @genL__align11.mseq2, align 8
  br label %67

67:                                               ; preds = %62, %5
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* noundef %70) #5
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %16, align 4
  %73 = load i8**, i8*** %8, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strlen(i8* noundef %75) #5
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @genL__align11.orlgth1, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @genL__align11.orlgth2, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %203

85:                                               ; preds = %81, %67
  %86 = load i32, i32* @genL__align11.orlgth1, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, i32* @genL__align11.orlgth2, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load float*, float** @genL__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %92)
  %93 = load float*, float** @genL__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %93)
  %94 = load float*, float** @genL__align11.match, align 8
  call void @FreeFloatVec(float* noundef %94)
  %95 = load float*, float** @genL__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %95)
  %96 = load float*, float** @genL__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %96)
  %97 = load float*, float** @genL__align11.m, align 8
  call void @FreeFloatVec(float* noundef %97)
  %98 = load i32*, i32** @genL__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %98)
  %99 = load float*, float** @genL__align11.largeM, align 8
  call void @FreeFloatVec(float* noundef %99)
  %100 = load i32*, i32** @genL__align11.Mp, align 8
  call void @FreeIntVec(i32* noundef %100)
  %101 = load i8**, i8*** @genL__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %101)
  %102 = load float**, float*** @genL__align11.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %102)
  %103 = load float**, float*** @genL__align11.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %103)
  %104 = load float**, float*** @genL__align11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %104)
  %105 = load i32**, i32*** @genL__align11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %105)
  br label %106

106:                                              ; preds = %91, %88, %85
  %107 = load i32, i32* %16, align 4
  %108 = sitofp i32 %107 to double
  %109 = fmul double 1.300000e+00, %108
  %110 = fptosi double %109 to i32
  %111 = load i32, i32* @genL__align11.orlgth1, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  %115 = sitofp i32 %114 to double
  %116 = fmul double 1.300000e+00, %115
  %117 = fptosi double %116 to i32
  br label %120

118:                                              ; preds = %106
  %119 = load i32, i32* @genL__align11.orlgth1, align 4
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi i32 [ %117, %113 ], [ %119, %118 ]
  %122 = add nsw i32 %121, 100
  store i32 %122, i32* %44, align 4
  %123 = load i32, i32* %17, align 4
  %124 = sitofp i32 %123 to double
  %125 = fmul double 1.300000e+00, %124
  %126 = fptosi double %125 to i32
  %127 = load i32, i32* @genL__align11.orlgth2, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load i32, i32* %17, align 4
  %131 = sitofp i32 %130 to double
  %132 = fmul double 1.300000e+00, %131
  %133 = fptosi double %132 to i32
  br label %136

134:                                              ; preds = %120
  %135 = load i32, i32* @genL__align11.orlgth2, align 4
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi i32 [ %133, %129 ], [ %135, %134 ]
  %138 = add nsw i32 %137, 100
  store i32 %138, i32* %45, align 4
  %139 = load i32, i32* %45, align 4
  %140 = add nsw i32 %139, 2
  %141 = call float* @AllocateFloatVec(i32 noundef %140)
  store float* %141, float** @genL__align11.w1, align 8
  %142 = load i32, i32* %45, align 4
  %143 = add nsw i32 %142, 2
  %144 = call float* @AllocateFloatVec(i32 noundef %143)
  store float* %144, float** @genL__align11.w2, align 8
  %145 = load i32, i32* %45, align 4
  %146 = add nsw i32 %145, 2
  %147 = call float* @AllocateFloatVec(i32 noundef %146)
  store float* %147, float** @genL__align11.match, align 8
  %148 = load i32, i32* %44, align 4
  %149 = add nsw i32 %148, 2
  %150 = call float* @AllocateFloatVec(i32 noundef %149)
  store float* %150, float** @genL__align11.initverticalw, align 8
  %151 = load i32, i32* %44, align 4
  %152 = add nsw i32 %151, 2
  %153 = call float* @AllocateFloatVec(i32 noundef %152)
  store float* %153, float** @genL__align11.lastverticalw, align 8
  %154 = load i32, i32* %45, align 4
  %155 = add nsw i32 %154, 2
  %156 = call float* @AllocateFloatVec(i32 noundef %155)
  store float* %156, float** @genL__align11.m, align 8
  %157 = load i32, i32* %45, align 4
  %158 = add nsw i32 %157, 2
  %159 = call i32* @AllocateIntVec(i32 noundef %158)
  store i32* %159, i32** @genL__align11.mp, align 8
  %160 = load i32, i32* %45, align 4
  %161 = add nsw i32 %160, 2
  %162 = call float* @AllocateFloatVec(i32 noundef %161)
  store float* %162, float** @genL__align11.largeM, align 8
  %163 = load i32, i32* %45, align 4
  %164 = add nsw i32 %163, 2
  %165 = call i32* @AllocateIntVec(i32 noundef %164)
  store i32* %165, i32** @genL__align11.Mp, align 8
  %166 = load i32, i32* @njob, align 4
  %167 = load i32, i32* %44, align 4
  %168 = load i32, i32* %45, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i8** @AllocateCharMtx(i32 noundef %166, i32 noundef %169)
  store i8** %170, i8*** @genL__align11.mseq, align 8
  %171 = load i32, i32* %44, align 4
  %172 = add nsw i32 %171, 2
  %173 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %172)
  store float** %173, float*** @genL__align11.cpmx1, align 8
  %174 = load i32, i32* %45, align 4
  %175 = add nsw i32 %174, 2
  %176 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %175)
  store float** %176, float*** @genL__align11.cpmx2, align 8
  %177 = load i32, i32* %44, align 4
  %178 = load i32, i32* %45, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %136
  %181 = load i32, i32* %44, align 4
  br label %184

182:                                              ; preds = %136
  %183 = load i32, i32* %45, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = add nsw i32 %185, 2
  %187 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %186)
  store float** %187, float*** @genL__align11.floatwork, align 8
  %188 = load i32, i32* %44, align 4
  %189 = load i32, i32* %45, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* %44, align 4
  br label %195

193:                                              ; preds = %184
  %194 = load i32, i32* %45, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = add nsw i32 %196, 2
  %198 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %197)
  store i32** %198, i32*** @genL__align11.intwork, align 8
  %199 = load i32, i32* %44, align 4
  %200 = sub nsw i32 %199, 100
  store i32 %200, i32* @genL__align11.orlgth1, align 4
  %201 = load i32, i32* %45, align 4
  %202 = sub nsw i32 %201, 100
  store i32 %202, i32* @genL__align11.orlgth2, align 4
  br label %203

203:                                              ; preds = %195, %81
  %204 = load i8**, i8*** @genL__align11.mseq, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8**, i8*** @genL__align11.mseq1, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 0
  store i8* %206, i8** %208, align 8
  %209 = load i8**, i8*** @genL__align11.mseq, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = load i8**, i8*** @genL__align11.mseq2, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @genL__align11.orlgth1, align 4
  %215 = load i32, i32* @commonAlloc1, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %203
  %218 = load i32, i32* @genL__align11.orlgth2, align 4
  %219 = load i32, i32* @commonAlloc2, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %261

221:                                              ; preds = %217, %203
  %222 = load i32, i32* @commonAlloc1, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32, i32* @commonAlloc2, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %228)
  %229 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** noundef %229)
  br label %230

230:                                              ; preds = %227, %224, %221
  %231 = load i32, i32* @genL__align11.orlgth1, align 4
  %232 = load i32, i32* @commonAlloc1, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @genL__align11.orlgth1, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @commonAlloc1, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  store i32 %239, i32* %46, align 4
  %240 = load i32, i32* @genL__align11.orlgth2, align 4
  %241 = load i32, i32* @commonAlloc2, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @genL__align11.orlgth2, align 4
  br label %247

245:                                              ; preds = %238
  %246 = load i32, i32* @commonAlloc2, align 4
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  store i32 %248, i32* %47, align 4
  %249 = load i32, i32* %46, align 4
  %250 = add nsw i32 %249, 10
  %251 = load i32, i32* %47, align 4
  %252 = add nsw i32 %251, 10
  %253 = call i32** @AllocateIntMtx(i32 noundef %250, i32 noundef %252)
  store i32** %253, i32*** @commonIP, align 8
  %254 = load i32, i32* %46, align 4
  %255 = add nsw i32 %254, 10
  %256 = load i32, i32* %47, align 4
  %257 = add nsw i32 %256, 10
  %258 = call i32** @AllocateIntMtx(i32 noundef %255, i32 noundef %257)
  store i32** %258, i32*** @commonJP, align 8
  %259 = load i32, i32* %46, align 4
  store i32 %259, i32* @commonAlloc1, align 4
  %260 = load i32, i32* %47, align 4
  store i32 %260, i32* @commonAlloc2, align 4
  br label %261

261:                                              ; preds = %247, %217
  %262 = load i32**, i32*** @commonIP, align 8
  store i32** %262, i32*** @genL__align11.ijpi, align 8
  %263 = load i32**, i32*** @commonJP, align 8
  store i32** %263, i32*** @genL__align11.ijpj, align 8
  %264 = load float*, float** @genL__align11.w1, align 8
  store float* %264, float** %21, align 8
  %265 = load float*, float** @genL__align11.w2, align 8
  store float* %265, float** %22, align 8
  %266 = load float*, float** @genL__align11.initverticalw, align 8
  %267 = load i8**, i8*** %8, align 8
  %268 = load i8**, i8*** %7, align 8
  %269 = load i32, i32* %16, align 4
  call void @match_calc(float* noundef %266, i8** noundef %267, i8** noundef %268, i32 noundef 0, i32 noundef %269)
  %270 = load float*, float** %21, align 8
  %271 = load i8**, i8*** %7, align 8
  %272 = load i8**, i8*** %8, align 8
  %273 = load i32, i32* %17, align 4
  call void @match_calc(float* noundef %270, i8** noundef %271, i8** noundef %272, i32 noundef 0, i32 noundef %273)
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %276

276:                                              ; preds = %309, %261
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %312

280:                                              ; preds = %276
  %281 = load float*, float** %21, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %281, i64 %284
  %286 = load float, float* %285, align 4
  %287 = load float*, float** @genL__align11.m, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %287, i64 %289
  store float %286, float* %290, align 4
  %291 = load i32*, i32** @genL__align11.mp, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 0, i32* %294, align 4
  %295 = load float*, float** %21, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %295, i64 %298
  %300 = load float, float* %299, align 4
  %301 = load float*, float** @genL__align11.largeM, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  store float %300, float* %304, align 4
  %305 = load i32*, i32** @genL__align11.Mp, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 0, i32* %308, align 4
  br label %309

309:                                              ; preds = %280
  %310 = load i32, i32* %13, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %13, align 4
  br label %276, !llvm.loop !4

312:                                              ; preds = %276
  %313 = load float*, float** %21, align 8
  %314 = load i32, i32* %17, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %313, i64 %316
  %318 = load float, float* %317, align 4
  %319 = load float*, float** @genL__align11.lastverticalw, align 8
  %320 = getelementptr inbounds float, float* %319, i64 0
  store float %318, float* %320, align 4
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* @localstop, align 4
  store float -1.000000e+09, float* %32, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %36, align 4
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %327

327:                                              ; preds = %563, %312
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* %14, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %566

331:                                              ; preds = %327
  %332 = load float*, float** %22, align 8
  store float* %332, float** %23, align 8
  %333 = load float*, float** %21, align 8
  store float* %333, float** %22, align 8
  %334 = load float*, float** %23, align 8
  store float* %334, float** %21, align 8
  %335 = load float*, float** @genL__align11.initverticalw, align 8
  %336 = load i32, i32* %12, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %335, i64 %338
  %340 = load float, float* %339, align 4
  %341 = load float*, float** %22, align 8
  %342 = getelementptr inbounds float, float* %341, i64 0
  store float %340, float* %342, align 4
  %343 = load float*, float** %21, align 8
  %344 = load i8**, i8*** %7, align 8
  %345 = load i8**, i8*** %8, align 8
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* %17, align 4
  call void @match_calc(float* noundef %343, i8** noundef %344, i8** noundef %345, i32 noundef %346, i32 noundef %347)
  %348 = load float*, float** @genL__align11.initverticalw, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  %352 = load float, float* %351, align 4
  %353 = load float*, float** %21, align 8
  %354 = getelementptr inbounds float, float* %353, i64 0
  store float %352, float* %354, align 4
  %355 = load float*, float** %22, align 8
  %356 = getelementptr inbounds float, float* %355, i64 0
  %357 = load float, float* %356, align 4
  store float %357, float* @genL__align11.mi, align 4
  store i32 0, i32* @genL__align11.mpi, align 4
  %358 = load float*, float** %22, align 8
  %359 = getelementptr inbounds float, float* %358, i64 0
  %360 = load float, float* %359, align 4
  store float %360, float* @genL__align11.Mi, align 4
  store i32 0, i32* @genL__align11.Mpi, align 4
  %361 = load i32**, i32*** @genL__align11.ijpi, align 8
  %362 = load i32, i32* %12, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32* %366, i32** %24, align 8
  %367 = load i32**, i32*** @genL__align11.ijpj, align 8
  %368 = load i32, i32* %12, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32*, i32** %367, i64 %369
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 1
  store i32* %372, i32** %25, align 8
  %373 = load float*, float** @genL__align11.m, align 8
  %374 = getelementptr inbounds float, float* %373, i64 1
  store float* %374, float** %26, align 8
  %375 = load float*, float** @genL__align11.largeM, align 8
  %376 = getelementptr inbounds float, float* %375, i64 1
  store float* %376, float** %27, align 8
  %377 = load float*, float** %22, align 8
  store float* %377, float** %28, align 8
  %378 = load float*, float** %21, align 8
  %379 = getelementptr inbounds float, float* %378, i64 1
  store float* %379, float** %29, align 8
  %380 = load i32*, i32** @genL__align11.mp, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 1
  store i32* %381, i32** %30, align 8
  %382 = load i32*, i32** @genL__align11.Mp, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  store i32* %383, i32** %31, align 8
  store float 0xC12E847FC0000000, float* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %386

386:                                              ; preds = %549, %331
  %387 = load i32, i32* %13, align 4
  %388 = load i32, i32* %15, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %552

390:                                              ; preds = %386
  %391 = load float*, float** %28, align 8
  %392 = load float, float* %391, align 4
  store float %392, float* %19, align 4
  %393 = load i32, i32* %12, align 4
  %394 = sub nsw i32 %393, 1
  %395 = load i32*, i32** %24, align 8
  store i32 %394, i32* %395, align 4
  %396 = load i32, i32* %13, align 4
  %397 = sub nsw i32 %396, 1
  %398 = load i32*, i32** %25, align 8
  store i32 %397, i32* %398, align 4
  %399 = load float, float* @genL__align11.mi, align 4
  %400 = load float, float* %38, align 4
  %401 = fadd float %399, %400
  store float %401, float* %20, align 4
  %402 = load float, float* %20, align 4
  %403 = load float, float* %19, align 4
  %404 = fcmp ogt float %402, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %390
  %406 = load float, float* %20, align 4
  store float %406, float* %19, align 4
  %407 = load i32, i32* @genL__align11.mpi, align 4
  %408 = load i32*, i32** %25, align 8
  store i32 %407, i32* %408, align 4
  br label %409

409:                                              ; preds = %405, %390
  %410 = load float*, float** %28, align 8
  %411 = load float, float* %410, align 4
  store float %411, float* %20, align 4
  %412 = load float, float* %20, align 4
  %413 = load float, float* @genL__align11.mi, align 4
  %414 = fcmp ogt float %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load float, float* %20, align 4
  store float %416, float* @genL__align11.mi, align 4
  %417 = load i32, i32* %13, align 4
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* @genL__align11.mpi, align 4
  br label %419

419:                                              ; preds = %415, %409
  %420 = load float, float* %40, align 4
  %421 = load float, float* @genL__align11.mi, align 4
  %422 = fadd float %421, %420
  store float %422, float* @genL__align11.mi, align 4
  %423 = load float*, float** %26, align 8
  %424 = load float, float* %423, align 4
  %425 = load float, float* %38, align 4
  %426 = fadd float %424, %425
  store float %426, float* %20, align 4
  %427 = load float, float* %20, align 4
  %428 = load float, float* %19, align 4
  %429 = fcmp ogt float %427, %428
  br i1 %429, label %430, label %438

430:                                              ; preds = %419
  %431 = load float, float* %20, align 4
  store float %431, float* %19, align 4
  %432 = load i32*, i32** %30, align 8
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %24, align 8
  store i32 %433, i32* %434, align 4
  %435 = load i32, i32* %13, align 4
  %436 = sub nsw i32 %435, 1
  %437 = load i32*, i32** %25, align 8
  store i32 %436, i32* %437, align 4
  br label %438

438:                                              ; preds = %430, %419
  %439 = load float*, float** %28, align 8
  %440 = load float, float* %439, align 4
  store float %440, float* %20, align 4
  %441 = load float, float* %20, align 4
  %442 = load float*, float** %26, align 8
  %443 = load float, float* %442, align 4
  %444 = fcmp ogt float %441, %443
  br i1 %444, label %445, label %451

445:                                              ; preds = %438
  %446 = load float, float* %20, align 4
  %447 = load float*, float** %26, align 8
  store float %446, float* %447, align 4
  %448 = load i32, i32* %12, align 4
  %449 = sub nsw i32 %448, 1
  %450 = load i32*, i32** %30, align 8
  store i32 %449, i32* %450, align 4
  br label %451

451:                                              ; preds = %445, %438
  %452 = load float, float* %40, align 4
  %453 = load float*, float** %26, align 8
  %454 = load float, float* %453, align 4
  %455 = fadd float %454, %452
  store float %455, float* %453, align 4
  %456 = load float, float* %33, align 4
  %457 = load float, float* %39, align 4
  %458 = fadd float %456, %457
  store float %458, float* %20, align 4
  %459 = load float, float* %20, align 4
  %460 = load float, float* %19, align 4
  %461 = fcmp ogt float %459, %460
  br i1 %461, label %462, label %468

462:                                              ; preds = %451
  %463 = load float, float* %20, align 4
  store float %463, float* %19, align 4
  %464 = load i32, i32* %34, align 4
  %465 = load i32*, i32** %24, align 8
  store i32 %464, i32* %465, align 4
  %466 = load i32, i32* %35, align 4
  %467 = load i32*, i32** %25, align 8
  store i32 %466, i32* %467, align 4
  br label %468

468:                                              ; preds = %462, %451
  %469 = load float, float* @genL__align11.Mi, align 4
  %470 = load float, float* %33, align 4
  %471 = fcmp ogt float %469, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %468
  %473 = load float, float* @genL__align11.Mi, align 4
  store float %473, float* %33, align 4
  %474 = load i32, i32* %12, align 4
  %475 = sub nsw i32 %474, 1
  store i32 %475, i32* %34, align 4
  %476 = load i32, i32* @genL__align11.Mpi, align 4
  store i32 %476, i32* %35, align 4
  br label %477

477:                                              ; preds = %472, %468
  %478 = load float*, float** %27, align 8
  %479 = load float, float* %478, align 4
  %480 = load float, float* %33, align 4
  %481 = fcmp ogt float %479, %480
  br i1 %481, label %482, label %489

482:                                              ; preds = %477
  %483 = load float*, float** %27, align 8
  %484 = load float, float* %483, align 4
  store float %484, float* %33, align 4
  %485 = load i32*, i32** %31, align 8
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* %34, align 4
  %487 = load i32, i32* %13, align 4
  %488 = sub nsw i32 %487, 1
  store i32 %488, i32* %35, align 4
  br label %489

489:                                              ; preds = %482, %477
  %490 = load float*, float** %28, align 8
  %491 = load float, float* %490, align 4
  %492 = load float*, float** %27, align 8
  %493 = load float, float* %492, align 4
  %494 = fcmp ogt float %491, %493
  br i1 %494, label %495, label %502

495:                                              ; preds = %489
  %496 = load float*, float** %28, align 8
  %497 = load float, float* %496, align 4
  %498 = load float*, float** %27, align 8
  store float %497, float* %498, align 4
  %499 = load i32, i32* %12, align 4
  %500 = sub nsw i32 %499, 1
  %501 = load i32*, i32** %31, align 8
  store i32 %500, i32* %501, align 4
  br label %502

502:                                              ; preds = %495, %489
  %503 = load float*, float** %28, align 8
  %504 = load float, float* %503, align 4
  %505 = load float, float* @genL__align11.Mi, align 4
  %506 = fcmp ogt float %504, %505
  br i1 %506, label %507, label %512

507:                                              ; preds = %502
  %508 = load float*, float** %28, align 8
  %509 = load float, float* %508, align 4
  store float %509, float* @genL__align11.Mi, align 4
  %510 = load i32, i32* %13, align 4
  %511 = sub nsw i32 %510, 1
  store i32 %511, i32* @genL__align11.Mpi, align 4
  br label %512

512:                                              ; preds = %507, %502
  %513 = load float, float* %32, align 4
  %514 = load float, float* %19, align 4
  %515 = fcmp olt float %513, %514
  br i1 %515, label %516, label %520

516:                                              ; preds = %512
  %517 = load float, float* %19, align 4
  store float %517, float* %32, align 4
  %518 = load i32, i32* %12, align 4
  store i32 %518, i32* %36, align 4
  %519 = load i32, i32* %13, align 4
  store i32 %519, i32* %37, align 4
  br label %520

520:                                              ; preds = %516, %512
  %521 = load float, float* %19, align 4
  %522 = load float, float* %42, align 4
  %523 = fcmp olt float %521, %522
  br i1 %523, label %524, label %528

524:                                              ; preds = %520
  %525 = load i32, i32* @localstop, align 4
  %526 = load i32*, i32** %24, align 8
  store i32 %525, i32* %526, align 4
  %527 = load float, float* %43, align 4
  store float %527, float* %19, align 4
  br label %528

528:                                              ; preds = %524, %520
  %529 = load float, float* %19, align 4
  %530 = load float*, float** %29, align 8
  %531 = load float, float* %530, align 4
  %532 = fadd float %531, %529
  store float %532, float* %530, align 4
  %533 = load i32*, i32** %24, align 8
  %534 = getelementptr inbounds i32, i32* %533, i32 1
  store i32* %534, i32** %24, align 8
  %535 = load i32*, i32** %25, align 8
  %536 = getelementptr inbounds i32, i32* %535, i32 1
  store i32* %536, i32** %25, align 8
  %537 = load float*, float** %26, align 8
  %538 = getelementptr inbounds float, float* %537, i32 1
  store float* %538, float** %26, align 8
  %539 = load float*, float** %27, align 8
  %540 = getelementptr inbounds float, float* %539, i32 1
  store float* %540, float** %27, align 8
  %541 = load float*, float** %28, align 8
  %542 = getelementptr inbounds float, float* %541, i32 1
  store float* %542, float** %28, align 8
  %543 = load i32*, i32** %30, align 8
  %544 = getelementptr inbounds i32, i32* %543, i32 1
  store i32* %544, i32** %30, align 8
  %545 = load i32*, i32** %31, align 8
  %546 = getelementptr inbounds i32, i32* %545, i32 1
  store i32* %546, i32** %31, align 8
  %547 = load float*, float** %29, align 8
  %548 = getelementptr inbounds float, float* %547, i32 1
  store float* %548, float** %29, align 8
  br label %549

549:                                              ; preds = %528
  %550 = load i32, i32* %13, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %13, align 4
  br label %386, !llvm.loop !6

552:                                              ; preds = %386
  %553 = load float*, float** %21, align 8
  %554 = load i32, i32* %17, align 4
  %555 = sub nsw i32 %554, 1
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds float, float* %553, i64 %556
  %558 = load float, float* %557, align 4
  %559 = load float*, float** @genL__align11.lastverticalw, align 8
  %560 = load i32, i32* %12, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, float* %559, i64 %561
  store float %558, float* %562, align 4
  br label %563

563:                                              ; preds = %552
  %564 = load i32, i32* %12, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %12, align 4
  br label %327, !llvm.loop !7

566:                                              ; preds = %327
  %567 = load i32**, i32*** @genL__align11.ijpi, align 8
  %568 = load i32, i32* %36, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32*, i32** %567, i64 %569
  %571 = load i32*, i32** %570, align 8
  %572 = load i32, i32* %37, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = load i32, i32* @localstop, align 4
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %589

578:                                              ; preds = %566
  %579 = load i8**, i8*** %7, align 8
  %580 = getelementptr inbounds i8*, i8** %579, i64 0
  %581 = load i8*, i8** %580, align 8
  %582 = call i8* @strcpy(i8* noundef %581, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %583 = load i8**, i8*** %8, align 8
  %584 = getelementptr inbounds i8*, i8** %583, i64 0
  %585 = load i8*, i8** %584, align 8
  %586 = call i8* @strcpy(i8* noundef %585, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %587 = load i32*, i32** %11, align 8
  store i32 0, i32* %587, align 4
  %588 = load i32*, i32** %10, align 8
  store i32 0, i32* %588, align 4
  store float 0.000000e+00, float* %6, align 4
  br label %637

589:                                              ; preds = %566
  %590 = load float*, float** %21, align 8
  %591 = load float*, float** @genL__align11.lastverticalw, align 8
  %592 = load i8**, i8*** %7, align 8
  %593 = load i8**, i8*** %8, align 8
  %594 = load i8**, i8*** @genL__align11.mseq1, align 8
  %595 = load i8**, i8*** @genL__align11.mseq2, align 8
  %596 = load float**, float*** @genL__align11.cpmx1, align 8
  %597 = load float**, float*** @genL__align11.cpmx2, align 8
  %598 = load i32**, i32*** @genL__align11.ijpi, align 8
  %599 = load i32**, i32*** @genL__align11.ijpj, align 8
  %600 = load i32*, i32** %10, align 8
  %601 = load i32*, i32** %11, align 8
  %602 = load i32, i32* %36, align 4
  %603 = load i32, i32* %37, align 4
  %604 = call float @gentracking(float* noundef %590, float* noundef %591, i8** noundef %592, i8** noundef %593, i8** noundef %594, i8** noundef %595, float** noundef %596, float** noundef %597, i32** noundef %598, i32** noundef %599, i32* noundef %600, i32* noundef %601, i32 noundef %602, i32 noundef %603)
  %605 = load i8**, i8*** @genL__align11.mseq1, align 8
  %606 = getelementptr inbounds i8*, i8** %605, i64 0
  %607 = load i8*, i8** %606, align 8
  %608 = call i64 @strlen(i8* noundef %607) #5
  %609 = trunc i64 %608 to i32
  store i32 %609, i32* %18, align 4
  %610 = load i32, i32* %9, align 4
  %611 = load i32, i32* %18, align 4
  %612 = icmp slt i32 %610, %611
  br i1 %612, label %616, label %613

613:                                              ; preds = %589
  %614 = load i32, i32* %18, align 4
  %615 = icmp sgt i32 %614, 5000000
  br i1 %615, label %616, label %621

616:                                              ; preds = %613, %589
  %617 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %618 = load i32, i32* %9, align 4
  %619 = load i32, i32* %18, align 4
  %620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %617, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %618, i32 noundef %619, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %621

621:                                              ; preds = %616, %613
  %622 = load i8**, i8*** %7, align 8
  %623 = getelementptr inbounds i8*, i8** %622, i64 0
  %624 = load i8*, i8** %623, align 8
  %625 = load i8**, i8*** @genL__align11.mseq1, align 8
  %626 = getelementptr inbounds i8*, i8** %625, i64 0
  %627 = load i8*, i8** %626, align 8
  %628 = call i8* @strcpy(i8* noundef %624, i8* noundef %627) #6
  %629 = load i8**, i8*** %8, align 8
  %630 = getelementptr inbounds i8*, i8** %629, i64 0
  %631 = load i8*, i8** %630, align 8
  %632 = load i8**, i8*** @genL__align11.mseq2, align 8
  %633 = getelementptr inbounds i8*, i8** %632, i64 0
  %634 = load i8*, i8** %633, align 8
  %635 = call i8* @strcpy(i8* noundef %631, i8* noundef %634) #6
  %636 = load float, float* %32, align 4
  store float %636, float* %6, align 4
  br label %637

637:                                              ; preds = %621, %578
  %638 = load float, float* %6, align 4
  ret float %638
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

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
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store float* %0, float** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %11, align 1
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %27, %5
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i64 0, i64 %30
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %31, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to float
  %40 = load float*, float** %6, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %6, align 8
  store float %39, float* %40, align 4
  br label %23, !llvm.loop !8

42:                                               ; preds = %23
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal float @gentracking(float* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, i8** noundef %5, float** noundef %6, float** noundef %7, i32** noundef %8, i32** noundef %9, i32* noundef %10, i32* noundef %11, i32 noundef %12, i32 noundef %13) #0 {
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca float**, align 8
  %22 = alloca float**, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [2 x i8], align 1
  store float* %0, float** %15, align 8
  store float* %1, float** %16, align 8
  store i8** %2, i8*** %17, align 8
  store i8** %3, i8*** %18, align 8
  store i8** %4, i8*** %19, align 8
  store i8** %5, i8*** %20, align 8
  store float** %6, float*** %21, align 8
  store float** %7, float*** %22, align 8
  store i32** %8, i32*** %23, align 8
  store i32** %9, i32*** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %41 = bitcast [2 x i8]* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.gentracking.gap, i32 0, i32 0), i64 2, i1 false)
  %42 = load i8**, i8*** %17, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* noundef %44) #5
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %34, align 4
  %47 = load i8**, i8*** %18, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* noundef %49) #5
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %35, align 4
  store i32 0, i32* %29, align 4
  br label %52

52:                                               ; preds = %72, %14
  %53 = load i32, i32* %29, align 4
  %54 = load i32, i32* %34, align 4
  %55 = add nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, i32* @localstop, align 4
  %59 = load i32**, i32*** %23, align 8
  %60 = load i32, i32* %29, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* @localstop, align 4
  %66 = load i32**, i32*** %24, align 8
  %67 = load i32, i32* %29, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %29, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %29, align 4
  br label %52, !llvm.loop !9

75:                                               ; preds = %52
  store i32 0, i32* %30, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %35, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load i32, i32* @localstop, align 4
  %83 = load i32**, i32*** %23, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %30, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i32, i32* @localstop, align 4
  %90 = load i32**, i32*** %24, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %30, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %30, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %30, align 4
  br label %76, !llvm.loop !10

99:                                               ; preds = %76
  %100 = load i32, i32* %34, align 4
  %101 = load i32, i32* %35, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i8**, i8*** %19, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = sext i32 %102 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %104, align 8
  %108 = load i8**, i8*** %19, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* %34, align 4
  %112 = load i32, i32* %35, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i8**, i8*** %20, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  %117 = sext i32 %113 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %115, align 8
  %119 = load i8**, i8*** %20, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  store i8 0, i8* %121, align 1
  %122 = load i32, i32* %27, align 4
  store i32 %122, i32* %32, align 4
  %123 = load i32, i32* %28, align 4
  store i32 %123, i32* %33, align 4
  %124 = load i32, i32* %34, align 4
  %125 = load i32, i32* %35, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %37, align 4
  store i32 0, i32* %36, align 4
  br label %127

127:                                              ; preds = %269, %99
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %37, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %272

131:                                              ; preds = %127
  %132 = load i32**, i32*** %23, align 8
  %133 = load i32, i32* %32, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %33, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %38, align 4
  %141 = load i32**, i32*** %24, align 8
  %142 = load i32, i32* %32, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %33, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %39, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %38, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %31, align 4
  br label %153

153:                                              ; preds = %157, %131
  %154 = load i32, i32* %31, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %31, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i8**, i8*** %17, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %38, align 4
  %162 = load i32, i32* %31, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8**, i8*** %19, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %170, i8** %168, align 8
  store i8 %166, i8* %170, align 1
  %171 = getelementptr inbounds [2 x i8], [2 x i8]* %40, i64 0, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = load i8**, i8*** %20, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 -1
  store i8* %176, i8** %174, align 8
  store i8 %172, i8* %176, align 1
  %177 = load i32, i32* %36, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %36, align 4
  br label %153, !llvm.loop !11

179:                                              ; preds = %153
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %39, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %31, align 4
  br label %183

183:                                              ; preds = %187, %179
  %184 = load i32, i32* %31, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %31, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %183
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %40, i64 0, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = load i8**, i8*** %19, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %193, i8** %191, align 8
  store i8 %189, i8* %193, align 1
  %194 = load i8**, i8*** %18, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %39, align 4
  %198 = load i32, i32* %31, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = load i8**, i8*** %20, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 -1
  store i8* %206, i8** %204, align 8
  store i8 %202, i8* %206, align 1
  %207 = load i32, i32* %36, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %36, align 4
  br label %183, !llvm.loop !12

209:                                              ; preds = %183
  %210 = load i32, i32* %32, align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %33, align 4
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %209
  br label %272

216:                                              ; preds = %212
  %217 = load i8**, i8*** %17, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %38, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = load i8**, i8*** %19, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 -1
  store i8* %227, i8** %225, align 8
  store i8 %223, i8* %227, align 1
  %228 = load i8**, i8*** %18, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %39, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = load i8**, i8*** %20, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 -1
  store i8* %238, i8** %236, align 8
  store i8 %234, i8* %238, align 1
  %239 = load i32**, i32*** %23, align 8
  %240 = load i32, i32* %38, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %39, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @localstop, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %216
  br label %272

251:                                              ; preds = %216
  %252 = load i32**, i32*** %24, align 8
  %253 = load i32, i32* %38, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %39, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @localstop, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %272

264:                                              ; preds = %251
  %265 = load i32, i32* %36, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %36, align 4
  %267 = load i32, i32* %38, align 4
  store i32 %267, i32* %32, align 4
  %268 = load i32, i32* %39, align 4
  store i32 %268, i32* %33, align 4
  br label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %36, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %36, align 4
  br label %127, !llvm.loop !13

272:                                              ; preds = %263, %250, %215, %127
  %273 = load i32, i32* %38, align 4
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32*, i32** %25, align 8
  store i32 0, i32* %276, align 4
  br label %280

277:                                              ; preds = %272
  %278 = load i32, i32* %38, align 4
  %279 = load i32*, i32** %25, align 8
  store i32 %278, i32* %279, align 4
  br label %280

280:                                              ; preds = %277, %275
  %281 = load i32, i32* %39, align 4
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32*, i32** %26, align 8
  store i32 0, i32* %284, align 4
  br label %288

285:                                              ; preds = %280
  %286 = load i32, i32* %39, align 4
  %287 = load i32*, i32** %26, align 8
  store i32 %286, i32* %287, align 4
  br label %288

288:                                              ; preds = %285, %283
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
