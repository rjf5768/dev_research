; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/genGalign11.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/genGalign11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@penalty = external dso_local global i32, align 4
@penalty_OP = external dso_local global i32, align 4
@penalty_ex = external dso_local global i32, align 4
@genG__align11.mi = internal global float 0.000000e+00, align 4
@genG__align11.m = internal global float* null, align 8
@genG__align11.Mi = internal global float 0.000000e+00, align 4
@genG__align11.largeM = internal global float* null, align 8
@genG__align11.ijpi = internal global i32** null, align 8
@genG__align11.ijpj = internal global i32** null, align 8
@genG__align11.mpi = internal global i32 0, align 4
@genG__align11.mp = internal global i32* null, align 8
@genG__align11.Mpi = internal global i32 0, align 4
@genG__align11.Mp = internal global i32* null, align 8
@genG__align11.w1 = internal global float* null, align 8
@genG__align11.w2 = internal global float* null, align 8
@genG__align11.match = internal global float* null, align 8
@genG__align11.initverticalw = internal global float* null, align 8
@genG__align11.lastverticalw = internal global float* null, align 8
@genG__align11.mseq1 = internal global i8** null, align 8
@genG__align11.mseq2 = internal global i8** null, align 8
@genG__align11.mseq = internal global i8** null, align 8
@genG__align11.cpmx1 = internal global float** null, align 8
@genG__align11.cpmx2 = internal global float** null, align 8
@genG__align11.intwork = internal global i32** null, align 8
@genG__align11.floatwork = internal global float** null, align 8
@genG__align11.orlgth1 = internal global i32 0, align 4
@genG__align11.orlgth2 = internal global i32 0, align 4
@njob = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"WARNING (g11): lgth1=%d, lgth2=%d\0A\00", align 1
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@commonJP = external dso_local global i32**, align 8
@outgap = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external dso_local global [128 x [128 x i32]], align 16
@__const.genGtracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @genG__align11(i8** noundef %0, i8** noundef %1, i32 noundef %2) #0 {
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
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %36 = load i32, i32* @penalty, align 4
  %37 = sitofp i32 %36 to float
  store float %37, float* %17, align 4
  %38 = load i32, i32* @penalty_OP, align 4
  %39 = sitofp i32 %38 to float
  store float %39, float* %18, align 4
  %40 = load i32, i32* @penalty_ex, align 4
  %41 = sitofp i32 %40 to float
  store float %41, float* %19, align 4
  store float 0.000000e+00, float* %13, align 4
  %42 = load i32, i32* @genG__align11.orlgth1, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load i32, i32* @njob, align 4
  %46 = call i8** @AllocateCharMtx(i32 noundef %45, i32 noundef 0)
  store i8** %46, i8*** @genG__align11.mseq1, align 8
  %47 = load i32, i32* @njob, align 4
  %48 = call i8** @AllocateCharMtx(i32 noundef %47, i32 noundef 0)
  store i8** %48, i8*** @genG__align11.mseq2, align 8
  br label %49

49:                                               ; preds = %44, %3
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* noundef %52) #5
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* noundef %57) #5
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %11, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %49
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %67, i32 noundef %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @genG__align11.orlgth1, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @genG__align11.orlgth2, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %196

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @genG__align11.orlgth1, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i32, i32* @genG__align11.orlgth2, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load float*, float** @genG__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %85)
  %86 = load float*, float** @genG__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %86)
  %87 = load float*, float** @genG__align11.match, align 8
  call void @FreeFloatVec(float* noundef %87)
  %88 = load float*, float** @genG__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %88)
  %89 = load float*, float** @genG__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %89)
  %90 = load float*, float** @genG__align11.m, align 8
  call void @FreeFloatVec(float* noundef %90)
  %91 = load i32*, i32** @genG__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %91)
  %92 = load float*, float** @genG__align11.largeM, align 8
  call void @FreeFloatVec(float* noundef %92)
  %93 = load i32*, i32** @genG__align11.Mp, align 8
  call void @FreeIntVec(i32* noundef %93)
  %94 = load i8**, i8*** @genG__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %94)
  %95 = load float**, float*** @genG__align11.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %95)
  %96 = load float**, float*** @genG__align11.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %96)
  %97 = load float**, float*** @genG__align11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %97)
  %98 = load i32**, i32*** @genG__align11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %98)
  br label %99

