; ModuleID = './Galign11.ll'
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
define dso_local float @G__align11(i8** nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @penalty, align 4
  %5 = sitofp i32 %4 to float
  %6 = load i32, i32* @penalty_ex, align 4
  %7 = sitofp i32 %6 to float
  %8 = load i32, i32* @G__align11.orlgth1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* @njob, align 4
  %12 = call i8** @AllocateCharMtx(i32 noundef %11, i32 noundef 0) #7
  store i8** %12, i8*** @G__align11.mseq1, align 8
  %13 = load i32, i32* @njob, align 4
  %14 = call i8** @AllocateCharMtx(i32 noundef %13, i32 noundef 0) #7
  store i8** %14, i8*** @G__align11.mseq2, align 8
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i8*, i8** %0, align 8
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %16) #8
  %18 = trunc i64 %17 to i32
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %19) #8
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %18, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = icmp slt i32 %21, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %23, %15
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %18, i32 noundef %21) #9
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32, i32* @G__align11.orlgth1, align 4
  %30 = icmp slt i32 %29, %18
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @G__align11.orlgth2, align 4
  %33 = icmp slt i32 %32, %21
  br i1 %33, label %34, label %111

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @G__align11.orlgth1, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32, i32* @G__align11.orlgth2, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load float*, float** @G__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %41) #7
  %42 = load float*, float** @G__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %42) #7
  %43 = load float*, float** @G__align11.match, align 8
  call void @FreeFloatVec(float* noundef %43) #7
  %44 = load float*, float** @G__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %44) #7
  %45 = load float*, float** @G__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %45) #7
  %46 = load float*, float** @G__align11.m, align 8
  call void @FreeFloatVec(float* noundef %46) #7
  %47 = load i32*, i32** @G__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %47) #7
  %48 = load i8**, i8*** @G__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %48) #7
  %49 = load float**, float*** @G__align11.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %49) #7
  %50 = load i32**, i32*** @G__align11.intwork, align 8
  call void @FreeIntMtx(i32** noundef %50) #7
  br label %51

51:                                               ; preds = %40, %37, %34
  %52 = sitofp i32 %18 to double
  %53 = fmul double %52, 1.300000e+00
  %54 = fptosi double %53 to i32
  %55 = load i32, i32* @G__align11.orlgth1, align 4
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = sitofp i32 %18 to double
  %59 = fmul double %58, 1.300000e+00
  %60 = fptosi double %59 to i32
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @G__align11.orlgth1, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %65 = add nsw i32 %64, 100
  %66 = sitofp i32 %21 to double
  %67 = fmul double %66, 1.300000e+00
  %68 = fptosi double %67 to i32
  %69 = load i32, i32* @G__align11.orlgth2, align 4
  %70 = icmp slt i32 %69, %68
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = sitofp i32 %21 to double
  %73 = fmul double %72, 1.300000e+00
  %74 = fptosi double %73 to i32
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @G__align11.orlgth2, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ %74, %71 ], [ %76, %75 ]
  %79 = add nsw i32 %78, 100
  %80 = add nsw i32 %78, 102
  %81 = call float* @AllocateFloatVec(i32 noundef %80) #7
  store float* %81, float** @G__align11.w1, align 8
  %82 = add nsw i32 %78, 102
  %83 = call float* @AllocateFloatVec(i32 noundef %82) #7
  store float* %83, float** @G__align11.w2, align 8
  %84 = add nsw i32 %78, 102
  %85 = call float* @AllocateFloatVec(i32 noundef %84) #7
  store float* %85, float** @G__align11.match, align 8
  %86 = add nsw i32 %64, 102
  %87 = call float* @AllocateFloatVec(i32 noundef %86) #7
  store float* %87, float** @G__align11.initverticalw, align 8
  %88 = add nsw i32 %64, 102
  %89 = call float* @AllocateFloatVec(i32 noundef %88) #7
  store float* %89, float** @G__align11.lastverticalw, align 8
  %90 = add nsw i32 %78, 102
  %91 = call float* @AllocateFloatVec(i32 noundef %90) #7
  store float* %91, float** @G__align11.m, align 8
  %92 = add nsw i32 %78, 102
  %93 = call i32* @AllocateIntVec(i32 noundef %92) #7
  store i32* %93, i32** @G__align11.mp, align 8
  %94 = load i32, i32* @njob, align 4
  %95 = add nsw i32 %65, %79
  %96 = call i8** @AllocateCharMtx(i32 noundef %94, i32 noundef %95) #7
  store i8** %96, i8*** @G__align11.mseq, align 8
  %97 = icmp sgt i32 %64, %78
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  br label %100

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %98
  %101 = phi i32 [ %65, %98 ], [ %79, %99 ]
  %102 = add nsw i32 %101, 2
  %103 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %102) #7
  store float** %103, float*** @G__align11.floatwork, align 8
  %104 = icmp sgt i32 %64, %78
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %105
  %108 = phi i32 [ %65, %105 ], [ %79, %106 ]
  %109 = add nsw i32 %108, 2
  %110 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %109) #7
  store i32** %110, i32*** @G__align11.intwork, align 8
  store i32 %64, i32* @G__align11.orlgth1, align 4
  store i32 %78, i32* @G__align11.orlgth2, align 4
  br label %111

