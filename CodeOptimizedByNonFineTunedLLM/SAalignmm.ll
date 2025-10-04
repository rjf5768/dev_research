; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/SAalignmm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/SAalignmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@Aalign.mi = internal global float 0.000000e+00, align 4
@Aalign.m = internal global float* null, align 8
@Aalign.ijp = internal global i32** null, align 8
@Aalign.mpi = internal global i32 0, align 4
@Aalign.mp = internal global i32* null, align 8
@Aalign.currentw = internal global float* null, align 8
@Aalign.previousw = internal global float* null, align 8
@Aalign.match = internal global float* null, align 8
@Aalign.initverticalw = internal global float* null, align 8
@Aalign.lastverticalw = internal global float* null, align 8
@Aalign.mseq1 = internal global i8** null, align 8
@Aalign.mseq2 = internal global i8** null, align 8
@Aalign.mseq = internal global i8** null, align 8
@Aalign.cpmx1 = internal global float** null, align 8
@Aalign.cpmx2 = internal global float** null, align 8
@Aalign.intwork = internal global i32** null, align 8
@Aalign.floatwork = internal global float** null, align 8
@Aalign.orlgth1 = internal global i32 0, align 4
@Aalign.orlgth2 = internal global i32 0, align 4
@njob = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"\0Atrying to allocate (%d+%d)xn matrices ... \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"succeeded\0A\00", align 1
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\0A\0Atrying to allocate %dx%d matrices ... \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"succeeded\0A\0A\00", align 1
@outgap = external dso_local global i32, align 4
@penalty = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@n_dis = external dso_local global [26 x [26 x i32]], align 16
@__const.Atracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @Aalign(i8** noundef %0, i8** noundef %1, double* noundef %2, double* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store double* %2, double** %10, align 8
  store double* %3, double** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store float 0.000000e+00, float* %21, align 4
  %28 = load i32, i32* @Aalign.orlgth1, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i32, i32* @njob, align 4
  %32 = call i8** @AllocateCharMtx(i32 noundef %31, i32 noundef 1)
  store i8** %32, i8*** @Aalign.mseq1, align 8
  %33 = load i32, i32* @njob, align 4
  %34 = call i8** @AllocateCharMtx(i32 noundef %33, i32 noundef 1)
  store i8** %34, i8*** @Aalign.mseq2, align 8
  br label %35

35:                                               ; preds = %30, %7
  %36 = load i8**, i8*** %8, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* noundef %38) #6
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %18, align 4
  %41 = load i8**, i8*** %9, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* noundef %43) #6
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @Aalign.orlgth1, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @Aalign.orlgth2, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %167

53:                                               ; preds = %49, %35
  %54 = load i32, i32* @Aalign.orlgth1, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* @Aalign.orlgth2, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load float*, float** @Aalign.currentw, align 8
  call void @FreeFloatVec(float* noundef %60)
  %61 = load float*, float** @Aalign.previousw, align 8
  call void @FreeFloatVec(float* noundef %61)
  %62 = load float*, float** @Aalign.match, align 8
  call void @FreeFloatVec(float* noundef %62)
  %63 = load float*, float** @Aalign.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %63)
  %64 = load float*, float** @Aalign.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %64)
  %65 = load float*, float** @Aalign.m, align 8
  call void @FreeFloatVec(float* noundef %65)
  %66 = load i32*, i32** @Aalign.mp, align 8
  call void @FreeIntVec(i32* noundef %66)
  %67 = load i8**, i8*** @Aalign.mseq, align 8
  call void @FreeCharMtx(i8** noundef %67)
  %68 = load float**, float*** @Aalign.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %68)
  %69 = load float**, float*** @Aalign.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %69)
  %70 = load float**, float*** @Aalign.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %70)
  %71 = load i32**, i32*** @Aalign.intwork, align 8
  call void @FreeIntMtx(i32** noundef %71)
  br label %72

72:                                               ; preds = %59, %56, %53
  %73 = load i32, i32* %18, align 4
  %74 = sitofp i32 %73 to double
  %75 = fmul double 1.100000e+00, %74
  %76 = fptosi double %75 to i32
  %77 = load i32, i32* @Aalign.orlgth1, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* %18, align 4
  %81 = sitofp i32 %80 to double
  %82 = fmul double 1.100000e+00, %81
  %83 = fptosi double %82 to i32
  br label %86

84:                                               ; preds = %72
  %85 = load i32, i32* @Aalign.orlgth1, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %83, %79 ], [ %85, %84 ]
  %88 = add nsw i32 %87, 100
  store i32 %88, i32* %24, align 4
  %89 = load i32, i32* %19, align 4
  %90 = sitofp i32 %89 to double
  %91 = fmul double 1.100000e+00, %90
  %92 = fptosi double %91 to i32
  %93 = load i32, i32* @Aalign.orlgth2, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load i32, i32* %19, align 4
  %97 = sitofp i32 %96 to double
  %98 = fmul double 1.100000e+00, %97
  %99 = fptosi double %98 to i32
  br label %102

