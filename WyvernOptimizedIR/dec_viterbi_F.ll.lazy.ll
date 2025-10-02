; ModuleID = './dec_viterbi_F.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvector = type { i64, double* }
%struct.bitvector = type { i64, i8* }
%struct.dvarray = type { i64, %struct.dvector* }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

@.str = private unnamed_addr constant [55 x i8] c"0 && \22Synchronization in Viterbi: i_in > size(Dist,2)\22\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c\00", align 1
@__PRETTY_FUNCTION__.dec_viterbi_F = private unnamed_addr constant [110 x i8] c"void dec_viterbi_F(dvector *, unsigned char *, bitvector *, const dvarray *, const param_viterbi_t *, size_t)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dec_viterbi_F(%struct.dvector* nocapture noundef readonly %0, i8* nocapture noundef %1, %struct.bitvector* nocapture noundef %2, %struct.dvarray* nocapture noundef readonly %3, %struct.param_viterbi_t* nocapture noundef readonly %4, i64 noundef %5) #0 {
  %7 = alloca [128 x [143 x i8]], align 16
  %8 = alloca [128 x [144 x i8]], align 16
  %9 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %.not = icmp eq i64 %10, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %6
  call void @bitvector_clear(%struct.bitvector* noundef %2)
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp eq i64 %5, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %3, i64 0, i32 1
  %16 = load %struct.dvector*, %struct.dvector** %15, align 8
  %17 = getelementptr inbounds %struct.dvector, %struct.dvector* %16, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %14, %12
  %.011 = phi i64 [ %18, %14 ], [ %5, %12 ]
  call void @bitvector_init(%struct.bitvector* noundef %2, i64 noundef %.011)
  %20 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 %21, 3
  %23 = call noalias i8* @malloc(i64 noundef %22) #5
  %24 = bitcast i8* %23 to double*
  %25 = shl i64 %21, 3
  %26 = call noalias i8* @malloc(i64 noundef %25) #5
  %27 = bitcast i8* %26 to double*
  %28 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = shl i64 %29, 3
  %31 = call noalias i8* @malloc(i64 noundef %30) #5
  %32 = bitcast i8* %31 to double*
  %33 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 1
  %34 = bitcast double** %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 %37, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %35, i64 %38, i1 false)
  %39 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(18304) %39, i8* noundef nonnull align 1 dereferenceable(18304) %1, i64 18304, i1 false)
  br label %40

40:                                               ; preds = %297, %19
  %.012 = phi i64 [ 0, %19 ], [ %.214, %297 ]
  %.09 = phi i64 [ 0, %19 ], [ %.110, %297 ]
  %.0 = phi i64 [ 0, %19 ], [ %.1, %297 ]
  %41 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %.012, %42
  br i1 %43, label %44, label %298

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = shl i64 %46, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %23, i64 %47, i1 false)
  %48 = shl i64 %46, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %23, i64 %48, i1 false)
  %49 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 3, i64 %.09
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %87

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %83, %52
  %.04 = phi i64 [ 0, %52 ], [ %84, %83 ]
  %54 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %.04, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 6, i64 %.04
  %59 = load i8, i8* %58, align 1
  %60 = sub i8 1, %59
  %61 = getelementptr inbounds double, double* %27, i64 %.04
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %3, i64 0, i32 1
  %64 = load %struct.dvector*, %struct.dvector** %63, align 8
  %65 = sext i8 %59 to i64
  %66 = getelementptr inbounds %struct.dvector, %struct.dvector* %64, i64 %65, i32 1
  %67 = load double*, double** %66, align 8
  %68 = getelementptr inbounds double, double* %67, i64 %.012
  %69 = load double, double* %68, align 8
  %70 = fadd double %62, %69
  %71 = getelementptr inbounds double, double* %27, i64 %.04
  store double %70, double* %71, align 8
  %72 = getelementptr inbounds double, double* %32, i64 %.04
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %3, i64 0, i32 1
  %75 = load %struct.dvector*, %struct.dvector** %74, align 8
  %76 = sext i8 %60 to i64
  %77 = getelementptr inbounds %struct.dvector, %struct.dvector* %75, i64 %76, i32 1
  %78 = load double*, double** %77, align 8
  %79 = getelementptr inbounds double, double* %78, i64 %.012
  %80 = load double, double* %79, align 8
  %81 = fadd double %73, %80
  %82 = getelementptr inbounds double, double* %32, i64 %.04
  store double %81, double* %82, align 8
  br label %83

