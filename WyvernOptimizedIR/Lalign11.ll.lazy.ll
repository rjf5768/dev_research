; ModuleID = './Lalign11.ll'
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
define dso_local float @L__align11(i8** nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) #0 {
  %6 = load i32, i32* @offset, align 4
  %7 = sub nsw i32 0, %6
  %8 = sitofp i32 %7 to float
  %9 = sub nsw i32 0, %6
  %10 = sitofp i32 %9 to float
  %11 = load i32, i32* @penalty, align 4
  %12 = sitofp i32 %11 to float
  %13 = load i32, i32* @penalty_ex, align 4
  %14 = sitofp i32 %13 to float
  %15 = load i32, i32* @L__align11.orlgth1, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, i32* @njob, align 4
  %19 = call i8** @AllocateCharMtx(i32 noundef %18, i32 noundef 0) #7
  store i8** %19, i8*** @L__align11.mseq1, align 8
  %20 = load i32, i32* @njob, align 4
  %21 = call i8** @AllocateCharMtx(i32 noundef %20, i32 noundef 0) #7
  store i8** %21, i8*** @L__align11.mseq2, align 8
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i8*, i8** %0, align 8
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23) #8
  %25 = trunc i64 %24 to i32
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %26) #8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @L__align11.orlgth1, align 4
  %30 = icmp slt i32 %29, %25
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @L__align11.orlgth2, align 4
  %33 = icmp slt i32 %32, %28
  br i1 %33, label %34, label %94

34:                                               ; preds = %31, %22
  %35 = load i32, i32* @L__align11.orlgth1, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* @L__align11.orlgth2, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load float*, float** @L__align11.w1, align 8
  call void @FreeFloatVec(float* noundef %41) #7
  %42 = load float*, float** @L__align11.w2, align 8
  call void @FreeFloatVec(float* noundef %42) #7
  %43 = load float*, float** @L__align11.match, align 8
  call void @FreeFloatVec(float* noundef %43) #7
  %44 = load float*, float** @L__align11.initverticalw, align 8
  call void @FreeFloatVec(float* noundef %44) #7
  %45 = load float*, float** @L__align11.lastverticalw, align 8
  call void @FreeFloatVec(float* noundef %45) #7
  %46 = load float*, float** @L__align11.m, align 8
  call void @FreeFloatVec(float* noundef %46) #7
  %47 = load i32*, i32** @L__align11.mp, align 8
  call void @FreeIntVec(i32* noundef %47) #7
  %48 = load i8**, i8*** @L__align11.mseq, align 8
  call void @FreeCharMtx(i8** noundef %48) #7
  br label %49

49:                                               ; preds = %40, %37, %34
  %50 = sitofp i32 %25 to double
  %51 = fmul double %50, 1.300000e+00
  %52 = fptosi double %51 to i32
  %53 = load i32, i32* @L__align11.orlgth1, align 4
  %54 = icmp slt i32 %53, %52
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = sitofp i32 %25 to double
  %57 = fmul double %56, 1.300000e+00
  %58 = fptosi double %57 to i32
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @L__align11.orlgth1, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  %63 = sitofp i32 %28 to double
  %64 = fmul double %63, 1.300000e+00
  %65 = fptosi double %64 to i32
  %66 = load i32, i32* @L__align11.orlgth2, align 4
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = sitofp i32 %28 to double
  %70 = fmul double %69, 1.300000e+00
  %71 = fptosi double %70 to i32
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @L__align11.orlgth2, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ]
  %76 = add nsw i32 %75, 102
  %77 = call float* @AllocateFloatVec(i32 noundef %76) #7
  store float* %77, float** @L__align11.w1, align 8
  %78 = add nsw i32 %75, 102
  %79 = call float* @AllocateFloatVec(i32 noundef %78) #7
  store float* %79, float** @L__align11.w2, align 8
  %80 = add nsw i32 %75, 102
  %81 = call float* @AllocateFloatVec(i32 noundef %80) #7
  store float* %81, float** @L__align11.match, align 8
  %82 = add nsw i32 %62, 102
  %83 = call float* @AllocateFloatVec(i32 noundef %82) #7
  store float* %83, float** @L__align11.initverticalw, align 8
  %84 = add nsw i32 %62, 102
  %85 = call float* @AllocateFloatVec(i32 noundef %84) #7
  store float* %85, float** @L__align11.lastverticalw, align 8
  %86 = add nsw i32 %75, 102
  %87 = call float* @AllocateFloatVec(i32 noundef %86) #7
  store float* %87, float** @L__align11.m, align 8
  %88 = add nsw i32 %75, 102
  %89 = call i32* @AllocateIntVec(i32 noundef %88) #7
  store i32* %89, i32** @L__align11.mp, align 8
  %90 = load i32, i32* @njob, align 4
  %91 = add i32 %62, %75
  %92 = add i32 %91, 200
  %93 = call i8** @AllocateCharMtx(i32 noundef %90, i32 noundef %92) #7
  store i8** %93, i8*** @L__align11.mseq, align 8
  store i32 %62, i32* @L__align11.orlgth1, align 4
  store i32 %75, i32* @L__align11.orlgth2, align 4
  br label %94

