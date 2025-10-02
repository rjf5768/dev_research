; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/suboptalign11.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/suboptalign11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._shuryoten = type { i32, i32, float, %struct._shuryoten*, %struct._shuryoten* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._LocalHom = type { i32, %struct._LocalHom*, %struct._LocalHom*, i32, i32, i32, i32, double, i32, i32, double, float, double }

@suboptalign11.used = internal global i32** null, align 8
@suboptalign11.mi = internal global float 0.000000e+00, align 4
@suboptalign11.m = internal global float* null, align 8
@suboptalign11.Mi = internal global float 0.000000e+00, align 4
@suboptalign11.largeM = internal global float* null, align 8
@suboptalign11.ijpi = internal global i32** null, align 8
@suboptalign11.ijpj = internal global i32** null, align 8
@suboptalign11.mpi = internal global i32 0, align 4
@suboptalign11.mp = internal global i32* null, align 8
@suboptalign11.Mpi = internal global i32 0, align 4
@suboptalign11.Mp = internal global i32* null, align 8
@suboptalign11.w1 = internal global float* null, align 8
@suboptalign11.w2 = internal global float* null, align 8
@suboptalign11.initverticalw = internal global float* null, align 8
@suboptalign11.lastverticalw = internal global float* null, align 8
@suboptalign11.mseq1 = internal global i8** null, align 8
@suboptalign11.mseq2 = internal global i8** null, align 8
@suboptalign11.cpmx1 = internal global float** null, align 8
@suboptalign11.cpmx2 = internal global float** null, align 8
@suboptalign11.intwork = internal global i32** null, align 8
@suboptalign11.floatwork = internal global float** null, align 8
@suboptalign11.orlgth1 = internal global i32 0, align 4
@suboptalign11.orlgth2 = internal global i32 0, align 4
@penalty = external dso_local global i32, align 4
@penalty_OP = external dso_local global i32, align 4
@penalty_ex = external dso_local global i32, align 4
@offset = external dso_local global i32, align 4
@suboptalign11.shuryo = internal global %struct._shuryoten* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"in suboptalign11\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.3\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.4\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.5\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.6\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"in suboptalign11 step 1.7\0A\00", align 1
@njob = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 2\0A\00", align 1
@commonAlloc1 = external dso_local global i32, align 4
@commonAlloc2 = external dso_local global i32, align 4
@commonIP = external dso_local global i32**, align 8
@commonJP = external dso_local global i32**, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"in suboptalign11 step 3\0A\00", align 1
@localstop = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"shuryo[%d].i,j,wm = %d,%d,%f\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"maxwm = %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"endali = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"endalj = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"k=%d, shuryo[k].i,j,wm=%d,%d,%f go\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external dso_local global [128 x [128 x i32]], align 16
@__const.gentracking.gap = private unnamed_addr constant [2 x i8] c"-\00", align 1
@gentracking.res1 = internal global i8* null, align 8
@gentracking.res2 = internal global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"mseq1=%s\0Amseq2=%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @suboptalign11(i8** noundef %0, i8** noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4, %struct._LocalHom* noundef %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct._LocalHom*, align 8
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
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca i32, align 4
  %47 = alloca float, align 4
  %48 = alloca i32, align 4
  %49 = alloca float, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct._LocalHom* %5, %struct._LocalHom** %12, align 8
  store float 0.000000e+00, float* %21, align 4
  %54 = load i32, i32* @penalty, align 4
  %55 = sitofp i32 %54 to float
  store float %55, float* %40, align 4
  %56 = load i32, i32* @penalty_OP, align 4
  %57 = sitofp i32 %56 to float
  store float %57, float* %41, align 4
  %58 = load i32, i32* @penalty_ex, align 4
  %59 = sitofp i32 %58 to float
  store float %59, float* %42, align 4
  %60 = load i32, i32* @offset, align 4
  %61 = sitofp i32 %60 to float
  store float %61, float* %43, align 4
  %62 = load float, float* %43, align 4
  %63 = fneg float %62
  store float %63, float* %44, align 4
  %64 = load float, float* %43, align 4
  %65 = fneg float %64
  store float %65, float* %45, align 4
  store float 0.000000e+00, float* %47, align 4
  store i32 0, i32* %48, align 4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %69 = icmp ne %struct._shuryoten* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %6
  %71 = call noalias i8* @calloc(i64 noundef 100, i64 noundef 32) #5
  %72 = bitcast i8* %71 to %struct._shuryoten*
  store %struct._shuryoten* %72, %struct._shuryoten** @suboptalign11.shuryo, align 8
  br label %73

73:                                               ; preds = %70, %6
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 100
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %78, i64 %80
  %82 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %83, i64 %85
  %87 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %86, i32 0, i32 1
  store i32 -1, i32* %87, align 4
  %88 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %88, i64 %90
  %92 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %91, i32 0, i32 2
  store float 0.000000e+00, float* %92, align 8
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %74, !llvm.loop !4

96:                                               ; preds = %74
  store i32 0, i32* %46, align 4
  %97 = load i32, i32* @suboptalign11.orlgth1, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i8**, i8*** %7, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strlen(i8* noundef %103) #6
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load i8**, i8*** %8, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strlen(i8* noundef %108) #6
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %19, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @suboptalign11.orlgth1, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @suboptalign11.orlgth2, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %248

120:                                              ; preds = %116, %100
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @suboptalign11.orlgth1, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = load i32, i32* @suboptalign11.orlgth2, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %125
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %131 = load float*, float** @suboptalign11.w1, align 8
  call void @FreeFloatVec(float* noundef %131)
  %132 = load float*, float** @suboptalign11.w2, align 8
  call void @FreeFloatVec(float* noundef %132)
  %133 = load float*, float** @suboptalign11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %133)
  %134 = load float*, float** @suboptalign11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %137 = load float*, float** @suboptalign11.m, align 8
  call void @FreeFloatVec(float* noundef %137)
  %138 = load i32*, i32** @suboptalign11.mp, align 8
  call void @FreeIntVec(i32* noundef %138)
  %139 = load float*, float** @suboptalign11.largeM, align 8
  call void @FreeFloatVec(float* noundef %139)
  %140 = load i32*, i32** @suboptalign11.Mp, align 8
  call void @FreeIntVec(i32* noundef %140)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %141, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %143 = load float**, float*** @suboptalign11.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %143)
  %144 = load float**, float*** @suboptalign11.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %147 = load float**, float*** @suboptalign11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %147)
  %148 = load i32**, i32*** @suboptalign11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %148)
  br label %149

149:                                              ; preds = %128, %125, %120
  %150 = load i32, i32* %18, align 4
  %151 = sitofp i32 %150 to double
  %152 = fmul double 1.300000e+00, %151
  %153 = fptosi double %152 to i32
  %154 = load i32, i32* @suboptalign11.orlgth1, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* %18, align 4
  %158 = sitofp i32 %157 to double
  %159 = fmul double 1.300000e+00, %158
  %160 = fptosi double %159 to i32
  br label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @suboptalign11.orlgth1, align 4
  br label %163

