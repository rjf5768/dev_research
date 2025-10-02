; ModuleID = './scal-to-vec3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/scal-to-vec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca <4 x float>, align 16
  %4 = alloca <4 x float>, align 16
  %5 = alloca <2 x double>, align 16
  %6 = alloca <2 x double>, align 16
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %4, align 16
  br label %7

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %20, %7
  %.06 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %9 = icmp ult i32 %.06, 4
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = zext i32 %.06 to i64
  %12 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %11
  %13 = load float, float* %12, align 4
  %14 = zext i32 %.06 to i64
  %15 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %14
  %16 = load float, float* %15, align 4
  %17 = fcmp une float %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.06, 1
  br label %8, !llvm.loop !4

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float -2.000000e+00>, <4 x float>* %4, align 16
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %37, %24
  %.08 = phi i32 [ 0, %24 ], [ %38, %37 ]
  %26 = icmp ult i32 %.08, 4
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = zext i32 %.08 to i64
  %29 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = zext i32 %.08 to i64
  %32 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fcmp une float %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.08, 1
  br label %25, !llvm.loop !6

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %4, align 16
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %54, %41
  %.010 = phi i32 [ 0, %41 ], [ %55, %54 ]
  %43 = icmp ult i32 %.010, 4
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = zext i32 %.010 to i64
  %46 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = zext i32 %.010 to i64
  %49 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fcmp une float %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  call void @abort() #2
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.010, 1
  br label %42, !llvm.loop !7

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56
  store <4 x float> <float 2.000000e+00, float 1.000000e+00, float 0x3FE5555560000000, float 5.000000e-01>, <4 x float>* %3, align 16
  store <4 x float> <float 2.000000e+00, float 1.000000e+00, float 0x3FE5555560000000, float 5.000000e-01>, <4 x float>* %4, align 16
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %71, %58
  %.012 = phi i32 [ 0, %58 ], [ %72, %71 ]
  %60 = icmp ult i32 %.012, 4
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = zext i32 %.012 to i64
  %63 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = zext i32 %.012 to i64
  %66 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fcmp une float %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  call void @abort() #2
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = add nuw nsw i32 %.012, 1
  br label %59, !llvm.loop !8

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00>, <4 x float>* %4, align 16
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %88, %75
  %.014 = phi i32 [ 0, %75 ], [ %89, %88 ]
  %77 = icmp ult i32 %.014, 4
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = zext i32 %.014 to i64
  %80 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %79
  %81 = load float, float* %80, align 4
  %82 = zext i32 %.014 to i64
  %83 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fcmp une float %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  call void @abort() #2
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = add nuw nsw i32 %.014, 1
  br label %76, !llvm.loop !9

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x float>* %4, align 16
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %105, %92
  %.015 = phi i32 [ 0, %92 ], [ %106, %105 ]
  %94 = icmp ult i32 %.015, 4
  br i1 %94, label %95, label %107

95:                                               ; preds = %93
  %96 = zext i32 %.015 to i64
  %97 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %96
  %98 = load float, float* %97, align 4
  %99 = zext i32 %.015 to i64
  %100 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fcmp une float %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  call void @abort() #2
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = add nuw nsw i32 %.015, 1
  br label %93, !llvm.loop !10

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00>, <4 x float>* %4, align 16
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %122, %109
  %.013 = phi i32 [ 0, %109 ], [ %123, %122 ]
  %111 = icmp ult i32 %.013, 4
  br i1 %111, label %112, label %124

112:                                              ; preds = %110
  %113 = zext i32 %.013 to i64
  %114 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %113
  %115 = load float, float* %114, align 4
  %116 = zext i32 %.013 to i64
  %117 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fcmp une float %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  call void @abort() #2
  br label %UnifiedUnreachableBlock

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i32 %.013, 1
  br label %110, !llvm.loop !11

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00>, <4 x float>* %3, align 16
  store <4 x float> <float 5.000000e-01, float 1.000000e+00, float 1.500000e+00, float 2.000000e+00>, <4 x float>* %4, align 16
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %139, %126
  %.011 = phi i32 [ 0, %126 ], [ %140, %139 ]
  %128 = icmp ult i32 %.011, 4
  br i1 %128, label %129, label %141

129:                                              ; preds = %127
  %130 = zext i32 %.011 to i64
  %131 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 0, i64 %130
  %132 = load float, float* %131, align 4
  %133 = zext i32 %.011 to i64
  %134 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 0, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fcmp une float %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  call void @abort() #2
  br label %UnifiedUnreachableBlock

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138
  %140 = add nuw nsw i32 %.011, 1
  br label %127, !llvm.loop !12

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %6, align 16
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %156, %143
  %.09 = phi i32 [ 0, %143 ], [ %157, %156 ]
  %145 = icmp ult i32 %.09, 2
  br i1 %145, label %146, label %158

146:                                              ; preds = %144
  %147 = zext i32 %.09 to i64
  %148 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %147
  %149 = load double, double* %148, align 8
  %150 = zext i32 %.09 to i64
  %151 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fcmp une double %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  call void @abort() #2
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155
  %157 = add nuw nsw i32 %.09, 1
  br label %144, !llvm.loop !13

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double>* %6, align 16
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %173, %160
  %.07 = phi i32 [ 0, %160 ], [ %174, %173 ]
  %162 = icmp ult i32 %.07, 2
  br i1 %162, label %163, label %175