111:                                              ; preds = %107, %31
  %112 = load i8**, i8*** @G__align11.mseq, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** @G__align11.mseq1, align 8
  store i8* %113, i8** %114, align 8
  %115 = load i8**, i8*** @G__align11.mseq, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** @G__align11.mseq2, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @G__align11.orlgth1, align 4
  %120 = load i32, i32* @commonAlloc1, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* @G__align11.orlgth2, align 4
  %124 = load i32, i32* @commonAlloc2, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122, %111
  %127 = load i32, i32* @commonAlloc1, align 4
  %.not21 = icmp eq i32 %127, 0
  br i1 %.not21, label %132, label %128

128:                                              ; preds = %126
  %129 = load i32, i32* @commonAlloc2, align 4
  %.not23 = icmp eq i32 %129, 0
  br i1 %.not23, label %132, label %130

130:                                              ; preds = %128
  %131 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %131) #7
  br label %132

132:                                              ; preds = %130, %128, %126
  %133 = load i32, i32* @G__align11.orlgth1, align 4
  %134 = load i32, i32* @commonAlloc1, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %138

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %136
  %.in = phi i32* [ @G__align11.orlgth1, %136 ], [ @commonAlloc1, %137 ]
  %139 = load i32, i32* %.in, align 4
  %140 = load i32, i32* @G__align11.orlgth2, align 4
  %141 = load i32, i32* @commonAlloc2, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %143
  %.in22 = phi i32* [ @G__align11.orlgth2, %143 ], [ @commonAlloc2, %144 ]
  %146 = load i32, i32* %.in22, align 4
  %147 = add nsw i32 %139, 10
  %148 = add nsw i32 %146, 10
  %149 = call i32** @AllocateIntMtx(i32 noundef %147, i32 noundef %148) #7
  store i32** %149, i32*** @commonIP, align 8
  store i32 %139, i32* @commonAlloc1, align 4
  store i32 %146, i32* @commonAlloc2, align 4
  br label %150

150:                                              ; preds = %145, %122
  %151 = load i32**, i32*** @commonIP, align 8
  store i32** %151, i32*** @G__align11.ijp, align 8
  %152 = load float*, float** @G__align11.w1, align 8
  %153 = load float*, float** @G__align11.w2, align 8
  %154 = load float*, float** @G__align11.initverticalw, align 8
  call void @match_calc(float* noundef %154, i8** noundef nonnull %1, i8** noundef nonnull %0, i32 noundef 0, i32 noundef %18)
  call void @match_calc(float* noundef %152, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef %21)
  %155 = load i32, i32* @outgap, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %177

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %165, %157
  %.03 = phi i32 [ 1, %157 ], [ %166, %165 ]
  %.not19 = icmp sgt i32 %.03, %18
  br i1 %.not19, label %167, label %159

159:                                              ; preds = %158
  %160 = load float*, float** @G__align11.initverticalw, align 8
  %161 = zext i32 %.03 to i64
  %162 = getelementptr inbounds float, float* %160, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fadd float %163, %5
  store float %164, float* %162, align 4
  br label %165

165:                                              ; preds = %159
  %166 = add nuw nsw i32 %.03, 1
  br label %158, !llvm.loop !4

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %174, %167
  %.04 = phi i32 [ 1, %167 ], [ %175, %174 ]
  %.not20 = icmp sgt i32 %.04, %21
  br i1 %.not20, label %176, label %169

169:                                              ; preds = %168
  %170 = zext i32 %.04 to i64
  %171 = getelementptr inbounds float, float* %152, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fadd float %172, %5
  store float %173, float* %171, align 4
  br label %174

174:                                              ; preds = %169
  %175 = add nuw nsw i32 %.04, 1
  br label %168, !llvm.loop !6

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %150
  br label %178