163:                                              ; preds = %161, %156
  %164 = phi i32 [ %160, %156 ], [ %162, %161 ]
  %165 = add nsw i32 %164, 100
  store i32 %165, i32* %50, align 4
  %166 = load i32, i32* %19, align 4
  %167 = sitofp i32 %166 to double
  %168 = fmul double 1.300000e+00, %167
  %169 = fptosi double %168 to i32
  %170 = load i32, i32* @suboptalign11.orlgth2, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load i32, i32* %19, align 4
  %174 = sitofp i32 %173 to double
  %175 = fmul double 1.300000e+00, %174
  %176 = fptosi double %175 to i32
  br label %179

177:                                              ; preds = %163
  %178 = load i32, i32* @suboptalign11.orlgth2, align 4
  br label %179

179:                                              ; preds = %177, %172
  %180 = phi i32 [ %176, %172 ], [ %178, %177 ]
  %181 = add nsw i32 %180, 100
  store i32 %181, i32* %51, align 4
  %182 = load i32, i32* %51, align 4
  %183 = add nsw i32 %182, 2
  %184 = call float* @AllocateFloatVec(i32 noundef %183)
  store float* %184, float** @suboptalign11.w1, align 8
  %185 = load i32, i32* %51, align 4
  %186 = add nsw i32 %185, 2
  %187 = call float* @AllocateFloatVec(i32 noundef %186)
  store float* %187, float** @suboptalign11.w2, align 8
  %188 = load i32, i32* %50, align 4
  %189 = add nsw i32 %188, 2
  %190 = call float* @AllocateFloatVec(i32 noundef %189)
  store float* %190, float** @suboptalign11.initverticalw, align 8
  %191 = load i32, i32* %50, align 4
  %192 = add nsw i32 %191, 2
  %193 = call float* @AllocateFloatVec(i32 noundef %192)
  store float* %193, float** @suboptalign11.lastverticalw, align 8
  %194 = load i32, i32* %51, align 4
  %195 = add nsw i32 %194, 2
  %196 = call float* @AllocateFloatVec(i32 noundef %195)
  store float* %196, float** @suboptalign11.m, align 8
  %197 = load i32, i32* %51, align 4
  %198 = add nsw i32 %197, 2
  %199 = call i32* @AllocateIntVec(i32 noundef %198)
  store i32* %199, i32** @suboptalign11.mp, align 8
  %200 = load i32, i32* %51, align 4
  %201 = add nsw i32 %200, 2
  %202 = call float* @AllocateFloatVec(i32 noundef %201)
  store float* %202, float** @suboptalign11.largeM, align 8
  %203 = load i32, i32* %51, align 4
  %204 = add nsw i32 %203, 2
  %205 = call i32* @AllocateIntVec(i32 noundef %204)
  store i32* %205, i32** @suboptalign11.Mp, align 8
  %206 = load i32, i32* %50, align 4
  %207 = add nsw i32 %206, 2
  %208 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %207)
  store float** %208, float*** @suboptalign11.cpmx1, align 8
  %209 = load i32, i32* %51, align 4
  %210 = add nsw i32 %209, 2
  %211 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %210)
  store float** %211, float*** @suboptalign11.cpmx2, align 8
  %212 = load i32, i32* %50, align 4
  %213 = load i32, i32* %51, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %179
  %216 = load i32, i32* %50, align 4
  br label %219

217:                                              ; preds = %179
  %218 = load i32, i32* %51, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %221 = add nsw i32 %220, 2
  %222 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %221)
  store float** %222, float*** @suboptalign11.floatwork, align 8
  %223 = load i32, i32* %50, align 4
  %224 = load i32, i32* %51, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %50, align 4
  br label %230

228:                                              ; preds = %219
  %229 = load i32, i32* %51, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = add nsw i32 %231, 2
  %233 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %232)
  store i32** %233, i32*** @suboptalign11.intwork, align 8
  %234 = load i32, i32* @njob, align 4
  %235 = load i32, i32* %50, align 4
  %236 = load i32, i32* %51, align 4
  %237 = add nsw i32 %235, %236
  %238 = call i8** @AllocateCharMtx(i32 noundef %234, i32 noundef %237)
  store i8** %238, i8*** @suboptalign11.mseq1, align 8
  %239 = load i32, i32* @njob, align 4
  %240 = load i32, i32* %50, align 4
  %241 = load i32, i32* %51, align 4
  %242 = add nsw i32 %240, %241
  %243 = call i8** @AllocateCharMtx(i32 noundef %239, i32 noundef %242)
  store i8** %243, i8*** @suboptalign11.mseq2, align 8
  %244 = load i32, i32* %50, align 4
  %245 = sub nsw i32 %244, 100
  store i32 %245, i32* @suboptalign11.orlgth1, align 4
  %246 = load i32, i32* %51, align 4
  %247 = sub nsw i32 %246, 100
  store i32 %247, i32* @suboptalign11.orlgth2, align 4
  br label %248

248:                                              ; preds = %230, %116
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %249, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %251, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32, i32* @suboptalign11.orlgth1, align 4
  %254 = load i32, i32* @commonAlloc1, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %248
  %257 = load i32, i32* @suboptalign11.orlgth2, align 4
  %258 = load i32, i32* @commonAlloc2, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %306

260:                                              ; preds = %256, %248
  %261 = load i32, i32* @commonAlloc1, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load i32, i32* @commonAlloc2, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %267)
  %268 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** noundef %268)
  %269 = load i32**, i32*** @suboptalign11.used, align 8
  call void @FreeIntMtx(i32** noundef %269)
  br label %270

270:                                              ; preds = %266, %263, %260
  %271 = load i32, i32* @suboptalign11.orlgth1, align 4
  %272 = load i32, i32* @commonAlloc1, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* @suboptalign11.orlgth1, align 4
  br label %278

276:                                              ; preds = %270
  %277 = load i32, i32* @commonAlloc1, align 4
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %275, %274 ], [ %277, %276 ]
  store i32 %279, i32* %52, align 4
  %280 = load i32, i32* @suboptalign11.orlgth2, align 4
  %281 = load i32, i32* @commonAlloc2, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @suboptalign11.orlgth2, align 4
  br label %287

285:                                              ; preds = %278
  %286 = load i32, i32* @commonAlloc2, align 4
  br label %287

287:                                              ; preds = %285, %283
  %288 = phi i32 [ %284, %283 ], [ %286, %285 ]
  store i32 %288, i32* %53, align 4
  %289 = load i32, i32* %52, align 4
  %290 = add nsw i32 %289, 10
  %291 = load i32, i32* %53, align 4
  %292 = add nsw i32 %291, 10
  %293 = call i32** @AllocateIntMtx(i32 noundef %290, i32 noundef %292)
  store i32** %293, i32*** @suboptalign11.used, align 8
  %294 = load i32, i32* %52, align 4
  %295 = add nsw i32 %294, 10
  %296 = load i32, i32* %53, align 4
  %297 = add nsw i32 %296, 10
  %298 = call i32** @AllocateIntMtx(i32 noundef %295, i32 noundef %297)
  store i32** %298, i32*** @commonIP, align 8
  %299 = load i32, i32* %52, align 4
  %300 = add nsw i32 %299, 10
  %301 = load i32, i32* %53, align 4
  %302 = add nsw i32 %301, 10
  %303 = call i32** @AllocateIntMtx(i32 noundef %300, i32 noundef %302)
  store i32** %303, i32*** @commonJP, align 8
  %304 = load i32, i32* %52, align 4
  store i32 %304, i32* @commonAlloc1, align 4
  %305 = load i32, i32* %53, align 4
  store i32 %305, i32* @commonAlloc2, align 4
  br label %306