83:                                               ; preds = %57
  %84 = add i64 %.04, 1
  br label %53, !llvm.loop !4

85:                                               ; preds = %53
  %86 = add i64 %.012, 1
  br label %87

87:                                               ; preds = %85, %44
  %.113 = phi i64 [ %86, %85 ], [ %.012, %44 ]
  %88 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 4, i64 %.09
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 1
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 0
  %93 = load i64, i64* %92, align 8
  %.not17 = icmp ult i64 %.113, %93
  br i1 %.not17, label %95, label %94

94:                                               ; preds = %91
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__.dec_viterbi_F, i64 0, i64 0)) #6
  unreachable

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %126, %95
  %.15 = phi i64 [ 0, %95 ], [ %127, %126 ]
  %97 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %.15, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 7, i64 %.15
  %102 = load i8, i8* %101, align 1
  %103 = sub i8 1, %102
  %104 = getelementptr inbounds double, double* %27, i64 %.15
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %3, i64 0, i32 1
  %107 = load %struct.dvector*, %struct.dvector** %106, align 8
  %108 = sext i8 %102 to i64
  %109 = getelementptr inbounds %struct.dvector, %struct.dvector* %107, i64 %108, i32 1
  %110 = load double*, double** %109, align 8
  %111 = getelementptr inbounds double, double* %110, i64 %.113
  %112 = load double, double* %111, align 8
  %113 = fadd double %105, %112
  %114 = getelementptr inbounds double, double* %27, i64 %.15
  store double %113, double* %114, align 8
  %115 = getelementptr inbounds double, double* %32, i64 %.15
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %3, i64 0, i32 1
  %118 = load %struct.dvector*, %struct.dvector** %117, align 8
  %119 = sext i8 %103 to i64
  %120 = getelementptr inbounds %struct.dvector, %struct.dvector* %118, i64 %119, i32 1
  %121 = load double*, double** %120, align 8
  %122 = getelementptr inbounds double, double* %121, i64 %.113
  %123 = load double, double* %122, align 8
  %124 = fadd double %116, %123
  %125 = getelementptr inbounds double, double* %32, i64 %.15
  store double %124, double* %125, align 8
  br label %126

126:                                              ; preds = %100
  %127 = add i64 %.15, 1
  br label %96, !llvm.loop !6

128:                                              ; preds = %96
  %129 = add i64 %.113, 1
  br label %130

130:                                              ; preds = %128, %87
  %.214 = phi i64 [ %129, %128 ], [ %.113, %87 ]
  br label %131

131:                                              ; preds = %247, %130
  %.26 = phi i64 [ 0, %130 ], [ %248, %247 ]
  %132 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = lshr i64 %133, 1
  %135 = icmp ult i64 %.26, %134
  br i1 %135, label %136, label %249

136:                                              ; preds = %131
  %137 = shl i64 %.26, 1
  %138 = getelementptr inbounds double, double* %27, i64 %137
  %139 = load double, double* %138, align 8
  %140 = shl i64 %.26, 1
  %141 = or i64 %140, 1
  %142 = getelementptr inbounds double, double* %27, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fcmp ugt double %139, %143
  br i1 %144, label %162, label %145

145:                                              ; preds = %136
  %146 = shl i64 %.26, 1
  %147 = getelementptr inbounds double, double* %27, i64 %146
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds double, double* %24, i64 %.26
  store double %148, double* %149, align 8
  %150 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.26, i64 0
  store i8 0, i8* %150, align 16
  br label %151

151:                                              ; preds = %159, %145
  %.02 = phi i64 [ 0, %145 ], [ %160, %159 ]
  %152 = icmp ult i64 %.02, 143
  br i1 %152, label %153, label %161