94:                                               ; preds = %74, %31
  %95 = load i8**, i8*** @L__align11.mseq, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** @L__align11.mseq1, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i8**, i8*** @L__align11.mseq, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** @L__align11.mseq2, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @L__align11.orlgth1, align 4
  %103 = load i32, i32* @commonAlloc1, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @L__align11.orlgth2, align 4
  %107 = load i32, i32* @commonAlloc2, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105, %94
  %110 = load i32, i32* @commonAlloc1, align 4
  %.not26 = icmp eq i32 %110, 0
  br i1 %.not26, label %115, label %111

111:                                              ; preds = %109
  %112 = load i32, i32* @commonAlloc2, align 4
  %.not28 = icmp eq i32 %112, 0
  br i1 %.not28, label %115, label %113

113:                                              ; preds = %111
  %114 = load i32**, i32*** @commonIP, align 8
  call void @FreeIntMtx(i32** noundef %114) #7
  br label %115

115:                                              ; preds = %113, %111, %109
  %116 = load i32, i32* @L__align11.orlgth1, align 4
  %117 = load i32, i32* @commonAlloc1, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %121

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %119
  %.in = phi i32* [ @L__align11.orlgth1, %119 ], [ @commonAlloc1, %120 ]
  %122 = load i32, i32* %.in, align 4
  %123 = load i32, i32* @L__align11.orlgth2, align 4
  %124 = load i32, i32* @commonAlloc2, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %128

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %126
  %.in27 = phi i32* [ @L__align11.orlgth2, %126 ], [ @commonAlloc2, %127 ]
  %129 = load i32, i32* %.in27, align 4
  %130 = add nsw i32 %122, 10
  %131 = add nsw i32 %129, 10
  %132 = call i32** @AllocateIntMtx(i32 noundef %130, i32 noundef %131) #7
  store i32** %132, i32*** @commonIP, align 8
  store i32 %122, i32* @commonAlloc1, align 4
  store i32 %129, i32* @commonAlloc2, align 4
  br label %133

133:                                              ; preds = %128, %105
  %134 = load i32**, i32*** @commonIP, align 8
  store i32** %134, i32*** @L__align11.ijp, align 8
  %135 = load float*, float** @L__align11.w1, align 8
  %136 = load float*, float** @L__align11.w2, align 8
  %137 = load float*, float** @L__align11.initverticalw, align 8
  call void @match_calc(float* noundef %137, i8** noundef nonnull %1, i8** noundef nonnull %0, i32 noundef 0, i32 noundef %25)
  call void @match_calc(float* noundef %135, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef %28)
  br label %138

138:                                              ; preds = %150, %133
  %.011 = phi i32 [ 1, %133 ], [ %151, %150 ]
  %.not = icmp sgt i32 %.011, %28
  br i1 %.not, label %152, label %139

