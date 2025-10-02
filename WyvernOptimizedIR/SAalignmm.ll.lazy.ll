; ModuleID = './SAalignmm.ll'
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
  %8 = load i32, i32* @Aalign.orlgth1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* @njob, align 4
  %12 = call i8** @AllocateCharMtx(i32 noundef %11, i32 noundef 1) #9
  store i8** %12, i8*** @Aalign.mseq1, align 8
  %13 = load i32, i32* @njob, align 4
  %14 = call i8** @AllocateCharMtx(i32 noundef %13, i32 noundef 1) #9
  store i8** %14, i8*** @Aalign.mseq2, align 8
  br label %15

15:                                               ; preds = %10, %7
  %16 = load i8*, i8** %0, align 8
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %16) #10
  %18 = trunc i64 %17 to i32
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %19) #10
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @Aalign.orlgth1, align 4
  %23 = icmp slt i32 %22, %18
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @Aalign.orlgth2, align 4
  %26 = icmp slt i32 %25, %21
  br i1 %26, label %27, label %114

27:                                               ; preds = %24, %15
  %28 = load i32, i32* @Aalign.orlgth1, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* @Aalign.orlgth2, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load float*, float** @Aalign.currentw, align 8
  call void @FreeFloatVec(float* noundef %34) #9
  %35 = load float*, float** @Aalign.previousw, align 8
  call void @FreeFloatVec(float* noundef %35) #9
  %36 = load float*, float** @Aalign.match, align 8
  call void @FreeFloatVec(float* noundef %36) #9
  %37 = load float*, float** @Aalign.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %37) #9
  %38 = load float*, float** @Aalign.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %38) #9
  %39 = load float*, float** @Aalign.m, align 8
  call void @FreeFloatVec(float* noundef %39) #9
  %40 = load i32*, i32** @Aalign.mp, align 8
  call void @FreeIntVec(i32* noundef %40) #9
  %41 = load i8**, i8*** @Aalign.mseq, align 8
  call void @FreeCharMtx(i8** noundef %41) #9
  %42 = load float**, float*** @Aalign.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %42) #9
  %43 = load float**, float*** @Aalign.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %43) #9
  %44 = load float**, float*** @Aalign.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %44) #9
  %45 = load i32**, i32*** @Aalign.intwork, align 8
  call void @FreeIntMtx(i32** noundef %45) #9
  br label %46

46:                                               ; preds = %33, %30, %27
  %47 = sitofp i32 %18 to double
  %48 = fmul double %47, 1.100000e+00
  %49 = fptosi double %48 to i32
  %50 = load i32, i32* @Aalign.orlgth1, align 4
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = sitofp i32 %18 to double
  %54 = fmul double %53, 1.100000e+00
  %55 = fptosi double %54 to i32
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @Aalign.orlgth1, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %55, %52 ], [ %57, %56 ]
  %60 = add nsw i32 %59, 100
  %61 = sitofp i32 %21 to double
  %62 = fmul double %61, 1.100000e+00
  %63 = fptosi double %62 to i32
  %64 = load i32, i32* @Aalign.orlgth2, align 4
  %65 = icmp slt i32 %64, %63
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = sitofp i32 %21 to double
  %68 = fmul double %67, 1.100000e+00
  %69 = fptosi double %68 to i32
  br label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @Aalign.orlgth2, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %69, %66 ], [ %71, %70 ]
  %74 = add nsw i32 %73, 100
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 noundef %60, i32 noundef %74) #11
  %77 = add nsw i32 %73, 102
  %78 = call float* @AllocateFloatVec(i32 noundef %77) #9
  store float* %78, float** @Aalign.currentw, align 8
  %79 = add nsw i32 %73, 102
  %80 = call float* @AllocateFloatVec(i32 noundef %79) #9
  store float* %80, float** @Aalign.previousw, align 8
  %81 = add nsw i32 %73, 102
  %82 = call float* @AllocateFloatVec(i32 noundef %81) #9
  store float* %82, float** @Aalign.match, align 8
  %83 = add nsw i32 %59, 102
  %84 = call float* @AllocateFloatVec(i32 noundef %83) #9
  store float* %84, float** @Aalign.initverticalw, align 8
  %85 = add nsw i32 %59, 102
  %86 = call float* @AllocateFloatVec(i32 noundef %85) #9
  store float* %86, float** @Aalign.lastverticalw, align 8
  %87 = add nsw i32 %73, 102
  %88 = call float* @AllocateFloatVec(i32 noundef %87) #9
  store float* %88, float** @Aalign.m, align 8
  %89 = add nsw i32 %73, 102
  %90 = call i32* @AllocateIntVec(i32 noundef %89) #9
  store i32* %90, i32** @Aalign.mp, align 8
  %91 = load i32, i32* @njob, align 4
  %92 = add nsw i32 %60, %74
  %93 = call i8** @AllocateCharMtx(i32 noundef %91, i32 noundef %92) #9
  store i8** %93, i8*** @Aalign.mseq, align 8
  %94 = add nsw i32 %59, 102
  %95 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %94) #9
  store float** %95, float*** @Aalign.cpmx1, align 8
  %96 = add nsw i32 %73, 102
  %97 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %96) #9
  store float** %97, float*** @Aalign.cpmx2, align 8
  %98 = icmp sgt i32 %59, %73
  br i1 %98, label %99, label %100

