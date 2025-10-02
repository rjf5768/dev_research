; ModuleID = './matchpat.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/matchpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { [16 x %struct.patval], i32, i32, i32 }
%struct.patval = type { i32, i32, i32 }

@matchpat.pat = internal global [24 x %struct.pattern] zeroinitializer, align 16
@matchpat.trf = internal global [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@umove = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4
@lib = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @matchpat(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef %4) #0 {
  store i32 -1, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  br label %6

6:                                                ; preds = %250, %5
  %.013 = phi i32 [ 0, %5 ], [ %251, %250 ]
  %.06 = phi i32 [ undef, %5 ], [ %.17, %250 ]
  %.02 = phi i32 [ undef, %5 ], [ %.13, %250 ]
  %7 = icmp ult i32 %.013, 24
  br i1 %7, label %8, label %252

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %247, %8
  %.015 = phi i32 [ 0, %8 ], [ %248, %247 ]
  %.17 = phi i32 [ %.06, %8 ], [ %.28, %247 ]
  %.13 = phi i32 [ %.02, %8 ], [ %.24, %247 ]
  %10 = zext i32 %.013 to i64
  %11 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %10, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %.015, %12
  br i1 %13, label %14, label %249

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %166, %14
  %.014 = phi i32 [ 0, %14 ], [ %167, %166 ]
  %.010 = phi i32 [ 1, %14 ], [ %.111, %166 ]
  %.28 = phi i32 [ %.17, %14 ], [ %.39, %166 ]
  %.24 = phi i32 [ %.13, %14 ], [ %.35, %166 ]
  %16 = zext i32 %.013 to i64
  %17 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %16, i32 1
  %18 = load i32, i32* %17, align 4
  %.not = icmp eq i32 %.014, %18
  br i1 %.not, label %21, label %19

19:                                               ; preds = %15
  %20 = icmp ne i32 %.010, 0
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i1 [ false, %15 ], [ %20, %19 ]
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %21
  %24 = zext i32 %.015 to i64
  %25 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = zext i32 %.013 to i64
  %28 = zext i32 %.014 to i64
  %29 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %27, i32 0, i64 %28, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %26, %30
  %32 = add nsw i32 %31, %1
  %33 = zext i32 %.015 to i64
  %34 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %33, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %.013 to i64
  %37 = zext i32 %.014 to i64
  %38 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %36, i32 0, i64 %37, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  %41 = add nsw i32 %32, %40
  %42 = zext i32 %.015 to i64
  %43 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %42, i64 1, i64 0
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %.013 to i64
  %46 = zext i32 %.014 to i64
  %47 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %45, i32 0, i64 %46, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %44, %48
  %50 = add nsw i32 %49, %0
  %51 = zext i32 %.015 to i64
  %52 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %51, i64 1, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %.013 to i64
  %55 = zext i32 %.014 to i64
  %56 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %54, i32 0, i64 %55, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %53, %57
  %59 = add nsw i32 %50, %58
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %23
  %62 = icmp sgt i32 %59, 18
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = icmp slt i32 %41, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = icmp sgt i32 %41, 18
  br i1 %66, label %67, label %68

67:                                               ; preds = %65, %63, %61, %23
  br label %168

68:                                               ; preds = %65
  %69 = zext i32 %.013 to i64
  %70 = zext i32 %.014 to i64
  %71 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %69, i32 0, i64 %70, i32 2
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %166 [
    i32 0, label %73
    i32 1, label %81
    i32 2, label %91
    i32 3, label %101
    i32 4, label %114
    i32 5, label %130
    i32 6, label %148
  ]

73:                                               ; preds = %68
  %74 = sext i32 %59 to i64
  %75 = sext i32 %41 to i64
  %76 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %166

80:                                               ; preds = %73
  br label %166

81:                                               ; preds = %68
  %82 = sext i32 %59 to i64
  %83 = sext i32 %41 to i64
  %84 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* @umove, align 4
  %88 = icmp eq i32 %87, %86
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %166

90:                                               ; preds = %81
  br label %166

91:                                               ; preds = %68
  %92 = sext i32 %59 to i64
  %93 = sext i32 %41 to i64
  %94 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* @mymove, align 4
  %98 = icmp eq i32 %97, %96
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %166

100:                                              ; preds = %91
  br label %166

101:                                              ; preds = %68
  %102 = sext i32 %59 to i64
  %103 = sext i32 %41 to i64
  %104 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  store i32 0, i32* @lib, align 4
  %108 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %59, i32 noundef %41, i32 noundef %108) #2
  %109 = load i32, i32* @lib, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %166

