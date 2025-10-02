; ModuleID = './HuffEnc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/HuffEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Huffman_Generate(i32* nocapture noundef readonly %0, i32* noundef %1, i8* nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [64 x i32], align 16
  %7 = alloca [17 x i32], align 16
  %8 = alloca [17 x i32], align 16
  br label %9

9:                                                ; preds = %14, %5
  %.06 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %10 = icmp ult i32 %.06, 64
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = zext i32 %.06 to i64
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %12
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %11
  %15 = add i32 %.06, 1
  br label %9, !llvm.loop !4

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %32, %16
  %.1 = phi i32 [ 0, %16 ], [ %33, %32 ]
  %18 = icmp ult i32 %.1, %3
  br i1 %18, label %19, label %34

19:                                               ; preds = %17
  %20 = zext i32 %.1 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %22, 63
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i32 [ %22, %24 ], [ 63, %25 ]
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26
  %33 = add i32 %.1, 1
  br label %17, !llvm.loop !6

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %43, %34
  %.2 = phi i32 [ 1, %34 ], [ %45, %43 ]
  %.05 = phi i32 [ 0, %34 ], [ %44, %43 ]
  %36 = icmp ult i32 %.2, 64
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = zext i32 %.2 to i64
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %.2 to i64
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %41
  store i32 %.05, i32* %42, align 4
  br label %43

43:                                               ; preds = %37
  %44 = add i32 %.05, %40
  %45 = add i32 %.2, 1
  br label %35, !llvm.loop !7

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %72, %46
  %.3 = phi i32 [ 0, %46 ], [ %73, %72 ]
  %48 = icmp ult i32 %.3, %3
  br i1 %48, label %49, label %74

49:                                               ; preds = %47
  %50 = zext i32 %.3 to i64
  %51 = getelementptr inbounds i32, i32* %0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = zext i32 %.3 to i64
  %56 = getelementptr inbounds i8, i8* %2, i64 %55
  store i8 0, i8* %56, align 1
  br label %71

