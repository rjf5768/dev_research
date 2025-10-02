; ModuleID = './suboptalign11.ll'
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
define dso_local float @suboptalign11(i8** nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i32* nocapture noundef %4, %struct._LocalHom* noundef %5) #0 {
  %7 = load i32, i32* @penalty, align 4
  %8 = sitofp i32 %7 to float
  %9 = load i32, i32* @penalty_OP, align 4
  %10 = sitofp i32 %9 to float
  %11 = load i32, i32* @penalty_ex, align 4
  %12 = sitofp i32 %11 to float
  %13 = load i32, i32* @offset, align 4
  %14 = sitofp i32 %13 to float
  %15 = fneg float %14
  %16 = fneg float %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %17) #8
  %19 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %.not = icmp eq %struct._shuryoten* %19, null
  br i1 %.not, label %20, label %22

20:                                               ; preds = %6
  %21 = call noalias dereferenceable_or_null(3200) i8* @calloc(i64 noundef 100, i64 noundef 32) #9
  store i8* %21, i8** bitcast (%struct._shuryoten** @suboptalign11.shuryo to i8**), align 8
  br label %22

22:                                               ; preds = %20, %6
  br label %23

23:                                               ; preds = %35, %22
  %.023 = phi i32 [ 0, %22 ], [ %36, %35 ]
  %24 = icmp ult i32 %.023, 100
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %27 = zext i32 %.023 to i64
  %28 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %26, i64 %27, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %30 = zext i32 %.023 to i64
  %31 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %29, i64 %30, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %33 = zext i32 %.023 to i64
  %34 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %32, i64 %33, i32 2
  store float 0.000000e+00, float* %34, align 8
  br label %35

35:                                               ; preds = %25
  %36 = add nuw nsw i32 %.023, 1
  br label %23, !llvm.loop !4

37:                                               ; preds = %23
  %38 = load i32, i32* @suboptalign11.orlgth1, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i8*, i8** %0, align 8
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #10
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %1, align 8
  %46 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %45) #10
  %47 = trunc i64 %46 to i32
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %48) #8
  %50 = load i32, i32* @suboptalign11.orlgth1, align 4
  %51 = icmp slt i32 %50, %44
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @suboptalign11.orlgth2, align 4
  %54 = icmp slt i32 %53, %47
  br i1 %54, label %55, label %153

55:                                               ; preds = %52, %41
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %56) #8
  %58 = load i32, i32* @suboptalign11.orlgth1, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = load i32, i32* @suboptalign11.orlgth2, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %64) #8
  %66 = load float*, float** @suboptalign11.w1, align 8
  call void @FreeFloatVec(float* noundef %66) #9
  %67 = load float*, float** @suboptalign11.w2, align 8
  call void @FreeFloatVec(float* noundef %67) #9
  %68 = load float*, float** @suboptalign11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %68) #9
  %69 = load float*, float** @suboptalign11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %69) #9
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %70) #8
  %72 = load float*, float** @suboptalign11.m, align 8
  call void @FreeFloatVec(float* noundef %72) #9
  %73 = load i32*, i32** @suboptalign11.mp, align 8
  call void @FreeIntVec(i32* noundef %73) #9
  %74 = load float*, float** @suboptalign11.largeM, align 8
  call void @FreeFloatVec(float* noundef %74) #9
  %75 = load i32*, i32** @suboptalign11.Mp, align 8
  call void @FreeIntVec(i32* noundef %75) #9
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %76) #8
  %78 = load float**, float*** @suboptalign11.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %78) #9
  %79 = load float**, float*** @suboptalign11.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %79) #9
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %80) #8
  %82 = load float**, float*** @suboptalign11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %82) #9
  %83 = load i32**, i32*** @suboptalign11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %83) #9
  br label %84

84:                                               ; preds = %63, %60, %55
  %85 = sitofp i32 %44 to double
  %86 = fmul double %85, 1.300000e+00
  %87 = fptosi double %86 to i32
  %88 = load i32, i32* @suboptalign11.orlgth1, align 4
  %89 = icmp slt i32 %88, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = sitofp i32 %44 to double
  %92 = fmul double %91, 1.300000e+00
  %93 = fptosi double %92 to i32
  br label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @suboptalign11.orlgth1, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %93, %90 ], [ %95, %94 ]
  %98 = add nsw i32 %97, 100
  %99 = sitofp i32 %47 to double
  %100 = fmul double %99, 1.300000e+00
  %101 = fptosi double %100 to i32
  %102 = load i32, i32* @suboptalign11.orlgth2, align 4
  %103 = icmp slt i32 %102, %101
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = sitofp i32 %47 to double
  %106 = fmul double %105, 1.300000e+00
  %107 = fptosi double %106 to i32
  br label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @suboptalign11.orlgth2, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %109, %108 ]
  %112 = add nsw i32 %111, 100
  %113 = add nsw i32 %111, 102
  %114 = call float* @AllocateFloatVec(i32 noundef %113) #9
  store float* %114, float** @suboptalign11.w1, align 8
  %115 = add nsw i32 %111, 102
  %116 = call float* @AllocateFloatVec(i32 noundef %115) #9
  store float* %116, float** @suboptalign11.w2, align 8
  %117 = add nsw i32 %97, 102
  %118 = call float* @AllocateFloatVec(i32 noundef %117) #9
  store float* %118, float** @suboptalign11.initverticalw, align 8
  %119 = add nsw i32 %97, 102
  %120 = call float* @AllocateFloatVec(i32 noundef %119) #9
  store float* %120, float** @suboptalign11.lastverticalw, align 8
  %121 = add nsw i32 %111, 102
  %122 = call float* @AllocateFloatVec(i32 noundef %121) #9
  store float* %122, float** @suboptalign11.m, align 8
  %123 = add nsw i32 %111, 102
  %124 = call i32* @AllocateIntVec(i32 noundef %123) #9
  store i32* %124, i32** @suboptalign11.mp, align 8
  %125 = add nsw i32 %111, 102
  %126 = call float* @AllocateFloatVec(i32 noundef %125) #9
  store float* %126, float** @suboptalign11.largeM, align 8
  %127 = add nsw i32 %111, 102
  %128 = call i32* @AllocateIntVec(i32 noundef %127) #9
  store i32* %128, i32** @suboptalign11.Mp, align 8
  %129 = add nsw i32 %97, 102
  %130 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %129) #9
  store float** %130, float*** @suboptalign11.cpmx1, align 8
  %131 = add nsw i32 %111, 102
  %132 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %131) #9
  store float** %132, float*** @suboptalign11.cpmx2, align 8
  %133 = icmp sgt i32 %97, %111
  br i1 %133, label %134, label %135