306:                                              ; preds = %287, %256
  %307 = load i32**, i32*** @commonIP, align 8
  store i32** %307, i32*** @suboptalign11.ijpi, align 8
  %308 = load i32**, i32*** @commonJP, align 8
  store i32** %308, i32*** @suboptalign11.ijpj, align 8
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %309, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %311 = load float*, float** @suboptalign11.w1, align 8
  store float* %311, float** %23, align 8
  %312 = load float*, float** @suboptalign11.w2, align 8
  store float* %312, float** %24, align 8
  %313 = load float*, float** @suboptalign11.initverticalw, align 8
  %314 = load i8**, i8*** %8, align 8
  %315 = load i8**, i8*** %7, align 8
  %316 = load i32, i32* %18, align 4
  call void @match_calc(float* noundef %313, i8** noundef %314, i8** noundef %315, i32 noundef 0, i32 noundef %316)
  %317 = load float*, float** %23, align 8
  %318 = load i8**, i8*** %7, align 8
  %319 = load i8**, i8*** %8, align 8
  %320 = load i32, i32* %19, align 4
  call void @match_calc(float* noundef %317, i8** noundef %318, i8** noundef %319, i32 noundef 0, i32 noundef %320)
  %321 = load i32, i32* %19, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %323

323:                                              ; preds = %356, %306
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* %16, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %359

327:                                              ; preds = %323
  %328 = load float*, float** %23, align 8
  %329 = load i32, i32* %15, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %328, i64 %331
  %333 = load float, float* %332, align 4
  %334 = load float*, float** @suboptalign11.m, align 8
  %335 = load i32, i32* %15, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %334, i64 %336
  store float %333, float* %337, align 4
  %338 = load i32*, i32** @suboptalign11.mp, align 8
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 0, i32* %341, align 4
  %342 = load float*, float** %23, align 8
  %343 = load i32, i32* %15, align 4
  %344 = sub nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %342, i64 %345
  %347 = load float, float* %346, align 4
  %348 = load float*, float** @suboptalign11.largeM, align 8
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  store float %347, float* %351, align 4
  %352 = load i32*, i32** @suboptalign11.Mp, align 8
  %353 = load i32, i32* %15, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 0, i32* %355, align 4
  br label %356

356:                                              ; preds = %327
  %357 = load i32, i32* %15, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %15, align 4
  br label %323, !llvm.loop !6

359:                                              ; preds = %323
  %360 = load float*, float** %23, align 8
  %361 = load i32, i32* %19, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %360, i64 %363
  %365 = load float, float* %364, align 4
  %366 = load float*, float** @suboptalign11.lastverticalw, align 8
  %367 = getelementptr inbounds float, float* %366, i64 0
  store float %365, float* %367, align 4
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %368, %369
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* @localstop, align 4
  store float 0xC08F3F3340000000, float* %34, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %38, align 4
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %374

374:                                              ; preds = %689, %359
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* %16, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %692

378:                                              ; preds = %374
  %379 = load float*, float** %24, align 8
  store float* %379, float** %25, align 8
  %380 = load float*, float** %23, align 8
  store float* %380, float** %24, align 8
  %381 = load float*, float** %25, align 8
  store float* %381, float** %23, align 8
  %382 = load float*, float** @suboptalign11.initverticalw, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sub nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %382, i64 %385
  %387 = load float, float* %386, align 4
  %388 = load float*, float** %24, align 8
  %389 = getelementptr inbounds float, float* %388, i64 0
  store float %387, float* %389, align 4
  %390 = load float*, float** %23, align 8
  %391 = load i8**, i8*** %7, align 8
  %392 = load i8**, i8*** %8, align 8
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* %19, align 4
  call void @match_calc(float* noundef %390, i8** noundef %391, i8** noundef %392, i32 noundef %393, i32 noundef %394)
  %395 = load float*, float** @suboptalign11.initverticalw, align 8
  %396 = load i32, i32* %14, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %395, i64 %397
  %399 = load float, float* %398, align 4
  %400 = load float*, float** %23, align 8
  %401 = getelementptr inbounds float, float* %400, i64 0
  store float %399, float* %401, align 4
  %402 = load float*, float** %24, align 8
  %403 = getelementptr inbounds float, float* %402, i64 0
  %404 = load float, float* %403, align 4
  store float %404, float* @suboptalign11.mi, align 4
  store i32 0, i32* @suboptalign11.mpi, align 4
  %405 = load float*, float** %24, align 8
  %406 = getelementptr inbounds float, float* %405, i64 0
  %407 = load float, float* %406, align 4
  store float %407, float* @suboptalign11.Mi, align 4
  store i32 0, i32* @suboptalign11.Mpi, align 4
  %408 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 1
  store i32* %413, i32** %26, align 8
  %414 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %415 = load i32, i32* %14, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  store i32* %419, i32** %27, align 8
  %420 = load float*, float** @suboptalign11.m, align 8
  %421 = getelementptr inbounds float, float* %420, i64 1
  store float* %421, float** %28, align 8
  %422 = load float*, float** @suboptalign11.largeM, align 8
  %423 = getelementptr inbounds float, float* %422, i64 1
  store float* %423, float** %29, align 8
  %424 = load float*, float** %24, align 8
  store float* %424, float** %30, align 8
  %425 = load float*, float** %23, align 8
  %426 = getelementptr inbounds float, float* %425, i64 1
  store float* %426, float** %31, align 8
  %427 = load i32*, i32** @suboptalign11.mp, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  store i32* %428, i32** %32, align 8
  %429 = load i32*, i32** @suboptalign11.Mp, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 1
  store i32* %430, i32** %33, align 8
  store float 0xC12E847FC0000000, float* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %431 = load i32, i32* %19, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %433

433:                                              ; preds = %675, %378
  %434 = load i32, i32* %15, align 4
  %435 = load i32, i32* %17, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %678

437:                                              ; preds = %433
  %438 = load float*, float** %30, align 8
  %439 = load float, float* %438, align 4
  store float %439, float* %21, align 4
  %440 = load i32, i32* %14, align 4
  %441 = sub nsw i32 %440, 1
  %442 = load i32*, i32** %26, align 8
  store i32 %441, i32* %442, align 4
  %443 = load i32, i32* %15, align 4
  %444 = sub nsw i32 %443, 1
  %445 = load i32*, i32** %27, align 8
  store i32 %444, i32* %445, align 4
  %446 = load float, float* @suboptalign11.mi, align 4
  %447 = load float, float* %40, align 4
  %448 = fadd float %446, %447
  store float %448, float* %22, align 4
  %449 = load float, float* %22, align 4
  %450 = load float, float* %21, align 4
  %451 = fcmp ogt float %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %437
  %453 = load float, float* %22, align 4
  store float %453, float* %21, align 4
  %454 = load i32, i32* @suboptalign11.mpi, align 4
  %455 = load i32*, i32** %27, align 8
  store i32 %454, i32* %455, align 4
  br label %456