57:                                               ; preds = %49
  %58 = shl i32 %52, 10
  %59 = or i32 %.3, %58
  %60 = icmp ult i32 %52, 63
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32 [ %52, %61 ], [ 63, %62 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %1, i64 %69
  store i32 %59, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %54
  br label %72

72:                                               ; preds = %71
  %73 = add i32 %.3, 1
  br label %47, !llvm.loop !8

74:                                               ; preds = %47
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %75, align 16
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 62
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %1, i64 %78
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 63
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %81, %77
  call void @HeapSort(i32* noundef %79, i32 noundef %82) #2
  %83 = icmp ult i32 %.05, 2
  br i1 %83, label %84, label %98

84:                                               ; preds = %74
  %85 = icmp eq i32 %.05, 1
  br i1 %85, label %86, label %93

86:                                               ; preds = %84
  %87 = load i32, i32* %1, align 4
  %88 = and i32 %87, 1023
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = add nuw nsw i32 %88, 1
  br label %92

92:                                               ; preds = %90, %86
  %.015 = phi i32 [ %91, %90 ], [ %88, %86 ]
  br label %93

93:                                               ; preds = %92, %84
  %.116 = phi i32 [ %.015, %92 ], [ 1, %84 ]
  store i32 0, i32* %1, align 4
  %94 = zext i32 %.116 to i64
  %95 = getelementptr inbounds i32, i32* %1, i64 %94
  store i32 1, i32* %95, align 4
  %96 = zext i32 %.116 to i64
  %97 = getelementptr inbounds i8, i8* %2, i64 %96
  store i8 1, i8* %97, align 1
  store i8 1, i8* %2, align 1
  br label %273

98:                                               ; preds = %74
  br label %99

99:                                               ; preds = %167, %98
  %.017 = phi i32 [ 0, %98 ], [ %.219, %167 ]
  %.013 = phi i32 [ 0, %98 ], [ %166, %167 ]
  %.09 = phi i32 [ 0, %98 ], [ %.211, %167 ]
  %.not = icmp eq i32 %.09, %.05
  br i1 %.not, label %113, label %100

100:                                              ; preds = %99
  %101 = icmp eq i32 %.017, %.013
  br i1 %101, label %111, label %102

102:                                              ; preds = %100
  %103 = zext i32 %.09 to i64
  %104 = getelementptr inbounds i32, i32* %1, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %105, 10
  %107 = zext i32 %.017 to i64
  %108 = getelementptr inbounds i32, i32* %1, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = lshr i32 %109, 10
  %.not26 = icmp ugt i32 %106, %110
  br i1 %.not26, label %113, label %111

111:                                              ; preds = %102, %100
  %112 = add i32 %.09, 1
  br label %115

113:                                              ; preds = %102, %99
  %114 = add i32 %.017, 1
  br label %115

115:                                              ; preds = %113, %111
  %.118 = phi i32 [ %.017, %111 ], [ %114, %113 ]
  %.110 = phi i32 [ %112, %111 ], [ %.09, %113 ]
  %116 = phi i32 [ %.09, %111 ], [ %.017, %113 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %1, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -1024
  %121 = zext i32 %116 to i64
  %122 = getelementptr inbounds i32, i32* %1, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 1023
  %125 = shl i32 %.013, 10
  %126 = or i32 %124, %125
  %127 = zext i32 %116 to i64
  %128 = getelementptr inbounds i32, i32* %1, i64 %127
  store i32 %126, i32* %128, align 4
  %.not20 = icmp eq i32 %.110, %.05
  br i1 %.not20, label %142, label %129

129:                                              ; preds = %115
  %130 = icmp eq i32 %.118, %.013
  br i1 %130, label %140, label %131

131:                                              ; preds = %129
  %132 = zext i32 %.110 to i64
  %133 = getelementptr inbounds i32, i32* %1, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = lshr i32 %134, 10
  %136 = zext i32 %.118 to i64
  %137 = getelementptr inbounds i32, i32* %1, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = lshr i32 %138, 10
  %.not25 = icmp ugt i32 %135, %139
  br i1 %.not25, label %142, label %140

140:                                              ; preds = %131, %129
  %141 = add i32 %.110, 1
  br label %144

142:                                              ; preds = %131, %115
  %143 = add i32 %.118, 1
  br label %144

144:                                              ; preds = %142, %140
  %.219 = phi i32 [ %.118, %140 ], [ %143, %142 ]
  %.211 = phi i32 [ %141, %140 ], [ %.110, %142 ]
  %145 = phi i32 [ %.110, %140 ], [ %.118, %142 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %1, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, -1024
  %150 = add i32 %120, %149
  %151 = zext i32 %145 to i64
  %152 = getelementptr inbounds i32, i32* %1, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 1023
  %155 = shl i32 %.013, 10
  %156 = or i32 %154, %155
  %157 = zext i32 %145 to i64
  %158 = getelementptr inbounds i32, i32* %1, i64 %157
  store i32 %156, i32* %158, align 4
  %159 = zext i32 %.013 to i64
  %160 = getelementptr inbounds i32, i32* %1, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1023
  %163 = or i32 %162, %150
  %164 = zext i32 %.013 to i64
  %165 = getelementptr inbounds i32, i32* %1, i64 %164
  store i32 %163, i32* %165, align 4
  %166 = add i32 %.013, 1
  br label %167

167:                                              ; preds = %144
  %168 = sub i32 %.05, %166
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %99, label %170, !llvm.loop !9

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %176, %170
  %.312 = phi i32 [ 0, %170 ], [ %177, %176 ]
  %172 = icmp ult i32 %.312, 17
  br i1 %172, label %173, label %178

173:                                              ; preds = %171
  %174 = zext i32 %.312 to i64
  %175 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %174
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173
  %177 = add i32 %.312, 1
  br label %171, !llvm.loop !10

178:                                              ; preds = %171
  %179 = zext i32 %.013 to i64
  %180 = getelementptr inbounds i32, i32* %1, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 1023
  store i32 %182, i32* %180, align 4
  %183 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 1
  store i32 2, i32* %183, align 4
  br label %184

184:                                              ; preds = %213, %178
  %.114 = phi i32 [ %.013, %178 ], [ %186, %213 ]
  %.not21 = icmp eq i32 %.114, 0
  br i1 %.not21, label %223, label %185

185:                                              ; preds = %184
  %186 = add i32 %.114, -1
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %1, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = lshr i32 %189, 10
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %1, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = lshr i32 %193, 10
  %195 = add nuw nsw i32 %194, 1
  %196 = zext i32 %186 to i64
  %197 = getelementptr inbounds i32, i32* %1, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 1023
  %200 = shl i32 %195, 10
  %201 = or i32 %199, %200
  %202 = zext i32 %186 to i64
  %203 = getelementptr inbounds i32, i32* %1, i64 %202
  store i32 %201, i32* %203, align 4
  %.not24 = icmp ult i32 %195, %4
  br i1 %.not24, label %213, label %204

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %211, %204
  %.07.in = phi i32 [ %4, %204 ], [ %.07, %211 ]
  %.07 = add i32 %.07.in, -1
  %206 = zext i32 %.07 to i64
  %207 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210
  br label %205, !llvm.loop !11

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %185
  %.18 = phi i32 [ %.07, %212 ], [ %195, %185 ]
  %214 = zext i32 %.18 to i64
  %215 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, -1
  store i32 %217, i32* %215, align 4
  %218 = add i32 %.18, 1
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %221, 2
  store i32 %222, i32* %220, align 4
  br label %184, !llvm.loop !12

223:                                              ; preds = %184
  br label %224

224:                                              ; preds = %242, %223
  %.4 = phi i32 [ 0, %223 ], [ %.5, %242 ]
  %.04 = phi i32 [ %4, %223 ], [ %243, %242 ]
  %.not22 = icmp eq i32 %.04, 0
  br i1 %.not22, label %244, label %225

225:                                              ; preds = %224
  %226 = zext i32 %.04 to i64
  %227 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  br label %229

229:                                              ; preds = %238, %225
  %.5 = phi i32 [ %.4, %225 ], [ %239, %238 ]
  %.03 = phi i32 [ %228, %225 ], [ %240, %238 ]
  %.not23 = icmp eq i32 %.03, 0
  br i1 %.not23, label %241, label %230

230:                                              ; preds = %229
  %231 = trunc i32 %.04 to i8
  %232 = zext i32 %.5 to i64
  %233 = getelementptr inbounds i32, i32* %1, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 1023
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %2, i64 %236
  store i8 %231, i8* %237, align 1
  br label %238

238:                                              ; preds = %230
  %239 = add i32 %.5, 1
  %240 = add i32 %.03, -1
  br label %229, !llvm.loop !13

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241
  %243 = add i32 %.04, -1
  br label %224, !llvm.loop !14

244:                                              ; preds = %224
  br label %245

245:                                              ; preds = %256, %244
  %.02 = phi i32 [ 0, %244 ], [ %253, %256 ]
  %.01 = phi i32 [ 1, %244 ], [ %257, %256 ]
  %246 = icmp ult i32 %.01, 17
  br i1 %246, label %247, label %258

247:                                              ; preds = %245
  %248 = add i32 %.01, -1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %.02, %251
  %253 = shl i32 %252, 1
  %254 = zext i32 %.01 to i64
  %255 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 %254
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %247
  %257 = add i32 %.01, 1
  br label %245, !llvm.loop !15

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %271, %258
  %.0 = phi i32 [ 0, %258 ], [ %272, %271 ]
  %260 = icmp ult i32 %.0, %3
  br i1 %260, label %261, label %.loopexit

261:                                              ; preds = %259
  %262 = zext i32 %.0 to i64
  %263 = getelementptr inbounds i8, i8* %2, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds [17 x i32], [17 x i32]* %8, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %266, align 4
  %269 = zext i32 %.0 to i64
  %270 = getelementptr inbounds i32, i32* %1, i64 %269
  store i32 %267, i32* %270, align 4
  br label %271

271:                                              ; preds = %261
  %272 = add i32 %.0, 1
  br label %259, !llvm.loop !16

.loopexit:                                        ; preds = %259
  br label %273

273:                                              ; preds = %.loopexit, %93
  ret void
}

declare dso_local void @HeapSort(i32* noundef, i32 noundef) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