178:                                              ; preds = %190, %177
  %.15 = phi i32 [ 1, %177 ], [ %191, %190 ]
  %.not = icmp sgt i32 %.15, %21
  br i1 %.not, label %192, label %179

179:                                              ; preds = %178
  %180 = add nsw i32 %.15, -1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %152, i64 %181
  %183 = load float, float* %182, align 4
  %184 = load float*, float** @G__align11.m, align 8
  %185 = zext i32 %.15 to i64
  %186 = getelementptr inbounds float, float* %184, i64 %185
  store float %183, float* %186, align 4
  %187 = load i32*, i32** @G__align11.mp, align 8
  %188 = zext i32 %.15 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %179
  %191 = add nuw nsw i32 %.15, 1
  br label %178, !llvm.loop !7

192:                                              ; preds = %178
  %193 = icmp eq i32 %21, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %192
  %195 = load float*, float** @G__align11.lastverticalw, align 8
  store float 0.000000e+00, float* %195, align 4
  br label %202

196:                                              ; preds = %192
  %197 = shl i64 %20, 32
  %sext = add i64 %197, -4294967296
  %198 = ashr exact i64 %sext, 32
  %199 = getelementptr inbounds float, float* %152, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** @G__align11.lastverticalw, align 8
  store float %200, float* %201, align 4
  br label %202

202:                                              ; preds = %196, %194
  %203 = load i32, i32* @outgap, align 4
  %.not14 = icmp eq i32 %203, 0
  br i1 %.not14, label %206, label %204

204:                                              ; preds = %202
  %205 = add nsw i32 %18, 1
  br label %207

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %204
  %.06 = phi i32 [ %205, %204 ], [ %18, %206 ]
  br label %208

208:                                              ; preds = %275, %207
  %.013 = phi float* [ %152, %207 ], [ %.09, %275 ]
  %.010 = phi float [ 0.000000e+00, %207 ], [ %.111, %275 ]
  %.09 = phi float* [ %153, %207 ], [ %.013, %275 ]
  %.1 = phi i32 [ 1, %207 ], [ %276, %275 ]
  %209 = icmp slt i32 %.1, %.06
  br i1 %209, label %210, label %277

210:                                              ; preds = %208
  %211 = load float*, float** @G__align11.initverticalw, align 8
  %212 = add nsw i32 %.1, -1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  store float %215, float* %.013, align 4
  call void @match_calc(float* noundef %.09, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef %.1, i32 noundef %21)
  %216 = load float*, float** @G__align11.initverticalw, align 8
  %217 = zext i32 %.1 to i64
  %218 = getelementptr inbounds float, float* %216, i64 %217
  %219 = load float, float* %218, align 4
  store float %219, float* %.09, align 4
  %220 = load float, float* %.013, align 4
  store float %220, float* @G__align11.mi, align 4
  store i32 0, i32* @G__align11.mpi, align 4
  %221 = load i32**, i32*** @G__align11.ijp, align 8
  %222 = zext i32 %.1 to i64
  %223 = getelementptr inbounds i32*, i32** %221, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load float*, float** @G__align11.m, align 8
  %226 = load i32*, i32** @G__align11.mp, align 8
  br label %227

227:                                              ; preds = %264, %210
  %.111 = phi float [ %.010, %210 ], [ %.3, %264 ]
  %.pn = phi i32* [ %224, %210 ], [ %.08, %264 ]
  %.pn17 = phi float* [ %225, %210 ], [ %.07, %264 ]
  %.2 = phi i32 [ 1, %210 ], [ %266, %264 ]
  %.02 = phi float* [ %.013, %210 ], [ %265, %264 ]
  %.09.pn = phi float* [ %.09, %210 ], [ %.01, %264 ]
  %.pn18 = phi i32* [ %226, %210 ], [ %.0, %264 ]
  %.0 = getelementptr inbounds i32, i32* %.pn18, i64 1
  %.07 = getelementptr inbounds float, float* %.pn17, i64 1
  %.08 = getelementptr inbounds i32, i32* %.pn, i64 1
  %.01 = getelementptr inbounds float, float* %.09.pn, i64 1
  %.not15 = icmp sgt i32 %.2, %21
  br i1 %.not15, label %267, label %228

228:                                              ; preds = %227
  %229 = load float, float* %.02, align 4
  store i32 0, i32* %.08, align 4
  %230 = load float, float* @G__align11.mi, align 4
  %231 = fadd float %230, %5
  %232 = fcmp ogt float %231, %229
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* @G__align11.mpi, align 4
  %.neg = sub i32 %234, %.2
  store i32 %.neg, i32* %.08, align 4
  br label %235