99:                                               ; preds = %72
  br label %101

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %99
  %102 = phi i32 [ %60, %99 ], [ %74, %100 ]
  %103 = add nsw i32 %102, 2
  %104 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %103) #9
  store float** %104, float*** @Aalign.floatwork, align 8
  %105 = icmp sgt i32 %59, %73
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %106
  %109 = phi i32 [ %60, %106 ], [ %74, %107 ]
  %110 = add nsw i32 %109, 2
  %111 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %110) #9
  store i32** %111, i32*** @Aalign.intwork, align 8
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %112) #12
  store i32 %60, i32* @Aalign.orlgth1, align 4
  store i32 %74, i32* @Aalign.orlgth2, align 4
  br label %114

114:                                              ; preds = %108, %24
  br label %115

115:                                              ; preds = %125, %114
  %.06 = phi i32 [ 0, %114 ], [ %126, %125 ]
  %116 = icmp slt i32 %.06, %4
  br i1 %116, label %117, label %127

117:                                              ; preds = %115
  %118 = load i8**, i8*** @Aalign.mseq, align 8
  %119 = zext i32 %.06 to i64
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** @Aalign.mseq1, align 8
  %123 = zext i32 %.06 to i64
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  store i8* %121, i8** %124, align 8
  br label %125

125:                                              ; preds = %117
  %126 = add nuw nsw i32 %.06, 1
  br label %115, !llvm.loop !4

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %139, %127
  %.02 = phi i32 [ 0, %127 ], [ %140, %139 ]
  %129 = icmp slt i32 %.02, %5
  br i1 %129, label %130, label %141

130:                                              ; preds = %128
  %131 = load i8**, i8*** @Aalign.mseq, align 8
  %132 = add nsw i32 %.02, %4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = load i8**, i8*** @Aalign.mseq2, align 8
  %137 = zext i32 %.02 to i64
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %130
  %140 = add nuw nsw i32 %.02, 1
  br label %128, !llvm.loop !6

141:                                              ; preds = %128
  %142 = load i32, i32* @Aalign.orlgth1, align 4
  %143 = load i32, i32* @commonAlloc1, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @Aalign.orlgth2, align 4
  %147 = load i32, i32* @commonAlloc2, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %179

149:                                              ; preds = %145, %141
  %150 = load i32, i32* @commonAlloc1, align 4
  %.not15 = icmp eq i32 %150, 0
  br i1 %.not15, label %155, label %151

151:                                              ; preds = %149
  %152 = load i32, i32* @commonAlloc2, align 4
  %.not17 = icmp eq i32 %152, 0
  br i1 %.not17, label %155, label %153

153:                                              ; preds = %151
  %154 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %154) #9
  br label %155

155:                                              ; preds = %153, %151, %149
  %156 = load i32, i32* @Aalign.orlgth1, align 4
  %157 = load i32, i32* @commonAlloc1, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %161

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %159
  %.in = phi i32* [ @Aalign.orlgth1, %159 ], [ @commonAlloc1, %160 ]
  %162 = load i32, i32* %.in, align 4
  %163 = load i32, i32* @Aalign.orlgth2, align 4
  %164 = load i32, i32* @commonAlloc2, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %168

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %166
  %.in16 = phi i32* [ @Aalign.orlgth2, %166 ], [ @commonAlloc2, %167 ]
  %169 = load i32, i32* %.in16, align 4
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %171 = add nsw i32 %162, 1
  %172 = add nsw i32 %169, 1
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %170, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef %171, i32 noundef %172) #11
  %174 = add nsw i32 %162, 10
  %175 = add nsw i32 %169, 10
  %176 = call i32** @AllocateIntMtx(i32 noundef %174, i32 noundef %175) #9
  store i32** %176, i32*** @commonIP, align 8
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %177) #12
  store i32 %162, i32* @commonAlloc1, align 4
  store i32 %169, i32* @commonAlloc2, align 4
  br label %179

179:                                              ; preds = %168, %145
  %180 = load i32**, i32*** @commonIP, align 8
  store i32** %180, i32*** @Aalign.ijp, align 8
  %181 = load float**, float*** @Aalign.cpmx1, align 8
  %182 = load i8*, i8** %0, align 8
  %183 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %182) #10
  %184 = trunc i64 %183 to i32
  call void @cpmx_calc(i8** noundef nonnull %0, float** noundef %181, double* noundef %2, i32 noundef %184, i32 noundef %4) #9
  %185 = load float**, float*** @Aalign.cpmx2, align 8
  %186 = load i8*, i8** %1, align 8
  %187 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %186) #10
  %188 = trunc i64 %187 to i32
  call void @cpmx_calc(i8** noundef nonnull %1, float** noundef %185, double* noundef %3, i32 noundef %188, i32 noundef %5) #9
  %189 = load float*, float** @Aalign.initverticalw, align 8
  %190 = load float**, float*** @Aalign.cpmx2, align 8
  %191 = load float**, float*** @Aalign.cpmx1, align 8
  %192 = load float**, float*** @Aalign.floatwork, align 8
  %193 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %189, float** noundef %190, float** noundef %191, i32 noundef 0, i32 noundef %18, float** noundef %192, i32** noundef %193, i32 noundef 1)
  %194 = load float*, float** @Aalign.currentw, align 8
  %195 = load float**, float*** @Aalign.cpmx1, align 8
  %196 = load float**, float*** @Aalign.cpmx2, align 8
  %197 = load float**, float*** @Aalign.floatwork, align 8
  %198 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %194, float** noundef %195, float** noundef %196, i32 noundef 0, i32 noundef %21, float** noundef %197, i32** noundef %198, i32 noundef 1)
  %199 = load i32, i32* @outgap, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %230

