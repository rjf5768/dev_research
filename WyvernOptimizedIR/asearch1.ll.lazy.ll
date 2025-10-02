; ModuleID = './asearch1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/asearch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = external dso_local global i32, align 4
@Init1 = external dso_local global i32, align 4
@DD = external dso_local global i32, align 4
@S = external dso_local global i32, align 4
@NO_ERR_MASK = external dso_local global i32, align 4
@D_endpos = external dso_local global i32, align 4
@Init = external dso_local global [0 x i32], align 4
@DELIMITER = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4
@AND = external dso_local global i32, align 4
@endposition = external dso_local global i32, align 4
@INVERSE = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@num_of_matched = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@TRUNCATE = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch1(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [17 x i32], align 16
  %5 = alloca [17 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  %7 = load i32, i32* @I, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i32, i32* @DD, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = add i32 %2, 1
  store i32 %14, i32* @DD, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* @I, align 4
  %17 = icmp ugt i32 %16, %2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = add i32 %2, 1
  store i32 %19, i32* @I, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @S, align 4
  %22 = icmp ugt i32 %21, %2
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = add i32 %2, 1
  store i32 %24, i32* @S, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49151
  store i8 10, i8* %28, align 1
  %29 = load i32, i32* @NO_ERR_MASK, align 4
  %30 = load i32, i32* @D_endpos, align 4
  br label %31

31:                                               ; preds = %34, %25
  %.019 = phi i32 [ %30, %25 ], [ %36, %34 ]
  %.09 = phi i32 [ 1, %25 ], [ %37, %34 ]
  %32 = icmp ult i32 %.09, %27
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = shl i32 %.019, 1
  %36 = or i32 %35, %.019
  %37 = add i32 %.09, 1
  br label %31, !llvm.loop !4

38:                                               ; preds = %31
  %39 = xor i32 %.019, -1
  %40 = load i32, i32* @D_endpos, align 4
  %41 = add i32 %2, 1
  %42 = shl i32 %2, 1
  br label %43

43:                                               ; preds = %50, %38
  %.012 = phi i32 [ 0, %38 ], [ %51, %50 ]
  %44 = icmp ult i32 %.012, %2
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = zext i32 %.012 to i64
  %47 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %46
  store i32 0, i32* %47, align 4
  %48 = zext i32 %.012 to i64
  %49 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %45
  %51 = add i32 %.012, 1
  br label %43, !llvm.loop !6

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %60, %52
  %.113 = phi i32 [ %2, %52 ], [ %61, %60 ]
  %.not = icmp ugt i32 %.113, %42
  br i1 %.not, label %62, label %54

54:                                               ; preds = %53
  %55 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %56 = zext i32 %.113 to i64
  %57 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = zext i32 %.113 to i64
  %59 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = add i32 %.113, 1
  br label %53, !llvm.loop !7

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %437, %62
  %.01 = phi i32 [ 49152, %62 ], [ %.56, %437 ]
  %.0 = phi i32 [ 0, %62 ], [ %.4, %437 ]
  %64 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %65 = call i32 @fill_buf(i32 noundef %1, i8* noundef nonnull %64, i32 noundef 49152) #6
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %438

67:                                               ; preds = %63
  %68 = add nsw i32 %65, 49152
  br i1 false, label %69, label %80

69:                                               ; preds = %67
  br i1 undef, label %70, label %79

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %75, %70
  br i1 undef, label %72, label %.loopexit

72:                                               ; preds = %71
  br i1 undef, label %73, label %74

73:                                               ; preds = %72
  br label %76

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  br label %71, !llvm.loop !8

.loopexit:                                        ; preds = %71
  br label %76

76:                                               ; preds = %.loopexit, %73
  br i1 undef, label %77, label %78

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %69
  br label %80

80:                                               ; preds = %79, %67
  %.110 = phi i32 [ 49151, %79 ], [ 49152, %67 ]
  %81 = icmp slt i32 %65, 49152
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %84 = sext i32 %65 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %sext = shl i64 %26, 32
  %86 = ashr exact i64 %sext, 32
  %87 = call i8* @strncpy(i8* noundef nonnull %85, i8* noundef %0, i64 noundef %86) #6
  %88 = add i32 %68, %27
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %82, %80
  %.08 = phi i32 [ %88, %82 ], [ %68, %80 ]
  br label %92

92:                                               ; preds = %416, %91
  %.211 = phi i32 [ %.110, %91 ], [ %255, %416 ]
  %.12 = phi i32 [ %.01, %91 ], [ %.34, %416 ]
  %.4 = phi i32 [ %.0, %91 ], [ %.6, %416 ]
  %93 = icmp ult i32 %.211, %.08
  br i1 %93, label %94, label %417

94:                                               ; preds = %92
  %95 = add i32 %.211, 1
  %96 = zext i32 %.211 to i64
  %97 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @Init1, align 4
  %103 = zext i32 %2 to i64
  %104 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  %107 = zext i32 %2 to i64
  %108 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = lshr i32 %109, 1
  %111 = and i32 %110, %101
  %112 = or i32 %111, %106
  %113 = zext i32 %2 to i64
  %114 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %113
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %147, %94
  %.315 = phi i32 [ %41, %94 ], [ %148, %147 ]
  %.not26 = icmp ugt i32 %.315, %42
  br i1 %.not26, label %149, label %116

116:                                              ; preds = %115
  %117 = zext i32 %.315 to i64
  %118 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @Init1, align 4
  %121 = and i32 %120, %119
  %122 = lshr i32 %119, 1
  %123 = and i32 %122, %101
  %124 = load i32, i32* @I, align 4
  %125 = sub i32 %.315, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %123, %128
  %130 = load i32, i32* @DD, align 4
  %131 = sub i32 %.315, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @S, align 4
  %136 = sub i32 %.315, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %134, %139
  %141 = lshr i32 %140, 1
  %142 = and i32 %141, %29
  %143 = or i32 %129, %142
  %144 = or i32 %143, %121
  %145 = zext i32 %.315 to i64
  %146 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %145
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %116
  %148 = add i32 %.315, 1
  br label %115, !llvm.loop !9

149:                                              ; preds = %115
  %150 = zext i32 %2 to i64
  %151 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %40
  %.not27 = icmp eq i32 %153, 0
  br i1 %.not27, label %254, label %154

154:                                              ; preds = %149
  %155 = add nsw i32 %.4, 1
  %156 = load i32, i32* @AND, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = shl i32 %2, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %160
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @endposition, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, %163
  br i1 %165, label %181, label %166

166:                                              ; preds = %158, %154
  %167 = load i32, i32* @AND, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = shl i32 %2, 1
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %171
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @endposition, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br label %177

177:                                              ; preds = %169, %166
  %178 = phi i1 [ false, %166 ], [ %176, %169 ]
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* @INVERSE, align 4
  %.not34 = icmp eq i32 %180, %179
  br i1 %.not34, label %193, label %181

181:                                              ; preds = %177, %158
  %182 = load i32, i32* @FILENAMEONLY, align 4
  %.not37 = icmp eq i32 %182, 0
  br i1 %.not37, label %186, label %183

183:                                              ; preds = %181
  %184 = load i32, i32* @num_of_matched, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @num_of_matched, align 4
  %puts38 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %439

186:                                              ; preds = %181
  %187 = add nsw i32 %65, 49152
  %188 = icmp slt i32 %.12, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  %191 = sub i32 %.211, %27
  call void @output(i8* noundef nonnull %190, i32 noundef %.12, i32 noundef %191, i32 noundef %155) #6
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %177
  %194 = sub i32 %95, %27
  store i32 0, i32* @TRUNCATE, align 4
  br label %195

195:                                              ; preds = %202, %193
  %.416 = phi i32 [ %2, %193 ], [ %203, %202 ]
  %.not35 = icmp ugt i32 %.416, %42
  br i1 %.not35, label %204, label %196

196:                                              ; preds = %195
  %197 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %198 = zext i32 %.416 to i64
  %199 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %198
  store i32 %197, i32* %199, align 4
  %200 = zext i32 %.416 to i64
  %201 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %200
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %196
  %203 = add i32 %.416, 1
  br label %195, !llvm.loop !10

204:                                              ; preds = %195
  %205 = load i32, i32* @Init1, align 4
  %206 = zext i32 %2 to i64
  %207 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %205, %208
  %210 = zext i32 %2 to i64
  %211 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = lshr i32 %212, 1
  %214 = and i32 %213, %101
  %215 = or i32 %214, %209
  %216 = and i32 %215, %39
  %217 = zext i32 %2 to i64
  %218 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %217
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %251, %204
  %.517 = phi i32 [ %41, %204 ], [ %252, %251 ]
  %.not36 = icmp ugt i32 %.517, %42
  br i1 %.not36, label %253, label %220

220:                                              ; preds = %219
  %221 = zext i32 %.517 to i64
  %222 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @Init1, align 4
  %225 = and i32 %224, %223
  %226 = lshr i32 %223, 1
  %227 = and i32 %226, %101
  %228 = load i32, i32* @I, align 4
  %229 = sub i32 %.517, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %227, %232
  %234 = load i32, i32* @DD, align 4
  %235 = sub i32 %.517, %234
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @S, align 4
  %240 = sub i32 %.517, %239
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %238, %243
  %245 = lshr i32 %244, 1
  %246 = and i32 %245, %29
  %247 = or i32 %233, %246
  %248 = or i32 %247, %225
  %249 = zext i32 %.517 to i64
  %250 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %249
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %220
  %252 = add i32 %.517, 1
  br label %219, !llvm.loop !11

253:                                              ; preds = %219
  br label %254

254:                                              ; preds = %253, %149
  %.23 = phi i32 [ %194, %253 ], [ %.12, %149 ]
  %.5 = phi i32 [ %155, %253 ], [ %.4, %149 ]
  %255 = add i32 %.211, 2
  %256 = zext i32 %95 to i64
  %257 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i64
  %260 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = zext i32 %2 to i64
  %263 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @Init1, align 4
  %266 = and i32 %264, %265
  %267 = zext i32 %2 to i64
  %268 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = lshr i32 %269, 1
  %271 = and i32 %270, %261
  %272 = or i32 %271, %266
  %273 = zext i32 %2 to i64
  %274 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %273
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %310, %254
  %.618 = phi i32 [ %41, %254 ], [ %311, %310 ]
  %.not28 = icmp ugt i32 %.618, %42
  br i1 %.not28, label %312, label %276

276:                                              ; preds = %275
  %277 = zext i32 %.618 to i64
  %278 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @Init1, align 4
  %281 = and i32 %279, %280
  %282 = zext i32 %.618 to i64
  %283 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = lshr i32 %284, 1
  %286 = and i32 %285, %261
  %287 = load i32, i32* @I, align 4
  %288 = sub i32 %.618, %287
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %286, %291
  %293 = load i32, i32* @DD, align 4
  %294 = sub i32 %.618, %293
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @S, align 4
  %299 = sub i32 %.618, %298
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %297, %302
  %304 = lshr i32 %303, 1
  %305 = and i32 %304, %29
  %306 = or i32 %292, %305
  %307 = or i32 %306, %281
  %308 = zext i32 %.618 to i64
  %309 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %308
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %276
  %311 = add i32 %.618, 1
  br label %275, !llvm.loop !12

312:                                              ; preds = %275
  %313 = zext i32 %2 to i64
  %314 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, %40
  %.not29 = icmp eq i32 %316, 0
  br i1 %.not29, label %416, label %317

317:                                              ; preds = %312
  %318 = add nsw i32 %.5, 1
  %319 = load i32, i32* @AND, align 4
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %321, label %328

321:                                              ; preds = %317
  %322 = zext i32 %42 to i64
  %323 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %322
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @endposition, align 4
  %326 = and i32 %324, %325
  %327 = icmp eq i32 %326, %325
  br i1 %327, label %342, label %328

328:                                              ; preds = %321, %317
  %329 = load i32, i32* @AND, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = zext i32 %42 to i64
  %333 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %332
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @endposition, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br label %338

338:                                              ; preds = %331, %328
  %339 = phi i1 [ false, %328 ], [ %337, %331 ]
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* @INVERSE, align 4
  %.not30 = icmp eq i32 %341, %340
  br i1 %.not30, label %355, label %342

342:                                              ; preds = %338, %321
  %343 = load i32, i32* @FILENAMEONLY, align 4
  %.not33 = icmp eq i32 %343, 0
  br i1 %.not33, label %347, label %344

344:                                              ; preds = %342
  %345 = load i32, i32* @num_of_matched, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* @num_of_matched, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %439

347:                                              ; preds = %342
  %348 = add nsw i32 %65, 49152
  %349 = icmp slt i32 %.23, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 0
  %352 = xor i32 %27, -1
  %353 = add i32 %255, %352
  call void @output(i8* noundef nonnull %351, i32 noundef %.23, i32 noundef %353, i32 noundef %318) #6
  br label %354

354:                                              ; preds = %350, %347
  br label %355

355:                                              ; preds = %354, %338
  %356 = sub i32 %255, %27
  store i32 0, i32* @TRUNCATE, align 4
  br label %357

357:                                              ; preds = %364, %355
  %.7 = phi i32 [ %2, %355 ], [ %365, %364 ]
  %.not31 = icmp ugt i32 %.7, %42
  br i1 %.not31, label %366, label %358

358:                                              ; preds = %357
  %359 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %360 = zext i32 %.7 to i64
  %361 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %360
  store i32 %359, i32* %361, align 4
  %362 = zext i32 %.7 to i64
  %363 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %362
  store i32 %359, i32* %363, align 4
  br label %364

364:                                              ; preds = %358
  %365 = add i32 %.7, 1
  br label %357, !llvm.loop !13

366:                                              ; preds = %357
  %367 = load i32, i32* @Init1, align 4
  %368 = zext i32 %2 to i64
  %369 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %367, %370
  %372 = zext i32 %2 to i64
  %373 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = lshr i32 %374, 1
  %376 = and i32 %375, %261
  %377 = or i32 %376, %371
  %378 = and i32 %377, %39
  %379 = zext i32 %2 to i64
  %380 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %379
  store i32 %378, i32* %380, align 4
  br label %381

381:                                              ; preds = %413, %366
  %.8 = phi i32 [ %41, %366 ], [ %414, %413 ]
  %.not32 = icmp ugt i32 %.8, %42
  br i1 %.not32, label %415, label %382

382:                                              ; preds = %381
  %383 = zext i32 %.8 to i64
  %384 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @Init1, align 4
  %387 = and i32 %386, %385
  %388 = lshr i32 %385, 1
  %389 = and i32 %388, %261
  %390 = load i32, i32* @I, align 4
  %391 = sub i32 %.8, %390
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %389, %394
  %396 = load i32, i32* @DD, align 4
  %397 = sub i32 %.8, %396
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @S, align 4
  %402 = sub i32 %.8, %401
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds [17 x i32], [17 x i32]* %4, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = or i32 %400, %405
  %407 = lshr i32 %406, 1
  %408 = and i32 %407, %29
  %409 = or i32 %395, %408
  %410 = or i32 %409, %387
  %411 = zext i32 %.8 to i64
  %412 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %411
  store i32 %410, i32* %412, align 4
  br label %413

413:                                              ; preds = %382
  %414 = add i32 %.8, 1
  br label %381, !llvm.loop !14

415:                                              ; preds = %381
  br label %416

416:                                              ; preds = %415, %312
  %.34 = phi i32 [ %356, %415 ], [ %.23, %312 ]
  %.6 = phi i32 [ %318, %415 ], [ %.5, %312 ]
  br label %92, !llvm.loop !15

417:                                              ; preds = %92
  %418 = add nsw i32 %65, 49152
  %419 = sub nsw i32 %418, %.12
  %420 = icmp sgt i32 %419, 49152
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 1, i32* @TRUNCATE, align 4
  br label %422

422:                                              ; preds = %421, %417
  %.07 = phi i32 [ 49152, %421 ], [ %419, %417 ]
  %423 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 49152
  %424 = sext i32 %.07 to i64
  %425 = sub nsw i64 0, %424
  %426 = getelementptr inbounds i8, i8* %423, i64 %425
  %427 = sext i32 %.12 to i64
  %428 = getelementptr inbounds [98305 x i8], [98305 x i8]* %6, i64 0, i64 %427
  %429 = sext i32 %.07 to i64
  %430 = call i8* @strncpy(i8* noundef nonnull %426, i8* noundef nonnull %428, i64 noundef %429) #6
  %431 = sub nsw i32 49152, %.07
  %432 = icmp sgt i32 %.07, 49152
  br i1 %432, label %433, label %434

433:                                              ; preds = %422
  br label %434

434:                                              ; preds = %433, %422
  %.45 = phi i32 [ 1, %433 ], [ %431, %422 ]
  %435 = icmp slt i32 %65, 49152
  br i1 %435, label %436, label %437

436:                                              ; preds = %434
  br label %437

437:                                              ; preds = %436, %434
  %.56 = phi i32 [ 49152, %436 ], [ %.45, %434 ]
  br label %63, !llvm.loop !16

438:                                              ; preds = %63
  br label %439

439:                                              ; preds = %438, %344, %183
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fill_buf(i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!16 = distinct !{!16, !5}