235:                                              ; preds = %233, %228
  %.212 = phi float [ %231, %233 ], [ %229, %228 ]
  %236 = load float, float* %.02, align 4
  %237 = load float, float* @G__align11.mi, align 4
  %238 = fcmp ult float %236, %237
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  store float %236, float* @G__align11.mi, align 4
  %240 = add nsw i32 %.2, -1
  store i32 %240, i32* @G__align11.mpi, align 4
  br label %241

241:                                              ; preds = %239, %235
  %242 = load float, float* @G__align11.mi, align 4
  %243 = fadd float %242, %7
  store float %243, float* @G__align11.mi, align 4
  %244 = load float, float* %.07, align 4
  %245 = fadd float %244, %5
  %246 = fcmp ogt float %245, %.212
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %.0, align 4
  %249 = sub nsw i32 %.1, %248
  store i32 %249, i32* %.08, align 4
  br label %250

250:                                              ; preds = %247, %241
  %.3 = phi float [ %245, %247 ], [ %.212, %241 ]
  %251 = load float, float* %.02, align 4
  %252 = load float, float* %.07, align 4
  %253 = fcmp ult float %251, %252
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  store float %251, float* %.07, align 4
  %255 = add nsw i32 %.1, -1
  store i32 %255, i32* %.0, align 4
  br label %256

256:                                              ; preds = %254, %250
  %257 = load float*, float** @G__align11.m, align 8
  %258 = zext i32 %.2 to i64
  %259 = getelementptr inbounds float, float* %257, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fadd float %260, %7
  store float %261, float* %259, align 4
  %262 = load float, float* %.01, align 4
  %263 = fadd float %262, %.3
  store float %263, float* %.01, align 4
  br label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds float, float* %.02, i64 1
  %266 = add nuw nsw i32 %.2, 1
  br label %227, !llvm.loop !8

267:                                              ; preds = %227
  %268 = shl i64 %20, 32
  %sext16 = add i64 %268, -4294967296
  %269 = ashr exact i64 %sext16, 32
  %270 = getelementptr inbounds float, float* %.09, i64 %269
  %271 = load float, float* %270, align 4
  %272 = load float*, float** @G__align11.lastverticalw, align 8
  %273 = zext i32 %.1 to i64
  %274 = getelementptr inbounds float, float* %272, i64 %273
  store float %271, float* %274, align 4
  br label %275

275:                                              ; preds = %267
  %276 = add nuw nsw i32 %.1, 1
  br label %208, !llvm.loop !9

277:                                              ; preds = %208
  %278 = load float*, float** @G__align11.lastverticalw, align 8
  %279 = load i8**, i8*** @G__align11.mseq1, align 8
  %280 = load i8**, i8*** @G__align11.mseq2, align 8
  %281 = load i32**, i32*** @G__align11.ijp, align 8
  %282 = call float @Atracking(float* noundef %.013, float* noundef %278, i8** noundef nonnull %0, i8** noundef nonnull %1, i8** noundef %279, i8** noundef %280, i32** noundef %281)
  %283 = load i8**, i8*** @G__align11.mseq1, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %284) #8
  %286 = trunc i64 %285 to i32
  %287 = icmp sgt i32 %286, %2
  br i1 %287, label %290, label %288

288:                                              ; preds = %277
  %289 = icmp sgt i32 %286, 5000000
  br i1 %289, label %290, label %293

290:                                              ; preds = %288, %277
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %291, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef %286, i32 noundef 5000000) #9
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %293

293:                                              ; preds = %290, %288
  %294 = load i8*, i8** %0, align 8
  %295 = load i8**, i8*** @G__align11.mseq1, align 8
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %294, i8* noundef nonnull dereferenceable(1) %296) #7
  %298 = load i8*, i8** %1, align 8
  %299 = load i8**, i8*** @G__align11.mseq2, align 8
  %300 = load i8*, i8** %299, align 8
  %301 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %298, i8* noundef nonnull dereferenceable(1) %300) #7
  ret float %.010
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
define internal float @Atracking(float* nocapture noundef readnone %0, float* nocapture noundef readnone %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i8** nocapture noundef %4, i8** nocapture noundef %5, i32** nocapture noundef readonly %6) #4 {
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %8) #8
  %10 = trunc i64 %9 to i32
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #8
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %20, %7
  %.010 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %.not = icmp sgt i32 %.010, %10
  br i1 %.not, label %22, label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.010, 1
  %17 = zext i32 %.010 to i64
  %18 = getelementptr inbounds i32*, i32** %6, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %.010, 1
  br label %14, !llvm.loop !11

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %29, %22
  %.09 = phi i32 [ 0, %22 ], [ %30, %29 ]
  %.not11 = icmp sgt i32 %.09, %13
  br i1 %.not11, label %31, label %24

