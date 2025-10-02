; ModuleID = './genGalign11.ll'
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
define dso_local float @genG__align11(i8** nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @penalty, align 4
  %5 = sitofp i32 %4 to float
  %6 = load i32, i32* @penalty_OP, align 4
  %7 = sitofp i32 %6 to float
  %8 = load i32, i32* @penalty_ex, align 4
  %9 = sitofp i32 %8 to float
  %10 = load i32, i32* @genG__align11.orlgth1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @njob, align 4
  %14 = call i8** @AllocateCharMtx(i32 noundef %13, i32 noundef 0) #7
  store i8** %14, i8*** @genG__align11.mseq1, align 8
  %15 = load i32, i32* @njob, align 4
  %16 = call i8** @AllocateCharMtx(i32 noundef %15, i32 noundef 0) #7
  store i8** %16, i8*** @genG__align11.mseq2, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %0, align 8
  %19 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %18) #8
  %20 = trunc i64 %19 to i32
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %21) #8
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %20, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = icmp slt i32 %23, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25, %17
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %20, i32 noundef %23) #9
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* @genG__align11.orlgth1, align 4
  %32 = icmp slt i32 %31, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @genG__align11.orlgth2, align 4
  %35 = icmp slt i32 %34, %23
  br i1 %35, label %36, label %125

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @genG__align11.orlgth1, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* @genG__align11.orlgth2, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load float*, float** @genG__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %43) #7
  %44 = load float*, float** @genG__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %44) #7
  %45 = load float*, float** @genG__align11.match, align 8
  call void @FreeFloatVec(float* noundef %45) #7
  %46 = load float*, float** @genG__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %46) #7
  %47 = load float*, float** @genG__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %47) #7
  %48 = load float*, float** @genG__align11.m, align 8
  call void @FreeFloatVec(float* noundef %48) #7
  %49 = load i32*, i32** @genG__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %49) #7
  %50 = load float*, float** @genG__align11.largeM, align 8
  call void @FreeFloatVec(float* noundef %50) #7
  %51 = load i32*, i32** @genG__align11.Mp, align 8
  call void @FreeIntVec(i32* noundef %51) #7
  %52 = load i8**, i8*** @genG__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %52) #7
  %53 = load float**, float*** @genG__align11.cpmx1, align 8
  call void @FreeFloatMtx(float** noundef %53) #7
  %54 = load float**, float*** @genG__align11.cpmx2, align 8
  call void @FreeFloatMtx(float** noundef %54) #7
  %55 = load float**, float*** @genG__align11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %55) #7
  %56 = load i32**, i32*** @genG__align11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %56) #7
  br label %57