134:                                              ; preds = %110
  br label %136

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %134
  %137 = phi i32 [ %98, %134 ], [ %112, %135 ]
  %138 = add nsw i32 %137, 2
  %139 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %138) #9
  store float** %139, float*** @suboptalign11.floatwork, align 8
  %140 = icmp sgt i32 %97, %111
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %143

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %141
  %144 = phi i32 [ %98, %141 ], [ %112, %142 ]
  %145 = add nsw i32 %144, 2
  %146 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %145) #9
  store i32** %146, i32*** @suboptalign11.intwork, align 8
  %147 = load i32, i32* @njob, align 4
  %148 = add nsw i32 %98, %112
  %149 = call i8** @AllocateCharMtx(i32 noundef %147, i32 noundef %148) #9
  store i8** %149, i8*** @suboptalign11.mseq1, align 8
  %150 = load i32, i32* @njob, align 4
  %151 = add nsw i32 %98, %112
  %152 = call i8** @AllocateCharMtx(i32 noundef %150, i32 noundef %151) #9
  store i8** %152, i8*** @suboptalign11.mseq2, align 8
  store i32 %97, i32* @suboptalign11.orlgth1, align 4
  store i32 %111, i32* @suboptalign11.orlgth2, align 4
  br label %153

153:                                              ; preds = %143, %52
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %155 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %154) #8
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %156) #8
  %158 = load i32, i32* @suboptalign11.orlgth1, align 4
  %159 = load i32, i32* @commonAlloc1, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* @suboptalign11.orlgth2, align 4
  %163 = load i32, i32* @commonAlloc2, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %197

165:                                              ; preds = %161, %153
  %166 = load i32, i32* @commonAlloc1, align 4
  %.not73 = icmp eq i32 %166, 0
  br i1 %.not73, label %173, label %167

167:                                              ; preds = %165
  %168 = load i32, i32* @commonAlloc2, align 4
  %.not75 = icmp eq i32 %168, 0
  br i1 %.not75, label %173, label %169

169:                                              ; preds = %167
  %170 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %170) #9
  %171 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** noundef %171) #9
  %172 = load i32**, i32*** @suboptalign11.used, align 8
  call void @FreeIntMtx(i32** noundef %172) #9
  br label %173

173:                                              ; preds = %169, %167, %165
  %174 = load i32, i32* @suboptalign11.orlgth1, align 4
  %175 = load i32, i32* @commonAlloc1, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %179

178:                                              ; preds = %173
  br label %179

179:                                              ; preds = %178, %177
  %.in = phi i32* [ @suboptalign11.orlgth1, %177 ], [ @commonAlloc1, %178 ]
  %180 = load i32, i32* %.in, align 4
  %181 = load i32, i32* @suboptalign11.orlgth2, align 4
  %182 = load i32, i32* @commonAlloc2, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %186

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %184
  %.in74 = phi i32* [ @suboptalign11.orlgth2, %184 ], [ @commonAlloc2, %185 ]
  %187 = load i32, i32* %.in74, align 4
  %188 = add nsw i32 %180, 10
  %189 = add nsw i32 %187, 10
  %190 = call i32** @AllocateIntMtx(i32 noundef %188, i32 noundef %189) #9
  store i32** %190, i32*** @suboptalign11.used, align 8
  %191 = add nsw i32 %180, 10
  %192 = add nsw i32 %187, 10
  %193 = call i32** @AllocateIntMtx(i32 noundef %191, i32 noundef %192) #9
  store i32** %193, i32*** @commonIP, align 8
  %194 = add nsw i32 %180, 10
  %195 = add nsw i32 %187, 10
  %196 = call i32** @AllocateIntMtx(i32 noundef %194, i32 noundef %195) #9
  store i32** %196, i32*** @commonJP, align 8
  store i32 %180, i32* @commonAlloc1, align 4
  store i32 %187, i32* @commonAlloc2, align 4
  br label %197

197:                                              ; preds = %186, %161
  %198 = load i32**, i32*** @commonIP, align 8
  store i32** %198, i32*** @suboptalign11.ijpi, align 8
  %199 = load i32**, i32*** @commonJP, align 8
  store i32** %199, i32*** @suboptalign11.ijpj, align 8
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %201 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %200) #8
  %202 = load float*, float** @suboptalign11.w1, align 8
  %203 = load float*, float** @suboptalign11.w2, align 8
  %204 = load float*, float** @suboptalign11.initverticalw, align 8
  call void @match_calc(float* noundef %204, i8** noundef nonnull %1, i8** noundef nonnull %0, i32 noundef 0, i32 noundef %44)
  call void @match_calc(float* noundef %202, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef %47)
  br label %205

205:                                              ; preds = %227, %197
  %.028 = phi i32 [ 1, %197 ], [ %228, %227 ]
  %.not60 = icmp sgt i32 %.028, %47
  br i1 %.not60, label %229, label %206