24:                                               ; preds = %23
  %25 = xor i32 %.09, -1
  %26 = load i32*, i32** %6, align 8
  %27 = zext i32 %.09 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.09, 1
  br label %23, !llvm.loop !12

31:                                               ; preds = %23
  %32 = add i64 %9, %12
  %33 = load i8*, i8** %4, align 8
  %sext = shl i64 %32, 32
  %34 = ashr exact i64 %sext, 32
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %4, align 8
  store i8 0, i8* %35, align 1
  %36 = add i64 %9, %12
  %37 = load i8*, i8** %5, align 8
  %sext12 = shl i64 %36, 32
  %38 = ashr exact i64 %sext12, 32
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  store i8 0, i8* %39, align 1
  %40 = add nsw i32 %10, %13
  br label %41

41:                                               ; preds = %125, %31
  %.06 = phi i32 [ %10, %31 ], [ %.14, %125 ]
  %.05 = phi i32 [ %13, %31 ], [ %.12, %125 ]
  %.0 = phi i32 [ 0, %31 ], [ %126, %125 ]
  %.not13 = icmp sgt i32 %.0, %40
  br i1 %.not13, label %.loopexit, label %42

42:                                               ; preds = %41
  %43 = sext i32 %.06 to i64
  %44 = getelementptr inbounds i32*, i32** %6, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = sext i32 %.05 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = add nsw i32 %.06, -1
  %52 = sext i32 %.06 to i64
  %53 = getelementptr inbounds i32*, i32** %6, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = sext i32 %.05 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  br label %77

58:                                               ; preds = %42
  %59 = sext i32 %.06 to i64
  %60 = getelementptr inbounds i32*, i32** %6, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = sext i32 %.05 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = sext i32 %.06 to i64
  %68 = getelementptr inbounds i32*, i32** %6, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = sext i32 %.05 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %.06, %72
  br label %76

74:                                               ; preds = %58
  %75 = add nsw i32 %.06, -1
  br label %76

76:                                               ; preds = %74, %66
  %.03 = phi i32 [ %73, %66 ], [ %75, %74 ]
  br label %77

77:                                               ; preds = %76, %50
  %.14 = phi i32 [ %51, %50 ], [ %.03, %76 ]
  %.pn = phi i32 [ %57, %50 ], [ -1, %76 ]
  %.12 = add nsw i32 %.05, %.pn
  %78 = sub nsw i32 %.06, %.14
  br label %79

79:                                               ; preds = %81, %77
  %.07 = phi i32 [ %78, %77 ], [ %80, %81 ]
  %.1 = phi i32 [ %.0, %77 ], [ %91, %81 ]
  %80 = add nsw i32 %.07, -1
  %.not14 = icmp eq i32 %80, 0
  br i1 %.not14, label %92, label %81

81:                                               ; preds = %79
  %82 = load i8*, i8** %2, align 8
  %83 = add nsw i32 %.14, %80
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  store i8* %88, i8** %4, align 8
  store i8 %86, i8* %88, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  store i8* %90, i8** %5, align 8
  store i8 45, i8* %90, align 1
  %91 = add nsw i32 %.1, 1
  br label %79, !llvm.loop !13

92:                                               ; preds = %79
  %93 = sub i32 0, %.pn
  br label %94

94:                                               ; preds = %96, %92
  %.18 = phi i32 [ %93, %92 ], [ %95, %96 ]
  %.2 = phi i32 [ %.1, %92 ], [ %106, %96 ]
  %95 = add nsw i32 %.18, -1
  %.not15 = icmp eq i32 %95, 0
  br i1 %.not15, label %107, label %96

96:                                               ; preds = %94
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  store i8* %98, i8** %4, align 8
  store i8 45, i8* %98, align 1
  %99 = load i8*, i8** %3, align 8
  %100 = add nsw i32 %.12, %95
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %5, align 8
  store i8 %103, i8* %105, align 1
  %106 = add nsw i32 %.2, 1
  br label %94, !llvm.loop !14

107:                                              ; preds = %94
  %108 = icmp slt i32 %.06, 1
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = icmp slt i32 %.05, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %109, %107
  br label %127