456:                                              ; preds = %452, %437
  %457 = load float*, float** %30, align 8
  %458 = load float, float* %457, align 4
  store float %458, float* %22, align 4
  %459 = load float, float* %22, align 4
  %460 = load float, float* @suboptalign11.mi, align 4
  %461 = fcmp ogt float %459, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %456
  %463 = load float, float* %22, align 4
  store float %463, float* @suboptalign11.mi, align 4
  %464 = load i32, i32* %15, align 4
  %465 = sub nsw i32 %464, 1
  store i32 %465, i32* @suboptalign11.mpi, align 4
  br label %466

466:                                              ; preds = %462, %456
  %467 = load float, float* %42, align 4
  %468 = load float, float* @suboptalign11.mi, align 4
  %469 = fadd float %468, %467
  store float %469, float* @suboptalign11.mi, align 4
  %470 = load float*, float** %28, align 8
  %471 = load float, float* %470, align 4
  %472 = load float, float* %40, align 4
  %473 = fadd float %471, %472
  store float %473, float* %22, align 4
  %474 = load float, float* %22, align 4
  %475 = load float, float* %21, align 4
  %476 = fcmp ogt float %474, %475
  br i1 %476, label %477, label %482

477:                                              ; preds = %466
  %478 = load float, float* %22, align 4
  store float %478, float* %21, align 4
  %479 = load i32*, i32** %32, align 8
  %480 = load i32, i32* %479, align 4
  %481 = load i32*, i32** %26, align 8
  store i32 %480, i32* %481, align 4
  br label %482

482:                                              ; preds = %477, %466
  %483 = load float*, float** %30, align 8
  %484 = load float, float* %483, align 4
  store float %484, float* %22, align 4
  %485 = load float, float* %22, align 4
  %486 = load float*, float** %28, align 8
  %487 = load float, float* %486, align 4
  %488 = fcmp ogt float %485, %487
  br i1 %488, label %489, label %495

489:                                              ; preds = %482
  %490 = load float, float* %22, align 4
  %491 = load float*, float** %28, align 8
  store float %490, float* %491, align 4
  %492 = load i32, i32* %14, align 4
  %493 = sub nsw i32 %492, 1
  %494 = load i32*, i32** %32, align 8
  store i32 %493, i32* %494, align 4
  br label %495

495:                                              ; preds = %489, %482
  %496 = load float, float* %42, align 4
  %497 = load float*, float** %28, align 8
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %496
  store float %499, float* %497, align 4
  %500 = load float, float* %35, align 4
  %501 = load float, float* %41, align 4
  %502 = fadd float %500, %501
  store float %502, float* %22, align 4
  %503 = load float, float* %22, align 4
  %504 = load float, float* %21, align 4
  %505 = fcmp ogt float %503, %504
  br i1 %505, label %506, label %512

506:                                              ; preds = %495
  %507 = load float, float* %22, align 4
  store float %507, float* %21, align 4
  %508 = load i32, i32* %36, align 4
  %509 = load i32*, i32** %26, align 8
  store i32 %508, i32* %509, align 4
  %510 = load i32, i32* %37, align 4
  %511 = load i32*, i32** %27, align 8
  store i32 %510, i32* %511, align 4
  br label %512

512:                                              ; preds = %506, %495
  %513 = load float, float* @suboptalign11.Mi, align 4
  store float %513, float* %22, align 4
  %514 = load float, float* %22, align 4
  %515 = load float, float* %35, align 4
  %516 = fcmp ogt float %514, %515
  br i1 %516, label %517, label %522

517:                                              ; preds = %512
  %518 = load float, float* %22, align 4
  store float %518, float* %35, align 4
  %519 = load i32, i32* %14, align 4
  %520 = sub nsw i32 %519, 1
  store i32 %520, i32* %36, align 4
  %521 = load i32, i32* @suboptalign11.Mpi, align 4
  store i32 %521, i32* %37, align 4
  br label %522

522:                                              ; preds = %517, %512
  %523 = load float*, float** %29, align 8
  %524 = load float, float* %523, align 4
  store float %524, float* %22, align 4
  %525 = load float, float* %22, align 4
  %526 = load float, float* %35, align 4
  %527 = fcmp ogt float %525, %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %522
  %529 = load float, float* %22, align 4
  store float %529, float* %35, align 4
  %530 = load i32*, i32** %33, align 8
  %531 = load i32, i32* %530, align 4
  store i32 %531, i32* %36, align 4
  %532 = load i32, i32* %15, align 4
  %533 = sub nsw i32 %532, 1
  store i32 %533, i32* %37, align 4
  br label %534

534:                                              ; preds = %528, %522
  %535 = load float*, float** %30, align 8
  %536 = load float, float* %535, align 4
  store float %536, float* %22, align 4
  %537 = load float, float* %22, align 4
  %538 = load float*, float** %29, align 8
  %539 = load float, float* %538, align 4
  %540 = fcmp ogt float %537, %539
  br i1 %540, label %541, label %547

541:                                              ; preds = %534
  %542 = load float, float* %22, align 4
  %543 = load float*, float** %29, align 8
  store float %542, float* %543, align 4
  %544 = load i32, i32* %14, align 4
  %545 = sub nsw i32 %544, 1
  %546 = load i32*, i32** %33, align 8
  store i32 %545, i32* %546, align 4
  br label %547

547:                                              ; preds = %541, %534
  %548 = load float*, float** %30, align 8
  %549 = load float, float* %548, align 4
  store float %549, float* %22, align 4
  %550 = load float, float* %22, align 4
  %551 = load float, float* @suboptalign11.Mi, align 4
  %552 = fcmp ogt float %550, %551
  br i1 %552, label %553, label %557

553:                                              ; preds = %547
  %554 = load float, float* %22, align 4
  store float %554, float* @suboptalign11.Mi, align 4
  %555 = load i32, i32* %15, align 4
  %556 = sub nsw i32 %555, 1
  store i32 %556, i32* @suboptalign11.Mpi, align 4
  br label %557

557:                                              ; preds = %553, %547
  %558 = load float, float* %34, align 4
  %559 = load float, float* %21, align 4
  %560 = fcmp olt float %558, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %557
  %562 = load float, float* %21, align 4
  store float %562, float* %34, align 4
  %563 = load i32, i32* %14, align 4
  store i32 %563, i32* %38, align 4
  %564 = load i32, i32* %15, align 4
  store i32 %564, i32* %39, align 4
  br label %565

565:                                              ; preds = %561, %557
  %566 = load i32, i32* %46, align 4
  %567 = icmp slt i32 %566, 100
  br i1 %567, label %568, label %596

568:                                              ; preds = %565
  %569 = load i32, i32* %14, align 4
  %570 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %571 = load i32, i32* %46, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %570, i64 %572
  %574 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %573, i32 0, i32 0
  store i32 %569, i32* %574, align 8
  %575 = load i32, i32* %15, align 4
  %576 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %577 = load i32, i32* %46, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %576, i64 %578
  %580 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %579, i32 0, i32 1
  store i32 %575, i32* %580, align 4
  %581 = load float, float* %21, align 4
  %582 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %583 = load i32, i32* %46, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %582, i64 %584
  %586 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %585, i32 0, i32 2
  store float %581, float* %586, align 8
  %587 = load float, float* %47, align 4
  %588 = load float, float* %21, align 4
  %589 = fcmp ogt float %587, %588
  br i1 %589, label %590, label %593