206:                                              ; preds = %205
  %207 = add nsw i32 %.028, -1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %202, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** @suboptalign11.m, align 8
  %212 = zext i32 %.028 to i64
  %213 = getelementptr inbounds float, float* %211, i64 %212
  store float %210, float* %213, align 4
  %214 = load i32*, i32** @suboptalign11.mp, align 8
  %215 = zext i32 %.028 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 0, i32* %216, align 4
  %217 = add nsw i32 %.028, -1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %202, i64 %218
  %220 = load float, float* %219, align 4
  %221 = load float*, float** @suboptalign11.largeM, align 8
  %222 = zext i32 %.028 to i64
  %223 = getelementptr inbounds float, float* %221, i64 %222
  store float %220, float* %223, align 4
  %224 = load i32*, i32** @suboptalign11.Mp, align 8
  %225 = zext i32 %.028 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %206
  %228 = add nuw nsw i32 %.028, 1
  br label %205, !llvm.loop !6

229:                                              ; preds = %205
  %230 = shl i64 %46, 32
  %sext = add i64 %230, -4294967296
  %231 = ashr exact i64 %sext, 32
  %232 = getelementptr inbounds float, float* %202, i64 %231
  %233 = load float, float* %232, align 4
  %234 = load float*, float** @suboptalign11.lastverticalw, align 8
  store float %233, float* %234, align 4
  %235 = add nsw i32 %44, %47
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* @localstop, align 4
  br label %237

237:                                              ; preds = %389, %229
  %.049 = phi float* [ %203, %229 ], [ %.048, %389 ]
  %.048 = phi float* [ %202, %229 ], [ %.049, %389 ]
  %.042 = phi float [ 0.000000e+00, %229 ], [ %.143, %389 ]
  %.039 = phi float [ 0xC08F3F3340000000, %229 ], [ %.140, %389 ]
  %.124 = phi i32 [ 1, %229 ], [ %390, %389 ]
  %.013 = phi i32 [ 0, %229 ], [ %.114, %389 ]
  %.010 = phi i32 [ 0, %229 ], [ %.111, %389 ]
  %.07 = phi i32 [ 0, %229 ], [ %.18, %389 ]
  %.01 = phi float [ 0.000000e+00, %229 ], [ %.12, %389 ]
  %.0 = phi i32 [ 0, %229 ], [ %.1, %389 ]
  %.not61 = icmp sgt i32 %.124, %44
  br i1 %.not61, label %391, label %238

238:                                              ; preds = %237
  %239 = load float*, float** @suboptalign11.initverticalw, align 8
  %240 = add nsw i32 %.124, -1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  store float %243, float* %.048, align 4
  call void @match_calc(float* noundef %.049, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef %.124, i32 noundef %47)
  %244 = load float*, float** @suboptalign11.initverticalw, align 8
  %245 = zext i32 %.124 to i64
  %246 = getelementptr inbounds float, float* %244, i64 %245
  %247 = load float, float* %246, align 4
  store float %247, float* %.049, align 4
  %248 = load float, float* %.048, align 4
  store float %248, float* @suboptalign11.mi, align 4
  store i32 0, i32* @suboptalign11.mpi, align 4
  %249 = load float, float* %.048, align 4
  store float %249, float* @suboptalign11.Mi, align 4
  store i32 0, i32* @suboptalign11.Mpi, align 4
  %250 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %251 = zext i32 %.124 to i64
  %252 = getelementptr inbounds i32*, i32** %250, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %255 = zext i32 %.124 to i64
  %256 = getelementptr inbounds i32*, i32** %254, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load float*, float** @suboptalign11.m, align 8
  %259 = load float*, float** @suboptalign11.largeM, align 8
  %260 = load i32*, i32** @suboptalign11.mp, align 8
  %261 = load i32*, i32** @suboptalign11.Mp, align 8
  br label %262

262:                                              ; preds = %378, %238
  %.pn71 = phi i32* [ %260, %238 ], [ %.057, %378 ]
  %.049.pn = phi float* [ %.049, %238 ], [ %.056, %378 ]
  %.055 = phi float* [ %.048, %238 ], [ %379, %378 ]
  %.pn70 = phi float* [ %259, %238 ], [ %.054, %378 ]
  %.pn69 = phi float* [ %258, %238 ], [ %.053, %378 ]
  %.pn68 = phi i32* [ %257, %238 ], [ %.052, %378 ]
  %.pn = phi i32* [ %253, %238 ], [ %.051, %378 ]
  %.pn72 = phi i32* [ %261, %238 ], [ %.050, %378 ]
  %.143 = phi float [ %.042, %238 ], [ %.547, %378 ]
  %.140 = phi float [ %.039, %238 ], [ %.241, %378 ]
  %.036 = phi float [ 0xC12E847FC0000000, %238 ], [ %.238, %378 ]
  %.033 = phi i32 [ 0, %238 ], [ %.235, %378 ]
  %.129 = phi i32 [ 1, %238 ], [ %380, %378 ]
  %.016 = phi i32 [ 0, %238 ], [ %.218, %378 ]
  %.114 = phi i32 [ %.013, %238 ], [ %.215, %378 ]
  %.111 = phi i32 [ %.010, %238 ], [ %.212, %378 ]
  %.18 = phi i32 [ %.07, %238 ], [ %.29, %378 ]
  %.12 = phi float [ %.01, %238 ], [ %.56, %378 ]
  %.1 = phi i32 [ %.0, %238 ], [ %.5, %378 ]
  %.056 = getelementptr inbounds float, float* %.049.pn, i64 1
  %.050 = getelementptr inbounds i32, i32* %.pn72, i64 1
  %.057 = getelementptr inbounds i32, i32* %.pn71, i64 1
  %.054 = getelementptr inbounds float, float* %.pn70, i64 1
  %.053 = getelementptr inbounds float, float* %.pn69, i64 1
  %.052 = getelementptr inbounds i32, i32* %.pn68, i64 1
  %.051 = getelementptr inbounds i32, i32* %.pn, i64 1
  %.not66 = icmp sgt i32 %.129, %47
  br i1 %.not66, label %381, label %263

263:                                              ; preds = %262
  %264 = load float, float* %.055, align 4
  %265 = add nsw i32 %.124, -1
  store i32 %265, i32* %.051, align 4
  %266 = add nsw i32 %.129, -1
  store i32 %266, i32* %.052, align 4
  %267 = load float, float* @suboptalign11.mi, align 4
  %268 = fadd float %267, %8
  %269 = fcmp ogt float %268, %264
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i32, i32* @suboptalign11.mpi, align 4
  store i32 %271, i32* %.052, align 4
  br label %272