100:                                              ; preds = %86
  %101 = load i32, i32* @Aalign.orlgth2, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi i32 [ %99, %95 ], [ %101, %100 ]
  %104 = add nsw i32 %103, 100
  store i32 %104, i32* %25, align 4
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %25, align 4
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 noundef %106, i32 noundef %107)
  %109 = load i32, i32* %25, align 4
  %110 = add nsw i32 %109, 2
  %111 = call float* @AllocateFloatVec(i32 noundef %110)
  store float* %111, float** @Aalign.currentw, align 8
  %112 = load i32, i32* %25, align 4
  %113 = add nsw i32 %112, 2
  %114 = call float* @AllocateFloatVec(i32 noundef %113)
  store float* %114, float** @Aalign.previousw, align 8
  %115 = load i32, i32* %25, align 4
  %116 = add nsw i32 %115, 2
  %117 = call float* @AllocateFloatVec(i32 noundef %116)
  store float* %117, float** @Aalign.match, align 8
  %118 = load i32, i32* %24, align 4
  %119 = add nsw i32 %118, 2
  %120 = call float* @AllocateFloatVec(i32 noundef %119)
  store float* %120, float** @Aalign.initverticalw, align 8
  %121 = load i32, i32* %24, align 4
  %122 = add nsw i32 %121, 2
  %123 = call float* @AllocateFloatVec(i32 noundef %122)
  store float* %123, float** @Aalign.lastverticalw, align 8
  %124 = load i32, i32* %25, align 4
  %125 = add nsw i32 %124, 2
  %126 = call float* @AllocateFloatVec(i32 noundef %125)
  store float* %126, float** @Aalign.m, align 8
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %127, 2
  %129 = call i32* @AllocateIntVec(i32 noundef %128)
  store i32* %129, i32** @Aalign.mp, align 8
  %130 = load i32, i32* @njob, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i32, i32* %25, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i8** @AllocateCharMtx(i32 noundef %130, i32 noundef %133)
  store i8** %134, i8*** @Aalign.mseq, align 8
  %135 = load i32, i32* %24, align 4
  %136 = add nsw i32 %135, 2
  %137 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %136)
  store float** %137, float*** @Aalign.cpmx1, align 8
  %138 = load i32, i32* %25, align 4
  %139 = add nsw i32 %138, 2
  %140 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %139)
  store float** %140, float*** @Aalign.cpmx2, align 8
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %25, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %102
  %145 = load i32, i32* %24, align 4
  br label %148

146:                                              ; preds = %102
  %147 = load i32, i32* %25, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = add nsw i32 %149, 2
  %151 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %150)
  store float** %151, float*** @Aalign.floatwork, align 8
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %25, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %24, align 4
  br label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %25, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = add nsw i32 %160, 2
  %162 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %161)
  store i32** %162, i32*** @Aalign.intwork, align 8
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %163, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* %24, align 4
  store i32 %165, i32* @Aalign.orlgth1, align 4
  %166 = load i32, i32* %25, align 4
  store i32 %166, i32* @Aalign.orlgth2, align 4
  br label %167

167:                                              ; preds = %159, %49
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i8**, i8*** @Aalign.mseq, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** @Aalign.mseq1, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* %177, i8** %181, align 8
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %168, !llvm.loop !4

185:                                              ; preds = %168
  store i32 0, i32* %16, align 4
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load i8**, i8*** @Aalign.mseq, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %191, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i8**, i8*** @Aalign.mseq2, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* %197, i8** %201, align 8
  br label %202

202:                                              ; preds = %190
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %186, !llvm.loop !6

205:                                              ; preds = %186
  %206 = load i32, i32* @Aalign.orlgth1, align 4
  %207 = load i32, i32* @commonAlloc1, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* @Aalign.orlgth2, align 4
  %211 = load i32, i32* @commonAlloc2, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %255

213:                                              ; preds = %209, %205
  %214 = load i32, i32* @commonAlloc1, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32, i32* @commonAlloc2, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %220)
  br label %221

221:                                              ; preds = %219, %216, %213
  %222 = load i32, i32* @Aalign.orlgth1, align 4
  %223 = load i32, i32* @commonAlloc1, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32, i32* @Aalign.orlgth1, align 4
  br label %229

227:                                              ; preds = %221
  %228 = load i32, i32* @commonAlloc1, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  store i32 %230, i32* %26, align 4
  %231 = load i32, i32* @Aalign.orlgth2, align 4
  %232 = load i32, i32* @commonAlloc2, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i32, i32* @Aalign.orlgth2, align 4
  br label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @commonAlloc2, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  store i32 %239, i32* %27, align 4
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %241 = load i32, i32* %26, align 4
  %242 = add nsw i32 %241, 1
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, 1
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %240, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef %242, i32 noundef %244)
  %246 = load i32, i32* %26, align 4
  %247 = add nsw i32 %246, 10
  %248 = load i32, i32* %27, align 4
  %249 = add nsw i32 %248, 10
  %250 = call i32** @AllocateIntMtx(i32 noundef %247, i32 noundef %249)
  store i32** %250, i32*** @commonIP, align 8
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %251, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %253 = load i32, i32* %26, align 4
  store i32 %253, i32* @commonAlloc1, align 4
  %254 = load i32, i32* %27, align 4
  store i32 %254, i32* @commonAlloc2, align 4
  br label %255