201:                                              ; preds = %179
  br label %202

202:                                              ; preds = %213, %201
  %.17 = phi i32 [ 1, %201 ], [ %214, %213 ]
  %.not13 = icmp sgt i32 %.17, %18
  br i1 %.not13, label %215, label %203

203:                                              ; preds = %202
  %204 = load i32, i32* @penalty, align 4
  %205 = sitofp i32 %204 to double
  %206 = load float*, float** @Aalign.initverticalw, align 8
  %207 = zext i32 %.17 to i64
  %208 = getelementptr inbounds float, float* %206, i64 %207
  %209 = load float, float* %208, align 4
  %210 = fpext float %209 to double
  %211 = call double @llvm.fmuladd.f64(double %205, double 5.000000e-01, double %210)
  %212 = fptrunc double %211 to float
  store float %212, float* %208, align 4
  br label %213

213:                                              ; preds = %203
  %214 = add nuw nsw i32 %.17, 1
  br label %202, !llvm.loop !7

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %227, %215
  %.13 = phi i32 [ 1, %215 ], [ %228, %227 ]
  %.not14 = icmp sgt i32 %.13, %21
  br i1 %.not14, label %229, label %217

217:                                              ; preds = %216
  %218 = load i32, i32* @penalty, align 4
  %219 = sitofp i32 %218 to double
  %220 = load float*, float** @Aalign.currentw, align 8
  %221 = zext i32 %.13 to i64
  %222 = getelementptr inbounds float, float* %220, i64 %221
  %223 = load float, float* %222, align 4
  %224 = fpext float %223 to double
  %225 = call double @llvm.fmuladd.f64(double %219, double 5.000000e-01, double %224)
  %226 = fptrunc double %225 to float
  store float %226, float* %222, align 4
  br label %227

227:                                              ; preds = %217
  %228 = add nuw nsw i32 %.13, 1
  br label %216, !llvm.loop !8

229:                                              ; preds = %216
  br label %230

230:                                              ; preds = %229, %179
  br label %231

231:                                              ; preds = %249, %230
  %.24 = phi i32 [ 0, %230 ], [ %250, %249 ]
  %.not = icmp sgt i32 %.24, %21
  br i1 %.not, label %251, label %232

232:                                              ; preds = %231
  %233 = load float*, float** @Aalign.currentw, align 8
  %234 = add nsw i32 %.24, -1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %233, i64 %235
  %237 = load float, float* %236, align 4
  %238 = fpext float %237 to double
  %239 = load i32, i32* @penalty, align 4
  %240 = sitofp i32 %239 to double
  %241 = call double @llvm.fmuladd.f64(double %240, double 5.000000e-01, double %238)
  %242 = fptrunc double %241 to float
  %243 = load float*, float** @Aalign.m, align 8
  %244 = zext i32 %.24 to i64
  %245 = getelementptr inbounds float, float* %243, i64 %244
  store float %242, float* %245, align 4
  %246 = load i32*, i32** @Aalign.mp, align 8
  %247 = zext i32 %.24 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %232
  %250 = add nuw nsw i32 %.24, 1
  br label %231, !llvm.loop !9

251:                                              ; preds = %231
  %252 = load float*, float** @Aalign.currentw, align 8
  %253 = shl i64 %20, 32
  %sext = add i64 %253, -4294967296
  %254 = ashr exact i64 %sext, 32
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = load float*, float** @Aalign.lastverticalw, align 8
  store float %256, float* %257, align 4
  %258 = load i32, i32* @outgap, align 4
  %.not10 = icmp eq i32 %258, 0
  br i1 %.not10, label %261, label %259

259:                                              ; preds = %251
  %260 = add nsw i32 %18, 1
  br label %262

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %259
  %.01 = phi i32 [ %260, %259 ], [ %18, %261 ]
  br label %263

263:                                              ; preds = %399, %262
  %.28 = phi i32 [ 1, %262 ], [ %400, %399 ]
  %.0 = phi float [ 0.000000e+00, %262 ], [ %.1, %399 ]
  %264 = icmp slt i32 %.28, %.01
  br i1 %264, label %265, label %401

265:                                              ; preds = %263
  %266 = load float*, float** @Aalign.previousw, align 8
  %267 = load float*, float** @Aalign.currentw, align 8
  %268 = add nsw i32 %21, 1
  call void @floatncpy(float* noundef %266, float* noundef %267, i32 noundef %268) #9
  %269 = load float*, float** @Aalign.initverticalw, align 8
  %270 = add nsw i32 %.28, -1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  %273 = load float, float* %272, align 4
  %274 = load float*, float** @Aalign.previousw, align 8
  store float %273, float* %274, align 4
  %275 = load float*, float** @Aalign.currentw, align 8
  %276 = load float**, float*** @Aalign.cpmx1, align 8
  %277 = load float**, float*** @Aalign.cpmx2, align 8
  %278 = load float**, float*** @Aalign.floatwork, align 8
  %279 = load i32**, i32*** @Aalign.intwork, align 8
  call void @match_calc(float* noundef %275, float** noundef %276, float** noundef %277, i32 noundef %.28, i32 noundef %21, float** noundef %278, i32** noundef %279, i32 noundef 0)
  %280 = load float*, float** @Aalign.initverticalw, align 8
  %281 = zext i32 %.28 to i64
  %282 = getelementptr inbounds float, float* %280, i64 %281
  %283 = load float, float* %282, align 4
  %284 = load float*, float** @Aalign.currentw, align 8
  store float %283, float* %284, align 4
  %285 = load float*, float** @Aalign.previousw, align 8
  %286 = load float, float* %285, align 4
  %287 = fpext float %286 to double
  %288 = load i32, i32* @penalty, align 4
  %289 = sitofp i32 %288 to double
  %290 = call double @llvm.fmuladd.f64(double %289, double 5.000000e-01, double %287)
  %291 = fptrunc double %290 to float
  store float %291, float* @Aalign.mi, align 4
  store i32 0, i32* @Aalign.mpi, align 4
  br label %292