153:                                              ; preds = %151
  %154 = shl i64 %.26, 1
  %155 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 %154, i64 %.02
  %156 = load i8, i8* %155, align 1
  %157 = add i64 %.02, 1
  %158 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.26, i64 %157
  store i8 %156, i8* %158, align 1
  br label %159

159:                                              ; preds = %153
  %160 = add i64 %.02, 1
  br label %151, !llvm.loop !7

161:                                              ; preds = %151
  br label %181

162:                                              ; preds = %136
  %163 = shl i64 %.26, 1
  %164 = or i64 %163, 1
  %165 = getelementptr inbounds double, double* %27, i64 %164
  %166 = load double, double* %165, align 8
  %167 = getelementptr inbounds double, double* %24, i64 %.26
  store double %166, double* %167, align 8
  %168 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.26, i64 0
  store i8 1, i8* %168, align 16
  br label %169

169:                                              ; preds = %178, %162
  %.13 = phi i64 [ 0, %162 ], [ %179, %178 ]
  %170 = icmp ult i64 %.13, 143
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = shl i64 %.26, 1
  %173 = or i64 %172, 1
  %174 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 %173, i64 %.13
  %175 = load i8, i8* %174, align 1
  %176 = add i64 %.13, 1
  %177 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.26, i64 %176
  store i8 %175, i8* %177, align 1
  br label %178

178:                                              ; preds = %171
  %179 = add i64 %.13, 1
  br label %169, !llvm.loop !8

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %161
  %182 = shl i64 %.26, 1
  %183 = getelementptr inbounds double, double* %32, i64 %182
  %184 = load double, double* %183, align 8
  %185 = shl i64 %.26, 1
  %186 = or i64 %185, 1
  %187 = getelementptr inbounds double, double* %32, i64 %186
  %188 = load double, double* %187, align 8
  %189 = fcmp ugt double %184, %188
  br i1 %189, label %217, label %190

190:                                              ; preds = %181
  %191 = shl i64 %.26, 1
  %192 = getelementptr inbounds double, double* %32, i64 %191
  %193 = load double, double* %192, align 8
  %194 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = lshr i64 %195, 1
  %197 = add i64 %.26, %196
  %198 = getelementptr inbounds double, double* %24, i64 %197
  store double %193, double* %198, align 8
  %199 = lshr i64 %195, 1
  %200 = add i64 %.26, %199
  %201 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %200, i64 0
  store i8 0, i8* %201, align 16
  br label %202

202:                                              ; preds = %214, %190
  %.2 = phi i64 [ 0, %190 ], [ %215, %214 ]
  %203 = icmp ult i64 %.2, 143
  br i1 %203, label %204, label %216

204:                                              ; preds = %202
  %205 = shl i64 %.26, 1
  %206 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 %205, i64 %.2
  %207 = load i8, i8* %206, align 1
  %208 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = lshr i64 %209, 1
  %211 = add i64 %.26, %210
  %212 = add i64 %.2, 1
  %213 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %211, i64 %212
  store i8 %207, i8* %213, align 1
  br label %214

214:                                              ; preds = %204
  %215 = add i64 %.2, 1
  br label %202, !llvm.loop !9

216:                                              ; preds = %202
  br label %246

217:                                              ; preds = %181
  %218 = shl i64 %.26, 1
  %219 = or i64 %218, 1
  %220 = getelementptr inbounds double, double* %32, i64 %219
  %221 = load double, double* %220, align 8
  %222 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = lshr i64 %223, 1
  %225 = add i64 %.26, %224
  %226 = getelementptr inbounds double, double* %24, i64 %225
  store double %221, double* %226, align 8
  %227 = lshr i64 %223, 1
  %228 = add i64 %.26, %227
  %229 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %228, i64 0
  store i8 1, i8* %229, align 16
  br label %230

230:                                              ; preds = %243, %217
  %.3 = phi i64 [ 0, %217 ], [ %244, %243 ]
  %231 = icmp ult i64 %.3, 143
  br i1 %231, label %232, label %245