590:                                              ; preds = %568
  %591 = load float, float* %21, align 4
  store float %591, float* %47, align 4
  %592 = load i32, i32* %46, align 4
  store i32 %592, i32* %48, align 4
  br label %593

593:                                              ; preds = %590, %568
  %594 = load i32, i32* %46, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %46, align 4
  br label %646

596:                                              ; preds = %565
  %597 = load float, float* %21, align 4
  %598 = load float, float* %47, align 4
  %599 = fcmp ogt float %597, %598
  br i1 %599, label %600, label %645

600:                                              ; preds = %596
  %601 = load i32, i32* %14, align 4
  %602 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %603 = load i32, i32* %48, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %602, i64 %604
  %606 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %605, i32 0, i32 0
  store i32 %601, i32* %606, align 8
  %607 = load i32, i32* %15, align 4
  %608 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %609 = load i32, i32* %48, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %608, i64 %610
  %612 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %611, i32 0, i32 1
  store i32 %607, i32* %612, align 4
  %613 = load float, float* %21, align 4
  %614 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %615 = load i32, i32* %48, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %614, i64 %616
  %618 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %617, i32 0, i32 2
  store float %613, float* %618, align 8
  %619 = load float, float* %21, align 4
  store float %619, float* %47, align 4
  store i32 0, i32* %13, align 4
  br label %620

620:                                              ; preds = %641, %600
  %621 = load i32, i32* %13, align 4
  %622 = icmp slt i32 %621, 100
  br i1 %622, label %623, label %644

623:                                              ; preds = %620
  %624 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %625 = load i32, i32* %13, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %624, i64 %626
  %628 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %627, i32 0, i32 2
  %629 = load float, float* %628, align 8
  %630 = load float, float* %47, align 4
  %631 = fcmp olt float %629, %630
  br i1 %631, label %632, label %640

632:                                              ; preds = %623
  %633 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %634 = load i32, i32* %13, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %633, i64 %635
  %637 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %636, i32 0, i32 2
  %638 = load float, float* %637, align 8
  store float %638, float* %47, align 4
  %639 = load i32, i32* %13, align 4
  store i32 %639, i32* %48, align 4
  br label %644

640:                                              ; preds = %623
  br label %641

641:                                              ; preds = %640
  %642 = load i32, i32* %13, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %13, align 4
  br label %620, !llvm.loop !7

644:                                              ; preds = %632, %620
  br label %645

645:                                              ; preds = %644, %596
  br label %646

646:                                              ; preds = %645, %593
  %647 = load float, float* %21, align 4
  %648 = load float, float* %44, align 4
  %649 = fcmp olt float %647, %648
  br i1 %649, label %650, label %654

650:                                              ; preds = %646
  %651 = load i32, i32* @localstop, align 4
  %652 = load i32*, i32** %26, align 8
  store i32 %651, i32* %652, align 4
  %653 = load float, float* %45, align 4
  store float %653, float* %21, align 4
  br label %654

654:                                              ; preds = %650, %646
  %655 = load float, float* %21, align 4
  %656 = load float*, float** %31, align 8
  %657 = load float, float* %656, align 4
  %658 = fadd float %657, %655
  store float %658, float* %656, align 4
  %659 = load i32*, i32** %26, align 8
  %660 = getelementptr inbounds i32, i32* %659, i32 1
  store i32* %660, i32** %26, align 8
  %661 = load i32*, i32** %27, align 8
  %662 = getelementptr inbounds i32, i32* %661, i32 1
  store i32* %662, i32** %27, align 8
  %663 = load float*, float** %28, align 8
  %664 = getelementptr inbounds float, float* %663, i32 1
  store float* %664, float** %28, align 8
  %665 = load float*, float** %29, align 8
  %666 = getelementptr inbounds float, float* %665, i32 1
  store float* %666, float** %29, align 8
  %667 = load float*, float** %30, align 8
  %668 = getelementptr inbounds float, float* %667, i32 1
  store float* %668, float** %30, align 8
  %669 = load i32*, i32** %32, align 8
  %670 = getelementptr inbounds i32, i32* %669, i32 1
  store i32* %670, i32** %32, align 8
  %671 = load i32*, i32** %33, align 8
  %672 = getelementptr inbounds i32, i32* %671, i32 1
  store i32* %672, i32** %33, align 8
  %673 = load float*, float** %31, align 8
  %674 = getelementptr inbounds float, float* %673, i32 1
  store float* %674, float** %31, align 8
  br label %675

675:                                              ; preds = %654
  %676 = load i32, i32* %15, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %15, align 4
  br label %433, !llvm.loop !8

678:                                              ; preds = %433
  %679 = load float*, float** %23, align 8
  %680 = load i32, i32* %19, align 4
  %681 = sub nsw i32 %680, 1
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds float, float* %679, i64 %682
  %684 = load float, float* %683, align 4
  %685 = load float*, float** @suboptalign11.lastverticalw, align 8
  %686 = load i32, i32* %14, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds float, float* %685, i64 %687
  store float %684, float* %688, align 4
  br label %689

689:                                              ; preds = %678
  %690 = load i32, i32* %14, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %14, align 4
  br label %374, !llvm.loop !9

692:                                              ; preds = %374
  store i32 0, i32* %13, align 4
  br label %693

693:                                              ; preds = %719, %692
  %694 = load i32, i32* %13, align 4
  %695 = icmp slt i32 %694, 100
  br i1 %695, label %696, label %722

696:                                              ; preds = %693
  %697 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %698 = load i32, i32* %13, align 4
  %699 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %700 = load i32, i32* %13, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %699, i64 %701
  %703 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %706 = load i32, i32* %13, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %705, i64 %707
  %709 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %712 = load i32, i32* %13, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %711, i64 %713
  %715 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %714, i32 0, i32 2
  %716 = load float, float* %715, align 8
  %717 = fpext float %716 to double
  %718 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %697, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 noundef %698, i32 noundef %704, i32 noundef %710, double noundef %717)
  br label %719

719:                                              ; preds = %696
  %720 = load i32, i32* %13, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %13, align 4
  br label %693, !llvm.loop !10

722:                                              ; preds = %693
  %723 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %724 = load float, float* %34, align 4
  %725 = fpext float %724 to double
  %726 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %723, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), double noundef %725)
  %727 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %728 = load i32, i32* %38, align 4
  %729 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %727, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 noundef %728)
  %730 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %731 = load i32, i32* %39, align 4
  %732 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %730, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %731)
  %733 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %734 = bitcast %struct._shuryoten* %733 to i8*
  call void @qsort(i8* noundef %734, i64 noundef 100, i64 noundef 32, i32 (i8*, i8*)* noundef bitcast (i32 (%struct._shuryoten*, %struct._shuryoten*)* @compshuryo to i32 (i8*, i8*)*))
  store i32 0, i32* %13, align 4
  br label %735

735:                                              ; preds = %761, %722
  %736 = load i32, i32* %13, align 4
  %737 = icmp slt i32 %736, 100
  br i1 %737, label %738, label %764