112:                                              ; preds = %109
  %113 = load i8*, i8** %2, align 8
  %114 = sext i32 %.14 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  store i8* %118, i8** %4, align 8
  store i8 %116, i8* %118, align 1
  %119 = load i8*, i8** %3, align 8
  %120 = sext i32 %.12 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  store i8* %124, i8** %5, align 8
  store i8 %122, i8* %124, align 1
  br label %125

125:                                              ; preds = %112
  %126 = add nsw i32 %.2, 2
  br label %41, !llvm.loop !15

.loopexit:                                        ; preds = %41
  br label %127

127:                                              ; preds = %.loopexit, %111
  ret float 0.000000e+00
}

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local float @G__align11_noalign([128 x i32]* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8** nocapture noundef readonly %3, i8** nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = sitofp i32 %1 to float
  %8 = sitofp i32 %2 to float
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %9) #8
  %11 = trunc i64 %10 to i32
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #8
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %11, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = icmp slt i32 %14, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16, %6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %11, i32 noundef %14) #9
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %23 = icmp slt i32 %22, %11
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %26 = icmp slt i32 %25, %14
  br i1 %26, label %27, label %97

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load float*, float** @G__align11_noalign.w1, align 8
  call void @FreeFloatVec(float* noundef %34) #7
  %35 = load float*, float** @G__align11_noalign.w2, align 8
  call void @FreeFloatVec(float* noundef %35) #7
  %36 = load float*, float** @G__align11_noalign.match, align 8
  call void @FreeFloatVec(float* noundef %36) #7
  %37 = load float*, float** @G__align11_noalign.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %37) #7
  %38 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %38) #7
  %39 = load float*, float** @G__align11_noalign.m, align 8
  call void @FreeFloatVec(float* noundef %39) #7
  %40 = load float**, float*** @G__align11_noalign.floatwork, align 8
  call void @FreeFloatMtx(float** noundef %40) #7
  %41 = load i32**, i32*** @G__align11_noalign.intwork, align 8
  call void @FreeIntMtx(i32** noundef %41) #7
  br label %42

42:                                               ; preds = %33, %30, %27
  %43 = sitofp i32 %11 to double
  %44 = fmul double %43, 1.300000e+00
  %45 = fptosi double %44 to i32
  %46 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  %47 = icmp slt i32 %46, %45
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = sitofp i32 %11 to double
  %50 = fmul double %49, 1.300000e+00
  %51 = fptosi double %50 to i32
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @G__align11_noalign.orlgth1, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = add nsw i32 %55, 100
  %57 = sitofp i32 %14 to double
  %58 = fmul double %57, 1.300000e+00
  %59 = fptosi double %58 to i32
  %60 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  %61 = icmp slt i32 %60, %59
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = sitofp i32 %14 to double
  %64 = fmul double %63, 1.300000e+00
  %65 = fptosi double %64 to i32
  br label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @G__align11_noalign.orlgth2, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  %70 = add nsw i32 %69, 100
  %71 = add nsw i32 %69, 102
  %72 = call float* @AllocateFloatVec(i32 noundef %71) #7
  store float* %72, float** @G__align11_noalign.w1, align 8
  %73 = add nsw i32 %69, 102
  %74 = call float* @AllocateFloatVec(i32 noundef %73) #7
  store float* %74, float** @G__align11_noalign.w2, align 8
  %75 = add nsw i32 %69, 102
  %76 = call float* @AllocateFloatVec(i32 noundef %75) #7
  store float* %76, float** @G__align11_noalign.match, align 8
  %77 = add nsw i32 %55, 102
  %78 = call float* @AllocateFloatVec(i32 noundef %77) #7
  store float* %78, float** @G__align11_noalign.initverticalw, align 8
  %79 = add nsw i32 %55, 102
  %80 = call float* @AllocateFloatVec(i32 noundef %79) #7
  store float* %80, float** @G__align11_noalign.lastverticalw, align 8
  %81 = add nsw i32 %69, 102
  %82 = call float* @AllocateFloatVec(i32 noundef %81) #7
  store float* %82, float** @G__align11_noalign.m, align 8
  %83 = icmp sgt i32 %55, %69
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %86

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %84
  %87 = phi i32 [ %56, %84 ], [ %70, %85 ]
  %88 = add nsw i32 %87, 2
  %89 = call float** @AllocateFloatMtx(i32 noundef 26, i32 noundef %88) #7
  store float** %89, float*** @G__align11_noalign.floatwork, align 8
  %90 = icmp sgt i32 %55, %69
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %91
  %94 = phi i32 [ %56, %91 ], [ %70, %92 ]
  %95 = add nsw i32 %94, 2
  %96 = call i32** @AllocateIntMtx(i32 noundef 26, i32 noundef %95) #7
  store i32** %96, i32*** @G__align11_noalign.intwork, align 8
  store i32 %55, i32* @G__align11_noalign.orlgth1, align 4
  store i32 %69, i32* @G__align11_noalign.orlgth2, align 4
  br label %97