272:                                              ; preds = %270, %263
  %.244 = phi float [ %268, %270 ], [ %264, %263 ]
  %273 = load float, float* %.055, align 4
  %274 = load float, float* @suboptalign11.mi, align 4
  %275 = fcmp ogt float %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  store float %273, float* @suboptalign11.mi, align 4
  %277 = add nsw i32 %.129, -1
  store i32 %277, i32* @suboptalign11.mpi, align 4
  br label %278

278:                                              ; preds = %276, %272
  %279 = load float, float* @suboptalign11.mi, align 4
  %280 = fadd float %279, %12
  store float %280, float* @suboptalign11.mi, align 4
  %281 = load float, float* %.053, align 4
  %282 = fadd float %281, %8
  %283 = fcmp ogt float %282, %.244
  br i1 %283, label %284, label %286

284:                                              ; preds = %278
  %285 = load i32, i32* %.057, align 4
  store i32 %285, i32* %.051, align 4
  br label %286

286:                                              ; preds = %284, %278
  %.345 = phi float [ %282, %284 ], [ %.244, %278 ]
  %287 = load float, float* %.055, align 4
  %288 = load float, float* %.053, align 4
  %289 = fcmp ogt float %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  store float %287, float* %.053, align 4
  %291 = add nsw i32 %.124, -1
  store i32 %291, i32* %.057, align 4
  br label %292

292:                                              ; preds = %290, %286
  %293 = load float, float* %.053, align 4
  %294 = fadd float %293, %12
  store float %294, float* %.053, align 4
  %295 = fadd float %.036, %10
  %296 = fcmp ogt float %295, %.345
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store i32 %.033, i32* %.051, align 4
  store i32 %.016, i32* %.052, align 4
  br label %298

298:                                              ; preds = %297, %292
  %.446 = phi float [ %295, %297 ], [ %.345, %292 ]
  %299 = load float, float* @suboptalign11.Mi, align 4
  %300 = fcmp ogt float %299, %.036
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = add nsw i32 %.124, -1
  %303 = load i32, i32* @suboptalign11.Mpi, align 4
  br label %304

304:                                              ; preds = %301, %298
  %.137 = phi float [ %299, %301 ], [ %.036, %298 ]
  %.134 = phi i32 [ %302, %301 ], [ %.033, %298 ]
  %.117 = phi i32 [ %303, %301 ], [ %.016, %298 ]
  %305 = load float, float* %.054, align 4
  %306 = fcmp ogt float %305, %.137
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %.050, align 4
  %309 = add nsw i32 %.129, -1
  br label %310

310:                                              ; preds = %307, %304
  %.238 = phi float [ %305, %307 ], [ %.137, %304 ]
  %.235 = phi i32 [ %308, %307 ], [ %.134, %304 ]
  %.218 = phi i32 [ %309, %307 ], [ %.117, %304 ]
  %311 = load float, float* %.055, align 4
  %312 = load float, float* %.054, align 4
  %313 = fcmp ogt float %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  store float %311, float* %.054, align 4
  %315 = add nsw i32 %.124, -1
  store i32 %315, i32* %.050, align 4
  br label %316

316:                                              ; preds = %314, %310
  %317 = load float, float* %.055, align 4
  %318 = load float, float* @suboptalign11.Mi, align 4
  %319 = fcmp ogt float %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  store float %317, float* @suboptalign11.Mi, align 4
  %321 = add nsw i32 %.129, -1
  store i32 %321, i32* @suboptalign11.Mpi, align 4
  br label %322

322:                                              ; preds = %320, %316
  %323 = fcmp olt float %.140, %.446
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  br label %325

325:                                              ; preds = %324, %322
  %.241 = phi float [ %.446, %324 ], [ %.140, %322 ]
  %.215 = phi i32 [ %.124, %324 ], [ %.114, %322 ]
  %.212 = phi i32 [ %.129, %324 ], [ %.111, %322 ]
  %326 = icmp slt i32 %.18, 100
  br i1 %326, label %327, label %341

327:                                              ; preds = %325
  %328 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %329 = sext i32 %.18 to i64
  %330 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %328, i64 %329, i32 0
  store i32 %.124, i32* %330, align 8
  %331 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %332 = sext i32 %.18 to i64
  %333 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %331, i64 %332, i32 1
  store i32 %.129, i32* %333, align 4
  %334 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %335 = sext i32 %.18 to i64
  %336 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %334, i64 %335, i32 2
  store float %.446, float* %336, align 8
  %337 = fcmp ogt float %.12, %.446
  br i1 %337, label %338, label %339

338:                                              ; preds = %327
  br label %339

339:                                              ; preds = %338, %327
  %.23 = phi float [ %.446, %338 ], [ %.12, %327 ]
  %.2 = phi i32 [ %.18, %338 ], [ %.1, %327 ]
  %340 = add nsw i32 %.18, 1
  br label %371

341:                                              ; preds = %325
  %342 = fcmp ogt float %.446, %.12
  br i1 %342, label %343, label %370

343:                                              ; preds = %341
  %344 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %345 = sext i32 %.1 to i64
  %346 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %344, i64 %345, i32 0
  store i32 %.124, i32* %346, align 8
  %347 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %348 = sext i32 %.1 to i64
  %349 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %347, i64 %348, i32 1
  store i32 %.129, i32* %349, align 4
  %350 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %351 = sext i32 %.1 to i64
  %352 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %350, i64 %351, i32 2
  store float %.446, float* %352, align 8
  br label %353

353:                                              ; preds = %367, %343
  %.019 = phi i32 [ 0, %343 ], [ %368, %367 ]
  %354 = icmp ult i32 %.019, 100
  br i1 %354, label %355, label %.loopexit58

355:                                              ; preds = %353
  %356 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %357 = zext i32 %.019 to i64
  %358 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %356, i64 %357, i32 2
  %359 = load float, float* %358, align 8
  %360 = fcmp olt float %359, %.446
  br i1 %360, label %361, label %366