139:                                              ; preds = %138
  %140 = add nsw i32 %.011, -1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %135, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float*, float** @L__align11.m, align 8
  %145 = zext i32 %.011 to i64
  %146 = getelementptr inbounds float, float* %144, i64 %145
  store float %143, float* %146, align 4
  %147 = load i32*, i32** @L__align11.mp, align 8
  %148 = zext i32 %.011 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %139
  %151 = add nuw nsw i32 %.011, 1
  br label %138, !llvm.loop !4

152:                                              ; preds = %138
  %153 = shl i64 %27, 32
  %sext = add i64 %153, -4294967296
  %154 = ashr exact i64 %sext, 32
  %155 = getelementptr inbounds float, float* %135, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** @L__align11.lastverticalw, align 8
  store float %156, float* %157, align 4
  %158 = add nsw i32 %25, %28
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @localstop, align 4
  br label %160

160:                                              ; preds = %232, %152
  %.020 = phi float* [ %135, %152 ], [ %.016, %232 ]
  %.016 = phi float* [ %136, %152 ], [ %.020, %232 ]
  %.010 = phi i32 [ 1, %152 ], [ %233, %232 ]
  %.05 = phi float [ -1.000000e+09, %152 ], [ %.16, %232 ]
  %.02 = phi i32 [ 0, %152 ], [ %.13, %232 ]
  %.01 = phi i32 [ 0, %152 ], [ %.1, %232 ]
  %.not21 = icmp sgt i32 %.010, %25
  br i1 %.not21, label %234, label %161

161:                                              ; preds = %160
  %162 = load float*, float** @L__align11.initverticalw, align 8
  %163 = add nsw i32 %.010, -1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  store float %166, float* %.020, align 4
  call void @match_calc(float* noundef %.016, i8** noundef nonnull %0, i8** noundef nonnull %1, i32 noundef %.010, i32 noundef %28)
  %167 = load float*, float** @L__align11.initverticalw, align 8
  %168 = zext i32 %.010 to i64
  %169 = getelementptr inbounds float, float* %167, i64 %168
  %170 = load float, float* %169, align 4
  store float %170, float* %.016, align 4
  %171 = load float, float* %.020, align 4
  store float %171, float* @L__align11.mi, align 4
  store i32 0, i32* @L__align11.mpi, align 4
  %172 = load i32**, i32*** @L__align11.ijp, align 8
  %173 = zext i32 %.010 to i64
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load float*, float** @L__align11.m, align 8
  %177 = load i32*, i32** @L__align11.mp, align 8
  br label %178

178:                                              ; preds = %221, %161
  %.pn = phi i32* [ %175, %161 ], [ %.015, %221 ]
  %.pn24 = phi float* [ %176, %161 ], [ %.014, %221 ]
  %.013 = phi float* [ %.020, %161 ], [ %222, %221 ]
  %.112 = phi i32 [ 1, %161 ], [ %223, %221 ]
  %.016.pn = phi float* [ %.016, %161 ], [ %.09, %221 ]
  %.pn25 = phi i32* [ %177, %161 ], [ %.08, %221 ]
  %.16 = phi float [ %.05, %161 ], [ %.27, %221 ]
  %.13 = phi i32 [ %.02, %161 ], [ %.24, %221 ]
  %.1 = phi i32 [ %.01, %161 ], [ %.2, %221 ]
  %.08 = getelementptr inbounds i32, i32* %.pn25, i64 1
  %.014 = getelementptr inbounds float, float* %.pn24, i64 1
  %.015 = getelementptr inbounds i32, i32* %.pn, i64 1
  %.09 = getelementptr inbounds float, float* %.016.pn, i64 1
  %.not22 = icmp sgt i32 %.112, %28
  br i1 %.not22, label %224, label %179

179:                                              ; preds = %178
  %180 = load float, float* %.013, align 4
  store i32 0, i32* %.015, align 4
  %181 = load float, float* @L__align11.mi, align 4
  %182 = fadd float %181, %12
  %183 = fcmp ogt float %182, %180
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @L__align11.mpi, align 4
  %.neg = sub i32 %185, %.112
  store i32 %.neg, i32* %.015, align 4
  br label %186