99:                                               ; preds = %84, %81, %78
  %100 = load i32, i32* %10, align 4
  %101 = sitofp i32 %100 to double
  %102 = fmul double 1.300000e+00, %101
  %103 = fptosi double %102 to i32
  %104 = load i32, i32* @genG__align11.orlgth1, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  %108 = sitofp i32 %107 to double
  %109 = fmul double 1.300000e+00, %108
  %110 = fptosi double %109 to i32
  br label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @genG__align11.orlgth1, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = phi i32 [ %110, %106 ], [ %112, %111 ]
  %115 = add nsw i32 %114, 100
  store i32 %115, i32* %32, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sitofp i32 %116 to double
  %118 = fmul double 1.300000e+00, %117
  %119 = fptosi double %118 to i32
  %120 = load i32, i32* @genG__align11.orlgth2, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  %124 = sitofp i32 %123 to double
  %125 = fmul double 1.300000e+00, %124
  %126 = fptosi double %125 to i32
  br label %129

127:                                              ; preds = %113
  %128 = load i32, i32* @genG__align11.orlgth2, align 4
  br label %129

129:                                              ; preds = %127, %122
  %130 = phi i32 [ %126, %122 ], [ %128, %127 ]
  %131 = add nsw i32 %130, 100
  store i32 %131, i32* %33, align 4
  %132 = load i32, i32* %33, align 4
  %133 = add nsw i32 %132, 2
  %134 = call float* @AllocateFloatVec(i32 noundef %133)
  store float* %134, float** @genG__align11.w1, align 8
  %135 = load i32, i32* %33, align 4
  %136 = add nsw i32 %135, 2
  %137 = call float* @AllocateFloatVec(i32 noundef %136)
  store float* %137, float** @genG__align11.w2, align 8
  %138 = load i32, i32* %33, align 4
  %139 = add nsw i32 %138, 2
  %140 = call float* @AllocateFloatVec(i32 noundef %139)
  store float* %140, float** @genG__align11.match, align 8
  %141 = load i32, i32* %32, align 4
  %142 = add nsw i32 %141, 2
  %143 = call float* @AllocateFloatVec(i32 noundef %142)
  store float* %143, float** @genG__align11.initverticalw, align 8
  %144 = load i32, i32* %32, align 4
  %145 = add nsw i32 %144, 2
  %146 = call float* @AllocateFloatVec(i32 noundef %145)
  store float* %146, float** @genG__align11.lastverticalw, align 8
  %147 = load i32, i32* %33, align 4
  %148 = add nsw i32 %147, 2
  %149 = call float* @AllocateFloatVec(i32 noundef %148)
  store float* %149, float** @genG__align11.m, align 8
  %150 = load i32, i32* %33, align 4
  %151 = add nsw i32 %150, 2
  %152 = call i32* @AllocateIntVec(i32 noundef %151)
  store i32* %152, i32** @genG__align11.mp, align 8
  %153 = load i32, i32* %33, align 4
  %154 = add nsw i32 %153, 2
  %155 = call float* @AllocateFloatVec(i32 noundef %154)
  store float* %155, float** @genG__align11.largeM, align 8
  %156 = load i32, i32* %33, align 4
  %157 = add nsw i32 %156, 2
  %158 = call i32* @AllocateIntVec(i32 noundef %157)
  store i32* %158, i32** @genG__align11.Mp, align 8
  %159 = load i32, i32* @njob, align 4
  %160 = load i32, i32* %32, align 4
  %161 = load i32, i32* %33, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i8** @AllocateCharMtx(i32 noundef %159, i32 noundef %162)
  store i8** %163, i8*** @genG__align11.mseq, align 8
  %164 = load i32, i32* %32, align 4
  %165 = add nsw i32 %164, 2
  %166 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %165)
  store float** %166, float*** @genG__align11.cpmx1, align 8
  %167 = load i32, i32* %33, align 4
  %168 = add nsw i32 %167, 2
  %169 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %168)
  store float** %169, float*** @genG__align11.cpmx2, align 8
  %170 = load i32, i32* %32, align 4
  %171 = load i32, i32* %33, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %129
  %174 = load i32, i32* %32, align 4
  br label %177

175:                                              ; preds = %129
  %176 = load i32, i32* %33, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = add nsw i32 %178, 2
  %180 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %179)
  store float** %180, float*** @genG__align11.floatwork, align 8
  %181 = load i32, i32* %32, align 4
  %182 = load i32, i32* %33, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* %32, align 4
  br label %188