112:                                              ; preds = %107
  br label %166

113:                                              ; preds = %101
  br label %166

114:                                              ; preds = %68
  %115 = sext i32 %59 to i64
  %116 = sext i32 %41 to i64
  %117 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = icmp eq i32 %59, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %120
  %123 = icmp eq i32 %59, 18
  br i1 %123, label %128, label %124

124:                                              ; preds = %122
  %125 = icmp eq i32 %41, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %124
  %127 = icmp eq i32 %41, 18
  br i1 %127, label %128, label %129

128:                                              ; preds = %126, %124, %122, %120
  br label %166

129:                                              ; preds = %126, %114
  br label %166

130:                                              ; preds = %68
  %131 = sext i32 %59 to i64
  %132 = sext i32 %41 to i64
  %133 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* @umove, align 4
  %137 = icmp eq i32 %136, %135
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = icmp eq i32 %59, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %138
  %141 = icmp eq i32 %59, 18
  br i1 %141, label %146, label %142

142:                                              ; preds = %140
  %143 = icmp eq i32 %41, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %142
  %145 = icmp eq i32 %41, 18
  br i1 %145, label %146, label %147

146:                                              ; preds = %144, %142, %140, %138
  br label %166

147:                                              ; preds = %144, %130
  br label %166

148:                                              ; preds = %68
  %149 = sext i32 %59 to i64
  %150 = sext i32 %41 to i64
  %151 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %149, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* @mymove, align 4
  %155 = icmp eq i32 %154, %153
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = icmp eq i32 %59, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %156
  %159 = icmp eq i32 %59, 18
  br i1 %159, label %164, label %160

160:                                              ; preds = %158
  %161 = icmp eq i32 %41, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %160
  %163 = icmp eq i32 %41, 18
  br i1 %163, label %164, label %165

164:                                              ; preds = %162, %160, %158, %156
  br label %166

165:                                              ; preds = %162, %148
  br label %166

166:                                              ; preds = %165, %164, %147, %146, %129, %128, %113, %112, %111, %100, %99, %90, %89, %80, %79, %68
  %.111 = phi i32 [ %.010, %68 ], [ %.010, %164 ], [ 0, %165 ], [ %.010, %146 ], [ 0, %147 ], [ %.010, %128 ], [ 0, %129 ], [ %.010, %111 ], [ 0, %112 ], [ 0, %113 ], [ %.010, %99 ], [ 0, %100 ], [ %.010, %89 ], [ 0, %90 ], [ %.010, %79 ], [ 0, %80 ]
  %.39 = phi i32 [ %.28, %68 ], [ %.28, %164 ], [ %.28, %165 ], [ %.28, %146 ], [ %.28, %147 ], [ %.28, %128 ], [ %.28, %129 ], [ %59, %111 ], [ %.28, %112 ], [ %.28, %113 ], [ %.28, %99 ], [ %.28, %100 ], [ %.28, %89 ], [ %.28, %90 ], [ %.28, %79 ], [ %.28, %80 ]
  %.35 = phi i32 [ %.24, %68 ], [ %.24, %164 ], [ %.24, %165 ], [ %.24, %146 ], [ %.24, %147 ], [ %.24, %128 ], [ %.24, %129 ], [ %41, %111 ], [ %.24, %112 ], [ %.24, %113 ], [ %.24, %99 ], [ %.24, %100 ], [ %.24, %89 ], [ %.24, %90 ], [ %.24, %79 ], [ %.24, %80 ]
  %167 = add nuw nsw i32 %.014, 1
  br label %15, !llvm.loop !4

.loopexit:                                        ; preds = %21
  br label %168

168:                                              ; preds = %.loopexit, %67
  %.212 = phi i32 [ 0, %67 ], [ %.010, %.loopexit ]
  %.not37 = icmp eq i32 %.212, 0
  br i1 %.not37, label %246, label %169