97:                                               ; preds = %93, %24
  %98 = load float*, float** @G__align11_noalign.w1, align 8
  %99 = load float*, float** @G__align11_noalign.w2, align 8
  %100 = load float*, float** @G__align11_noalign.initverticalw, align 8
  call void @match_calc_mtx([128 x i32]* noundef %0, float* noundef %100, i8** noundef nonnull %4, i8** noundef nonnull %3, i32 noundef 0, i32 noundef %11)
  call void @match_calc_mtx([128 x i32]* noundef %0, float* noundef %98, i8** noundef nonnull %3, i8** noundef nonnull %4, i32 noundef 0, i32 noundef %14)
  %101 = load i32, i32* @outgap, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %111, %103
  %.05 = phi i32 [ 1, %103 ], [ %112, %111 ]
  %.not15 = icmp sgt i32 %.05, %11
  br i1 %.not15, label %113, label %105

105:                                              ; preds = %104
  %106 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %107 = zext i32 %.05 to i64
  %108 = getelementptr inbounds float, float* %106, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fadd float %109, %7
  store float %110, float* %108, align 4
  br label %111

111:                                              ; preds = %105
  %112 = add nuw nsw i32 %.05, 1
  br label %104, !llvm.loop !16

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %120, %113
  %.06 = phi i32 [ 1, %113 ], [ %121, %120 ]
  %.not16 = icmp sgt i32 %.06, %14
  br i1 %.not16, label %122, label %115

115:                                              ; preds = %114
  %116 = zext i32 %.06 to i64
  %117 = getelementptr inbounds float, float* %98, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fadd float %118, %7
  store float %119, float* %117, align 4
  br label %120

120:                                              ; preds = %115
  %121 = add nuw nsw i32 %.06, 1
  br label %114, !llvm.loop !17

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %133, %123
  %.17 = phi i32 [ 1, %123 ], [ %134, %133 ]
  %.not = icmp sgt i32 %.17, %14
  br i1 %.not, label %135, label %125

125:                                              ; preds = %124
  %126 = add nsw i32 %.17, -1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %98, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float*, float** @G__align11_noalign.m, align 8
  %131 = zext i32 %.17 to i64
  %132 = getelementptr inbounds float, float* %130, i64 %131
  store float %129, float* %132, align 4
  br label %133

133:                                              ; preds = %125
  %134 = add nuw nsw i32 %.17, 1
  br label %124, !llvm.loop !18

135:                                              ; preds = %124
  %136 = icmp eq i32 %14, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  store float 0.000000e+00, float* %138, align 4
  br label %145

139:                                              ; preds = %135
  %140 = shl i64 %13, 32
  %sext = add i64 %140, -4294967296
  %141 = ashr exact i64 %sext, 32
  %142 = getelementptr inbounds float, float* %98, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  store float %143, float* %144, align 4
  br label %145

145:                                              ; preds = %139, %137
  %146 = load i32, i32* @outgap, align 4
  %.not12 = icmp eq i32 %146, 0
  br i1 %.not12, label %149, label %147

147:                                              ; preds = %145
  %148 = add nsw i32 %11, 1
  br label %150

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %147
  %.08 = phi i32 [ %148, %147 ], [ %11, %149 ]
  br label %151

151:                                              ; preds = %208, %150
  %.09 = phi float [ 0.000000e+00, %150 ], [ %.110, %208 ]
  %.1 = phi i32 [ 1, %150 ], [ %209, %208 ]
  %.04 = phi float* [ %98, %150 ], [ %.03, %208 ]
  %.03 = phi float* [ %99, %150 ], [ %.04, %208 ]
  %152 = icmp slt i32 %.1, %.08
  br i1 %152, label %153, label %210