186:                                              ; preds = %177
  %187 = load i32, i32* %33, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = add nsw i32 %189, 2
  %191 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %190)
  store i32** %191, i32*** @genG__align11.intwork, align 8
  %192 = load i32, i32* %32, align 4
  %193 = sub nsw i32 %192, 100
  store i32 %193, i32* @genG__align11.orlgth1, align 4
  %194 = load i32, i32* %33, align 4
  %195 = sub nsw i32 %194, 100
  store i32 %195, i32* @genG__align11.orlgth2, align 4
  br label %196

196:                                              ; preds = %188, %74
  %197 = load i8**, i8*** @genG__align11.mseq, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** @genG__align11.mseq1, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  store i8* %199, i8** %201, align 8
  %202 = load i8**, i8*** @genG__align11.mseq, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** @genG__align11.mseq2, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* @genG__align11.orlgth1, align 4
  %208 = load i32, i32* @commonAlloc1, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %196
  %211 = load i32, i32* @genG__align11.orlgth2, align 4
  %212 = load i32, i32* @commonAlloc2, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %254

214:                                              ; preds = %210, %196
  %215 = load i32, i32* @commonAlloc1, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* @commonAlloc2, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %221)
  %222 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** noundef %222)
  br label %223

223:                                              ; preds = %220, %217, %214
  %224 = load i32, i32* @genG__align11.orlgth1, align 4
  %225 = load i32, i32* @commonAlloc1, align 4
  %226 = icmp sgt i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i32, i32* @genG__align11.orlgth1, align 4
  br label %231

229:                                              ; preds = %223
  %230 = load i32, i32* @commonAlloc1, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  store i32 %232, i32* %34, align 4
  %233 = load i32, i32* @genG__align11.orlgth2, align 4
  %234 = load i32, i32* @commonAlloc2, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* @genG__align11.orlgth2, align 4
  br label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @commonAlloc2, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  store i32 %241, i32* %35, align 4
  %242 = load i32, i32* %34, align 4
  %243 = add nsw i32 %242, 10
  %244 = load i32, i32* %35, align 4
  %245 = add nsw i32 %244, 10
  %246 = call i32** @AllocateIntMtx(i32 noundef %243, i32 noundef %245)
  store i32** %246, i32*** @commonIP, align 8
  %247 = load i32, i32* %34, align 4
  %248 = add nsw i32 %247, 10
  %249 = load i32, i32* %35, align 4
  %250 = add nsw i32 %249, 10
  %251 = call i32** @AllocateIntMtx(i32 noundef %248, i32 noundef %250)
  store i32** %251, i32*** @commonJP, align 8
  %252 = load i32, i32* %34, align 4
  store i32 %252, i32* @commonAlloc1, align 4
  %253 = load i32, i32* %35, align 4
  store i32 %253, i32* @commonAlloc2, align 4
  br label %254

254:                                              ; preds = %240, %210
  %255 = load i32**, i32*** @commonIP, align 8
  store i32** %255, i32*** @genG__align11.ijpi, align 8
  %256 = load i32**, i32*** @commonJP, align 8
  store i32** %256, i32*** @genG__align11.ijpj, align 8
  %257 = load float*, float** @genG__align11.w1, align 8
  store float* %257, float** %15, align 8
  %258 = load float*, float** @genG__align11.w2, align 8
  store float* %258, float** %16, align 8
  %259 = load float*, float** @genG__align11.initverticalw, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = load i8**, i8*** %4, align 8
  %262 = load i32, i32* %10, align 4
  call void @match_calc(float* noundef %259, i8** noundef %260, i8** noundef %261, i32 noundef 0, i32 noundef %262)
  %263 = load float*, float** %15, align 8
  %264 = load i8**, i8*** %4, align 8
  %265 = load i8**, i8*** %5, align 8
  %266 = load i32, i32* %11, align 4
  call void @match_calc(float* noundef %263, i8** noundef %264, i8** noundef %265, i32 noundef 0, i32 noundef %266)
  %267 = load i32, i32* @outgap, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %304

269:                                              ; preds = %254
  store i32 1, i32* %7, align 4
  br label %270

270:                                              ; preds = %283, %269
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %270
  %276 = load float, float* %17, align 4
  %277 = load float*, float** @genG__align11.initverticalw, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = fadd float %281, %276
  store float %282, float* %280, align 4
  br label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %270, !llvm.loop !4