255:                                              ; preds = %238, %209
  %256 = load i32**, i32*** @commonIP, align 8
  store i32** %256, i32*** @Aalign.ijp, align 8
  %257 = load i8**, i8*** %8, align 8
  %258 = load float**, float*** @Aalign.cpmx1, align 8
  %259 = load double*, double** %10, align 8
  %260 = load i8**, i8*** %8, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @strlen(i8* noundef %262) #6
  %264 = trunc i64 %263 to i32
  %265 = load i32, i32* %12, align 4
  call void @cpmx_calc(i8** noundef %257, float** noundef %258, double* noundef %259, i32 noundef %264, i32 noundef %265)
  %266 = load i8**, i8*** %9, align 8
  %267 = load float**, float*** @Aalign.cpmx2, align 8
  %268 = load double*, double** %11, align 8
  %269 = load i8**, i8*** %9, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i64 @strlen(i8* noundef %271) #6
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* %13, align 4
  call void @cpmx_calc(i8** noundef %266, float** noundef %267, double* noundef %268, i32 noundef %273, i32 noundef %274)
  %275 = load float*, float** @Aalign.initverticalw, align 8
  %276 = load float**, float*** @Aalign.cpmx2, align 8
  %277 = load float**, float*** @Aalign.cpmx1, align 8
  %278 = load i32, i32* %18, align 4
  %279 = load float**, float*** @Aalign.floatwork, align 8
  %280 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %275, float** noundef %276, float** noundef %277, i32 noundef 0, i32 noundef %278, float** noundef %279, i32** noundef %280, i32 noundef 1)
  %281 = load float*, float** @Aalign.currentw, align 8
  %282 = load float**, float*** @Aalign.cpmx1, align 8
  %283 = load float**, float*** @Aalign.cpmx2, align 8
  %284 = load i32, i32* %19, align 4
  %285 = load float**, float*** @Aalign.floatwork, align 8
  %286 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %281, float** noundef %282, float** noundef %283, i32 noundef 0, i32 noundef %284, float** noundef %285, i32** noundef %286, i32 noundef 1)
  %287 = load i32, i32* @outgap, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %330

289:                                              ; preds = %255
  store i32 1, i32* %15, align 4
  br label %290

290:                                              ; preds = %306, %289
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %18, align 4
  %293 = add nsw i32 %292, 1
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %290
  %296 = load i32, i32* @penalty, align 4
  %297 = sitofp i32 %296 to double
  %298 = load float*, float** @Aalign.initverticalw, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fpext float %302 to double
  %304 = call double @llvm.fmuladd.f64(double %297, double 5.000000e-01, double %303)
  %305 = fptrunc double %304 to float
  store float %305, float* %301, align 4
  br label %306

306:                                              ; preds = %295
  %307 = load i32, i32* %15, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %15, align 4
  br label %290, !llvm.loop !7

309:                                              ; preds = %290
  store i32 1, i32* %16, align 4
  br label %310

310:                                              ; preds = %326, %309
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, 1
  %314 = icmp slt i32 %311, %313
  br i1 %314, label %315, label %329

315:                                              ; preds = %310
  %316 = load i32, i32* @penalty, align 4
  %317 = sitofp i32 %316 to double
  %318 = load float*, float** @Aalign.currentw, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %318, i64 %320
  %322 = load float, float* %321, align 4
  %323 = fpext float %322 to double
  %324 = call double @llvm.fmuladd.f64(double %317, double 5.000000e-01, double %323)
  %325 = fptrunc double %324 to float
  store float %325, float* %321, align 4
  br label %326

326:                                              ; preds = %315
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %16, align 4
  br label %310, !llvm.loop !8

329:                                              ; preds = %310
  br label %330

330:                                              ; preds = %329, %255
  store i32 0, i32* %16, align 4
  br label %331

331:                                              ; preds = %356, %330
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* %19, align 4
  %334 = add nsw i32 %333, 1
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %359

336:                                              ; preds = %331
  %337 = load float*, float** @Aalign.currentw, align 8
  %338 = load i32, i32* %16, align 4
  %339 = sub nsw i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %337, i64 %340
  %342 = load float, float* %341, align 4
  %343 = fpext float %342 to double
  %344 = load i32, i32* @penalty, align 4
  %345 = sitofp i32 %344 to double
  %346 = call double @llvm.fmuladd.f64(double %345, double 5.000000e-01, double %343)
  %347 = fptrunc double %346 to float
  %348 = load float*, float** @Aalign.m, align 8
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  store float %347, float* %351, align 4
  %352 = load i32*, i32** @Aalign.mp, align 8
  %353 = load i32, i32* %16, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 0, i32* %355, align 4
  br label %356

356:                                              ; preds = %336
  %357 = load i32, i32* %16, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %16, align 4
  br label %331, !llvm.loop !9

359:                                              ; preds = %331
  %360 = load float*, float** @Aalign.currentw, align 8
  %361 = load i32, i32* %19, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %360, i64 %363
  %365 = load float, float* %364, align 4
  %366 = load float*, float** @Aalign.lastverticalw, align 8
  %367 = getelementptr inbounds float, float* %366, i64 0
  store float %365, float* %367, align 4
  %368 = load i32, i32* @outgap, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %359
  %371 = load i32, i32* %18, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %17, align 4
  br label %375

373:                                              ; preds = %359
  %374 = load i32, i32* %18, align 4
  store i32 %374, i32* %17, align 4
  br label %375

375:                                              ; preds = %373, %370
  store i32 1, i32* %15, align 4
  br label %376

376:                                              ; preds = %565, %375
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %17, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %568