186:                                              ; preds = %184, %179
  %.017 = phi float [ %182, %184 ], [ %180, %179 ]
  %187 = load float, float* %.013, align 4
  %188 = load float, float* @L__align11.mi, align 4
  %189 = fcmp ogt float %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load float, float* %.013, align 4
  store float %191, float* @L__align11.mi, align 4
  %192 = add nsw i32 %.112, -1
  store i32 %192, i32* @L__align11.mpi, align 4
  br label %193

193:                                              ; preds = %190, %186
  %194 = load float, float* @L__align11.mi, align 4
  %195 = fadd float %194, %14
  store float %195, float* @L__align11.mi, align 4
  %196 = load float, float* %.014, align 4
  %197 = fadd float %196, %12
  %198 = fcmp ogt float %197, %.017
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32, i32* %.08, align 4
  %201 = sub nsw i32 %.010, %200
  store i32 %201, i32* %.015, align 4
  br label %202

202:                                              ; preds = %199, %193
  %.118 = phi float [ %197, %199 ], [ %.017, %193 ]
  %203 = load float, float* %.013, align 4
  %204 = load float, float* %.014, align 4
  %205 = fcmp ogt float %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load float, float* %.013, align 4
  store float %207, float* %.014, align 4
  %208 = add nsw i32 %.010, -1
  store i32 %208, i32* %.08, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = load float, float* %.014, align 4
  %211 = fadd float %210, %14
  store float %211, float* %.014, align 4
  %212 = fcmp olt float %.16, %.118
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213, %209
  %.27 = phi float [ %.118, %213 ], [ %.16, %209 ]
  %.24 = phi i32 [ %.010, %213 ], [ %.13, %209 ]
  %.2 = phi i32 [ %.112, %213 ], [ %.1, %209 ]
  %215 = fcmp olt float %.118, %8
  br i1 %215, label %216, label %218

216:                                              ; preds = %214
  %217 = load i32, i32* @localstop, align 4
  store i32 %217, i32* %.015, align 4
  br label %218

218:                                              ; preds = %216, %214
  %.219 = phi float [ %10, %216 ], [ %.118, %214 ]
  %219 = load float, float* %.09, align 4
  %220 = fadd float %219, %.219
  store float %220, float* %.09, align 4
  br label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds float, float* %.013, i64 1
  %223 = add nuw nsw i32 %.112, 1
  br label %178, !llvm.loop !6

224:                                              ; preds = %178
  %225 = shl i64 %27, 32
  %sext23 = add i64 %225, -4294967296
  %226 = ashr exact i64 %sext23, 32
  %227 = getelementptr inbounds float, float* %.016, i64 %226
  %228 = load float, float* %227, align 4
  %229 = load float*, float** @L__align11.lastverticalw, align 8
  %230 = zext i32 %.010 to i64
  %231 = getelementptr inbounds float, float* %229, i64 %230
  store float %228, float* %231, align 4
  br label %232

232:                                              ; preds = %224
  %233 = add nuw nsw i32 %.010, 1
  br label %160, !llvm.loop !7

234:                                              ; preds = %160
  %235 = load i32**, i32*** @L__align11.ijp, align 8
  %236 = sext i32 %.02 to i64
  %237 = getelementptr inbounds i32*, i32** %235, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = sext i32 %.01 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @localstop, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %234
  %245 = load i8*, i8** %0, align 8
  store i8 0, i8* %245, align 1
  %246 = load i8*, i8** %1, align 8
  store i8 0, i8* %246, align 1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %272

247:                                              ; preds = %234
  %248 = load float*, float** @L__align11.lastverticalw, align 8
  %249 = load i8**, i8*** @L__align11.mseq1, align 8
  %250 = load i8**, i8*** @L__align11.mseq2, align 8
  %251 = load i32**, i32*** @L__align11.ijp, align 8
  %252 = call float @Ltracking(float* noundef %.020, float* noundef %248, i8** noundef nonnull %0, i8** noundef nonnull %1, i8** noundef %249, i8** noundef %250, i32** noundef %251, i32* noundef %3, i32* noundef %4, i32 noundef %.02, i32 noundef %.01)
  %253 = load i8**, i8*** @L__align11.mseq1, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %254) #8
  %256 = trunc i64 %255 to i32
  %257 = icmp sgt i32 %256, %2
  br i1 %257, label %260, label %258