286:                                              ; preds = %270
  store i32 1, i32* %8, align 4
  br label %287

287:                                              ; preds = %300, %286
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  %291 = icmp slt i32 %288, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %287
  %293 = load float, float* %17, align 4
  %294 = load float*, float** %15, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fadd float %298, %293
  store float %299, float* %297, align 4
  br label %300

300:                                              ; preds = %292
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %287, !llvm.loop !6

303:                                              ; preds = %287
  br label %304

304:                                              ; preds = %303, %254
  store i32 1, i32* %8, align 4
  br label %305

305:                                              ; preds = %339, %304
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 1
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %310, label %342

310:                                              ; preds = %305
  %311 = load float*, float** %15, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %311, i64 %314
  %316 = load float, float* %315, align 4
  %317 = load float*, float** @genG__align11.m, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %317, i64 %319
  store float %316, float* %320, align 4
  %321 = load i32*, i32** @genG__align11.mp, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 0, i32* %324, align 4
  %325 = load float*, float** %15, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %325, i64 %328
  %330 = load float, float* %329, align 4
  %331 = load float*, float** @genG__align11.largeM, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %331, i64 %333
  store float %330, float* %334, align 4
  %335 = load i32*, i32** @genG__align11.Mp, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  store i32 0, i32* %338, align 4
  br label %339

339:                                              ; preds = %310
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  br label %305, !llvm.loop !7

342:                                              ; preds = %305
  %343 = load i32, i32* %11, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load float*, float** @genG__align11.lastverticalw, align 8
  %347 = getelementptr inbounds float, float* %346, i64 0
  store float 0.000000e+00, float* %347, align 4
  br label %357

348:                                              ; preds = %342
  %349 = load float*, float** %15, align 8
  %350 = load i32, i32* %11, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %349, i64 %352
  %354 = load float, float* %353, align 4
  %355 = load float*, float** @genG__align11.lastverticalw, align 8
  %356 = getelementptr inbounds float, float* %355, i64 0
  store float %354, float* %356, align 4
  br label %357

357:                                              ; preds = %348, %345
  %358 = load i32, i32* @outgap, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load i32, i32* %10, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %9, align 4
  br label %365

363:                                              ; preds = %357
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %9, align 4
  br label %365

365:                                              ; preds = %363, %360
  store i32 1, i32* %7, align 4
  br label %366

366:                                              ; preds = %583, %365
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %9, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %586

370:                                              ; preds = %366
  %371 = load float*, float** %16, align 8
  store float* %371, float** %20, align 8
  %372 = load float*, float** %15, align 8
  store float* %372, float** %16, align 8
  %373 = load float*, float** %20, align 8
  store float* %373, float** %15, align 8
  %374 = load float*, float** @genG__align11.initverticalw, align 8
  %375 = load i32, i32* %7, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float, float* %374, i64 %377
  %379 = load float, float* %378, align 4
  %380 = load float*, float** %16, align 8
  %381 = getelementptr inbounds float, float* %380, i64 0
  store float %379, float* %381, align 4
  %382 = load float*, float** %15, align 8
  %383 = load i8**, i8*** %4, align 8
  %384 = load i8**, i8*** %5, align 8
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* %11, align 4
  call void @match_calc(float* noundef %382, i8** noundef %383, i8** noundef %384, i32 noundef %385, i32 noundef %386)
  %387 = load float*, float** @genG__align11.initverticalw, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %387, i64 %389
  %391 = load float, float* %390, align 4
  %392 = load float*, float** %15, align 8
  %393 = getelementptr inbounds float, float* %392, i64 0
  store float %391, float* %393, align 4
  %394 = load float*, float** %16, align 8
  %395 = getelementptr inbounds float, float* %394, i64 0
  %396 = load float, float* %395, align 4
  store float %396, float* @genG__align11.mi, align 4
  store i32 0, i32* @genG__align11.mpi, align 4
  %397 = load float*, float** %16, align 8
  %398 = getelementptr inbounds float, float* %397, i64 0
  %399 = load float, float* %398, align 4
  store float %399, float* @genG__align11.Mi, align 4
  store i32 0, i32* @genG__align11.Mpi, align 4
  %400 = load i32**, i32*** @genG__align11.ijpi, align 8
  %401 = load i32, i32* %7, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32*, i32** %400, i64 %402
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  store i32* %405, i32** %21, align 8
  %406 = load i32**, i32*** @genG__align11.ijpj, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  store i32* %411, i32** %22, align 8
  %412 = load float*, float** @genG__align11.m, align 8
  %413 = getelementptr inbounds float, float* %412, i64 1
  store float* %413, float** %23, align 8
  %414 = load float*, float** @genG__align11.largeM, align 8
  %415 = getelementptr inbounds float, float* %414, i64 1
  store float* %415, float** %24, align 8
  %416 = load float*, float** %16, align 8
  store float* %416, float** %25, align 8
  %417 = load float*, float** %15, align 8
  %418 = getelementptr inbounds float, float* %417, i64 1
  store float* %418, float** %26, align 8
  %419 = load i32*, i32** @genG__align11.mp, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 1
  store i32* %420, i32** %27, align 8
  %421 = load i32*, i32** @genG__align11.Mp, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  store i32* %422, i32** %28, align 8
  store float -1.000000e+07, float* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 1, i32* %8, align 4
  br label %423

