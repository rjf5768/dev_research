; ModuleID = './scal-to-vec2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @vlng() #0 {
  ret i64 42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @vint() #0 {
  ret i32 43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @vsrt() #0 {
  ret i16 42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @vchr() #0 {
  ret i8 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca <16 x i8>, align 16
  %4 = alloca <16 x i8>, align 16
  %5 = alloca <8 x i16>, align 16
  %6 = alloca <8 x i16>, align 16
  %7 = alloca <4 x i32>, align 16
  %8 = alloca <4 x i32>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca <2 x i64>, align 16
  %11 = trunc i32 %0 to i8
  %12 = trunc i32 %0 to i8
  %13 = insertelement <16 x i8> <i8 poison, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 poison, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, i8 %11, i64 0
  %14 = insertelement <16 x i8> %13, i8 %12, i64 8
  store <16 x i8> %14, <16 x i8>* %3, align 16
  %15 = trunc i32 %0 to i16
  %16 = insertelement <8 x i16> <i16 poison, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, i16 %15, i64 0
  store <8 x i16> %16, <8 x i16>* %5, align 16
  %17 = insertelement <4 x i32> <i32 poison, i32 1, i32 2, i32 3>, i32 %0, i64 0
  store <4 x i32> %17, <4 x i32>* %7, align 16
  %18 = sext i32 %0 to i64
  %19 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %18, i64 0
  store <2 x i64> %19, <2 x i64>* %9, align 16
  %20 = call signext i8 @vchr()
  %21 = insertelement <16 x i8> poison, i8 %20, i64 0
  %22 = shufflevector <16 x i8> %21, <16 x i8> poison, <16 x i32> zeroinitializer
  %23 = load <16 x i8>, <16 x i8>* %3, align 16
  %24 = add <16 x i8> %22, %23
  store <16 x i8> %24, <16 x i8>* %4, align 16
  br label %25

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %42, %25
  %.03 = phi i32 [ 0, %25 ], [ %43, %42 ]
  %27 = icmp ult i32 %.03, 16
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  %29 = zext i32 %.03 to i64
  %30 = getelementptr inbounds <16 x i8>, <16 x i8>* %4, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call signext i8 @vchr()
  %34 = sext i8 %33 to i32
  %35 = zext i32 %.03 to i64
  %36 = getelementptr inbounds <16 x i8>, <16 x i8>* %3, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %34, %38
  %.not18 = icmp eq i32 %39, %32
  br i1 %.not18, label %41, label %40

40:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.03, 1
  br label %26, !llvm.loop !4

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = call signext i16 @vsrt()
  %47 = insertelement <8 x i16> poison, i16 %46, i64 0
  %48 = shufflevector <8 x i16> %47, <8 x i16> poison, <8 x i32> zeroinitializer
  %49 = load <8 x i16>, <8 x i16>* %5, align 16
  %50 = add <8 x i16> %48, %49
  store <8 x i16> %50, <8 x i16>* %6, align 16
  br label %51

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %68, %51
  %.04 = phi i32 [ 0, %51 ], [ %69, %68 ]
  %53 = icmp ult i32 %.04, 8
  br i1 %53, label %54, label %70

54:                                               ; preds = %52
  %55 = zext i32 %.04 to i64
  %56 = getelementptr inbounds <8 x i16>, <8 x i16>* %6, i64 0, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i32
  %59 = call signext i16 @vsrt()
  %60 = sext i16 %59 to i32
  %61 = zext i32 %.04 to i64
  %62 = getelementptr inbounds <8 x i16>, <8 x i16>* %5, i64 0, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %60, %64
  %.not17 = icmp eq i32 %65, %58
  br i1 %.not17, label %67, label %66

66:                                               ; preds = %54
  call void @abort() #3
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = add nuw nsw i32 %.04, 1
  br label %52, !llvm.loop !6

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  %72 = call signext i8 @vchr()
  %73 = sext i8 %72 to i16
  %74 = insertelement <8 x i16> poison, i16 %73, i64 0
  %75 = shufflevector <8 x i16> %74, <8 x i16> poison, <8 x i32> zeroinitializer
  %76 = load <8 x i16>, <8 x i16>* %5, align 16
  %77 = add <8 x i16> %75, %76
  store <8 x i16> %77, <8 x i16>* %6, align 16
  br label %78

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %95, %78
  %.05 = phi i32 [ 0, %78 ], [ %96, %95 ]
  %80 = icmp ult i32 %.05, 8
  br i1 %80, label %81, label %97