361:                                              ; preds = %355
  %362 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %363 = zext i32 %.019 to i64
  %364 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %362, i64 %363, i32 2
  %365 = load float, float* %364, align 8
  br label %369

366:                                              ; preds = %355
  br label %367

367:                                              ; preds = %366
  %368 = add nuw nsw i32 %.019, 1
  br label %353, !llvm.loop !7

.loopexit58:                                      ; preds = %353
  br label %369

369:                                              ; preds = %.loopexit58, %361
  %.34 = phi float [ %365, %361 ], [ %.446, %.loopexit58 ]
  %.3 = phi i32 [ %.019, %361 ], [ %.1, %.loopexit58 ]
  br label %370

370:                                              ; preds = %369, %341
  %.45 = phi float [ %.34, %369 ], [ %.12, %341 ]
  %.4 = phi i32 [ %.3, %369 ], [ %.1, %341 ]
  br label %371

371:                                              ; preds = %370, %339
  %.29 = phi i32 [ %340, %339 ], [ %.18, %370 ]
  %.56 = phi float [ %.23, %339 ], [ %.45, %370 ]
  %.5 = phi i32 [ %.2, %339 ], [ %.4, %370 ]
  %372 = fcmp olt float %.446, %15
  br i1 %372, label %373, label %375

373:                                              ; preds = %371
  %374 = load i32, i32* @localstop, align 4
  store i32 %374, i32* %.051, align 4
  br label %375

375:                                              ; preds = %373, %371
  %.547 = phi float [ %16, %373 ], [ %.446, %371 ]
  %376 = load float, float* %.056, align 4
  %377 = fadd float %376, %.547
  store float %377, float* %.056, align 4
  br label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds float, float* %.055, i64 1
  %380 = add nuw nsw i32 %.129, 1
  br label %262, !llvm.loop !8

381:                                              ; preds = %262
  %382 = shl i64 %46, 32
  %sext67 = add i64 %382, -4294967296
  %383 = ashr exact i64 %sext67, 32
  %384 = getelementptr inbounds float, float* %.049, i64 %383
  %385 = load float, float* %384, align 4
  %386 = load float*, float** @suboptalign11.lastverticalw, align 8
  %387 = zext i32 %.124 to i64
  %388 = getelementptr inbounds float, float* %386, i64 %387
  store float %385, float* %388, align 4
  br label %389

389:                                              ; preds = %381
  %390 = add nuw nsw i32 %.124, 1
  br label %237, !llvm.loop !9

391:                                              ; preds = %237
  br label %392

392:                                              ; preds = %409, %391
  %.120 = phi i32 [ 0, %391 ], [ %410, %409 ]
  %393 = icmp ult i32 %.120, 100
  br i1 %393, label %394, label %411

394:                                              ; preds = %392
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %396 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %397 = zext i32 %.120 to i64
  %398 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %396, i64 %397, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = zext i32 %.120 to i64
  %401 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %396, i64 %400, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %404 = zext i32 %.120 to i64
  %405 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %403, i64 %404, i32 2
  %406 = load float, float* %405, align 8
  %407 = fpext float %406 to double
  %408 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %395, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.120, i32 noundef %399, i32 noundef %402, double noundef %407) #11
  br label %409

409:                                              ; preds = %394
  %410 = add nuw nsw i32 %.120, 1
  br label %392, !llvm.loop !10

411:                                              ; preds = %392
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %413 = fpext float %.039 to double
  %414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %412, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), double noundef %413) #11
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %416 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %415, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.013) #11
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %417, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.010) #11
  %419 = load i8*, i8** bitcast (%struct._shuryoten** @suboptalign11.shuryo to i8**), align 8
  call void @qsort(i8* noundef %419, i64 noundef 100, i64 noundef 32, i32 (i8*, i8*)* noundef bitcast (i32 (%struct._shuryoten*, %struct._shuryoten*)* @compshuryo to i32 (i8*, i8*)*)) #9
  br label %420

420:                                              ; preds = %437, %411
  %.221 = phi i32 [ 0, %411 ], [ %438, %437 ]
  %421 = icmp ult i32 %.221, 100
  br i1 %421, label %422, label %439

422:                                              ; preds = %420
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %424 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %425 = zext i32 %.221 to i64
  %426 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %424, i64 %425, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = zext i32 %.221 to i64
  %429 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %424, i64 %428, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %432 = zext i32 %.221 to i64
  %433 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %431, i64 %432, i32 2
  %434 = load float, float* %433, align 8
  %435 = fpext float %434 to double
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %423, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.221, i32 noundef %427, i32 noundef %430, double noundef %435) #11
  br label %437

437:                                              ; preds = %422
  %438 = add nuw nsw i32 %.221, 1
  br label %420, !llvm.loop !11

439:                                              ; preds = %420
  br label %440

440:                                              ; preds = %452, %439
  %.225 = phi i32 [ 0, %439 ], [ %453, %452 ]
  %.not62 = icmp sgt i32 %.225, %44
  br i1 %.not62, label %454, label %441

441:                                              ; preds = %440
  %442 = load i32, i32* @localstop, align 4
  %443 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %444 = zext i32 %.225 to i64
  %445 = getelementptr inbounds i32*, i32** %443, i64 %444
  %446 = load i32*, i32** %445, align 8
  store i32 %442, i32* %446, align 4
  %447 = load i32, i32* @localstop, align 4
  %448 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %449 = zext i32 %.225 to i64
  %450 = getelementptr inbounds i32*, i32** %448, i64 %449
  %451 = load i32*, i32** %450, align 8
  store i32 %447, i32* %451, align 4
  br label %452

452:                                              ; preds = %441
  %453 = add nuw nsw i32 %.225, 1
  br label %440, !llvm.loop !12

454:                                              ; preds = %440
  br label %455