258:                                              ; preds = %247
  %259 = icmp sgt i32 %256, 5000000
  br i1 %259, label %260, label %263

260:                                              ; preds = %258, %247
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %261, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef %256, i32 noundef 5000000) #9
  call void @ErrorExit(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %263

263:                                              ; preds = %260, %258
  %264 = load i8*, i8** %0, align 8
  %265 = load i8**, i8*** @L__align11.mseq1, align 8
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %264, i8* noundef nonnull dereferenceable(1) %266) #7
  %268 = load i8*, i8** %1, align 8
  %269 = load i8**, i8*** @L__align11.mseq2, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %268, i8* noundef nonnull dereferenceable(1) %270) #7
  br label %272

272:                                              ; preds = %263, %244
  %.0 = phi float [ 0.000000e+00, %244 ], [ %.05, %263 ]
  ret float %.0
}

declare dso_local i8** @AllocateCharMtx(i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @FreeFloatVec(float* noundef) #1

declare dso_local void @FreeIntVec(i32* noundef) #1

declare dso_local void @FreeCharMtx(i8** noundef) #1

declare dso_local float* @AllocateFloatVec(i32 noundef) #1

declare dso_local i32* @AllocateIntVec(i32 noundef) #1

declare dso_local void @FreeIntMtx(i32** noundef) #1

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
  br label %12, !llvm.loop !8

22:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: nofree noinline nounwind uwtable
define internal float @Ltracking(float* nocapture noundef readnone %0, float* nocapture noundef readnone %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i8** nocapture noundef %4, i8** nocapture noundef %5, i32** nocapture noundef readonly %6, i32* nocapture noundef writeonly %7, i32* nocapture noundef writeonly %8, i32 noundef %9, i32 noundef %10) #5 {
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #8
  %14 = trunc i64 %13 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #8
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %24, %11
  %.013 = phi i32 [ 0, %11 ], [ %25, %24 ]
  %.not = icmp sgt i32 %.013, %14
  br i1 %.not, label %26, label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @localstop, align 4
  %21 = zext i32 %.013 to i64
  %22 = getelementptr inbounds i32*, i32** %6, i64 %21
  %23 = load i32*, i32** %22, align 8
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %.013, 1
  br label %18, !llvm.loop !9

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %33, %26
  %.012 = phi i32 [ 0, %26 ], [ %34, %33 ]
  %.not20 = icmp sgt i32 %.012, %17
  br i1 %.not20, label %35, label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @localstop, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = zext i32 %.012 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %.012, 1
  br label %27, !llvm.loop !10

35:                                               ; preds = %27
  %36 = add i64 %13, %16
  %37 = load i8*, i8** %4, align 8
  %sext = shl i64 %36, 32
  %38 = ashr exact i64 %sext, 32
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  store i8 0, i8* %39, align 1
  %40 = add i64 %13, %16
  %41 = load i8*, i8** %5, align 8
  %sext21 = shl i64 %40, 32
  %42 = ashr exact i64 %sext21, 32
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  store i8 0, i8* %43, align 1
  %44 = add nsw i32 %14, %17
  br label %45

45:                                               ; preds = %139, %35
  %.09 = phi i32 [ %9, %35 ], [ %.23, %139 ]
  %.08 = phi i32 [ %10, %35 ], [ %.2, %139 ]
  %.05 = phi i32 [ 0, %35 ], [ %140, %139 ]
  %.01 = phi i32 [ 0, %35 ], [ %.23, %139 ]
  %.0 = phi i32 [ 0, %35 ], [ %.2, %139 ]
  %.not22 = icmp sgt i32 %.05, %44
  br i1 %.not22, label %.loopexit, label %46

46:                                               ; preds = %45
  %47 = sext i32 %.09 to i64
  %48 = getelementptr inbounds i32*, i32** %6, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = sext i32 %.08 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = add nsw i32 %.09, -1
  %56 = sext i32 %.09 to i64
  %57 = getelementptr inbounds i32*, i32** %6, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = sext i32 %.08 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  br label %81

62:                                               ; preds = %46
  %63 = sext i32 %.09 to i64
  %64 = getelementptr inbounds i32*, i32** %6, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = sext i32 %.08 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = sext i32 %.09 to i64
  %72 = getelementptr inbounds i32*, i32** %6, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = sext i32 %.08 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %.09, %76
  br label %80

78:                                               ; preds = %62
  %79 = add nsw i32 %.09, -1
  br label %80

80:                                               ; preds = %78, %70
  %.12 = phi i32 [ %77, %70 ], [ %79, %78 ]
  br label %81

81:                                               ; preds = %80, %54
  %.23 = phi i32 [ %55, %54 ], [ %.12, %80 ]
  %.pn = phi i32 [ %61, %54 ], [ -1, %80 ]
  %.2 = add nsw i32 %.08, %.pn
  %82 = sub nsw i32 %.09, %.23
  br label %83

83:                                               ; preds = %85, %81
  %.010 = phi i32 [ %82, %81 ], [ %84, %85 ]
  %.16 = phi i32 [ %.05, %81 ], [ %95, %85 ]
  %84 = add nsw i32 %.010, -1
  %.not24 = icmp eq i32 %84, 0
  br i1 %.not24, label %96, label %85

85:                                               ; preds = %83
  %86 = load i8*, i8** %2, align 8
  %87 = add nsw i32 %.23, %84
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  store i8* %92, i8** %4, align 8
  store i8 %90, i8* %92, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  store i8* %94, i8** %5, align 8
  store i8 45, i8* %94, align 1
  %95 = add nsw i32 %.16, 1
  br label %83, !llvm.loop !11

96:                                               ; preds = %83
  %97 = sub i32 0, %.pn
  br label %98

98:                                               ; preds = %100, %96
  %.111 = phi i32 [ %97, %96 ], [ %99, %100 ]
  %.27 = phi i32 [ %.16, %96 ], [ %110, %100 ]
  %99 = add nsw i32 %.111, -1
  %.not25 = icmp eq i32 %99, 0
  br i1 %.not25, label %111, label %100

100:                                              ; preds = %98
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -1
  store i8* %102, i8** %4, align 8
  store i8 45, i8* %102, align 1
  %103 = load i8*, i8** %3, align 8
  %104 = add nsw i32 %.2, %99
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  store i8* %109, i8** %5, align 8
  store i8 %107, i8* %109, align 1
  %110 = add nsw i32 %.27, 1
  br label %98, !llvm.loop !12

111:                                              ; preds = %98
  %112 = icmp slt i32 %.09, 1
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = icmp slt i32 %.08, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %113, %111
  br label %141

116:                                              ; preds = %113
  %117 = load i8*, i8** %2, align 8
  %118 = sext i32 %.23 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  store i8* %122, i8** %4, align 8
  store i8 %120, i8* %122, align 1
  %123 = load i8*, i8** %3, align 8
  %124 = sext i32 %.2 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  store i8* %128, i8** %5, align 8
  store i8 %126, i8* %128, align 1
  %129 = sext i32 %.23 to i64
  %130 = getelementptr inbounds i32*, i32** %6, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = sext i32 %.2 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @localstop, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  br label %141

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138
  %140 = add nsw i32 %.27, 2
  br label %45, !llvm.loop !13

.loopexit:                                        ; preds = %45
  br label %141

141:                                              ; preds = %.loopexit, %137, %115
  %.34 = phi i32 [ %.23, %115 ], [ %.23, %137 ], [ %.01, %.loopexit ]
  %.3 = phi i32 [ %.2, %115 ], [ %.2, %137 ], [ %.0, %.loopexit ]
  %142 = icmp eq i32 %.34, -1
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  br label %145

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %144, %143
  %storemerge = phi i32 [ %.34, %144 ], [ 0, %143 ]
  store i32 %storemerge, i32* %7, align 4
  %146 = icmp eq i32 %.3, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %145
  br label %149

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148, %147
  %storemerge23 = phi i32 [ %.3, %148 ], [ 0, %147 ]
  store i32 %storemerge23, i32* %8, align 4
  ret float 0.000000e+00
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @ErrorExit(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