738:                                              ; preds = %735
  %739 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %740 = load i32, i32* %13, align 4
  %741 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %742 = load i32, i32* %13, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %741, i64 %743
  %745 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 8
  %747 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %748 = load i32, i32* %13, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %747, i64 %749
  %751 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %754 = load i32, i32* %13, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %753, i64 %755
  %757 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %756, i32 0, i32 2
  %758 = load float, float* %757, align 8
  %759 = fpext float %758 to double
  %760 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %739, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 noundef %740, i32 noundef %746, i32 noundef %752, double noundef %759)
  br label %761

761:                                              ; preds = %738
  %762 = load i32, i32* %13, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %13, align 4
  br label %735, !llvm.loop !11

764:                                              ; preds = %735
  %765 = load i32, i32* %18, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %767

767:                                              ; preds = %786, %764
  %768 = load i32, i32* %14, align 4
  %769 = load i32, i32* %16, align 4
  %770 = icmp slt i32 %768, %769
  br i1 %770, label %771, label %789

771:                                              ; preds = %767
  %772 = load i32, i32* @localstop, align 4
  %773 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %774 = load i32, i32* %14, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32*, i32** %773, i64 %775
  %777 = load i32*, i32** %776, align 8
  %778 = getelementptr inbounds i32, i32* %777, i64 0
  store i32 %772, i32* %778, align 4
  %779 = load i32, i32* @localstop, align 4
  %780 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %781 = load i32, i32* %14, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i32*, i32** %780, i64 %782
  %784 = load i32*, i32** %783, align 8
  %785 = getelementptr inbounds i32, i32* %784, i64 0
  store i32 %779, i32* %785, align 4
  br label %786

786:                                              ; preds = %771
  %787 = load i32, i32* %14, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %14, align 4
  br label %767, !llvm.loop !12

789:                                              ; preds = %767
  %790 = load i32, i32* %19, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %792

792:                                              ; preds = %811, %789
  %793 = load i32, i32* %15, align 4
  %794 = load i32, i32* %17, align 4
  %795 = icmp slt i32 %793, %794
  br i1 %795, label %796, label %814

796:                                              ; preds = %792
  %797 = load i32, i32* @localstop, align 4
  %798 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %799 = getelementptr inbounds i32*, i32** %798, i64 0
  %800 = load i32*, i32** %799, align 8
  %801 = load i32, i32* %15, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i32, i32* %800, i64 %802
  store i32 %797, i32* %803, align 4
  %804 = load i32, i32* @localstop, align 4
  %805 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %806 = getelementptr inbounds i32*, i32** %805, i64 0
  %807 = load i32*, i32** %806, align 8
  %808 = load i32, i32* %15, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i32, i32* %807, i64 %809
  store i32 %804, i32* %810, align 4
  br label %811

811:                                              ; preds = %796
  %812 = load i32, i32* %15, align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, i32* %15, align 4
  br label %792, !llvm.loop !13

814:                                              ; preds = %792
  store i32 0, i32* %14, align 4
  br label %815

815:                                              ; preds = %837, %814
  %816 = load i32, i32* %14, align 4
  %817 = load i32, i32* %16, align 4
  %818 = icmp slt i32 %816, %817
  br i1 %818, label %819, label %840

819:                                              ; preds = %815
  store i32 0, i32* %15, align 4
  br label %820

820:                                              ; preds = %833, %819
  %821 = load i32, i32* %15, align 4
  %822 = load i32, i32* %17, align 4
  %823 = icmp slt i32 %821, %822
  br i1 %823, label %824, label %836

824:                                              ; preds = %820
  %825 = load i32**, i32*** @suboptalign11.used, align 8
  %826 = load i32, i32* %14, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32*, i32** %825, i64 %827
  %829 = load i32*, i32** %828, align 8
  %830 = load i32, i32* %15, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds i32, i32* %829, i64 %831
  store i32 0, i32* %832, align 4
  br label %833

833:                                              ; preds = %824
  %834 = load i32, i32* %15, align 4
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* %15, align 4
  br label %820, !llvm.loop !14

836:                                              ; preds = %820
  br label %837

837:                                              ; preds = %836
  %838 = load i32, i32* %14, align 4
  %839 = add nsw i32 %838, 1
  store i32 %839, i32* %14, align 4
  br label %815, !llvm.loop !15

840:                                              ; preds = %815
  store i32 0, i32* %13, align 4
  br label %841

841:                                              ; preds = %936, %840
  %842 = load i32, i32* %13, align 4
  %843 = load i32, i32* %46, align 4
  %844 = icmp slt i32 %842, %843
  br i1 %844, label %845, label %939

845:                                              ; preds = %841
  %846 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %847 = load i32, i32* %13, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %846, i64 %848
  %850 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %849, i32 0, i32 2
  %851 = load float, float* %850, align 8
  %852 = fpext float %851 to double
  %853 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %854 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %853, i64 0
  %855 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %854, i32 0, i32 2
  %856 = load float, float* %855, align 8
  %857 = fpext float %856 to double
  %858 = fmul double %857, 3.000000e-01
  %859 = fcmp olt double %852, %858
  br i1 %859, label %860, label %861

860:                                              ; preds = %845
  br label %939

861:                                              ; preds = %845
  %862 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %863 = load i32, i32* %13, align 4
  %864 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %865 = load i32, i32* %13, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %864, i64 %866
  %868 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 8
  %870 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %871 = load i32, i32* %13, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %870, i64 %872
  %874 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %873, i32 0, i32 1
  %875 = load i32, i32* %874, align 4
  %876 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %877 = load i32, i32* %13, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %876, i64 %878
  %880 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %879, i32 0, i32 2
  %881 = load float, float* %880, align 8
  %882 = fpext float %881 to double
  %883 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %862, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef %863, i32 noundef %869, i32 noundef %875, double noundef %882)
  %884 = load i32**, i32*** @suboptalign11.used, align 8
  %885 = load i8**, i8*** %7, align 8
  %886 = load i8**, i8*** %8, align 8
  %887 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %888 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %889 = load float**, float*** @suboptalign11.cpmx1, align 8
  %890 = load float**, float*** @suboptalign11.cpmx2, align 8
  %891 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %892 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %893 = load i32*, i32** %10, align 8
  %894 = load i32*, i32** %11, align 8
  %895 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %896 = load i32, i32* %13, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %895, i64 %897
  %899 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %898, i32 0, i32 0
  %900 = load i32, i32* %899, align 8
  %901 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %902 = load i32, i32* %13, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %901, i64 %903
  %905 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %904, i32 0, i32 1
  %906 = load i32, i32* %905, align 4
  %907 = call float @gentracking(i32** noundef %884, i8** noundef %885, i8** noundef %886, i8** noundef %887, i8** noundef %888, float** noundef %889, float** noundef %890, i32** noundef %891, i32** noundef %892, i32* noundef %893, i32* noundef %894, i32 noundef %900, i32 noundef %906)
  store float %907, float* %49, align 4
  %908 = load float, float* %49, align 4
  %909 = fpext float %908 to double
  %910 = fcmp oeq double %909, -1.000000e+00
  br i1 %910, label %911, label %912

911:                                              ; preds = %861
  br label %936