57:                                               ; preds = %42, %39, %36
  %58 = sitofp i32 %20 to double
  %59 = fmul double %58, 1.300000e+00
  %60 = fptosi double %59 to i32
  %61 = load i32, i32* @genG__align11.orlgth1, align 4
  %62 = icmp slt i32 %61, %60
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = sitofp i32 %20 to double
  %65 = fmul double %64, 1.300000e+00
  %66 = fptosi double %65 to i32
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @genG__align11.orlgth1, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %66, %63 ], [ %68, %67 ]
  %71 = add nsw i32 %70, 100
  %72 = sitofp i32 %23 to double
  %73 = fmul double %72, 1.300000e+00
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* @genG__align11.orlgth2, align 4
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = sitofp i32 %23 to double
  %79 = fmul double %78, 1.300000e+00
  %80 = fptosi double %79 to i32
  br label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @genG__align11.orlgth2, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i32 [ %80, %77 ], [ %82, %81 ]
  %85 = add nsw i32 %84, 100
  %86 = add nsw i32 %84, 102
  %87 = call float* @AllocateFloatVec(i32 noundef %86) #7
  store float* %87, float** @genG__align11.w1, align 8
  %88 = add nsw i32 %84, 102
  %89 = call float* @AllocateFloatVec(i32 noundef %88) #7
  store float* %89, float** @genG__align11.w2, align 8
  %90 = add nsw i32 %84, 102
  %91 = call float* @AllocateFloatVec(i32 noundef %90) #7
  store float* %91, float** @genG__align11.match, align 8
  %92 = add nsw i32 %70, 102
  %93 = call float* @AllocateFloatVec(i32 noundef %92) #7
  store float* %93, float** @genG__align11.initverticalw, align 8
  %94 = add nsw i32 %70, 102
  %95 = call float* @AllocateFloatVec(i32 noundef %94) #7
  store float* %95, float** @genG__align11.lastverticalw, align 8
  %96 = add nsw i32 %84, 102
  %97 = call float* @AllocateFloatVec(i32 noundef %96) #7
  store float* %97, float** @genG__align11.m, align 8
  %98 = add nsw i32 %84, 102
  %99 = call i32* @AllocateIntVec(i32 noundef %98) #7
  store i32* %99, i32** @genG__align11.mp, align 8
  %100 = add nsw i32 %84, 102
  %101 = call float* @AllocateFloatVec(i32 noundef %100) #7
  store float* %101, float** @genG__align11.largeM, align 8
  %102 = add nsw i32 %84, 102
  %103 = call i32* @AllocateIntVec(i32 noundef %102) #7
  store i32* %103, i32** @genG__align11.Mp, align 8
  %104 = load i32, i32* @njob, align 4
  %105 = add nsw i32 %71, %85
  %106 = call i8** @AllocateCharMtx(i32 noundef %104, i32 noundef %105) #7
  store i8** %106, i8*** @genG__align11.mseq, align 8
  %107 = add nsw i32 %70, 102
  %108 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %107) #7
  store float** %108, float*** @genG__align11.cpmx1, align 8
  %109 = add nsw i32 %84, 102
  %110 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %109) #7
  store float** %110, float*** @genG__align11.cpmx2, align 8
  %111 = icmp sgt i32 %70, %84
  br i1 %111, label %112, label %113

112:                                              ; preds = %83
  br label %114

113:                                              ; preds = %83
  br label %114

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %71, %112 ], [ %85, %113 ]
  %116 = add nsw i32 %115, 2
  %117 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %116) #7
  store float** %117, float*** @genG__align11.floatwork, align 8
  %118 = icmp sgt i32 %70, %84
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %121

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi i32 [ %71, %119 ], [ %85, %120 ]
  %123 = add nsw i32 %122, 2
  %124 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %123) #7
  store i32** %124, i32*** @genG__align11.intwork, align 8
  store i32 %70, i32* @genG__align11.orlgth1, align 4
  store i32 %84, i32* @genG__align11.orlgth2, align 4
  br label %125

125:                                              ; preds = %121, %33
  %126 = load i8**, i8*** @genG__align11.mseq, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i8**, i8*** @genG__align11.mseq1, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i8**, i8*** @genG__align11.mseq, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** @genG__align11.mseq2, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* @genG__align11.orlgth1, align 4
  %134 = load i32, i32* @commonAlloc1, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* @genG__align11.orlgth2, align 4
  %138 = load i32, i32* @commonAlloc2, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %136, %125
  %141 = load i32, i32* @commonAlloc1, align 4
  %.not36 = icmp eq i32 %141, 0
  br i1 %.not36, label %147, label %142

142:                                              ; preds = %140
  %143 = load i32, i32* @commonAlloc2, align 4
  %.not38 = icmp eq i32 %143, 0
  br i1 %.not38, label %147, label %144

144:                                              ; preds = %142
  %145 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %145) #7
  %146 = load i32**, i32*** @commonJP, align 8
  call void @FreeIntMtx(i32** noundef %146) #7
  br label %147

147:                                              ; preds = %144, %142, %140
  %148 = load i32, i32* @genG__align11.orlgth1, align 4
  %149 = load i32, i32* @commonAlloc1, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %153

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %151
  %.in = phi i32* [ @genG__align11.orlgth1, %151 ], [ @commonAlloc1, %152 ]
  %154 = load i32, i32* %.in, align 4
  %155 = load i32, i32* @genG__align11.orlgth2, align 4
  %156 = load i32, i32* @commonAlloc2, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %160

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %158
  %.in37 = phi i32* [ @genG__align11.orlgth2, %158 ], [ @commonAlloc2, %159 ]
  %161 = load i32, i32* %.in37, align 4
  %162 = add nsw i32 %154, 10
  %163 = add nsw i32 %161, 10
  %164 = call i32** @AllocateIntMtx(i32 noundef %162, i32 noundef %163) #7
  store i32** %164, i32*** @commonIP, align 8
  %165 = add nsw i32 %154, 10
  %166 = add nsw i32 %161, 10
  %167 = call i32** @AllocateIntMtx(i32 noundef %165, i32 noundef %166) #7
  store i32** %167, i32*** @commonJP, align 8
  store i32 %154, i32* @commonAlloc1, align 4
  store i32 %161, i32* @commonAlloc2, align 4
  br label %168