292:                                              ; preds = %388, %265
  %.35 = phi i32 [ 1, %265 ], [ %389, %388 ]
  %.1 = phi float [ %.0, %265 ], [ %.3, %388 ]
  %.not11 = icmp sgt i32 %.35, %21
  br i1 %.not11, label %390, label %293

293:                                              ; preds = %292
  %294 = load float*, float** @Aalign.previousw, align 8
  %295 = add nsw i32 %.35, -1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = load i32**, i32*** @Aalign.ijp, align 8
  %300 = zext i32 %.28 to i64
  %301 = getelementptr inbounds i32*, i32** %299, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = zext i32 %.35 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32 0, i32* %304, align 4
  %305 = load i32, i32* @penalty, align 4
  %306 = sitofp i32 %305 to double
  %307 = fmul double %306, 5.000000e-01
  %308 = fptrunc double %307 to float
  %309 = load float, float* @Aalign.mi, align 4
  %310 = fadd float %309, %308
  %311 = fcmp ogt float %310, %298
  br i1 %311, label %312, label %320

312:                                              ; preds = %293
  %313 = load i32, i32* @Aalign.mpi, align 4
  %.neg = sub i32 %313, %.35
  %314 = load i32**, i32*** @Aalign.ijp, align 8
  %315 = zext i32 %.28 to i64
  %316 = getelementptr inbounds i32*, i32** %314, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = zext i32 %.35 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32 %.neg, i32* %319, align 4
  br label %320

320:                                              ; preds = %312, %293
  %.2 = phi float [ %310, %312 ], [ %298, %293 ]
  %321 = load i32, i32* @penalty, align 4
  %322 = sitofp i32 %321 to double
  %323 = fmul double %322, 5.000000e-01
  %324 = fptrunc double %323 to float
  %325 = load float*, float** @Aalign.previousw, align 8
  %326 = add nsw i32 %.35, -1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = fadd float %329, %324
  %331 = load float, float* @Aalign.mi, align 4
  %332 = fcmp ugt float %331, %330
  br i1 %332, label %335, label %333

333:                                              ; preds = %320
  store float %330, float* @Aalign.mi, align 4
  %334 = add nsw i32 %.35, -1
  store i32 %334, i32* @Aalign.mpi, align 4
  br label %335

335:                                              ; preds = %333, %320
  %336 = load i32, i32* @penalty, align 4
  %337 = sitofp i32 %336 to double
  %338 = fmul double %337, 5.000000e-01
  %339 = fptrunc double %338 to float
  %340 = load float*, float** @Aalign.m, align 8
  %341 = zext i32 %.35 to i64
  %342 = getelementptr inbounds float, float* %340, i64 %341
  %343 = load float, float* %342, align 4
  %344 = fadd float %343, %339
  %345 = fcmp ogt float %344, %.2
  br i1 %345, label %346, label %358

346:                                              ; preds = %335
  %347 = load i32*, i32** @Aalign.mp, align 8
  %348 = zext i32 %.35 to i64
  %349 = getelementptr inbounds i32, i32* %347, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %.28, %350
  %352 = load i32**, i32*** @Aalign.ijp, align 8
  %353 = zext i32 %.28 to i64
  %354 = getelementptr inbounds i32*, i32** %352, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = zext i32 %.35 to i64
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  store i32 %351, i32* %357, align 4
  br label %358

358:                                              ; preds = %346, %335
  %.3 = phi float [ %344, %346 ], [ %.2, %335 ]
  %359 = load i32, i32* @penalty, align 4
  %360 = sitofp i32 %359 to double
  %361 = fmul double %360, 5.000000e-01
  %362 = fptrunc double %361 to float
  %363 = load float*, float** @Aalign.previousw, align 8
  %364 = add nsw i32 %.35, -1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %363, i64 %365
  %367 = load float, float* %366, align 4
  %368 = fadd float %367, %362
  %369 = load float*, float** @Aalign.m, align 8
  %370 = zext i32 %.35 to i64
  %371 = getelementptr inbounds float, float* %369, i64 %370
  %372 = load float, float* %371, align 4
  %373 = fcmp ugt float %372, %368
  br i1 %373, label %382, label %374

374:                                              ; preds = %358
  %375 = load float*, float** @Aalign.m, align 8
  %376 = zext i32 %.35 to i64
  %377 = getelementptr inbounds float, float* %375, i64 %376
  store float %368, float* %377, align 4
  %378 = add nsw i32 %.28, -1
  %379 = load i32*, i32** @Aalign.mp, align 8
  %380 = zext i32 %.35 to i64
  %381 = getelementptr inbounds i32, i32* %379, i64 %380
  store i32 %378, i32* %381, align 4
  br label %382

382:                                              ; preds = %374, %358
  %383 = load float*, float** @Aalign.currentw, align 8
  %384 = zext i32 %.35 to i64
  %385 = getelementptr inbounds float, float* %383, i64 %384
  %386 = load float, float* %385, align 4
  %387 = fadd float %386, %.3
  store float %387, float* %385, align 4
  br label %388