380:                                              ; preds = %376
  %381 = load float*, float** @Aalign.previousw, align 8
  %382 = load float*, float** @Aalign.currentw, align 8
  %383 = load i32, i32* %19, align 4
  %384 = add nsw i32 %383, 1
  call void @floatncpy(float* noundef %381, float* noundef %382, i32 noundef %384)
  %385 = load float*, float** @Aalign.initverticalw, align 8
  %386 = load i32, i32* %15, align 4
  %387 = sub nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %385, i64 %388
  %390 = load float, float* %389, align 4
  %391 = load float*, float** @Aalign.previousw, align 8
  %392 = getelementptr inbounds float, float* %391, i64 0
  store float %390, float* %392, align 4
  %393 = load float*, float** @Aalign.currentw, align 8
  %394 = load float**, float*** @Aalign.cpmx1, align 8
  %395 = load float**, float*** @Aalign.cpmx2, align 8
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* %19, align 4
  %398 = load float**, float*** @Aalign.floatwork, align 8
  %399 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %393, float** noundef %394, float** noundef %395, i32 noundef %396, i32 noundef %397, float** noundef %398, i32** noundef %399, i32 noundef 0)
  %400 = load float*, float** @Aalign.initverticalw, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  %404 = load float, float* %403, align 4
  %405 = load float*, float** @Aalign.currentw, align 8
  %406 = getelementptr inbounds float, float* %405, i64 0
  store float %404, float* %406, align 4
  %407 = load float*, float** @Aalign.previousw, align 8
  %408 = getelementptr inbounds float, float* %407, i64 0
  %409 = load float, float* %408, align 4
  %410 = fpext float %409 to double
  %411 = load i32, i32* @penalty, align 4
  %412 = sitofp i32 %411 to double
  %413 = call double @llvm.fmuladd.f64(double %412, double 5.000000e-01, double %410)
  %414 = fptrunc double %413 to float
  store float %414, float* @Aalign.mi, align 4
  store i32 0, i32* @Aalign.mpi, align 4
  store i32 1, i32* %16, align 4
  br label %415

415:                                              ; preds = %551, %380
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* %19, align 4
  %418 = add nsw i32 %417, 1
  %419 = icmp slt i32 %416, %418
  br i1 %419, label %420, label %554

420:                                              ; preds = %415
  %421 = load float*, float** @Aalign.previousw, align 8
  %422 = load i32, i32* %16, align 4
  %423 = sub nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds float, float* %421, i64 %424
  %426 = load float, float* %425, align 4
  store float %426, float* %21, align 4
  %427 = load i32**, i32*** @Aalign.ijp, align 8
  %428 = load i32, i32* %15, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32*, i32** %427, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 0, i32* %434, align 4
  %435 = load i32, i32* @penalty, align 4
  %436 = sitofp i32 %435 to double
  %437 = fmul double %436, 5.000000e-01
  %438 = fptrunc double %437 to float
  store float %438, float* %22, align 4
  %439 = load float, float* @Aalign.mi, align 4
  %440 = load float, float* %22, align 4
  %441 = fadd float %439, %440
  store float %441, float* %23, align 4
  %442 = load float, float* %23, align 4
  %443 = load float, float* %21, align 4
  %444 = fcmp ogt float %442, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %420
  %446 = load float, float* %23, align 4
  store float %446, float* %21, align 4
  %447 = load i32, i32* %16, align 4
  %448 = load i32, i32* @Aalign.mpi, align 4
  %449 = sub nsw i32 %447, %448
  %450 = sub nsw i32 0, %449
  %451 = load i32**, i32*** @Aalign.ijp, align 8
  %452 = load i32, i32* %15, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32*, i32** %451, i64 %453
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %16, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %450, i32* %458, align 4
  br label %459

459:                                              ; preds = %445, %420
  %460 = load i32, i32* @penalty, align 4
  %461 = sitofp i32 %460 to double
  %462 = fmul double %461, 5.000000e-01
  %463 = fptrunc double %462 to float
  store float %463, float* %22, align 4
  %464 = load float*, float** @Aalign.previousw, align 8
  %465 = load i32, i32* %16, align 4
  %466 = sub nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %464, i64 %467
  %469 = load float, float* %468, align 4
  %470 = load float, float* %22, align 4
  %471 = fadd float %469, %470
  store float %471, float* %23, align 4
  %472 = load float, float* @Aalign.mi, align 4
  %473 = load float, float* %23, align 4
  %474 = fcmp ole float %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %459
  %476 = load float, float* %23, align 4
  store float %476, float* @Aalign.mi, align 4
  %477 = load i32, i32* %16, align 4
  %478 = sub nsw i32 %477, 1
  store i32 %478, i32* @Aalign.mpi, align 4
  br label %479

479:                                              ; preds = %475, %459
  %480 = load i32, i32* @penalty, align 4
  %481 = sitofp i32 %480 to double
  %482 = fmul double %481, 5.000000e-01
  %483 = fptrunc double %482 to float
  store float %483, float* %22, align 4
  %484 = load float*, float** @Aalign.m, align 8
  %485 = load i32, i32* %16, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds float, float* %484, i64 %486
  %488 = load float, float* %487, align 4
  %489 = load float, float* %22, align 4
  %490 = fadd float %488, %489
  store float %490, float* %23, align 4
  %491 = load float, float* %23, align 4
  %492 = load float, float* %21, align 4
  %493 = fcmp ogt float %491, %492
  br i1 %493, label %494, label %511

494:                                              ; preds = %479
  %495 = load float, float* %23, align 4
  store float %495, float* %21, align 4
  %496 = load i32, i32* %15, align 4
  %497 = load i32*, i32** @Aalign.mp, align 8
  %498 = load i32, i32* %16, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = sub nsw i32 %496, %501
  %503 = load i32**, i32*** @Aalign.ijp, align 8
  %504 = load i32, i32* %15, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32*, i32** %503, i64 %505
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %16, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  store i32 %502, i32* %510, align 4
  br label %511