168:                                              ; preds = %160, %136
  %169 = load i32**, i32*** @commonIP, align 8
  store i32** %169, i32*** @genG__align11.ijpi, align 8
  %170 = load i32**, i32*** @commonJP, align 8
  store i32** %170, i32*** @genG__align11.ijpj, align 8
  %171 = load float*, float** @genG__align11.w1, align 8
  %172 = load float*, float** @genG__align11.w2, align 8
  %173 = load float*, float** @genG__align11.initverticalw, align 8
  call void @match_calc(float* noundef %173, i8** noundef nonnull %1, i8** noundef nonnull %0, i32 noundef 0, i32 noundef %20)
  call void @match_calc(float* noundef %171, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef %23)
  %174 = load i32, i32* @outgap, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %196

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %184, %176
  %.07 = phi i32 [ 1, %176 ], [ %185, %184 ]
  %.not34 = icmp sgt i32 %.07, %20
  br i1 %.not34, label %186, label %178

178:                                              ; preds = %177
  %179 = load float*, float** @genG__align11.initverticalw, align 8
  %180 = zext i32 %.07 to i64
  %181 = getelementptr inbounds float, float* %179, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fadd float %182, %5
  store float %183, float* %181, align 4
  br label %184

184:                                              ; preds = %178
  %185 = add nuw nsw i32 %.07, 1
  br label %177, !llvm.loop !4

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %193, %186
  %.09 = phi i32 [ 1, %186 ], [ %194, %193 ]
  %.not35 = icmp sgt i32 %.09, %23
  br i1 %.not35, label %195, label %188

188:                                              ; preds = %187
  %189 = zext i32 %.09 to i64
  %190 = getelementptr inbounds float, float* %171, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fadd float %191, %5
  store float %192, float* %190, align 4
  br label %193

193:                                              ; preds = %188
  %194 = add nuw nsw i32 %.09, 1
  br label %187, !llvm.loop !6

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %168
  br label %197

197:                                              ; preds = %219, %196
  %.110 = phi i32 [ 1, %196 ], [ %220, %219 ]
  %.not = icmp sgt i32 %.110, %23
  br i1 %.not, label %221, label %198

198:                                              ; preds = %197
  %199 = add nsw i32 %.110, -1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %171, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float*, float** @genG__align11.m, align 8
  %204 = zext i32 %.110 to i64
  %205 = getelementptr inbounds float, float* %203, i64 %204
  store float %202, float* %205, align 4
  %206 = load i32*, i32** @genG__align11.mp, align 8
  %207 = zext i32 %.110 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 0, i32* %208, align 4
  %209 = add nsw i32 %.110, -1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %171, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float*, float** @genG__align11.largeM, align 8
  %214 = zext i32 %.110 to i64
  %215 = getelementptr inbounds float, float* %213, i64 %214
  store float %212, float* %215, align 4
  %216 = load i32*, i32** @genG__align11.Mp, align 8
  %217 = zext i32 %.110 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %198
  %220 = add nuw nsw i32 %.110, 1
  br label %197, !llvm.loop !7

221:                                              ; preds = %197
  %222 = icmp eq i32 %23, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = load float*, float** @genG__align11.lastverticalw, align 8
  store float 0.000000e+00, float* %224, align 4
  br label %231

225:                                              ; preds = %221
  %226 = shl i64 %22, 32
  %sext = add i64 %226, -4294967296
  %227 = ashr exact i64 %sext, 32
  %228 = getelementptr inbounds float, float* %171, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float*, float** @genG__align11.lastverticalw, align 8
  store float %229, float* %230, align 4
  br label %231

231:                                              ; preds = %225, %223
  %232 = load i32, i32* @outgap, align 4
  %.not26 = icmp eq i32 %232, 0
  br i1 %.not26, label %235, label %233