423:                                              ; preds = %569, %370
  %424 = load i32, i32* %8, align 4
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 1
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %428, label %572

428:                                              ; preds = %423
  %429 = load float*, float** %25, align 8
  %430 = load float, float* %429, align 4
  store float %430, float* %13, align 4
  %431 = load i32, i32* %7, align 4
  %432 = sub nsw i32 %431, 1
  %433 = load i32*, i32** %21, align 8
  store i32 %432, i32* %433, align 4
  %434 = load i32, i32* %8, align 4
  %435 = sub nsw i32 %434, 1
  %436 = load i32*, i32** %22, align 8
  store i32 %435, i32* %436, align 4
  %437 = load float, float* @genG__align11.mi, align 4
  %438 = load float, float* %17, align 4
  %439 = fadd float %437, %438
  store float %439, float* %14, align 4
  %440 = load float, float* %13, align 4
  %441 = fcmp ogt float %439, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %428
  %443 = load float, float* %14, align 4
  store float %443, float* %13, align 4
  %444 = load i32, i32* @genG__align11.mpi, align 4
  %445 = load i32*, i32** %22, align 8
  store i32 %444, i32* %445, align 4
  br label %446

446:                                              ; preds = %442, %428
  %447 = load float*, float** %25, align 8
  %448 = load float, float* %447, align 4
  store float %448, float* %14, align 4
  %449 = load float, float* @genG__align11.mi, align 4
  %450 = fcmp oge float %448, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = load float, float* %14, align 4
  store float %452, float* @genG__align11.mi, align 4
  %453 = load i32, i32* %8, align 4
  %454 = sub nsw i32 %453, 1
  store i32 %454, i32* @genG__align11.mpi, align 4
  br label %455

455:                                              ; preds = %451, %446
  %456 = load float, float* %19, align 4
  %457 = load float, float* @genG__align11.mi, align 4
  %458 = fadd float %457, %456
  store float %458, float* @genG__align11.mi, align 4
  %459 = load float*, float** %23, align 8
  %460 = load float, float* %459, align 4
  %461 = load float, float* %17, align 4
  %462 = fadd float %460, %461
  store float %462, float* %14, align 4
  %463 = load float, float* %13, align 4
  %464 = fcmp ogt float %462, %463
  br i1 %464, label %465, label %473

465:                                              ; preds = %455
  %466 = load float, float* %14, align 4
  store float %466, float* %13, align 4
  %467 = load i32*, i32** %27, align 8
  %468 = load i32, i32* %467, align 4
  %469 = load i32*, i32** %21, align 8
  store i32 %468, i32* %469, align 4
  %470 = load i32, i32* %8, align 4
  %471 = sub nsw i32 %470, 1
  %472 = load i32*, i32** %22, align 8
  store i32 %471, i32* %472, align 4
  br label %473

473:                                              ; preds = %465, %455
  %474 = load float*, float** %25, align 8
  %475 = load float, float* %474, align 4
  store float %475, float* %14, align 4
  %476 = load float*, float** %23, align 8
  %477 = load float, float* %476, align 4
  %478 = fcmp oge float %475, %477
  br i1 %478, label %479, label %485

479:                                              ; preds = %473
  %480 = load float, float* %14, align 4
  %481 = load float*, float** %23, align 8
  store float %480, float* %481, align 4
  %482 = load i32, i32* %7, align 4
  %483 = sub nsw i32 %482, 1
  %484 = load i32*, i32** %27, align 8
  store i32 %483, i32* %484, align 4
  br label %485