511:                                              ; preds = %494, %479
  %512 = load i32, i32* @penalty, align 4
  %513 = sitofp i32 %512 to double
  %514 = fmul double %513, 5.000000e-01
  %515 = fptrunc double %514 to float
  store float %515, float* %22, align 4
  %516 = load float*, float** @Aalign.previousw, align 8
  %517 = load i32, i32* %16, align 4
  %518 = sub nsw i32 %517, 1
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %516, i64 %519
  %521 = load float, float* %520, align 4
  %522 = load float, float* %22, align 4
  %523 = fadd float %521, %522
  store float %523, float* %23, align 4
  %524 = load float*, float** @Aalign.m, align 8
  %525 = load i32, i32* %16, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds float, float* %524, i64 %526
  %528 = load float, float* %527, align 4
  %529 = load float, float* %23, align 4
  %530 = fcmp ole float %528, %529
  br i1 %530, label %531, label %543

531:                                              ; preds = %511
  %532 = load float, float* %23, align 4
  %533 = load float*, float** @Aalign.m, align 8
  %534 = load i32, i32* %16, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds float, float* %533, i64 %535
  store float %532, float* %536, align 4
  %537 = load i32, i32* %15, align 4
  %538 = sub nsw i32 %537, 1
  %539 = load i32*, i32** @Aalign.mp, align 8
  %540 = load i32, i32* %16, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  store i32 %538, i32* %542, align 4
  br label %543

543:                                              ; preds = %531, %511
  %544 = load float, float* %21, align 4
  %545 = load float*, float** @Aalign.currentw, align 8
  %546 = load i32, i32* %16, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds float, float* %545, i64 %547
  %549 = load float, float* %548, align 4
  %550 = fadd float %549, %544
  store float %550, float* %548, align 4
  br label %551

551:                                              ; preds = %543
  %552 = load i32, i32* %16, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %16, align 4
  br label %415, !llvm.loop !10

554:                                              ; preds = %415
  %555 = load float*, float** @Aalign.currentw, align 8
  %556 = load i32, i32* %19, align 4
  %557 = sub nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds float, float* %555, i64 %558
  %560 = load float, float* %559, align 4
  %561 = load float*, float** @Aalign.lastverticalw, align 8
  %562 = load i32, i32* %15, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds float, float* %561, i64 %563
  store float %560, float* %564, align 4
  br label %565

565:                                              ; preds = %554
  %566 = load i32, i32* %15, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %15, align 4
  br label %376, !llvm.loop !11

568:                                              ; preds = %376
  %569 = load float*, float** @Aalign.currentw, align 8
  %570 = load float*, float** @Aalign.lastverticalw, align 8
  %571 = load i8**, i8*** %8, align 8
  %572 = load i8**, i8*** %9, align 8
  %573 = load i8**, i8*** @Aalign.mseq1, align 8
  %574 = load i8**, i8*** @Aalign.mseq2, align 8
  %575 = load float**, float*** @Aalign.cpmx1, align 8
  %576 = load float**, float*** @Aalign.cpmx2, align 8
  %577 = load i32**, i32*** @Aalign.ijp, align 8
  %578 = load i32, i32* %12, align 4
  %579 = load i32, i32* %13, align 4
  %580 = call float @Atracking(float* noundef %569, float* noundef %570, i8** noundef %571, i8** noundef %572, i8** noundef %573, i8** noundef %574, float** noundef %575, float** noundef %576, i32** noundef %577, i32 noundef %578, i32 noundef %579)
  %581 = load i8**, i8*** @Aalign.mseq1, align 8
  %582 = getelementptr inbounds i8*, i8** %581, i64 0
  %583 = load i8*, i8** %582, align 8
  %584 = call i64 @strlen(i8* noundef %583) #6
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %20, align 4
  %586 = load i32, i32* %14, align 4
  %587 = load i32, i32* %20, align 4
  %588 = icmp slt i32 %586, %587
  br i1 %588, label %592, label %589

589:                                              ; preds = %568
  %590 = load i32, i32* %20, align 4
  %591 = icmp sgt i32 %590, 5000000
  br i1 %591, label %592, label %597

592:                                              ; preds = %589, %568
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %594 = load i32, i32* %14, align 4
  %595 = load i32, i32* %20, align 4
  %596 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %593, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 noundef %594, i32 noundef %595, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %597

597:                                              ; preds = %592, %589
  store i32 0, i32* %15, align 4
  br label %598

598:                                              ; preds = %614, %597
  %599 = load i32, i32* %15, align 4
  %600 = load i32, i32* %12, align 4
  %601 = icmp slt i32 %599, %600
  br i1 %601, label %602, label %617

602:                                              ; preds = %598
  %603 = load i8**, i8*** %8, align 8
  %604 = load i32, i32* %15, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8*, i8** %603, i64 %605
  %607 = load i8*, i8** %606, align 8
  %608 = load i8**, i8*** @Aalign.mseq1, align 8
  %609 = load i32, i32* %15, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i8*, i8** %608, i64 %610
  %612 = load i8*, i8** %611, align 8
  %613 = call i8* @strcpy(i8* noundef %607, i8* noundef %612) #7
  br label %614

614:                                              ; preds = %602
  %615 = load i32, i32* %15, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %15, align 4
  br label %598, !llvm.loop !12

617:                                              ; preds = %598
  store i32 0, i32* %16, align 4
  br label %618

618:                                              ; preds = %634, %617
  %619 = load i32, i32* %16, align 4
  %620 = load i32, i32* %13, align 4
  %621 = icmp slt i32 %619, %620
  br i1 %621, label %622, label %637

622:                                              ; preds = %618
  %623 = load i8**, i8*** %9, align 8
  %624 = load i32, i32* %16, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8*, i8** %623, i64 %625
  %627 = load i8*, i8** %626, align 8
  %628 = load i8**, i8*** @Aalign.mseq2, align 8
  %629 = load i32, i32* %16, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i8*, i8** %628, i64 %630
  %632 = load i8*, i8** %631, align 8
  %633 = call i8* @strcpy(i8* noundef %627, i8* noundef %632) #7
  br label %634