912:                                              ; preds = %861
  %913 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %914 = getelementptr inbounds i8*, i8** %913, i64 0
  %915 = load i8*, i8** %914, align 8
  %916 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %917 = getelementptr inbounds i8*, i8** %916, i64 0
  %918 = load i8*, i8** %917, align 8
  %919 = load %struct._LocalHom*, %struct._LocalHom** %12, align 8
  %920 = load i32*, i32** %10, align 8
  %921 = load i32, i32* %920, align 4
  %922 = load i32*, i32** %11, align 8
  %923 = load i32, i32* %922, align 4
  %924 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %925 = load i32, i32* %13, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %924, i64 %926
  %928 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %927, i32 0, i32 2
  %929 = load float, float* %928, align 8
  %930 = fptosi float %929 to i32
  %931 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %932 = getelementptr inbounds i8*, i8** %931, i64 0
  %933 = load i8*, i8** %932, align 8
  %934 = call i64 @strlen(i8* noundef %933) #6
  %935 = trunc i64 %934 to i32
  call void @putlocalhom3(i8* noundef %915, i8* noundef %918, %struct._LocalHom* noundef %919, i32 noundef %921, i32 noundef %923, i32 noundef %930, i32 noundef %935)
  br label %936

936:                                              ; preds = %912, %911
  %937 = load i32, i32* %13, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* %13, align 4
  br label %841, !llvm.loop !16

939:                                              ; preds = %860, %841
  store i32 0, i32* %14, align 4
  br label %940

940:                                              ; preds = %965, %939
  %941 = load i32, i32* %14, align 4
  %942 = icmp slt i32 %941, 20
  br i1 %942, label %943, label %968

943:                                              ; preds = %940
  store i32 0, i32* %15, align 4
  br label %944

944:                                              ; preds = %959, %943
  %945 = load i32, i32* %15, align 4
  %946 = icmp slt i32 %945, 20
  br i1 %946, label %947, label %962

947:                                              ; preds = %944
  %948 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %949 = load i32**, i32*** @suboptalign11.used, align 8
  %950 = load i32, i32* %14, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i32*, i32** %949, i64 %951
  %953 = load i32*, i32** %952, align 8
  %954 = load i32, i32* %15, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i32, i32* %953, i64 %955
  %957 = load i32, i32* %956, align 4
  %958 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %948, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef %957)
  br label %959

959:                                              ; preds = %947
  %960 = load i32, i32* %15, align 4
  %961 = add nsw i32 %960, 1
  store i32 %961, i32* %15, align 4
  br label %944, !llvm.loop !17

962:                                              ; preds = %944
  %963 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %964 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %963, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %965

965:                                              ; preds = %962
  %966 = load i32, i32* %14, align 4
  %967 = add nsw i32 %966, 1
  store i32 %967, i32* %14, align 4
  br label %940, !llvm.loop !18

968:                                              ; preds = %940
  %969 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %970 = getelementptr inbounds i8*, i8** %969, i64 0
  %971 = load i8*, i8** %970, align 8
  %972 = call i64 @strlen(i8* noundef %971) #6
  %973 = trunc i64 %972 to i32
  store i32 %973, i32* %20, align 4
  %974 = load i32, i32* %9, align 4
  %975 = load i32, i32* %20, align 4
  %976 = icmp slt i32 %974, %975
  br i1 %976, label %980, label %977

977:                                              ; preds = %968
  %978 = load i32, i32* %20, align 4
  %979 = icmp sgt i32 %978, 5000000
  br i1 %979, label %980, label %985

980:                                              ; preds = %977, %968
  %981 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %982 = load i32, i32* %9, align 4
  %983 = load i32, i32* %20, align 4
  %984 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %981, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 noundef %982, i32 noundef %983, i32 noundef 5000000)
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %985

985:                                              ; preds = %980, %977
  %986 = load float, float* %21, align 4
  ret float %986
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @FreeFloatVec(float* noundef) #1

declare dso_local void @FreeIntVec(i32* noundef) #1

declare dso_local void @FreeFloatMtx(float** noundef) #1

declare dso_local void @FreeIntMtx(i32** noundef) #1

declare dso_local float* @AllocateFloatVec(i32 noundef) #1

declare dso_local i32* @AllocateIntVec(i32 noundef) #1

declare dso_local float** @AllocateFloatMtx(i32 noundef, i32 noundef) #1

declare dso_local i32** @AllocateIntMtx(i32 noundef, i32 noundef) #1

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @match_calc(float* noundef %0, i8** noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %41, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i64 0, i64 %24
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x i32], [128 x i32]* %25, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to float
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float %36, float* %40, align 4
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %12, !llvm.loop !19

44:                                               ; preds = %12
  ret void
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @compshuryo(%struct._shuryoten* noundef %0, %struct._shuryoten* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._shuryoten*, align 8
  %5 = alloca %struct._shuryoten*, align 8
  %6 = alloca %struct._shuryoten*, align 8
  %7 = alloca %struct._shuryoten*, align 8
  store %struct._shuryoten* %0, %struct._shuryoten** %4, align 8
  store %struct._shuryoten* %1, %struct._shuryoten** %5, align 8
  %8 = load %struct._shuryoten*, %struct._shuryoten** %4, align 8
  store %struct._shuryoten* %8, %struct._shuryoten** %6, align 8
  %9 = load %struct._shuryoten*, %struct._shuryoten** %5, align 8
  store %struct._shuryoten* %9, %struct._shuryoten** %7, align 8
  %10 = load %struct._shuryoten*, %struct._shuryoten** %6, align 8
  %11 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %10, i32 0, i32 2
  %12 = load float, float* %11, align 8
  %13 = load %struct._shuryoten*, %struct._shuryoten** %7, align 8
  %14 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %13, i32 0, i32 2
  %15 = load float, float* %14, align 8
  %16 = fcmp ogt float %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct._shuryoten*, %struct._shuryoten** %6, align 8
  %20 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %19, i32 0, i32 2
  %21 = load float, float* %20, align 8
  %22 = load %struct._shuryoten*, %struct._shuryoten** %7, align 8
  %23 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %22, i32 0, i32 2
  %24 = load float, float* %23, align 8
  %25 = fcmp olt float %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define internal float @gentracking(i32** noundef %0, i8** noundef %1, i8** noundef %2, i8** noundef %3, i8** noundef %4, float** noundef %5, float** noundef %6, i32** noundef %7, i32** noundef %8, i32* noundef %9, i32* noundef %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = alloca float, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca float**, align 8
  %21 = alloca float**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
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
  %37 = alloca [2 x i8], align 1
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  store i32** %0, i32*** %15, align 8
  store i8** %1, i8*** %16, align 8
  store i8** %2, i8*** %17, align 8
  store i8** %3, i8*** %18, align 8
  store i8** %4, i8*** %19, align 8
  store float** %5, float*** %20, align 8
  store float** %6, float*** %21, align 8
  store i32** %7, i32*** %22, align 8
  store i32** %8, i32*** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %40 = bitcast [2 x i8]* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.gentracking.gap, i32 0, i32 0), i64 2, i1 false)
  %41 = load i8*, i8** @gentracking.res1, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %13
  %44 = call noalias i8* @calloc(i64 noundef 5000000, i64 noundef 1) #5
  store i8* %44, i8** @gentracking.res1, align 8
  %45 = call noalias i8* @calloc(i64 noundef 5000000, i64 noundef 1) #5
  store i8* %45, i8** @gentracking.res2, align 8
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i8**, i8*** %16, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* noundef %49) #6
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %31, align 4
  %52 = load i8**, i8*** %17, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* noundef %54) #6
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %32, align 4
  %57 = load i8*, i8** @gentracking.res1, align 8
  %58 = load i32, i32* %31, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %32, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %38, align 8
  %64 = load i8*, i8** %38, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** @gentracking.res2, align 8
  %66 = load i32, i32* %31, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %32, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %39, align 8
  %72 = load i8*, i8** %39, align 8
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %26, align 4
  store i32 %73, i32* %29, align 4
  %74 = load i32, i32* %27, align 4
  store i32 %74, i32* %30, align 4
  %75 = load i32, i32* %31, align 4
  %76 = load i32, i32* %32, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %34, align 4
  %78 = load i32**, i32*** %15, align 8
  %79 = load i32, i32* %29, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %30, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %46
  store float -1.000000e+00, float* %14, align 4
  br label %343