388:                                              ; preds = %382
  %389 = add nuw nsw i32 %.35, 1
  br label %292, !llvm.loop !10

390:                                              ; preds = %292
  %391 = load float*, float** @Aalign.currentw, align 8
  %392 = shl i64 %20, 32
  %sext12 = add i64 %392, -4294967296
  %393 = ashr exact i64 %sext12, 32
  %394 = getelementptr inbounds float, float* %391, i64 %393
  %395 = load float, float* %394, align 4
  %396 = load float*, float** @Aalign.lastverticalw, align 8
  %397 = zext i32 %.28 to i64
  %398 = getelementptr inbounds float, float* %396, i64 %397
  store float %395, float* %398, align 4
  br label %399

399:                                              ; preds = %390
  %400 = add nuw nsw i32 %.28, 1
  br label %263, !llvm.loop !11

401:                                              ; preds = %263
  %402 = load float*, float** @Aalign.currentw, align 8
  %403 = load float*, float** @Aalign.lastverticalw, align 8
  %404 = load i8**, i8*** @Aalign.mseq1, align 8
  %405 = load i8**, i8*** @Aalign.mseq2, align 8
  %406 = load float**, float*** @Aalign.cpmx1, align 8
  %407 = load float**, float*** @Aalign.cpmx2, align 8
  %408 = load i32**, i32*** @Aalign.ijp, align 8
  %409 = call float @Atracking(float* noundef %402, float* noundef %403, i8** noundef nonnull %0, i8** noundef nonnull %1, i8** noundef %404, i8** noundef %405, float** noundef %406, float** noundef %407, i32** noundef %408, i32 noundef %4, i32 noundef %5)
  %410 = load i8**, i8*** @Aalign.mseq1, align 8
  %411 = load i8*, i8** %410, align 8
  %412 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %411) #10
  %413 = trunc i64 %412 to i32
  %414 = icmp sgt i32 %413, %6
  br i1 %414, label %417, label %415

415:                                              ; preds = %401
  %416 = icmp sgt i32 %413, 5000000
  br i1 %416, label %417, label %420

417:                                              ; preds = %415, %401
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %419 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %418, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 noundef %6, i32 noundef %413, i32 noundef 5000000) #11
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #9
  br label %420

420:                                              ; preds = %417, %415
  br label %421

421:                                              ; preds = %432, %420
  %.39 = phi i32 [ 0, %420 ], [ %433, %432 ]
  %422 = icmp slt i32 %.39, %4
  br i1 %422, label %423, label %434

423:                                              ; preds = %421
  %424 = zext i32 %.39 to i64
  %425 = getelementptr inbounds i8*, i8** %0, i64 %424
  %426 = load i8*, i8** %425, align 8
  %427 = load i8**, i8*** @Aalign.mseq1, align 8
  %428 = zext i32 %.39 to i64
  %429 = getelementptr inbounds i8*, i8** %427, i64 %428
  %430 = load i8*, i8** %429, align 8
  %431 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %426, i8* noundef nonnull dereferenceable(1) %430) #9
  br label %432

432:                                              ; preds = %423
  %433 = add nuw nsw i32 %.39, 1
  br label %421, !llvm.loop !12

434:                                              ; preds = %421
  br label %435

435:                                              ; preds = %446, %434
  %.4 = phi i32 [ 0, %434 ], [ %447, %446 ]
  %436 = icmp slt i32 %.4, %5
  br i1 %436, label %437, label %448

437:                                              ; preds = %435
  %438 = zext i32 %.4 to i64
  %439 = getelementptr inbounds i8*, i8** %1, i64 %438
  %440 = load i8*, i8** %439, align 8
  %441 = load i8**, i8*** @Aalign.mseq2, align 8
  %442 = zext i32 %.4 to i64
  %443 = getelementptr inbounds i8*, i8** %441, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %440, i8* noundef nonnull dereferenceable(1) %444) #9
  br label %446

446:                                              ; preds = %437
  %447 = add nuw nsw i32 %.4, 1
  br label %435, !llvm.loop !13

448:                                              ; preds = %435
  ret float %.0
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
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

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @match_calc(float* nocapture noundef %0, float** nocapture noundef readonly %1, float** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float** nocapture noundef readonly %5, i32** nocapture noundef readonly %6, i32 noundef %7) #3 {
  %9 = alloca [26 x float], align 16
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %54, label %10

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %51, %10
  %.05 = phi i32 [ 0, %10 ], [ %52, %51 ]
  %12 = icmp slt i32 %.05, %4
  br i1 %12, label %13, label %53

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %43, %13
  %.01 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %13 ], [ %.1, %43 ]
  %15 = icmp ult i32 %.01, 26
  br i1 %15, label %16, label %45

16:                                               ; preds = %14
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds float*, float** %2, i64 %17
  %19 = load float*, float** %18, align 8
  %20 = zext i32 %.05 to i64
  %21 = getelementptr inbounds float, float* %19, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds float*, float** %2, i64 %25
  %27 = load float*, float** %26, align 8
  %28 = zext i32 %.05 to i64
  %29 = getelementptr inbounds float, float* %27, i64 %28
  %30 = load float, float* %29, align 4
  %31 = sext i32 %.0 to i64
  %32 = getelementptr inbounds float*, float** %5, i64 %31
  %33 = load float*, float** %32, align 8
  %34 = zext i32 %.05 to i64
  %35 = getelementptr inbounds float, float* %33, i64 %34
  store float %30, float* %35, align 4
  %36 = sext i32 %.0 to i64
  %37 = getelementptr inbounds i32*, i32** %6, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = zext i32 %.05 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %.01, i32* %40, align 4
  %41 = add nsw i32 %.0, 1
  br label %42