81:                                               ; preds = %79
  %82 = zext i32 %.05 to i64
  %83 = getelementptr inbounds <8 x i16>, <8 x i16>* %6, i64 0, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = call signext i8 @vchr()
  %87 = sext i8 %86 to i32
  %88 = zext i32 %.05 to i64
  %89 = getelementptr inbounds <8 x i16>, <8 x i16>* %5, i64 0, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  %92 = add nsw i32 %87, %91
  %.not16 = icmp eq i32 %92, %85
  br i1 %.not16, label %94, label %93

93:                                               ; preds = %81
  call void @abort() #3
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = add nuw nsw i32 %.05, 1
  br label %79, !llvm.loop !7

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = call i32 @vint()
  %100 = insertelement <4 x i32> poison, i32 %99, i64 0
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> zeroinitializer
  %102 = load <4 x i32>, <4 x i32>* %7, align 16
  %103 = mul <4 x i32> %101, %102
  store <4 x i32> %103, <4 x i32>* %8, align 16
  br label %104

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %118, %104
  %.06 = phi i32 [ 0, %104 ], [ %119, %118 ]
  %106 = icmp ult i32 %.06, 4
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = zext i32 %.06 to i64
  %109 = getelementptr inbounds <4 x i32>, <4 x i32>* %8, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vint()
  %112 = zext i32 %.06 to i64
  %113 = getelementptr inbounds <4 x i32>, <4 x i32>* %7, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %.not15 = icmp eq i32 %110, %115
  br i1 %.not15, label %117, label %116

116:                                              ; preds = %107
  call void @abort() #3
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117
  %119 = add nuw nsw i32 %.06, 1
  br label %105, !llvm.loop !8

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120
  %122 = call signext i16 @vsrt()
  %123 = sext i16 %122 to i32
  %124 = insertelement <4 x i32> poison, i32 %123, i64 0
  %125 = shufflevector <4 x i32> %124, <4 x i32> poison, <4 x i32> zeroinitializer
  %126 = load <4 x i32>, <4 x i32>* %7, align 16
  %127 = mul <4 x i32> %125, %126
  store <4 x i32> %127, <4 x i32>* %8, align 16
  br label %128

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %143, %128
  %.07 = phi i32 [ 0, %128 ], [ %144, %143 ]
  %130 = icmp ult i32 %.07, 4
  br i1 %130, label %131, label %145

131:                                              ; preds = %129
  %132 = zext i32 %.07 to i64
  %133 = getelementptr inbounds <4 x i32>, <4 x i32>* %8, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call signext i16 @vsrt()
  %136 = sext i16 %135 to i32
  %137 = zext i32 %.07 to i64
  %138 = getelementptr inbounds <4 x i32>, <4 x i32>* %7, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, %136
  %.not14 = icmp eq i32 %134, %140
  br i1 %.not14, label %142, label %141

141:                                              ; preds = %131
  call void @abort() #3
  br label %UnifiedUnreachableBlock

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142
  %144 = add nuw nsw i32 %.07, 1
  br label %129, !llvm.loop !9

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145
  %147 = call signext i8 @vchr()
  %148 = sext i8 %147 to i32
  %149 = insertelement <4 x i32> poison, i32 %148, i64 0
  %150 = shufflevector <4 x i32> %149, <4 x i32> poison, <4 x i32> zeroinitializer
  %151 = load <4 x i32>, <4 x i32>* %7, align 16
  %152 = mul <4 x i32> %150, %151
  store <4 x i32> %152, <4 x i32>* %8, align 16
  br label %153

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %168, %153
  %.08 = phi i32 [ 0, %153 ], [ %169, %168 ]
  %155 = icmp ult i32 %.08, 4
  br i1 %155, label %156, label %170

156:                                              ; preds = %154
  %157 = zext i32 %.08 to i64
  %158 = getelementptr inbounds <4 x i32>, <4 x i32>* %8, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call signext i8 @vchr()
  %161 = sext i8 %160 to i32
  %162 = zext i32 %.08 to i64
  %163 = getelementptr inbounds <4 x i32>, <4 x i32>* %7, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %164, %161
  %.not13 = icmp eq i32 %159, %165
  br i1 %.not13, label %167, label %166

166:                                              ; preds = %156
  call void @abort() #3
  br label %UnifiedUnreachableBlock

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167
  %169 = add nuw nsw i32 %.08, 1
  br label %154, !llvm.loop !10

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170
  %172 = call i64 @vlng()
  %173 = insertelement <2 x i64> poison, i64 %172, i64 0
  %174 = shufflevector <2 x i64> %173, <2 x i64> poison, <2 x i32> zeroinitializer
  %175 = load <2 x i64>, <2 x i64>* %9, align 16
  %176 = mul <2 x i64> %174, %175
  store <2 x i64> %176, <2 x i64>* %10, align 16
  br label %177

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %191, %177
  %.09 = phi i32 [ 0, %177 ], [ %192, %191 ]
  %179 = icmp ult i32 %.09, 2
  br i1 %179, label %180, label %193