169:                                              ; preds = %168
  %170 = zext i32 %.013 to i64
  %171 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %170, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ugt i32 %.013, 7
  br i1 %173, label %174, label %241

174:                                              ; preds = %169
  %175 = icmp ult i32 %.013, 14
  br i1 %175, label %176, label %241

176:                                              ; preds = %174
  %177 = icmp slt i32 %.28, 9
  br i1 %177, label %178, label %180

178:                                              ; preds = %176
  %179 = sub i32 9, %.28
  br label %182

180:                                              ; preds = %176
  %181 = add nsw i32 %.28, -9
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  %184 = icmp sgt i32 %183, 7
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = add nsw i32 %172, -1
  br label %208

187:                                              ; preds = %182
  %188 = icmp slt i32 %.28, 9
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = sub i32 9, %.28
  br label %193

191:                                              ; preds = %187
  %192 = add nsw i32 %.28, -9
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = icmp eq i32 %194, 6
  br i1 %195, label %205, label %196

196:                                              ; preds = %193
  %197 = icmp slt i32 %.28, 9
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = sub i32 9, %.28
  br label %202

200:                                              ; preds = %196
  %201 = add nsw i32 %.28, -9
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = icmp eq i32 %203, 7
  br i1 %204, label %205, label %207

205:                                              ; preds = %202, %193
  %206 = add nsw i32 %172, 1
  br label %207

207:                                              ; preds = %205, %202
  %.01 = phi i32 [ %206, %205 ], [ %172, %202 ]
  br label %208

208:                                              ; preds = %207, %185
  %.1 = phi i32 [ %186, %185 ], [ %.01, %207 ]
  %209 = icmp slt i32 %.24, 9
  br i1 %209, label %210, label %212

210:                                              ; preds = %208
  %211 = sub i32 9, %.24
  br label %214

212:                                              ; preds = %208
  %213 = add nsw i32 %.24, -9
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = icmp sgt i32 %215, 7
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = add nsw i32 %.1, -1
  br label %240

219:                                              ; preds = %214
  %220 = icmp slt i32 %.24, 9
  br i1 %220, label %221, label %223

221:                                              ; preds = %219
  %222 = sub i32 9, %.24
  br label %225

223:                                              ; preds = %219
  %224 = add nsw i32 %.24, -9
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = icmp eq i32 %226, 6
  br i1 %227, label %237, label %228

228:                                              ; preds = %225
  %229 = icmp slt i32 %.24, 9
  br i1 %229, label %230, label %232

230:                                              ; preds = %228
  %231 = sub i32 9, %.24
  br label %234

232:                                              ; preds = %228
  %233 = add nsw i32 %.24, -9
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i32 [ %231, %230 ], [ %233, %232 ]
  %236 = icmp eq i32 %235, 7
  br i1 %236, label %237, label %239

237:                                              ; preds = %234, %225
  %238 = add nsw i32 %.1, 1
  br label %239

239:                                              ; preds = %237, %234
  %.2 = phi i32 [ %238, %237 ], [ %.1, %234 ]
  br label %240

240:                                              ; preds = %239, %217
  %.3 = phi i32 [ %218, %217 ], [ %.2, %239 ]
  br label %241

241:                                              ; preds = %240, %174, %169
  %.4 = phi i32 [ %.3, %240 ], [ %172, %174 ], [ %172, %169 ]
  %242 = load i32, i32* %4, align 4
  %243 = icmp sgt i32 %.4, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i32 %.4, i32* %4, align 4
  store i32 %.28, i32* %2, align 4
  store i32 %.24, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %245, %168
  br label %247

247:                                              ; preds = %246
  %248 = add nuw nsw i32 %.015, 1
  br label %9, !llvm.loop !6

249:                                              ; preds = %9
  br label %250

250:                                              ; preds = %249
  %251 = add nuw nsw i32 %.013, 1
  br label %6, !llvm.loop !7

252:                                              ; preds = %6
  %253 = load i32, i32* %4, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %257

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %255
  %.0 = phi i32 [ 1, %255 ], [ 0, %256 ]
  ret i32 %.0
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