233:                                              ; preds = %231
  %234 = add nsw i32 %20, 1
  br label %236

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %235, %233
  %.012 = phi i32 [ %234, %233 ], [ %20, %235 ]
  br label %237

237:                                              ; preds = %345, %236
  %.020 = phi float* [ %172, %236 ], [ %.019, %345 ]
  %.019 = phi float* [ %171, %236 ], [ %.020, %345 ]
  %.016 = phi float [ 0.000000e+00, %236 ], [ %.117, %345 ]
  %.18 = phi i32 [ 1, %236 ], [ %346, %345 ]
  %238 = icmp slt i32 %.18, %.012
  br i1 %238, label %239, label %347

239:                                              ; preds = %237
  %240 = load float*, float** @genG__align11.initverticalw, align 8
  %241 = add nsw i32 %.18, -1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  store float %244, float* %.019, align 4
  call void @match_calc(float* noundef %.020, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef %.18, i32 noundef %23)
  %245 = load float*, float** @genG__align11.initverticalw, align 8
  %246 = zext i32 %.18 to i64
  %247 = getelementptr inbounds float, float* %245, i64 %246
  %248 = load float, float* %247, align 4
  store float %248, float* %.020, align 4
  %249 = load float, float* %.019, align 4
  store float %249, float* @genG__align11.mi, align 4
  store i32 0, i32* @genG__align11.mpi, align 4
  %250 = load float, float* %.019, align 4
  store float %250, float* @genG__align11.Mi, align 4
  store i32 0, i32* @genG__align11.Mpi, align 4
  %251 = load i32**, i32*** @genG__align11.ijpi, align 8
  %252 = zext i32 %.18 to i64
  %253 = getelementptr inbounds i32*, i32** %251, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = load i32**, i32*** @genG__align11.ijpj, align 8
  %256 = zext i32 %.18 to i64
  %257 = getelementptr inbounds i32*, i32** %255, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load float*, float** @genG__align11.m, align 8
  %260 = load float*, float** @genG__align11.largeM, align 8
  %261 = load i32*, i32** @genG__align11.mp, align 8
  %262 = load i32*, i32** @genG__align11.Mp, align 8
  br label %263

263:                                              ; preds = %334, %239
  %.pn = phi i32* [ %254, %239 ], [ %.025, %334 ]
  %.pn29 = phi i32* [ %258, %239 ], [ %.024, %334 ]
  %.pn30 = phi float* [ %259, %239 ], [ %.023, %334 ]
  %.pn31 = phi float* [ %260, %239 ], [ %.022, %334 ]
  %.021 = phi float* [ %.019, %239 ], [ %335, %334 ]
  %.117 = phi float [ %.016, %239 ], [ %.4, %334 ]
  %.020.pn = phi float* [ %.020, %239 ], [ %.015, %334 ]
  %.pn32 = phi i32* [ %261, %239 ], [ %.014, %334 ]
  %.pn33 = phi i32* [ %262, %239 ], [ %.013, %334 ]
  %.211 = phi i32 [ 1, %239 ], [ %336, %334 ]
  %.04 = phi float [ -1.000000e+07, %239 ], [ %.26, %334 ]
  %.01 = phi i32 [ 0, %239 ], [ %.23, %334 ]
  %.0 = phi i32 [ 0, %239 ], [ %.2, %334 ]
  %.013 = getelementptr inbounds i32, i32* %.pn33, i64 1
  %.014 = getelementptr inbounds i32, i32* %.pn32, i64 1
  %.022 = getelementptr inbounds float, float* %.pn31, i64 1
  %.023 = getelementptr inbounds float, float* %.pn30, i64 1
  %.024 = getelementptr inbounds i32, i32* %.pn29, i64 1
  %.025 = getelementptr inbounds i32, i32* %.pn, i64 1
  %.015 = getelementptr inbounds float, float* %.020.pn, i64 1
  %.not27 = icmp sgt i32 %.211, %23
  br i1 %.not27, label %337, label %264

264:                                              ; preds = %263
  %265 = load float, float* %.021, align 4
  %266 = add nsw i32 %.18, -1
  store i32 %266, i32* %.025, align 4
  %267 = add nsw i32 %.211, -1
  store i32 %267, i32* %.024, align 4
  %268 = load float, float* @genG__align11.mi, align 4
  %269 = fadd float %268, %5
  %270 = fcmp ogt float %269, %265
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @genG__align11.mpi, align 4
  store i32 %272, i32* %.024, align 4
  br label %273