485:                                              ; preds = %479, %473
  %486 = load float, float* %19, align 4
  %487 = load float*, float** @genG__align11.m, align 8
  %488 = load i32, i32* %8, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds float, float* %487, i64 %489
  %491 = load float, float* %490, align 4
  %492 = fadd float %491, %486
  store float %492, float* %490, align 4
  %493 = load float, float* %29, align 4
  %494 = load float, float* %18, align 4
  %495 = fadd float %493, %494
  store float %495, float* %14, align 4
  %496 = load float, float* %14, align 4
  %497 = load float, float* %13, align 4
  %498 = fcmp ogt float %496, %497
  br i1 %498, label %499, label %505

499:                                              ; preds = %485
  %500 = load float, float* %14, align 4
  store float %500, float* %13, align 4
  %501 = load i32, i32* %30, align 4
  %502 = load i32*, i32** %21, align 8
  store i32 %501, i32* %502, align 4
  %503 = load i32, i32* %31, align 4
  %504 = load i32*, i32** %22, align 8
  store i32 %503, i32* %504, align 4
  br label %505

505:                                              ; preds = %499, %485
  %506 = load float, float* @genG__align11.Mi, align 4
  %507 = load float, float* %29, align 4
  %508 = fcmp ogt float %506, %507
  br i1 %508, label %509, label %514

509:                                              ; preds = %505
  %510 = load float, float* @genG__align11.Mi, align 4
  store float %510, float* %29, align 4
  %511 = load i32, i32* %7, align 4
  %512 = sub nsw i32 %511, 1
  store i32 %512, i32* %30, align 4
  %513 = load i32, i32* @genG__align11.Mpi, align 4
  store i32 %513, i32* %31, align 4
  br label %514

514:                                              ; preds = %509, %505
  %515 = load float*, float** %24, align 8
  %516 = load float, float* %515, align 4
  %517 = load float, float* %29, align 4
  %518 = fcmp ogt float %516, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %514
  %520 = load float*, float** %24, align 8
  %521 = load float, float* %520, align 4
  store float %521, float* %29, align 4
  %522 = load i32*, i32** %28, align 8
  %523 = load i32, i32* %522, align 4
  store i32 %523, i32* %30, align 4
  %524 = load i32, i32* %8, align 4
  %525 = sub nsw i32 %524, 1
  store i32 %525, i32* %31, align 4
  br label %526

526:                                              ; preds = %519, %514
  %527 = load float*, float** %25, align 8
  %528 = load float, float* %527, align 4
  %529 = load float*, float** %24, align 8
  %530 = load float, float* %529, align 4
  %531 = fcmp ogt float %528, %530
  br i1 %531, label %532, label %539

532:                                              ; preds = %526
  %533 = load float*, float** %25, align 8
  %534 = load float, float* %533, align 4
  %535 = load float*, float** %24, align 8
  store float %534, float* %535, align 4
  %536 = load i32, i32* %7, align 4
  %537 = sub nsw i32 %536, 1
  %538 = load i32*, i32** %28, align 8
  store i32 %537, i32* %538, align 4
  br label %539

539:                                              ; preds = %532, %526
  %540 = load float*, float** %25, align 8
  %541 = load float, float* %540, align 4
  %542 = load float, float* @genG__align11.Mi, align 4
  %543 = fcmp ogt float %541, %542
  br i1 %543, label %544, label %549

544:                                              ; preds = %539
  %545 = load float*, float** %25, align 8
  %546 = load float, float* %545, align 4
  store float %546, float* @genG__align11.Mi, align 4
  %547 = load i32, i32* %8, align 4
  %548 = sub nsw i32 %547, 1
  store i32 %548, i32* @genG__align11.Mpi, align 4
  br label %549