634:                                              ; preds = %622
  %635 = load i32, i32* %16, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %16, align 4
  br label %618, !llvm.loop !13

637:                                              ; preds = %618
  %638 = load float, float* %21, align 4
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

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local float* @AllocateFloatVec(i32 noundef) #1

declare dso_local i32* @AllocateIntVec(i32 noundef) #1

declare dso_local float** @AllocateFloatMtx(i32 noundef, i32 noundef) #1

declare dso_local i32** @AllocateIntMtx(i32 noundef, i32 noundef) #1

declare dso_local void @cpmx_calc(i8** noundef, float** noundef, double* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @match_calc(float* noundef %0, float** noundef %1, float** noundef %2, i32 noundef %3, i32 noundef %4, float** noundef %5, i32** noundef %6, i32 noundef %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float**, align 8
  %11 = alloca float**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [26 x float], align 16
  %21 = alloca float**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store float** %1, float*** %10, align 8
  store float** %2, float*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float** %5, float*** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load float**, float*** %14, align 8
  store float** %24, float*** %21, align 8
  %25 = load i32**, i32*** %15, align 8
  store i32** %25, i32*** %22, align 8
  store i32 0, i32* %23, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %8
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %90, %28
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %78, %33
  %35 = load i32, i32* %19, align 4
  %36 = icmp slt i32 %35, 26
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load float**, float*** %11, align 8
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float*, float** %38, i64 %40
  %42 = load float*, float** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %48, label %77

48:                                               ; preds = %37
  %49 = load float**, float*** %11, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float*, float** %49, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float**, float*** %21, align 8
  %59 = load i32, i32* %23, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float*, float** %58, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  store float %57, float* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32**, i32*** %22, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %66, i32* %74, align 4
  %75 = load i32, i32* %23, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %23, align 4
  br label %77

77:                                               ; preds = %48, %37
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %19, align 4
  br label %34, !llvm.loop !14

81:                                               ; preds = %34
  %82 = load i32**, i32*** %22, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 -1, i32* %89, align 4
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %29, !llvm.loop !15

93:                                               ; preds = %29
  br label %94

94:                                               ; preds = %93, %8
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %132, %94
  %96 = load i32, i32* %19, align 4
  %97 = icmp slt i32 %96, 26
  br i1 %97, label %98, label %135

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [26 x float], [26 x float]* %20, i64 0, i64 %100
  store float 0.000000e+00, float* %101, align 4
  store i32 0, i32* %18, align 4
  br label %102

102:                                              ; preds = %128, %98
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %103, 26
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i64 0, i64 %107
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [26 x i32], [26 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to float
  %114 = load float**, float*** %10, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float*, float** %114, i64 %116
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  %122 = load float, float* %121, align 4
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [26 x float], [26 x float]* %20, i64 0, i64 %124
  %126 = load float, float* %125, align 4
  %127 = call float @llvm.fmuladd.f32(float %113, float %122, float %126)
  store float %127, float* %125, align 4
  br label %128

128:                                              ; preds = %105
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  br label %102, !llvm.loop !16

131:                                              ; preds = %102
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %95, !llvm.loop !17

135:                                              ; preds = %95
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %188, %135
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %191

140:                                              ; preds = %136
  %141 = load float*, float** %9, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  store float 0.000000e+00, float* %144, align 4
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %184, %140
  %146 = load i32**, i32*** %22, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %156, label %187

156:                                              ; preds = %145
  %157 = load i32**, i32*** %22, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [26 x float], [26 x float]* %20, i64 0, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load float**, float*** %21, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %169, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  %178 = load float*, float** %9, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = call float @llvm.fmuladd.f32(float %168, float %177, float %182)
  store float %183, float* %181, align 4
  br label %184

184:                                              ; preds = %156
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %145, !llvm.loop !18

187:                                              ; preds = %145
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %136, !llvm.loop !19

191:                                              ; preds = %136
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local void @floatncpy(float* noundef, float* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal float @Atracking(float* noundef %0, float* noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, i8** noundef %5, float** noundef %6, float** noundef %7, i32** noundef %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca float**, align 8
  %19 = alloca float**, align 8
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
  %32 = alloca i32, align 4
  %33 = alloca [2 x i8], align 1
  %34 = alloca float, align 4
  store float* %0, float** %12, align 8
  store float* %1, float** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i8** %5, i8*** %17, align 8
  store float** %6, float*** %18, align 8
  store float** %7, float*** %19, align 8
  store i32** %8, i32*** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %35 = bitcast [2 x i8]* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.Atracking.gap, i32 0, i32 0), i64 2, i1 false)
  %36 = load i8**, i8*** %14, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* noundef %38) #6
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %31, align 4
  %41 = load i8**, i8*** %15, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* noundef %43) #6
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %32, align 4
  %46 = load i32, i32* @outgap, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %11
  br label %128

49:                                               ; preds = %11
  %50 = load float*, float** %13, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  store float %52, float* %34, align 4
  store i32 0, i32* %23, align 4
  br label %53

53:                                               ; preds = %86, %49
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %31, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load float*, float** %13, align 8
  %59 = load i32, i32* %23, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float, float* %34, align 4
  %64 = fcmp oge float %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %57
  %66 = load float*, float** %13, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %34, align 4
  %71 = load i32, i32* %23, align 4
  store i32 %71, i32* %27, align 4
  %72 = load i32, i32* %32, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %28, align 4
  %74 = load i32, i32* %31, align 4
  %75 = load i32, i32* %23, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32**, i32*** %20, align 8
  %78 = load i32, i32* %31, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %32, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %65, %57
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %23, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %23, align 4
  br label %53, !llvm.loop !20

89:                                               ; preds = %53
  store i32 0, i32* %24, align 4
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %32, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load float*, float** %12, align 8
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load float, float* %34, align 4
  %101 = fcmp oge float %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %94
  %103 = load float*, float** %12, align 8
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  store float %107, float* %34, align 4
  %108 = load i32, i32* %31, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %27, align 4
  %110 = load i32, i32* %24, align 4
  store i32 %110, i32* %28, align 4
  %111 = load i32, i32* %32, align 4
  %112 = load i32, i32* %24, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sub nsw i32 0, %113
  %115 = load i32**, i32*** %20, align 8
  %116 = load i32, i32* %31, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %32, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %114, i32* %122, align 4
  br label %123

123:                                              ; preds = %102, %94
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %24, align 4
  br label %90, !llvm.loop !21

127:                                              ; preds = %90
  br label %128

128:                                              ; preds = %127, %48
  store i32 0, i32* %23, align 4
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %31, align 4
  %132 = add nsw i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32**, i32*** %20, align 8
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %23, align 4
  br label %129, !llvm.loop !22

146:                                              ; preds = %129
  store i32 0, i32* %24, align 4
  br label %147

147:                                              ; preds = %162, %146
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %32, align 4
  %150 = add nsw i32 %149, 1
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load i32, i32* %24, align 4
  %154 = add nsw i32 %153, 1
  %155 = sub nsw i32 0, %154
  %156 = load i32**, i32*** %20, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %152
  %163 = load i32, i32* %24, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %24, align 4
  br label %147, !llvm.loop !23

165:                                              ; preds = %147
  store i32 0, i32* %23, align 4
  br label %166

166:                                              ; preds = %186, %165
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* %32, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i8**, i8*** %16, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = sext i32 %173 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %177, align 8
  %181 = load i8**, i8*** %16, align 8
  %182 = load i32, i32* %23, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  store i8 0, i8* %185, align 1
  br label %186

186:                                              ; preds = %170
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %23, align 4
  br label %166, !llvm.loop !24

189:                                              ; preds = %166
  store i32 0, i32* %24, align 4
  br label %190

190:                                              ; preds = %210, %189
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %213

194:                                              ; preds = %190
  %195 = load i32, i32* %31, align 4
  %196 = load i32, i32* %32, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i8**, i8*** %17, align 8
  %199 = load i32, i32* %24, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = sext i32 %197 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %201, align 8
  %205 = load i8**, i8*** %17, align 8
  %206 = load i32, i32* %24, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  store i8 0, i8* %209, align 1
  br label %210

210:                                              ; preds = %194
  %211 = load i32, i32* %24, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %24, align 4
  br label %190, !llvm.loop !25

213:                                              ; preds = %190
  %214 = load i32, i32* %31, align 4
  store i32 %214, i32* %27, align 4
  %215 = load i32, i32* %32, align 4
  store i32 %215, i32* %28, align 4
  store i32 0, i32* %25, align 4
  br label %216

216:                                              ; preds = %446, %213
  %217 = load i32, i32* %25, align 4
  %218 = load i32, i32* %31, align 4
  %219 = load i32, i32* %32, align 4
  %220 = add nsw i32 %218, %219
  %221 = icmp sle i32 %217, %220
  br i1 %221, label %222, label %449

222:                                              ; preds = %216
  %223 = load i32**, i32*** %20, align 8
  %224 = load i32, i32* %27, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %28, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %222
  %234 = load i32, i32* %27, align 4
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %29, align 4
  %236 = load i32, i32* %28, align 4
  %237 = load i32**, i32*** %20, align 8
  %238 = load i32, i32* %27, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %28, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %236, %245
  store i32 %246, i32* %30, align 4
  br label %278

247:                                              ; preds = %222
  %248 = load i32**, i32*** %20, align 8
  %249 = load i32, i32* %27, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %28, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %247
  %259 = load i32, i32* %27, align 4
  %260 = load i32**, i32*** %20, align 8
  %261 = load i32, i32* %27, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %28, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %259, %268
  store i32 %269, i32* %29, align 4
  %270 = load i32, i32* %28, align 4
  %271 = sub nsw i32 %270, 1
  store i32 %271, i32* %30, align 4
  br label %277

272:                                              ; preds = %247
  %273 = load i32, i32* %27, align 4
  %274 = sub nsw i32 %273, 1
  store i32 %274, i32* %29, align 4
  %275 = load i32, i32* %28, align 4
  %276 = sub nsw i32 %275, 1
  store i32 %276, i32* %30, align 4
  br label %277

277:                                              ; preds = %272, %258
  br label %278

278:                                              ; preds = %277, %233
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %29, align 4
  %281 = sub nsw i32 %279, %280
  store i32 %281, i32* %26, align 4
  br label %282

282:                                              ; preds = %329, %278
  %283 = load i32, i32* %26, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %26, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %332

286:                                              ; preds = %282
  store i32 0, i32* %23, align 4
  br label %287

287:                                              ; preds = %309, %286
  %288 = load i32, i32* %23, align 4
  %289 = load i32, i32* %21, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %287
  %292 = load i8**, i8*** %14, align 8
  %293 = load i32, i32* %23, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = load i32, i32* %29, align 4
  %298 = load i32, i32* %26, align 4
  %299 = add nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %296, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = load i8**, i8*** %16, align 8
  %304 = load i32, i32* %23, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 -1
  store i8* %308, i8** %306, align 8
  store i8 %302, i8* %308, align 1
  br label %309

309:                                              ; preds = %291
  %310 = load i32, i32* %23, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %23, align 4
  br label %287, !llvm.loop !26

312:                                              ; preds = %287
  store i32 0, i32* %24, align 4
  br label %313

313:                                              ; preds = %326, %312
  %314 = load i32, i32* %24, align 4
  %315 = load i32, i32* %22, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %329

317:                                              ; preds = %313
  %318 = getelementptr inbounds [2 x i8], [2 x i8]* %33, i64 0, i64 0
  %319 = load i8, i8* %318, align 1
  %320 = load i8**, i8*** %17, align 8
  %321 = load i32, i32* %24, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 -1
  store i8* %325, i8** %323, align 8
  store i8 %319, i8* %325, align 1
  br label %326

326:                                              ; preds = %317
  %327 = load i32, i32* %24, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %24, align 4
  br label %313, !llvm.loop !27

329:                                              ; preds = %313
  %330 = load i32, i32* %25, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %25, align 4
  br label %282, !llvm.loop !28

332:                                              ; preds = %282
  %333 = load i32, i32* %28, align 4
  %334 = load i32, i32* %30, align 4
  %335 = sub nsw i32 %333, %334
  store i32 %335, i32* %26, align 4
  br label %336

336:                                              ; preds = %383, %332
  %337 = load i32, i32* %26, align 4
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %26, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %386

340:                                              ; preds = %336
  store i32 0, i32* %23, align 4
  br label %341

341:                                              ; preds = %354, %340
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %21, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %357

345:                                              ; preds = %341
  %346 = getelementptr inbounds [2 x i8], [2 x i8]* %33, i64 0, i64 0
  %347 = load i8, i8* %346, align 1
  %348 = load i8**, i8*** %16, align 8
  %349 = load i32, i32* %23, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 -1
  store i8* %353, i8** %351, align 8
  store i8 %347, i8* %353, align 1
  br label %354

354:                                              ; preds = %345
  %355 = load i32, i32* %23, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %23, align 4
  br label %341, !llvm.loop !29

357:                                              ; preds = %341
  store i32 0, i32* %24, align 4
  br label %358

358:                                              ; preds = %380, %357
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* %22, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %358
  %363 = load i8**, i8*** %15, align 8
  %364 = load i32, i32* %24, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8*, i8** %363, i64 %365
  %367 = load i8*, i8** %366, align 8
  %368 = load i32, i32* %30, align 4
  %369 = load i32, i32* %26, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %367, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = load i8**, i8*** %17, align 8
  %375 = load i32, i32* %24, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8*, i8** %374, i64 %376
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 -1
  store i8* %379, i8** %377, align 8
  store i8 %373, i8* %379, align 1
  br label %380

380:                                              ; preds = %362
  %381 = load i32, i32* %24, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %24, align 4
  br label %358, !llvm.loop !30

383:                                              ; preds = %358
  %384 = load i32, i32* %25, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %25, align 4
  br label %336, !llvm.loop !31

386:                                              ; preds = %336
  %387 = load i32, i32* %27, align 4
  %388 = icmp sle i32 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %28, align 4
  %391 = icmp sle i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389, %386
  br label %449

393:                                              ; preds = %389
  store i32 0, i32* %23, align 4
  br label %394

394:                                              ; preds = %414, %393
  %395 = load i32, i32* %23, align 4
  %396 = load i32, i32* %21, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %417

398:                                              ; preds = %394
  %399 = load i8**, i8*** %14, align 8
  %400 = load i32, i32* %23, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8*, i8** %399, i64 %401
  %403 = load i8*, i8** %402, align 8
  %404 = load i32, i32* %29, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  %407 = load i8, i8* %406, align 1
  %408 = load i8**, i8*** %16, align 8
  %409 = load i32, i32* %23, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 -1
  store i8* %413, i8** %411, align 8
  store i8 %407, i8* %413, align 1
  br label %414

414:                                              ; preds = %398
  %415 = load i32, i32* %23, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %23, align 4
  br label %394, !llvm.loop !32

417:                                              ; preds = %394
  store i32 0, i32* %24, align 4
  br label %418

418:                                              ; preds = %438, %417
  %419 = load i32, i32* %24, align 4
  %420 = load i32, i32* %22, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %441

422:                                              ; preds = %418
  %423 = load i8**, i8*** %15, align 8
  %424 = load i32, i32* %24, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %423, i64 %425
  %427 = load i8*, i8** %426, align 8
  %428 = load i32, i32* %30, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, i8* %427, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = load i8**, i8*** %17, align 8
  %433 = load i32, i32* %24, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8*, i8** %432, i64 %434
  %436 = load i8*, i8** %435, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 -1
  store i8* %437, i8** %435, align 8
  store i8 %431, i8* %437, align 1
  br label %438

438:                                              ; preds = %422
  %439 = load i32, i32* %24, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %24, align 4
  br label %418, !llvm.loop !33

441:                                              ; preds = %418
  %442 = load i32, i32* %25, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %25, align 4
  %444 = load i32, i32* %29, align 4
  store i32 %444, i32* %27, align 4
  %445 = load i32, i32* %30, align 4
  store i32 %445, i32* %28, align 4
  br label %446

446:                                              ; preds = %441
  %447 = load i32, i32* %25, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %25, align 4
  br label %216, !llvm.loop !34

449:                                              ; preds = %392, %216
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