273:                                              ; preds = %271, %264
  %.218 = phi float [ %269, %271 ], [ %265, %264 ]
  %274 = load float, float* %.021, align 4
  %275 = load float, float* @genG__align11.mi, align 4
  %276 = fcmp ult float %274, %275
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  store float %274, float* @genG__align11.mi, align 4
  %278 = add nsw i32 %.211, -1
  store i32 %278, i32* @genG__align11.mpi, align 4
  br label %279

279:                                              ; preds = %277, %273
  %280 = load float, float* @genG__align11.mi, align 4
  %281 = fadd float %280, %9
  store float %281, float* @genG__align11.mi, align 4
  %282 = load float, float* %.023, align 4
  %283 = fadd float %282, %5
  %284 = fcmp ogt float %283, %.218
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i32, i32* %.014, align 4
  store i32 %286, i32* %.025, align 4
  %287 = add nsw i32 %.211, -1
  store i32 %287, i32* %.024, align 4
  br label %288

288:                                              ; preds = %285, %279
  %.3 = phi float [ %283, %285 ], [ %.218, %279 ]
  %289 = load float, float* %.021, align 4
  %290 = load float, float* %.023, align 4
  %291 = fcmp ult float %289, %290
  br i1 %291, label %294, label %292

292:                                              ; preds = %288
  store float %289, float* %.023, align 4
  %293 = add nsw i32 %.18, -1
  store i32 %293, i32* %.014, align 4
  br label %294

294:                                              ; preds = %292, %288
  %295 = load float*, float** @genG__align11.m, align 8
  %296 = zext i32 %.211 to i64
  %297 = getelementptr inbounds float, float* %295, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fadd float %298, %9
  store float %299, float* %297, align 4
  %300 = fadd float %.04, %7
  %301 = fcmp ogt float %300, %.3
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  store i32 %.01, i32* %.025, align 4
  store i32 %.0, i32* %.024, align 4
  br label %303

303:                                              ; preds = %302, %294
  %.4 = phi float [ %300, %302 ], [ %.3, %294 ]
  %304 = load float, float* @genG__align11.Mi, align 4
  %305 = fcmp ogt float %304, %.04
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load float, float* @genG__align11.Mi, align 4
  %308 = add nsw i32 %.18, -1
  %309 = load i32, i32* @genG__align11.Mpi, align 4
  br label %310

310:                                              ; preds = %306, %303
  %.15 = phi float [ %307, %306 ], [ %.04, %303 ]
  %.12 = phi i32 [ %308, %306 ], [ %.01, %303 ]
  %.1 = phi i32 [ %309, %306 ], [ %.0, %303 ]
  %311 = load float, float* %.022, align 4
  %312 = fcmp ogt float %311, %.15
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load float, float* %.022, align 4
  %315 = load i32, i32* %.013, align 4
  %316 = add nsw i32 %.211, -1
  br label %317

317:                                              ; preds = %313, %310
  %.26 = phi float [ %314, %313 ], [ %.15, %310 ]
  %.23 = phi i32 [ %315, %313 ], [ %.12, %310 ]
  %.2 = phi i32 [ %316, %313 ], [ %.1, %310 ]
  %318 = load float, float* %.021, align 4
  %319 = load float, float* %.022, align 4
  %320 = fcmp ogt float %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load float, float* %.021, align 4
  store float %322, float* %.022, align 4
  %323 = add nsw i32 %.18, -1
  store i32 %323, i32* %.013, align 4
  br label %324

324:                                              ; preds = %321, %317
  %325 = load float, float* %.021, align 4
  %326 = load float, float* @genG__align11.Mi, align 4
  %327 = fcmp ogt float %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load float, float* %.021, align 4
  store float %329, float* @genG__align11.Mi, align 4
  %330 = add nsw i32 %.211, -1
  store i32 %330, i32* @genG__align11.Mpi, align 4
  br label %331