232:                                              ; preds = %230
  %233 = shl i64 %.26, 1
  %234 = or i64 %233, 1
  %235 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 %234, i64 %.3
  %236 = load i8, i8* %235, align 1
  %237 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = lshr i64 %238, 1
  %240 = add i64 %.26, %239
  %241 = add i64 %.3, 1
  %242 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %240, i64 %241
  store i8 %236, i8* %242, align 1
  br label %243

243:                                              ; preds = %232
  %244 = add i64 %.3, 1
  br label %230, !llvm.loop !10

245:                                              ; preds = %230
  br label %246

246:                                              ; preds = %245, %216
  br label %247

247:                                              ; preds = %246
  %248 = add i64 %.26, 1
  br label %131, !llvm.loop !11

249:                                              ; preds = %131
  br label %250

250:                                              ; preds = %255, %249
  %.37 = phi i64 [ 0, %249 ], [ %261, %255 ]
  %.01 = phi i64 [ 0, %249 ], [ %260, %255 ]
  %251 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp ult i64 %.37, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  br label %255

255:                                              ; preds = %254
  %256 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.37, i64 143
  %257 = load i8, i8* %256, align 1
  %258 = icmp eq i8 %257, 0
  %259 = zext i1 %258 to i64
  %260 = add i64 %.01, %259
  %261 = add i64 %.37, 1
  br label %250, !llvm.loop !12

262:                                              ; preds = %250
  %263 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = lshr i64 %264, 1
  %.not16 = icmp ult i64 %.01, %265
  br i1 %.not16, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 %.0
  store i8 0, i8* %269, align 1
  br label %274

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 %.0
  store i8 1, i8* %273, align 1
  br label %274

274:                                              ; preds = %270, %266
  %.1 = add i64 %.0, 1
  br label %275

275:                                              ; preds = %289, %274
  %.48 = phi i64 [ 0, %274 ], [ %290, %289 ]
  %276 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ult i64 %.48, %277
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %286, %279
  %.4 = phi i64 [ 0, %279 ], [ %287, %286 ]
  %281 = icmp ult i64 %.4, 143
  br i1 %281, label %282, label %288

282:                                              ; preds = %280
  %283 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %8, i64 0, i64 %.48, i64 %.4
  %284 = load i8, i8* %283, align 1
  %285 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 %.48, i64 %.4
  store i8 %284, i8* %285, align 1
  br label %286

286:                                              ; preds = %282
  %287 = add i64 %.4, 1
  br label %280, !llvm.loop !13

288:                                              ; preds = %280
  br label %289

289:                                              ; preds = %288
  %290 = add i64 %.48, 1
  br label %275, !llvm.loop !14

291:                                              ; preds = %275
  %292 = add i64 %.09, 1
  %293 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i64 0, i32 5
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %292, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %291
  %.110 = phi i64 [ 0, %296 ], [ %292, %291 ]
  br label %40, !llvm.loop !15

298:                                              ; preds = %40
  %299 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i8* @realloc(i8* noundef %300, i64 noundef %.0) #5
  %302 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 1
  store i8* %301, i8** %302, align 8
  %303 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i64 0, i32 0
  store i64 %.0, i64* %303, align 8
  %304 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 1
  %305 = bitcast double** %304 to i8**
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = shl i64 %308, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %306, i8* align 8 %23, i64 %309, i1 false)
  %310 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %7, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(18304) %1, i8* noundef nonnull align 16 dereferenceable(18304) %310, i64 18304, i1 false)
  call void @free(i8* noundef %23) #5
  call void @free(i8* noundef %26) #5
  call void @free(i8* noundef %31) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bitvector_clear(%struct.bitvector* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #5
  %4 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 1
  store i8* null, i8** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bitvector_init(%struct.bitvector* nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 0
  store i64 %1, i64* %3, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = call noalias i8* @malloc(i64 noundef %1) #5
  %6 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 1
  store i8* %5, i8** %6, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 %1, i1 false)
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i64 0, i32 1
  store i8* null, i8** %8, align 8
  br label %9

9:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