42:                                               ; preds = %24, %16
  %.1 = phi i32 [ %41, %24 ], [ %.0, %16 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !14

45:                                               ; preds = %14
  %46 = sext i32 %.0 to i64
  %47 = getelementptr inbounds i32*, i32** %6, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = zext i32 %.05 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = add nuw nsw i32 %.05, 1
  br label %11, !llvm.loop !15

53:                                               ; preds = %11
  br label %54

54:                                               ; preds = %53, %8
  br label %55

55:                                               ; preds = %81, %54
  %.12 = phi i32 [ 0, %54 ], [ %82, %81 ]
  %56 = icmp ult i32 %.12, 26
  br i1 %56, label %57, label %83

57:                                               ; preds = %55
  %58 = zext i32 %.12 to i64
  %59 = getelementptr inbounds [26 x float], [26 x float]* %9, i64 0, i64 %58
  store float 0.000000e+00, float* %59, align 4
  br label %60

60:                                               ; preds = %78, %57
  %.03 = phi i32 [ 0, %57 ], [ %79, %78 ]
  %61 = icmp ult i32 %.03, 26
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  %63 = zext i32 %.03 to i64
  %64 = zext i32 %.12 to i64
  %65 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i64 0, i64 %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to float
  %68 = zext i32 %.03 to i64
  %69 = getelementptr inbounds float*, float** %1, i64 %68
  %70 = load float*, float** %69, align 8
  %71 = sext i32 %3 to i64
  %72 = getelementptr inbounds float, float* %70, i64 %71
  %73 = load float, float* %72, align 4
  %74 = zext i32 %.12 to i64
  %75 = getelementptr inbounds [26 x float], [26 x float]* %9, i64 0, i64 %74
  %76 = load float, float* %75, align 4
  %77 = call float @llvm.fmuladd.f32(float %67, float %73, float %76)
  store float %77, float* %75, align 4
  br label %78

78:                                               ; preds = %62
  %79 = add nuw nsw i32 %.03, 1
  br label %60, !llvm.loop !16

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80
  %82 = add nuw nsw i32 %.12, 1
  br label %55, !llvm.loop !17

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %120, %83
  %.16 = phi i32 [ 0, %83 ], [ %121, %120 ]
  %85 = icmp slt i32 %.16, %4
  br i1 %85, label %86, label %122

86:                                               ; preds = %84
  %87 = zext i32 %.16 to i64
  %88 = getelementptr inbounds float, float* %0, i64 %87
  store float 0.000000e+00, float* %88, align 4
  br label %89

89:                                               ; preds = %117, %86
  %.14 = phi i32 [ 0, %86 ], [ %118, %117 ]
  %90 = zext i32 %.14 to i64
  %91 = getelementptr inbounds i32*, i32** %6, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = zext i32 %.16 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %119

97:                                               ; preds = %89
  %98 = zext i32 %.14 to i64
  %99 = getelementptr inbounds i32*, i32** %6, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = zext i32 %.16 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [26 x float], [26 x float]* %9, i64 0, i64 %104
  %106 = load float, float* %105, align 4
  %107 = zext i32 %.14 to i64
  %108 = getelementptr inbounds float*, float** %5, i64 %107
  %109 = load float*, float** %108, align 8
  %110 = zext i32 %.16 to i64
  %111 = getelementptr inbounds float, float* %109, i64 %110
  %112 = load float, float* %111, align 4
  %113 = zext i32 %.16 to i64
  %114 = getelementptr inbounds float, float* %0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = call float @llvm.fmuladd.f32(float %106, float %112, float %115)
  store float %116, float* %114, align 4
  br label %117

117:                                              ; preds = %97
  %118 = add nuw nsw i32 %.14, 1
  br label %89, !llvm.loop !18

119:                                              ; preds = %89
  br label %120

120:                                              ; preds = %119
  %121 = add nuw nsw i32 %.16, 1
  br label %84, !llvm.loop !19

122:                                              ; preds = %84
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare dso_local void @floatncpy(float* noundef, float* noundef, i32 noundef) #1

; Function Attrs: nofree noinline nounwind uwtable
define internal float @Atracking(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i8** nocapture noundef %4, i8** nocapture noundef %5, float** nocapture noundef readnone %6, float** nocapture noundef readnone %7, i32** nocapture noundef readonly %8, i32 noundef %9, i32 noundef %10) #5 {
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #10
  %14 = trunc i64 %13 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #10
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @outgap, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %64

21:                                               ; preds = %11
  %22 = load float, float* %1, align 4
  br label %23

23:                                               ; preds = %41, %21
  %.016 = phi i32 [ 0, %21 ], [ %42, %41 ]
  %.0 = phi float [ %22, %21 ], [ %.1, %41 ]
  %24 = icmp slt i32 %.016, %14
  br i1 %24, label %25, label %43

25:                                               ; preds = %23
  %26 = zext i32 %.016 to i64
  %27 = getelementptr inbounds float, float* %1, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fcmp ult float %28, %.0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = zext i32 %.016 to i64
  %32 = getelementptr inbounds float, float* %1, i64 %31
  %33 = load float, float* %32, align 4
  %34 = sub nsw i32 %14, %.016
  %sext29 = shl i64 %13, 32
  %35 = ashr exact i64 %sext29, 32
  %36 = getelementptr inbounds i32*, i32** %8, i64 %35
  %37 = load i32*, i32** %36, align 8
  %sext30 = shl i64 %16, 32
  %38 = ashr exact i64 %sext30, 32
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %25
  %.1 = phi float [ %33, %30 ], [ %.0, %25 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.016, 1
  br label %23, !llvm.loop !20

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %61, %43
  %.012 = phi i32 [ 0, %43 ], [ %62, %61 ]
  %.2 = phi float [ %.0, %43 ], [ %.3, %61 ]
  %45 = icmp slt i32 %.012, %17
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  %47 = zext i32 %.012 to i64
  %48 = getelementptr inbounds float, float* %0, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fcmp ult float %49, %.2
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = zext i32 %.012 to i64
  %53 = getelementptr inbounds float, float* %0, i64 %52
  %54 = load float, float* %53, align 4
  %.neg = sub i32 %.012, %17
  %sext27 = shl i64 %13, 32
  %55 = ashr exact i64 %sext27, 32
  %56 = getelementptr inbounds i32*, i32** %8, i64 %55
  %57 = load i32*, i32** %56, align 8
  %sext28 = shl i64 %16, 32
  %58 = ashr exact i64 %sext28, 32
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %.neg, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %46
  %.3 = phi float [ %54, %51 ], [ %.2, %46 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %.012, 1
  br label %44, !llvm.loop !21

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %20
  br label %65

65:                                               ; preds = %71, %64
  %.117 = phi i32 [ 0, %64 ], [ %72, %71 ]
  %.not = icmp sgt i32 %.117, %14
  br i1 %.not, label %73, label %66

66:                                               ; preds = %65
  %67 = add nuw nsw i32 %.117, 1
  %68 = zext i32 %.117 to i64
  %69 = getelementptr inbounds i32*, i32** %8, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66
  %72 = add nuw nsw i32 %.117, 1
  br label %65, !llvm.loop !22

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %80, %73
  %.113 = phi i32 [ 0, %73 ], [ %81, %80 ]
  %.not22 = icmp sgt i32 %.113, %17
  br i1 %.not22, label %82, label %75

75:                                               ; preds = %74
  %76 = xor i32 %.113, -1
  %77 = load i32*, i32** %8, align 8
  %78 = zext i32 %.113 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i32 %.113, 1
  br label %74, !llvm.loop !23

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %95, %82
  %.218 = phi i32 [ 0, %82 ], [ %96, %95 ]
  %84 = icmp slt i32 %.218, %9
  br i1 %84, label %85, label %97

85:                                               ; preds = %83
  %86 = add i64 %13, %16
  %87 = zext i32 %.218 to i64
  %88 = getelementptr inbounds i8*, i8** %4, i64 %87
  %89 = load i8*, i8** %88, align 8
  %sext26 = shl i64 %86, 32
  %90 = ashr exact i64 %sext26, 32
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %88, align 8
  %92 = zext i32 %.218 to i64
  %93 = getelementptr inbounds i8*, i8** %4, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %85
  %96 = add nuw nsw i32 %.218, 1
  br label %83, !llvm.loop !24

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %110, %97
  %.214 = phi i32 [ 0, %97 ], [ %111, %110 ]
  %99 = icmp slt i32 %.214, %10
  br i1 %99, label %100, label %112

100:                                              ; preds = %98
  %101 = add i64 %13, %16
  %102 = zext i32 %.214 to i64
  %103 = getelementptr inbounds i8*, i8** %5, i64 %102
  %104 = load i8*, i8** %103, align 8
  %sext = shl i64 %101, 32
  %105 = ashr exact i64 %sext, 32
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %103, align 8
  %107 = zext i32 %.214 to i64
  %108 = getelementptr inbounds i8*, i8** %5, i64 %107
  %109 = load i8*, i8** %108, align 8
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %100
  %111 = add nuw nsw i32 %.214, 1
  br label %98, !llvm.loop !25

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %254, %112
  %.09 = phi i32 [ 0, %112 ], [ %255, %254 ]
  %.06 = phi i32 [ %14, %112 ], [ %.14, %254 ]
  %.05 = phi i32 [ %17, %112 ], [ %.12, %254 ]
  %114 = add nsw i32 %14, %17
  %.not23 = icmp sgt i32 %.09, %114
  br i1 %.not23, label %.loopexit, label %115

115:                                              ; preds = %113
  %116 = sext i32 %.06 to i64
  %117 = getelementptr inbounds i32*, i32** %8, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = sext i32 %.05 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = add nsw i32 %.06, -1
  %125 = sext i32 %.06 to i64
  %126 = getelementptr inbounds i32*, i32** %8, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = sext i32 %.05 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  br label %150

131:                                              ; preds = %115
  %132 = sext i32 %.06 to i64
  %133 = getelementptr inbounds i32*, i32** %8, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = sext i32 %.05 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = sext i32 %.06 to i64
  %141 = getelementptr inbounds i32*, i32** %8, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = sext i32 %.05 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %.06, %145
  br label %149

147:                                              ; preds = %131
  %148 = add nsw i32 %.06, -1
  br label %149

149:                                              ; preds = %147, %139
  %.03 = phi i32 [ %146, %139 ], [ %148, %147 ]
  br label %150

150:                                              ; preds = %149, %123
  %.14 = phi i32 [ %124, %123 ], [ %.03, %149 ]
  %.pn = phi i32 [ %130, %123 ], [ -1, %149 ]
  %.12 = add nsw i32 %.05, %.pn
  %151 = sub nsw i32 %.06, %.14
  br label %152

152:                                              ; preds = %181, %150
  %.110 = phi i32 [ %.09, %150 ], [ %182, %181 ]
  %.07 = phi i32 [ %151, %150 ], [ %153, %181 ]
  %153 = add nsw i32 %.07, -1
  %.not24 = icmp eq i32 %153, 0
  br i1 %.not24, label %183, label %154

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %169, %154
  %.319 = phi i32 [ 0, %154 ], [ %170, %169 ]
  %156 = icmp slt i32 %.319, %9
  br i1 %156, label %157, label %171

157:                                              ; preds = %155
  %158 = zext i32 %.319 to i64
  %159 = getelementptr inbounds i8*, i8** %2, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = add nsw i32 %.14, %153
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i32 %.319 to i64
  %166 = getelementptr inbounds i8*, i8** %4, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 -1
  store i8* %168, i8** %166, align 8
  store i8 %164, i8* %168, align 1
  br label %169

169:                                              ; preds = %157
  %170 = add nuw nsw i32 %.319, 1
  br label %155, !llvm.loop !26

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %179, %171
  %.315 = phi i32 [ 0, %171 ], [ %180, %179 ]
  %173 = icmp slt i32 %.315, %10
  br i1 %173, label %174, label %181

174:                                              ; preds = %172
  %175 = zext i32 %.315 to i64
  %176 = getelementptr inbounds i8*, i8** %5, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 -1
  store i8* %178, i8** %176, align 8
  store i8 45, i8* %178, align 1
  br label %179

179:                                              ; preds = %174
  %180 = add nuw nsw i32 %.315, 1
  br label %172, !llvm.loop !27

181:                                              ; preds = %172
  %182 = add nsw i32 %.110, 1
  br label %152, !llvm.loop !28

183:                                              ; preds = %152
  %184 = sub i32 0, %.pn
  br label %185

185:                                              ; preds = %214, %183
  %.211 = phi i32 [ %.110, %183 ], [ %215, %214 ]
  %.18 = phi i32 [ %184, %183 ], [ %186, %214 ]
  %186 = add nsw i32 %.18, -1
  %.not25 = icmp eq i32 %186, 0
  br i1 %.not25, label %216, label %187

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %195, %187
  %.420 = phi i32 [ 0, %187 ], [ %196, %195 ]
  %189 = icmp slt i32 %.420, %9
  br i1 %189, label %190, label %197

190:                                              ; preds = %188
  %191 = zext i32 %.420 to i64
  %192 = getelementptr inbounds i8*, i8** %4, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 -1
  store i8* %194, i8** %192, align 8
  store i8 45, i8* %194, align 1
  br label %195

195:                                              ; preds = %190
  %196 = add nuw nsw i32 %.420, 1
  br label %188, !llvm.loop !29

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %212, %197
  %.4 = phi i32 [ 0, %197 ], [ %213, %212 ]
  %199 = icmp slt i32 %.4, %10
  br i1 %199, label %200, label %214

200:                                              ; preds = %198
  %201 = zext i32 %.4 to i64
  %202 = getelementptr inbounds i8*, i8** %3, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = add nsw i32 %.12, %186
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i32 %.4 to i64
  %209 = getelementptr inbounds i8*, i8** %5, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 -1
  store i8* %211, i8** %209, align 8
  store i8 %207, i8* %211, align 1
  br label %212

212:                                              ; preds = %200
  %213 = add nuw nsw i32 %.4, 1
  br label %198, !llvm.loop !30

214:                                              ; preds = %198
  %215 = add nsw i32 %.211, 1
  br label %185, !llvm.loop !31

216:                                              ; preds = %185
  %217 = icmp slt i32 %.06, 1
  br i1 %217, label %220, label %218

218:                                              ; preds = %216
  %219 = icmp slt i32 %.05, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %218, %216
  br label %256

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %235, %221
  %.521 = phi i32 [ 0, %221 ], [ %236, %235 ]
  %223 = icmp slt i32 %.521, %9
  br i1 %223, label %224, label %237

224:                                              ; preds = %222
  %225 = zext i32 %.521 to i64
  %226 = getelementptr inbounds i8*, i8** %2, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = sext i32 %.14 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i32 %.521 to i64
  %232 = getelementptr inbounds i8*, i8** %4, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 -1
  store i8* %234, i8** %232, align 8
  store i8 %230, i8* %234, align 1
  br label %235

235:                                              ; preds = %224
  %236 = add nuw nsw i32 %.521, 1
  br label %222, !llvm.loop !32

237:                                              ; preds = %222
  br label %238

238:                                              ; preds = %251, %237
  %.5 = phi i32 [ 0, %237 ], [ %252, %251 ]
  %239 = icmp slt i32 %.5, %10
  br i1 %239, label %240, label %253

240:                                              ; preds = %238
  %241 = zext i32 %.5 to i64
  %242 = getelementptr inbounds i8*, i8** %3, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = sext i32 %.12 to i64
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i32 %.5 to i64
  %248 = getelementptr inbounds i8*, i8** %5, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 -1
  store i8* %250, i8** %248, align 8
  store i8 %246, i8* %250, align 1
  br label %251

251:                                              ; preds = %240
  %252 = add nuw nsw i32 %.5, 1
  br label %238, !llvm.loop !33

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %253
  %255 = add nsw i32 %.211, 2
  br label %113, !llvm.loop !34

.loopexit:                                        ; preds = %113
  br label %256

256:                                              ; preds = %.loopexit, %220
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

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