331:                                              ; preds = %328, %324
  %332 = load float, float* %.015, align 4
  %333 = fadd float %332, %.4
  store float %333, float* %.015, align 4
  br label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds float, float* %.021, i64 1
  %336 = add nuw nsw i32 %.211, 1
  br label %263, !llvm.loop !8

337:                                              ; preds = %263
  %338 = shl i64 %22, 32
  %sext28 = add i64 %338, -4294967296
  %339 = ashr exact i64 %sext28, 32
  %340 = getelementptr inbounds float, float* %.020, i64 %339
  %341 = load float, float* %340, align 4
  %342 = load float*, float** @genG__align11.lastverticalw, align 8
  %343 = zext i32 %.18 to i64
  %344 = getelementptr inbounds float, float* %342, i64 %343
  store float %341, float* %344, align 4
  br label %345

345:                                              ; preds = %337
  %346 = add nuw nsw i32 %.18, 1
  br label %237, !llvm.loop !9

347:                                              ; preds = %237
  %348 = load float*, float** @genG__align11.lastverticalw, align 8
  %349 = load i8**, i8*** @genG__align11.mseq1, align 8
  %350 = load i8**, i8*** @genG__align11.mseq2, align 8
  %351 = load float**, float*** @genG__align11.cpmx1, align 8
  %352 = load float**, float*** @genG__align11.cpmx2, align 8
  %353 = load i32**, i32*** @genG__align11.ijpi, align 8
  %354 = load i32**, i32*** @genG__align11.ijpj, align 8
  %355 = call float @genGtracking(float* noundef %.019, float* noundef %348, i8** noundef nonnull %0, i8** noundef nonnull %1, i8** noundef %349, i8** noundef %350, float** noundef %351, float** noundef %352, i32** noundef %353, i32** noundef %354)
  %356 = load i8**, i8*** @genG__align11.mseq1, align 8
  %357 = load i8*, i8** %356, align 8
  %358 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %357) #8
  %359 = trunc i64 %358 to i32
  %360 = icmp sgt i32 %359, %2
  br i1 %360, label %363, label %361

361:                                              ; preds = %347
  %362 = icmp sgt i32 %359, 5000000
  br i1 %362, label %363, label %366

363:                                              ; preds = %361, %347
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %364, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef %359, i32 noundef 5000000) #9
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %366