455:                                              ; preds = %467, %454
  %.230 = phi i32 [ 0, %454 ], [ %468, %467 ]
  %.not63 = icmp sgt i32 %.230, %47
  br i1 %.not63, label %469, label %456

456:                                              ; preds = %455
  %457 = load i32, i32* @localstop, align 4
  %458 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %459 = load i32*, i32** %458, align 8
  %460 = zext i32 %.230 to i64
  %461 = getelementptr inbounds i32, i32* %459, i64 %460
  store i32 %457, i32* %461, align 4
  %462 = load i32, i32* @localstop, align 4
  %463 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %464 = load i32*, i32** %463, align 8
  %465 = zext i32 %.230 to i64
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  store i32 %462, i32* %466, align 4
  br label %467

467:                                              ; preds = %456
  %468 = add nuw nsw i32 %.230, 1
  br label %455, !llvm.loop !13

469:                                              ; preds = %455
  br label %470

470:                                              ; preds = %483, %469
  %.326 = phi i32 [ 0, %469 ], [ %484, %483 ]
  %.not64 = icmp sgt i32 %.326, %44
  br i1 %.not64, label %485, label %471

471:                                              ; preds = %470
  br label %472

472:                                              ; preds = %480, %471
  %.331 = phi i32 [ 0, %471 ], [ %481, %480 ]
  %.not65 = icmp sgt i32 %.331, %47
  br i1 %.not65, label %482, label %473

473:                                              ; preds = %472
  %474 = load i32**, i32*** @suboptalign11.used, align 8
  %475 = zext i32 %.326 to i64
  %476 = getelementptr inbounds i32*, i32** %474, i64 %475
  %477 = load i32*, i32** %476, align 8
  %478 = zext i32 %.331 to i64
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  store i32 0, i32* %479, align 4
  br label %480

480:                                              ; preds = %473
  %481 = add nuw nsw i32 %.331, 1
  br label %472, !llvm.loop !14

482:                                              ; preds = %472
  br label %483

483:                                              ; preds = %482
  %484 = add nuw nsw i32 %.326, 1
  br label %470, !llvm.loop !15

485:                                              ; preds = %470
  br label %486

486:                                              ; preds = %548, %485
  %.322 = phi i32 [ 0, %485 ], [ %549, %548 ]
  %487 = icmp slt i32 %.322, %.07
  br i1 %487, label %488, label %.loopexit

488:                                              ; preds = %486
  %489 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %490 = zext i32 %.322 to i64
  %491 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %489, i64 %490, i32 2
  %492 = load float, float* %491, align 8
  %493 = fpext float %492 to double
  %494 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %489, i64 0, i32 2
  %495 = load float, float* %494, align 8
  %496 = fpext float %495 to double
  %497 = fmul double %496, 3.000000e-01
  %498 = fcmp ogt double %497, %493
  br i1 %498, label %499, label %500

499:                                              ; preds = %488
  br label %550

500:                                              ; preds = %488
  %501 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %502 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %503 = zext i32 %.322 to i64
  %504 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %502, i64 %503, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = zext i32 %.322 to i64
  %507 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %502, i64 %506, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %510 = zext i32 %.322 to i64
  %511 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %509, i64 %510, i32 2
  %512 = load float, float* %511, align 8
  %513 = fpext float %512 to double
  %514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %501, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 noundef %.322, i32 noundef %505, i32 noundef %508, double noundef %513) #11
  %515 = load i32**, i32*** @suboptalign11.used, align 8
  %516 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %517 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %518 = load float**, float*** @suboptalign11.cpmx1, align 8
  %519 = load float**, float*** @suboptalign11.cpmx2, align 8
  %520 = load i32**, i32*** @suboptalign11.ijpi, align 8
  %521 = load i32**, i32*** @suboptalign11.ijpj, align 8
  %522 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %523 = zext i32 %.322 to i64
  %524 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %522, i64 %523, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = zext i32 %.322 to i64
  %527 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %522, i64 %526, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = call float @gentracking(i32** noundef %515, i8** noundef nonnull %0, i8** noundef nonnull %1, i8** noundef %516, i8** noundef %517, float** noundef %518, float** noundef %519, i32** noundef %520, i32** noundef %521, i32* noundef %3, i32* noundef %4, i32 noundef %525, i32 noundef %528)
  %530 = fcmp oeq float %529, -1.000000e+00
  br i1 %530, label %531, label %532

531:                                              ; preds = %500
  br label %548

532:                                              ; preds = %500
  %533 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %534 = load i8*, i8** %533, align 8
  %535 = load i8**, i8*** @suboptalign11.mseq2, align 8
  %536 = load i8*, i8** %535, align 8
  %537 = load i32, i32* %3, align 4
  %538 = load i32, i32* %4, align 4
  %539 = load %struct._shuryoten*, %struct._shuryoten** @suboptalign11.shuryo, align 8
  %540 = zext i32 %.322 to i64
  %541 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %539, i64 %540, i32 2
  %542 = load float, float* %541, align 8
  %543 = fptosi float %542 to i32
  %544 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %545 = load i8*, i8** %544, align 8
  %546 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %545) #10
  %547 = trunc i64 %546 to i32
  call void @putlocalhom3(i8* noundef %534, i8* noundef %536, %struct._LocalHom* noundef %5, i32 noundef %537, i32 noundef %538, i32 noundef %543, i32 noundef %547) #9
  br label %548

548:                                              ; preds = %532, %531
  %549 = add nuw nsw i32 %.322, 1
  br label %486, !llvm.loop !16

.loopexit:                                        ; preds = %486
  br label %550

550:                                              ; preds = %.loopexit, %499
  br label %551

551:                                              ; preds = %570, %550
  %.427 = phi i32 [ 0, %550 ], [ %571, %570 ]
  %552 = icmp ult i32 %.427, 20
  br i1 %552, label %553, label %572

553:                                              ; preds = %551
  br label %554

554:                                              ; preds = %566, %553
  %.432 = phi i32 [ 0, %553 ], [ %567, %566 ]
  %555 = icmp ult i32 %.432, 20
  br i1 %555, label %556, label %568