180:                                              ; preds = %178
  %181 = zext i32 %.09 to i64
  %182 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @vlng()
  %185 = zext i32 %.09 to i64
  %186 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = mul nsw i64 %184, %187
  %.not12 = icmp eq i64 %183, %188
  br i1 %.not12, label %190, label %189

189:                                              ; preds = %180
  call void @abort() #3
  br label %UnifiedUnreachableBlock

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190
  %192 = add nuw nsw i32 %.09, 1
  br label %178, !llvm.loop !11

193:                                              ; preds = %178
  br label %194

194:                                              ; preds = %193
  %195 = call i32 @vint()
  %196 = sext i32 %195 to i64
  %197 = insertelement <2 x i64> poison, i64 %196, i64 0
  %198 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> zeroinitializer
  %199 = load <2 x i64>, <2 x i64>* %9, align 16
  %200 = mul <2 x i64> %198, %199
  store <2 x i64> %200, <2 x i64>* %10, align 16
  br label %201

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %216, %201
  %.02 = phi i32 [ 0, %201 ], [ %217, %216 ]
  %203 = icmp ult i32 %.02, 2
  br i1 %203, label %204, label %218

204:                                              ; preds = %202
  %205 = zext i32 %.02 to i64
  %206 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @vint()
  %209 = sext i32 %208 to i64
  %210 = zext i32 %.02 to i64
  %211 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = mul nsw i64 %212, %209
  %.not11 = icmp eq i64 %207, %213
  br i1 %.not11, label %215, label %214

214:                                              ; preds = %204
  call void @abort() #3
  br label %UnifiedUnreachableBlock

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215
  %217 = add nuw nsw i32 %.02, 1
  br label %202, !llvm.loop !12

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218
  %220 = call signext i16 @vsrt()
  %221 = sext i16 %220 to i64
  %222 = insertelement <2 x i64> poison, i64 %221, i64 0
  %223 = shufflevector <2 x i64> %222, <2 x i64> poison, <2 x i32> zeroinitializer
  %224 = load <2 x i64>, <2 x i64>* %9, align 16
  %225 = mul <2 x i64> %223, %224
  store <2 x i64> %225, <2 x i64>* %10, align 16
  br label %226

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %241, %226
  %.01 = phi i32 [ 0, %226 ], [ %242, %241 ]
  %228 = icmp ult i32 %.01, 2
  br i1 %228, label %229, label %243

229:                                              ; preds = %227
  %230 = zext i32 %.01 to i64
  %231 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = call signext i16 @vsrt()
  %234 = sext i16 %233 to i64
  %235 = zext i32 %.01 to i64
  %236 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = mul nsw i64 %237, %234
  %.not10 = icmp eq i64 %232, %238
  br i1 %.not10, label %240, label %239

239:                                              ; preds = %229
  call void @abort() #3
  br label %UnifiedUnreachableBlock

240:                                              ; preds = %229
  br label %241

241:                                              ; preds = %240
  %242 = add nuw nsw i32 %.01, 1
  br label %227, !llvm.loop !13

243:                                              ; preds = %227
  br label %244

244:                                              ; preds = %243
  %245 = call signext i8 @vchr()
  %246 = sext i8 %245 to i64
  %247 = insertelement <2 x i64> poison, i64 %246, i64 0
  %248 = shufflevector <2 x i64> %247, <2 x i64> poison, <2 x i32> zeroinitializer
  %249 = load <2 x i64>, <2 x i64>* %9, align 16
  %250 = mul <2 x i64> %248, %249
  store <2 x i64> %250, <2 x i64>* %10, align 16
  br label %251

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %266, %251
  %.0 = phi i32 [ 0, %251 ], [ %267, %266 ]
  %253 = icmp ult i32 %.0, 2
  br i1 %253, label %254, label %268

254:                                              ; preds = %252
  %255 = zext i32 %.0 to i64
  %256 = getelementptr inbounds <2 x i64>, <2 x i64>* %10, i64 0, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = call signext i8 @vchr()
  %259 = sext i8 %258 to i64
  %260 = zext i32 %.0 to i64
  %261 = getelementptr inbounds <2 x i64>, <2 x i64>* %9, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = mul nsw i64 %262, %259
  %.not = icmp eq i64 %257, %263
  br i1 %.not, label %265, label %264

264:                                              ; preds = %254
  call void @abort() #3
  br label %UnifiedUnreachableBlock

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265
  %267 = add nuw nsw i32 %.0, 1
  br label %252, !llvm.loop !14

268:                                              ; preds = %252
  br label %269

269:                                              ; preds = %268
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %264, %239, %214, %189, %166, %141, %116, %93, %66, %40
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