366:                                              ; preds = %363, %361
  %367 = load i8*, i8** %0, align 8
  %368 = load i8**, i8*** @genG__align11.mseq1, align 8
  %369 = load i8*, i8** %368, align 8
  %370 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %367, i8* noundef nonnull dereferenceable(1) %369) #7
  %371 = load i8*, i8** %1, align 8
  %372 = load i8**, i8*** @genG__align11.mseq2, align 8
  %373 = load i8*, i8** %372, align 8
  %374 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %371, i8* noundef nonnull dereferenceable(1) %373) #7
  ret float %.016
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @match_calc(float* nocapture noundef writeonly %0, i8** nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  br label %12

12:                                               ; preds = %13, %5
  %.02 = phi i32 [ %4, %5 ], [ %14, %13 ]
  %.01 = phi i8* [ %6, %5 ], [ %15, %13 ]
  %.0 = phi float* [ %0, %5 ], [ %21, %13 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %22, label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.02, -1
  %15 = getelementptr inbounds i8, i8* %.01, i64 1
  %16 = load i8, i8* %.01, align 1
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds [128 x [128 x i32]], [128 x [128 x i32]]* @amino_dis, i64 0, i64 %11, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds float, float* %.0, i64 1
  store float %20, float* %.0, align 4
  br label %12, !llvm.loop !10

22:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define internal float @genGtracking(float* nocapture noundef readnone %0, float* nocapture noundef readnone %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i8** nocapture noundef %4, i8** nocapture noundef %5, float** nocapture noundef readnone %6, float** nocapture noundef readnone %7, i32** nocapture noundef readonly %8, i32** nocapture noundef readonly %9) #4 {
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #8
  %13 = trunc i64 %12 to i32
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #8
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %25, %10
  %.06 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %.not = icmp sgt i32 %.06, %13
  br i1 %.not, label %27, label %18

18:                                               ; preds = %17
  %19 = zext i32 %.06 to i64
  %20 = getelementptr inbounds i32*, i32** %8, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32 -1, i32* %21, align 4
  %22 = zext i32 %.06 to i64
  %23 = getelementptr inbounds i32*, i32** %9, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %.06, 1
  br label %17, !llvm.loop !11

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %36, %27
  %.05 = phi i32 [ 0, %27 ], [ %37, %36 ]
  %.not7 = icmp sgt i32 %.05, %16
  br i1 %.not7, label %38, label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %8, align 8
  %31 = zext i32 %.05 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 -1, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = zext i32 %.05 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 -1, i32* %35, align 4
  br label %36

36:                                               ; preds = %29
  %37 = add nuw nsw i32 %.05, 1
  br label %28, !llvm.loop !12

38:                                               ; preds = %28
  %39 = add i64 %12, %15
  %40 = load i8*, i8** %4, align 8
  %sext = shl i64 %39, 32
  %41 = ashr exact i64 %sext, 32
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %4, align 8
  store i8 0, i8* %42, align 1
  %43 = add i64 %12, %15
  %44 = load i8*, i8** %5, align 8
  %sext8 = shl i64 %43, 32
  %45 = ashr exact i64 %sext8, 32
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %5, align 8
  store i8 0, i8* %46, align 1
  %47 = add nsw i32 %13, %16
  br label %48

48:                                               ; preds = %109, %38
  %.02 = phi i32 [ %13, %38 ], [ %55, %109 ]
  %.01 = phi i32 [ %16, %38 ], [ %61, %109 ]
  %.0 = phi i32 [ 0, %38 ], [ %110, %109 ]
  %.not9 = icmp sgt i32 %.0, %47
  br i1 %.not9, label %.loopexit, label %49

49:                                               ; preds = %48
  %50 = sext i32 %.02 to i64
  %51 = getelementptr inbounds i32*, i32** %8, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = sext i32 %.01 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %.02 to i64
  %57 = getelementptr inbounds i32*, i32** %9, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = sext i32 %.01 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %.02, %55
  br label %63

63:                                               ; preds = %65, %49
  %.03 = phi i32 [ %62, %49 ], [ %64, %65 ]
  %.1 = phi i32 [ %.0, %49 ], [ %75, %65 ]
  %64 = add nsw i32 %.03, -1
  %.not10 = icmp eq i32 %64, 0
  br i1 %.not10, label %76, label %65

65:                                               ; preds = %63
  %66 = load i8*, i8** %2, align 8
  %67 = add nsw i32 %55, %64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  store i8* %72, i8** %4, align 8
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  store i8* %74, i8** %5, align 8
  store i8 45, i8* %74, align 1
  %75 = add nsw i32 %.1, 1
  br label %63, !llvm.loop !13

76:                                               ; preds = %63
  %77 = sub nsw i32 %.01, %61
  br label %78

78:                                               ; preds = %80, %76
  %.14 = phi i32 [ %77, %76 ], [ %79, %80 ]
  %.2 = phi i32 [ %.1, %76 ], [ %90, %80 ]
  %79 = add nsw i32 %.14, -1
  %.not11 = icmp eq i32 %79, 0
  br i1 %.not11, label %91, label %80

80:                                               ; preds = %78
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8* %82, i8** %4, align 8
  store i8 45, i8* %82, align 1
  %83 = load i8*, i8** %3, align 8
  %84 = add nsw i32 %61, %79
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  store i8* %89, i8** %5, align 8
  store i8 %87, i8* %89, align 1
  %90 = add nsw i32 %.2, 1
  br label %78, !llvm.loop !14

91:                                               ; preds = %78
  %92 = icmp slt i32 %.02, 1
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = icmp slt i32 %.01, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %93, %91
  br label %111

96:                                               ; preds = %93
  %97 = load i8*, i8** %2, align 8
  %98 = sext i32 %55 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -1
  store i8* %102, i8** %4, align 8
  store i8 %100, i8* %102, align 1
  %103 = load i8*, i8** %3, align 8
  %104 = sext i32 %61 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  store i8* %108, i8** %5, align 8
  store i8 %106, i8* %108, align 1
  br label %109

109:                                              ; preds = %96
  %110 = add nsw i32 %.2, 2
  br label %48, !llvm.loop !15

.loopexit:                                        ; preds = %48
  br label %111

111:                                              ; preds = %.loopexit, %95
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }

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