89:                                               ; preds = %46
  store i32 0, i32* %33, align 4
  br label %90

90:                                               ; preds = %232, %89
  %91 = load i32, i32* %33, align 4
  %92 = load i32, i32* %34, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %235

94:                                               ; preds = %90
  %95 = load i32**, i32*** %22, align 8
  %96 = load i32, i32* %29, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %30, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %35, align 4
  %104 = load i32**, i32*** %23, align 8
  %105 = load i32, i32* %29, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %30, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %36, align 4
  %113 = load i32**, i32*** %15, align 8
  %114 = load i32, i32* %35, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %36, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %94
  store float -1.000000e+00, float* %14, align 4
  br label %343

124:                                              ; preds = %94
  %125 = load i32, i32* %29, align 4
  %126 = load i32, i32* %35, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %28, align 4
  br label %128

128:                                              ; preds = %132, %124
  %129 = load i32, i32* %28, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %28, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %128
  %133 = load i8**, i8*** %16, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %35, align 4
  %137 = load i32, i32* %28, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %38, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %143, i8** %38, align 8
  store i8 %141, i8* %143, align 1
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %39, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %147, i8** %39, align 8
  store i8 %145, i8* %147, align 1
  %148 = load i32, i32* %33, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %33, align 4
  br label %128, !llvm.loop !20

150:                                              ; preds = %128
  %151 = load i32, i32* %30, align 4
  %152 = load i32, i32* %36, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %28, align 4
  br label %154

154:                                              ; preds = %158, %150
  %155 = load i32, i32* %28, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %28, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %154
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = load i8*, i8** %38, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 -1
  store i8* %162, i8** %38, align 8
  store i8 %160, i8* %162, align 1
  %163 = load i8**, i8*** %17, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %36, align 4
  %167 = load i32, i32* %28, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %39, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 -1
  store i8* %173, i8** %39, align 8
  store i8 %171, i8* %173, align 1
  %174 = load i32, i32* %33, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %33, align 4
  br label %154, !llvm.loop !21

176:                                              ; preds = %154
  %177 = load i32, i32* %29, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %30, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %176
  br label %235

183:                                              ; preds = %179
  %184 = load i8**, i8*** %16, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %35, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %38, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %38, align 8
  store i8 %190, i8* %192, align 1
  %193 = load i8**, i8*** %17, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %36, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %39, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %39, align 8
  store i8 %199, i8* %201, align 1
  %202 = load i32**, i32*** %22, align 8
  %203 = load i32, i32* %35, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %36, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @localstop, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %183
  br label %235

214:                                              ; preds = %183
  %215 = load i32**, i32*** %23, align 8
  %216 = load i32, i32* %35, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %36, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @localstop, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  br label %235

227:                                              ; preds = %214
  %228 = load i32, i32* %33, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %33, align 4
  %230 = load i32, i32* %35, align 4
  store i32 %230, i32* %29, align 4
  %231 = load i32, i32* %36, align 4
  store i32 %231, i32* %30, align 4
  br label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %33, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %33, align 4
  br label %90, !llvm.loop !22

235:                                              ; preds = %226, %213, %182, %90
  %236 = load i32, i32* %35, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32*, i32** %24, align 8
  store i32 0, i32* %239, align 4
  br label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %35, align 4
  %242 = load i32*, i32** %24, align 8
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %238
  %244 = load i32, i32* %36, align 4
  %245 = icmp eq i32 %244, -1
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i32*, i32** %25, align 8
  store i32 0, i32* %247, align 4
  br label %251

248:                                              ; preds = %243
  %249 = load i32, i32* %36, align 4
  %250 = load i32*, i32** %25, align 8
  store i32 %249, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %246
  %252 = load i32, i32* %26, align 4
  store i32 %252, i32* %29, align 4
  %253 = load i32, i32* %27, align 4
  store i32 %253, i32* %30, align 4
  %254 = load i32, i32* %31, align 4
  %255 = load i32, i32* %32, align 4
  %256 = add nsw i32 %254, %255
  store i32 %256, i32* %34, align 4
  store i32 0, i32* %33, align 4
  br label %257

257:                                              ; preds = %325, %251
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %34, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %328

261:                                              ; preds = %257
  %262 = load i32**, i32*** %22, align 8
  %263 = load i32, i32* %29, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %30, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %35, align 4
  %271 = load i32**, i32*** %23, align 8
  %272 = load i32, i32* %29, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %30, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %36, align 4
  %280 = load i32**, i32*** %15, align 8
  %281 = load i32, i32* %35, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %36, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32 1, i32* %287, align 4
  %288 = load i32, i32* %29, align 4
  %289 = icmp sle i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %261
  %291 = load i32, i32* %30, align 4
  %292 = icmp sle i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290, %261
  br label %328

294:                                              ; preds = %290
  %295 = load i32**, i32*** %22, align 8
  %296 = load i32, i32* %35, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %36, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @localstop, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  br label %328

307:                                              ; preds = %294
  %308 = load i32**, i32*** %23, align 8
  %309 = load i32, i32* %35, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %36, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @localstop, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %307
  br label %328

320:                                              ; preds = %307
  %321 = load i32, i32* %33, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %33, align 4
  %323 = load i32, i32* %35, align 4
  store i32 %323, i32* %29, align 4
  %324 = load i32, i32* %36, align 4
  store i32 %324, i32* %30, align 4
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %33, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %33, align 4
  br label %257, !llvm.loop !23

328:                                              ; preds = %319, %306, %293, %257
  %329 = load i8**, i8*** %18, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 0
  %331 = load i8*, i8** %330, align 8
  %332 = load i8*, i8** %38, align 8
  %333 = call i8* @strcpy(i8* noundef %331, i8* noundef %332) #5
  %334 = load i8**, i8*** %19, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 0
  %336 = load i8*, i8** %335, align 8
  %337 = load i8*, i8** %39, align 8
  %338 = call i8* @strcpy(i8* noundef %336, i8* noundef %337) #5
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %340 = load i8*, i8** %38, align 8
  %341 = load i8*, i8** %39, align 8
  %342 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %339, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* noundef %340, i8* noundef %341)
  store float 0.000000e+00, float* %14, align 4
  br label %343

343:                                              ; preds = %328, %123, %88
  %344 = load float, float* %14, align 4
  ret float %344
}

declare dso_local void @putlocalhom3(i8* noundef, i8* noundef, %struct._LocalHom* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