549:                                              ; preds = %544, %539
  %550 = load float, float* %13, align 4
  %551 = load float*, float** %26, align 8
  %552 = getelementptr inbounds float, float* %551, i32 1
  store float* %552, float** %26, align 8
  %553 = load float, float* %551, align 4
  %554 = fadd float %553, %550
  store float %554, float* %551, align 4
  %555 = load i32*, i32** %21, align 8
  %556 = getelementptr inbounds i32, i32* %555, i32 1
  store i32* %556, i32** %21, align 8
  %557 = load i32*, i32** %22, align 8
  %558 = getelementptr inbounds i32, i32* %557, i32 1
  store i32* %558, i32** %22, align 8
  %559 = load float*, float** %23, align 8
  %560 = getelementptr inbounds float, float* %559, i32 1
  store float* %560, float** %23, align 8
  %561 = load float*, float** %24, align 8
  %562 = getelementptr inbounds float, float* %561, i32 1
  store float* %562, float** %24, align 8
  %563 = load float*, float** %25, align 8
  %564 = getelementptr inbounds float, float* %563, i32 1
  store float* %564, float** %25, align 8
  %565 = load i32*, i32** %27, align 8
  %566 = getelementptr inbounds i32, i32* %565, i32 1
  store i32* %566, i32** %27, align 8
  %567 = load i32*, i32** %28, align 8
  %568 = getelementptr inbounds i32, i32* %567, i32 1
  store i32* %568, i32** %28, align 8
  br label %569

569:                                              ; preds = %549
  %570 = load i32, i32* %8, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %8, align 4
  br label %423, !llvm.loop !8

572:                                              ; preds = %423
  %573 = load float*, float** %15, align 8
  %574 = load i32, i32* %11, align 4
  %575 = sub nsw i32 %574, 1
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float, float* %573, i64 %576
  %578 = load float, float* %577, align 4
  %579 = load float*, float** @genG__align11.lastverticalw, align 8
  %580 = load i32, i32* %7, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds float, float* %579, i64 %581
  store float %578, float* %582, align 4
  br label %583

583:                                              ; preds = %572
  %584 = load i32, i32* %7, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %7, align 4
  br label %366, !llvm.loop !9

586:                                              ; preds = %366
  %587 = load float*, float** %15, align 8
  %588 = load float*, float** @genG__align11.lastverticalw, align 8
  %589 = load i8**, i8*** %4, align 8
  %590 = load i8**, i8*** %5, align 8
  %591 = load i8**, i8*** @genG__align11.mseq1, align 8
  %592 = load i8**, i8*** @genG__align11.mseq2, align 8
  %593 = load float**, float*** @genG__align11.cpmx1, align 8
  %594 = load float**, float*** @genG__align11.cpmx2, align 8
  %595 = load i32**, i32*** @genG__align11.ijpi, align 8
  %596 = load i32**, i32*** @genG__align11.ijpj, align 8
  %597 = call float @genGtracking(float* noundef %587, float* noundef %588, i8** noundef %589, i8** noundef %590, i8** noundef %591, i8** noundef %592, float** noundef %593, float** noundef %594, i32** noundef %595, i32** noundef %596)
  %598 = load i8**, i8*** @genG__align11.mseq1, align 8
  %599 = getelementptr inbounds i8*, i8** %598, i64 0
  %600 = load i8*, i8** %599, align 8
  %601 = call i64 @strlen(i8* noundef %600) #5
  %602 = trunc i64 %601 to i32
  store i32 %602, i32* %12, align 4
  %603 = load i32, i32* %6, align 4
  %604 = load i32, i32* %12, align 4
  %605 = icmp slt i32 %603, %604
  br i1 %605, label %609, label %606

606:                                              ; preds = %586
  %607 = load i32, i32* %12, align 4
  %608 = icmp sgt i32 %607, 5000000
  br i1 %608, label %609, label %614

609:                                              ; preds = %606, %586
  %610 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %611 = load i32, i32* %6, align 4
  %612 = load i32, i32* %12, align 4
  %613 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %610, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %611, i32 noundef %612, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %614