556:                                              ; preds = %554
  %557 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %558 = load i32**, i32*** @suboptalign11.used, align 8
  %559 = zext i32 %.427 to i64
  %560 = getelementptr inbounds i32*, i32** %558, i64 %559
  %561 = load i32*, i32** %560, align 8
  %562 = zext i32 %.432 to i64
  %563 = getelementptr inbounds i32, i32* %561, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %557, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef %564) #11
  br label %566

566:                                              ; preds = %556
  %567 = add nuw nsw i32 %.432, 1
  br label %554, !llvm.loop !17

568:                                              ; preds = %554
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %569)
  br label %570

570:                                              ; preds = %568
  %571 = add nuw nsw i32 %.427, 1
  br label %551, !llvm.loop !18

572:                                              ; preds = %551
  %573 = load i8**, i8*** @suboptalign11.mseq1, align 8
  %574 = load i8*, i8** %573, align 8
  %575 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %574) #10
  %576 = trunc i64 %575 to i32
  %577 = icmp sgt i32 %576, %2
  br i1 %577, label %580, label %578

578:                                              ; preds = %572
  %579 = icmp sgt i32 %576, 5000000
  br i1 %579, label %580, label %583

580:                                              ; preds = %578, %572
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %582 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %581, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 noundef %2, i32 noundef %576, i32 noundef 5000000) #11
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #9
  br label %583