153:                                              ; preds = %151
  %154 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %155 = add nsw i32 %.1, -1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  %158 = load float, float* %157, align 4
  store float %158, float* %.04, align 4
  call void @match_calc_mtx([128 x i32]* noundef %0, float* noundef %.03, i8** noundef nonnull %3, i8** noundef nonnull %4, i32 noundef %.1, i32 noundef %14)
  %159 = load float*, float** @G__align11_noalign.initverticalw, align 8
  %160 = zext i32 %.1 to i64
  %161 = getelementptr inbounds float, float* %159, i64 %160
  %162 = load float, float* %161, align 4
  store float %162, float* %.03, align 4
  %163 = load float, float* %.04, align 4
  store float %163, float* @G__align11_noalign.mi, align 4
  %164 = load float*, float** @G__align11_noalign.m, align 8
  br label %165

165:                                              ; preds = %197, %153
  %.110 = phi float [ %.09, %153 ], [ %.3, %197 ]
  %.2 = phi i32 [ 1, %153 ], [ %199, %197 ]
  %.pn = phi float* [ %164, %153 ], [ %.02, %197 ]
  %.01 = phi float* [ %.04, %153 ], [ %198, %197 ]
  %.03.pn = phi float* [ %.03, %153 ], [ %.0, %197 ]
  %.02 = getelementptr inbounds float, float* %.pn, i64 1
  %.0 = getelementptr inbounds float, float* %.03.pn, i64 1
  %.not13 = icmp sgt i32 %.2, %14
  br i1 %.not13, label %200, label %166

166:                                              ; preds = %165
  %167 = load float, float* %.01, align 4
  %168 = load float, float* @G__align11_noalign.mi, align 4
  %169 = fadd float %168, %7
  %170 = fcmp ogt float %169, %167
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %166
  %.211 = phi float [ %169, %171 ], [ %167, %166 ]
  %173 = load float, float* %.01, align 4
  %174 = load float, float* @G__align11_noalign.mi, align 4
  %175 = fcmp ult float %173, %174
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  store float %173, float* @G__align11_noalign.mi, align 4
  br label %177

177:                                              ; preds = %176, %172
  %178 = load float, float* @G__align11_noalign.mi, align 4
  %179 = fadd float %178, %8
  store float %179, float* @G__align11_noalign.mi, align 4
  %180 = load float, float* %.02, align 4
  %181 = fadd float %180, %7
  %182 = fcmp ogt float %181, %.211
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %177
  %.3 = phi float [ %181, %183 ], [ %.211, %177 ]
  %185 = load float, float* %.01, align 4
  %186 = load float, float* %.02, align 4
  %187 = fcmp ult float %185, %186
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store float %185, float* %.02, align 4
  br label %189

189:                                              ; preds = %188, %184
  %190 = load float*, float** @G__align11_noalign.m, align 8
  %191 = zext i32 %.2 to i64
  %192 = getelementptr inbounds float, float* %190, i64 %191
  %193 = load float, float* %192, align 4
  %194 = fadd float %193, %8
  store float %194, float* %192, align 4
  %195 = load float, float* %.0, align 4
  %196 = fadd float %195, %.3
  store float %196, float* %.0, align 4
  br label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds float, float* %.01, i64 1
  %199 = add nuw nsw i32 %.2, 1
  br label %165, !llvm.loop !19

200:                                              ; preds = %165
  %201 = shl i64 %13, 32
  %sext14 = add i64 %201, -4294967296
  %202 = ashr exact i64 %sext14, 32
  %203 = getelementptr inbounds float, float* %.03, i64 %202
  %204 = load float, float* %203, align 4
  %205 = load float*, float** @G__align11_noalign.lastverticalw, align 8
  %206 = zext i32 %.1 to i64
  %207 = getelementptr inbounds float, float* %205, i64 %206
  store float %204, float* %207, align 4
  br label %208

208:                                              ; preds = %200
  %209 = add nuw nsw i32 %.1, 1
  br label %151, !llvm.loop !20

210:                                              ; preds = %151
  ret float %.09
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @match_calc_mtx([128 x i32]* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #3 {
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i64
  br label %13

13:                                               ; preds = %14, %6
  %.02 = phi i32 [ %5, %6 ], [ %15, %14 ]
  %.01 = phi float* [ %1, %6 ], [ %22, %14 ]
  %.0 = phi i8* [ %7, %6 ], [ %16, %14 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %23, label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.02, -1
  %16 = getelementptr inbounds i8, i8* %.0, i64 1
  %17 = load i8, i8* %.0, align 1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* %0, i64 %12, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds float, float* %.01, i64 1
  store float %21, float* %.01, align 4
  br label %13, !llvm.loop !21

23:                                               ; preds = %13
  ret void
}

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