614:                                              ; preds = %609, %606
  %615 = load i8**, i8*** %4, align 8
  %616 = getelementptr inbounds i8*, i8** %615, i64 0
  %617 = load i8*, i8** %616, align 8
  %618 = load i8**, i8*** @genG__align11.mseq1, align 8
  %619 = getelementptr inbounds i8*, i8** %618, i64 0
  %620 = load i8*, i8** %619, align 8
  %621 = call i8* @strcpy(i8* noundef %617, i8* noundef %620) #6
  %622 = load i8**, i8*** %5, align 8
  %623 = getelementptr inbounds i8*, i8** %622, i64 0
  %624 = load i8*, i8** %623, align 8
  %625 = load i8**, i8*** @genG__align11.mseq2, align 8
  %626 = getelementptr inbounds i8*, i8** %625, i64 0
  %627 = load i8*, i8** %626, align 8
  %628 = call i8* @strcpy(i8* noundef %624, i8* noundef %627) #6
  %629 = load float, float* %13, align 4
  ret float %629
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
define internal float @genGtracking(float* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, i8** noundef %5, float** noundef %6, float** noundef %7, i32** noundef %8, i32** noundef %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca float**, align 8
  %18 = alloca float**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
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
  %32 = alloca [2 x i8], align 1
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store i8** %2, i8*** %13, align 8
  store i8** %3, i8*** %14, align 8
  store i8** %4, i8*** %15, align 8
  store i8** %5, i8*** %16, align 8
  store float** %6, float*** %17, align 8
  store float** %7, float*** %18, align 8
  store i32** %8, i32*** %19, align 8
  store i32** %9, i32*** %20, align 8
  %33 = bitcast [2 x i8]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.genGtracking.gap, i32 0, i32 0), i64 2, i1 false)
  %34 = load i8**, i8*** %13, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* noundef %36) #5
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %28, align 4
  %39 = load i8**, i8*** %14, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* noundef %41) #5
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %29, align 4
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %62, %10
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %28, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i32**, i32*** %19, align 8
  %51 = load i32, i32* %21, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 -1, i32* %55, align 4
  %56 = load i32**, i32*** %20, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %21, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %21, align 4
  br label %44, !llvm.loop !11

65:                                               ; preds = %44
  store i32 0, i32* %22, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %29, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32**, i32*** %19, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 -1, i32* %77, align 4
  %78 = load i32**, i32*** %20, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 -1, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %66, !llvm.loop !12

87:                                               ; preds = %66
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %29, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i8**, i8*** %15, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = sext i32 %90 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %92, align 8
  %96 = load i8**, i8*** %15, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  store i8 0, i8* %98, align 1
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %29, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i8**, i8*** %16, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %103, align 8
  %107 = load i8**, i8*** %16, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  store i8 0, i8* %109, align 1
  %110 = load i32, i32* %28, align 4
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %29, align 4
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %29, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %31, align 4
  store i32 0, i32* %30, align 4
  br label %116

116:                                              ; preds = %232, %87
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %31, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %235

120:                                              ; preds = %116
  %121 = load i32**, i32*** %19, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %25, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %26, align 4
  %130 = load i32**, i32*** %20, align 8
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %25, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %27, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %26, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %23, align 4
  br label %142

142:                                              ; preds = %146, %120
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %23, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %142
  %147 = load i8**, i8*** %13, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i8**, i8*** %15, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 -1
  store i8* %159, i8** %157, align 8
  store i8 %155, i8* %159, align 1
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %32, i64 0, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = load i8**, i8*** %16, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %165, i8** %163, align 8
  store i8 %161, i8* %165, align 1
  %166 = load i32, i32* %30, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %30, align 4
  br label %142, !llvm.loop !13

168:                                              ; preds = %142
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %27, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %23, align 4
  br label %172

172:                                              ; preds = %176, %168
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %23, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = getelementptr inbounds [2 x i8], [2 x i8]* %32, i64 0, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = load i8**, i8*** %15, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 -1
  store i8* %182, i8** %180, align 8
  store i8 %178, i8* %182, align 1
  %183 = load i8**, i8*** %14, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = load i8**, i8*** %16, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 -1
  store i8* %195, i8** %193, align 8
  store i8 %191, i8* %195, align 1
  %196 = load i32, i32* %30, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %30, align 4
  br label %172, !llvm.loop !14

198:                                              ; preds = %172
  %199 = load i32, i32* %24, align 4
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %25, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201, %198
  br label %235

205:                                              ; preds = %201
  %206 = load i8**, i8*** %13, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %26, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = load i8**, i8*** %15, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 -1
  store i8* %216, i8** %214, align 8
  store i8 %212, i8* %216, align 1
  %217 = load i8**, i8*** %14, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %27, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = load i8**, i8*** %16, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 -1
  store i8* %227, i8** %225, align 8
  store i8 %223, i8* %227, align 1
  %228 = load i32, i32* %30, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %30, align 4
  %230 = load i32, i32* %26, align 4
  store i32 %230, i32* %24, align 4
  %231 = load i32, i32* %27, align 4
  store i32 %231, i32* %25, align 4
  br label %232

232:                                              ; preds = %205
  %233 = load i32, i32* %30, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %30, align 4
  br label %116, !llvm.loop !15

235:                                              ; preds = %204, %116
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

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