163:                                              ; preds = %161
  %164 = zext i32 %.07 to i64
  %165 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %164
  %166 = load double, double* %165, align 8
  %167 = zext i32 %.07 to i64
  %168 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %167
  %169 = load double, double* %168, align 8
  %170 = fcmp une double %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  call void @abort() #2
  br label %UnifiedUnreachableBlock

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172
  %174 = add nuw nsw i32 %.07, 1
  br label %161, !llvm.loop !14

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %6, align 16
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %190, %177
  %.05 = phi i32 [ 0, %177 ], [ %191, %190 ]
  %179 = icmp ult i32 %.05, 2
  br i1 %179, label %180, label %192

180:                                              ; preds = %178
  %181 = zext i32 %.05 to i64
  %182 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %181
  %183 = load double, double* %182, align 8
  %184 = zext i32 %.05 to i64
  %185 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %184
  %186 = load double, double* %185, align 8
  %187 = fcmp une double %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  call void @abort() #2
  br label %UnifiedUnreachableBlock

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189
  %191 = add nuw nsw i32 %.05, 1
  br label %178, !llvm.loop !15

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double>* %6, align 16
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %207, %194
  %.04 = phi i32 [ 0, %194 ], [ %208, %207 ]
  %196 = icmp ult i32 %.04, 2
  br i1 %196, label %197, label %209

197:                                              ; preds = %195
  %198 = zext i32 %.04 to i64
  %199 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %198
  %200 = load double, double* %199, align 8
  %201 = zext i32 %.04 to i64
  %202 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fcmp une double %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  call void @abort() #2
  br label %UnifiedUnreachableBlock

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206
  %208 = add nuw nsw i32 %.04, 1
  br label %195, !llvm.loop !16

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double>* %6, align 16
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %224, %211
  %.03 = phi i32 [ 0, %211 ], [ %225, %224 ]
  %213 = icmp ult i32 %.03, 2
  br i1 %213, label %214, label %226

214:                                              ; preds = %212
  %215 = zext i32 %.03 to i64
  %216 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %215
  %217 = load double, double* %216, align 8
  %218 = zext i32 %.03 to i64
  %219 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fcmp une double %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  call void @abort() #2
  br label %UnifiedUnreachableBlock

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223
  %225 = add nuw nsw i32 %.03, 1
  br label %212, !llvm.loop !17

226:                                              ; preds = %212
  br label %227

227:                                              ; preds = %226
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, <2 x double>* %6, align 16
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %241, %228
  %.02 = phi i32 [ 0, %228 ], [ %242, %241 ]
  %230 = icmp ult i32 %.02, 2
  br i1 %230, label %231, label %243

231:                                              ; preds = %229
  %232 = zext i32 %.02 to i64
  %233 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %232
  %234 = load double, double* %233, align 8
  %235 = zext i32 %.02 to i64
  %236 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %235
  %237 = load double, double* %236, align 8
  %238 = fcmp une double %234, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  call void @abort() #2
  br label %UnifiedUnreachableBlock

240:                                              ; preds = %231
  br label %241

241:                                              ; preds = %240
  %242 = add nuw nsw i32 %.02, 1
  br label %229, !llvm.loop !18

243:                                              ; preds = %229
  br label %244

244:                                              ; preds = %243
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double>* %6, align 16
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %258, %245
  %.01 = phi i32 [ 0, %245 ], [ %259, %258 ]
  %247 = icmp ult i32 %.01, 2
  br i1 %247, label %248, label %260

248:                                              ; preds = %246
  %249 = zext i32 %.01 to i64
  %250 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %249
  %251 = load double, double* %250, align 8
  %252 = zext i32 %.01 to i64
  %253 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %252
  %254 = load double, double* %253, align 8
  %255 = fcmp une double %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  call void @abort() #2
  br label %UnifiedUnreachableBlock

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257
  %259 = add nuw nsw i32 %.01, 1
  br label %246, !llvm.loop !19

260:                                              ; preds = %246
  br label %261

261:                                              ; preds = %260
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double>* %5, align 16
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double>* %6, align 16
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %275, %262
  %.0 = phi i32 [ 0, %262 ], [ %276, %275 ]
  %264 = icmp ult i32 %.0, 2
  br i1 %264, label %265, label %277

265:                                              ; preds = %263
  %266 = zext i32 %.0 to i64
  %267 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0, i64 %266
  %268 = load double, double* %267, align 8
  %269 = zext i32 %.0 to i64
  %270 = getelementptr inbounds <2 x double>, <2 x double>* %6, i64 0, i64 %269
  %271 = load double, double* %270, align 8
  %272 = fcmp une double %268, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  call void @abort() #2
  br label %UnifiedUnreachableBlock

274:                                              ; preds = %265
  br label %275

275:                                              ; preds = %274
  %276 = add nuw nsw i32 %.0, 1
  br label %263, !llvm.loop !20

277:                                              ; preds = %263
  br label %278

278:                                              ; preds = %277
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %273, %256, %239, %222, %205, %188, %171, %154, %137, %120, %103, %86, %69, %52, %35, %18
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