583:                                              ; preds = %580, %578
  ret float %.042
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @match_calc(float* nocapture noundef writeonly %0, i8** nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #4 {
  br label %6

6:                                                ; preds = %24, %5
  %.0 = phi i32 [ 0, %5 ], [ %25, %24 ]
  %7 = icmp slt i32 %.0, %4
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = load i8*, i8** %1, align 8
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i64
  %14 = load i8*, i8** %2, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i64 0, i64 %13, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sitofp i32 %20 to float
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds float, float* %0, i64 %22
  store float %21, float* %23, align 4
  br label %24

24:                                               ; preds = %8
  %25 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !19

26:                                               ; preds = %6
  ret void
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @compshuryo(%struct._shuryoten* nocapture noundef readonly %0, %struct._shuryoten* nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %0, i64 0, i32 2
  %4 = load float, float* %3, align 8
  %5 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %1, i64 0, i32 2
  %6 = load float, float* %5, align 8
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %0, i64 0, i32 2
  %11 = load float, float* %10, align 8
  %12 = getelementptr inbounds %struct._shuryoten, %struct._shuryoten* %1, i64 0, i32 2
  %13 = load float, float* %12, align 8
  %14 = fcmp olt float %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %17

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %15, %8
  %.0 = phi i32 [ -1, %8 ], [ 1, %15 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal float @gentracking(i32** nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i8** nocapture noundef readonly %4, float** nocapture noundef readnone %5, float** nocapture noundef readnone %6, i32** nocapture noundef readonly %7, i32** nocapture noundef readonly %8, i32* nocapture noundef writeonly %9, i32* nocapture noundef writeonly %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = load i8*, i8** @gentracking.res1, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call noalias dereferenceable_or_null(5000000) i8* @calloc(i64 noundef 5000000, i64 noundef 1) #9
  store i8* %17, i8** @gentracking.res1, align 8
  %18 = call noalias dereferenceable_or_null(5000000) i8* @calloc(i64 noundef 5000000, i64 noundef 1) #9
  store i8* %18, i8** @gentracking.res2, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %20) #10
  %22 = trunc i64 %21 to i32
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23) #10
  %25 = trunc i64 %24 to i32
  %26 = load i8*, i8** @gentracking.res1, align 8
  %sext = shl i64 %21, 32
  %27 = ashr exact i64 %sext, 32
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %sext52 = shl i64 %24, 32
  %29 = ashr exact i64 %sext52, 32
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** @gentracking.res2, align 8
  %sext53 = shl i64 %21, 32
  %32 = ashr exact i64 %sext53, 32
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %sext54 = shl i64 %24, 32
  %34 = ashr exact i64 %sext54, 32
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 0, i8* %35, align 1
  %36 = add nsw i32 %22, %25
  %37 = sext i32 %11 to i64
  %38 = getelementptr inbounds i32*, i32** %0, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = sext i32 %12 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %.not = icmp eq i32 %42, 0
  br i1 %.not, label %44, label %43

43:                                               ; preds = %19
  br label %193

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %128, %44
  %.016 = phi i32 [ %11, %44 ], [ %52, %128 ]
  %.014 = phi i32 [ %12, %44 ], [ %58, %128 ]
  %.010 = phi i32 [ 0, %44 ], [ %129, %128 ]
  %.08 = phi i32 [ 0, %44 ], [ %52, %128 ]
  %.06 = phi i32 [ 0, %44 ], [ %58, %128 ]
  %.02 = phi i8* [ %30, %44 ], [ %102, %128 ]
  %.01 = phi i8* [ %35, %44 ], [ %107, %128 ]
  %.not55 = icmp sgt i32 %.010, %36
  br i1 %.not55, label %.loopexit20, label %46

46:                                               ; preds = %45
  %47 = sext i32 %.016 to i64
  %48 = getelementptr inbounds i32*, i32** %7, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = sext i32 %.014 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %.016 to i64
  %54 = getelementptr inbounds i32*, i32** %8, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = sext i32 %.014 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %52 to i64
  %60 = getelementptr inbounds i32*, i32** %0, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %.not58 = icmp eq i32 %64, 0
  br i1 %.not58, label %66, label %65

65:                                               ; preds = %46
  br label %193

66:                                               ; preds = %46
  %67 = sub nsw i32 %.016, %52
  br label %68

68:                                               ; preds = %70, %66
  %.018 = phi i32 [ %67, %66 ], [ %69, %70 ]
  %.111 = phi i32 [ %.010, %66 ], [ %78, %70 ]
  %.13 = phi i8* [ %.02, %66 ], [ %76, %70 ]
  %.1 = phi i8* [ %.01, %66 ], [ %77, %70 ]
  %69 = add nsw i32 %.018, -1
  %.not59 = icmp eq i32 %69, 0
  br i1 %.not59, label %79, label %70

70:                                               ; preds = %68
  %71 = load i8*, i8** %1, align 8
  %72 = add nsw i32 %52, %69
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds i8, i8* %.13, i64 -1
  store i8 %75, i8* %76, align 1
  %77 = getelementptr inbounds i8, i8* %.1, i64 -1
  store i8 45, i8* %77, align 1
  %78 = add nsw i32 %.111, 1
  br label %68, !llvm.loop !20

79:                                               ; preds = %68
  %80 = sub nsw i32 %.014, %58
  br label %81

81:                                               ; preds = %83, %79
  %.119 = phi i32 [ %80, %79 ], [ %82, %83 ]
  %.212 = phi i32 [ %.111, %79 ], [ %91, %83 ]
  %.24 = phi i8* [ %.13, %79 ], [ %84, %83 ]
  %.2 = phi i8* [ %.1, %79 ], [ %90, %83 ]
  %82 = add nsw i32 %.119, -1
  %.not60 = icmp eq i32 %82, 0
  br i1 %.not60, label %92, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, i8* %.24, i64 -1
  store i8 45, i8* %84, align 1
  %85 = load i8*, i8** %2, align 8
  %86 = add nsw i32 %58, %82
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = getelementptr inbounds i8, i8* %.2, i64 -1
  store i8 %89, i8* %90, align 1
  %91 = add nsw i32 %.212, 1
  br label %81, !llvm.loop !21

92:                                               ; preds = %81
  %93 = icmp slt i32 %.016, 1
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = icmp slt i32 %.014, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %94, %92
  br label %130

97:                                               ; preds = %94
  %98 = load i8*, i8** %1, align 8
  %99 = sext i32 %52 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = getelementptr inbounds i8, i8* %.24, i64 -1
  store i8 %101, i8* %102, align 1
  %103 = load i8*, i8** %2, align 8
  %104 = sext i32 %58 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = getelementptr inbounds i8, i8* %.2, i64 -1
  store i8 %106, i8* %107, align 1
  %108 = sext i32 %52 to i64
  %109 = getelementptr inbounds i32*, i32** %7, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = sext i32 %58 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @localstop, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  br label %130

117:                                              ; preds = %97
  %118 = sext i32 %52 to i64
  %119 = getelementptr inbounds i32*, i32** %8, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = sext i32 %58 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @localstop, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %130

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = add nsw i32 %.212, 2
  br label %45, !llvm.loop !22

.loopexit20:                                      ; preds = %45
  br label %130

130:                                              ; preds = %.loopexit20, %126, %116, %96
  %.19 = phi i32 [ %52, %96 ], [ %52, %116 ], [ %52, %126 ], [ %.08, %.loopexit20 ]
  %.17 = phi i32 [ %58, %96 ], [ %58, %116 ], [ %58, %126 ], [ %.06, %.loopexit20 ]
  %.35 = phi i8* [ %.24, %96 ], [ %102, %116 ], [ %102, %126 ], [ %.02, %.loopexit20 ]
  %.3 = phi i8* [ %.2, %96 ], [ %107, %116 ], [ %107, %126 ], [ %.01, %.loopexit20 ]
  %131 = icmp eq i32 %.19, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %134

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133, %132
  %storemerge = phi i32 [ %.19, %133 ], [ 0, %132 ]
  store i32 %storemerge, i32* %9, align 4
  %135 = icmp eq i32 %.17, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %138

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %136
  %storemerge56 = phi i32 [ %.17, %137 ], [ 0, %136 ]
  store i32 %storemerge56, i32* %10, align 4
  %139 = add nsw i32 %22, %25
  br label %140

140:                                              ; preds = %184, %138
  %.117 = phi i32 [ %11, %138 ], [ %147, %184 ]
  %.115 = phi i32 [ %12, %138 ], [ %153, %184 ]
  %.313 = phi i32 [ 0, %138 ], [ %185, %184 ]
  %.not57 = icmp sgt i32 %.313, %139
  br i1 %.not57, label %.loopexit, label %141

141:                                              ; preds = %140
  %142 = sext i32 %.117 to i64
  %143 = getelementptr inbounds i32*, i32** %7, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = sext i32 %.115 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %.117 to i64
  %149 = getelementptr inbounds i32*, i32** %8, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = sext i32 %.115 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %147 to i64
  %155 = getelementptr inbounds i32*, i32** %0, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = sext i32 %153 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 1, i32* %158, align 4
  %159 = icmp slt i32 %.117, 1
  br i1 %159, label %162, label %160

160:                                              ; preds = %141
  %161 = icmp slt i32 %.115, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %160, %141
  br label %186

163:                                              ; preds = %160
  %164 = sext i32 %147 to i64
  %165 = getelementptr inbounds i32*, i32** %7, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = sext i32 %153 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @localstop, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %186

173:                                              ; preds = %163
  %174 = sext i32 %147 to i64
  %175 = getelementptr inbounds i32*, i32** %8, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = sext i32 %153 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @localstop, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %186

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183
  %185 = add nuw nsw i32 %.313, 2
  br label %140, !llvm.loop !23

.loopexit:                                        ; preds = %140
  br label %186

186:                                              ; preds = %.loopexit, %182, %172, %162
  %187 = load i8*, i8** %3, align 8
  %188 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %187, i8* noundef nonnull dereferenceable(1) %.35) #9
  %189 = load i8*, i8** %4, align 8
  %190 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %189, i8* noundef nonnull dereferenceable(1) %.3) #9
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %191, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* noundef %.35, i8* noundef %.3) #11
  br label %193

193:                                              ; preds = %186, %65, %43
  %.0 = phi float [ -1.000000e+00, %43 ], [ -1.000000e+00, %65 ], [ 0.000000e+00, %186 ]
  ret float %.0
}

declare dso_local void @putlocalhom3(i8* noundef, i8* noundef, %struct._LocalHom* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

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
