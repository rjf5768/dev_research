; ModuleID = './pr50310.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr50310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local global [4 x double] zeroinitializer, align 16
@s2 = dso_local global [4 x double] zeroinitializer, align 16
@s3 = dso_local global [64 x double] zeroinitializer, align 16
@main.masks = internal global [8 x i32] [i32 2, i32 6, i32 1, i32 5, i32 3, i32 8, i32 2, i32 1], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 4
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %4
  %6 = load double, double* %5, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %7
  %9 = load double, double* %8, align 8
  %10 = fcmp ogt double %6, %9
  %11 = select i1 %10, double -1.000000e+00, double 0.000000e+00
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %12
  store double %11, double* %13, align 8
  br label %14

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %31, %16
  %.1 = phi i32 [ 0, %16 ], [ %32, %31 ]
  %18 = icmp ult i32 %.1, 4
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = zext i32 %.1 to i64
  %21 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fcmp ule double %22, %25
  %27 = select i1 %26, double -1.000000e+00, double 0.000000e+00
  %28 = add nuw nsw i32 %.1, 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %29
  store double %27, double* %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = add nuw nsw i32 %.1, 1
  br label %17, !llvm.loop !6

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %48, %33
  %.2 = phi i32 [ 0, %33 ], [ %49, %48 ]
  %35 = icmp ult i32 %.2, 4
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = zext i32 %.2 to i64
  %38 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %37
  %39 = load double, double* %38, align 8
  %40 = zext i32 %.2 to i64
  %41 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fcmp oge double %39, %42
  %44 = select i1 %43, double -1.000000e+00, double 0.000000e+00
  %45 = add nuw nsw i32 %.2, 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %46
  store double %44, double* %47, align 8
  br label %48

48:                                               ; preds = %36
  %49 = add nuw nsw i32 %.2, 1
  br label %34, !llvm.loop !7

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %65, %50
  %.3 = phi i32 [ 0, %50 ], [ %66, %65 ]
  %52 = icmp ult i32 %.3, 4
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = zext i32 %.3 to i64
  %55 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %54
  %56 = load double, double* %55, align 8
  %57 = zext i32 %.3 to i64
  %58 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fcmp ult double %56, %59
  %61 = select i1 %60, double -1.000000e+00, double 0.000000e+00
  %62 = add nuw nsw i32 %.3, 12
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %63
  store double %61, double* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = add nuw nsw i32 %.3, 1
  br label %51, !llvm.loop !8

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %82, %67
  %.4 = phi i32 [ 0, %67 ], [ %83, %82 ]
  %69 = icmp ult i32 %.4, 4
  br i1 %69, label %70, label %84

70:                                               ; preds = %68
  %71 = zext i32 %.4 to i64
  %72 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %71
  %73 = load double, double* %72, align 8
  %74 = zext i32 %.4 to i64
  %75 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fcmp olt double %73, %76
  %78 = select i1 %77, double -1.000000e+00, double 0.000000e+00
  %79 = add nuw nsw i32 %.4, 16
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %80
  store double %78, double* %81, align 8
  br label %82

82:                                               ; preds = %70
  %83 = add nuw nsw i32 %.4, 1
  br label %68, !llvm.loop !9

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %99, %84
  %.5 = phi i32 [ 0, %84 ], [ %100, %99 ]
  %86 = icmp ult i32 %.5, 4
  br i1 %86, label %87, label %101

87:                                               ; preds = %85
  %88 = zext i32 %.5 to i64
  %89 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %88
  %90 = load double, double* %89, align 8
  %91 = zext i32 %.5 to i64
  %92 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fcmp uge double %90, %93
  %95 = select i1 %94, double -1.000000e+00, double 0.000000e+00
  %96 = add nuw nsw i32 %.5, 20
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %97
  store double %95, double* %98, align 8
  br label %99

99:                                               ; preds = %87
  %100 = add nuw nsw i32 %.5, 1
  br label %85, !llvm.loop !10

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %116, %101
  %.6 = phi i32 [ 0, %101 ], [ %117, %116 ]
  %103 = icmp ult i32 %.6, 4
  br i1 %103, label %104, label %118

104:                                              ; preds = %102
  %105 = zext i32 %.6 to i64
  %106 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %105
  %107 = load double, double* %106, align 8
  %108 = zext i32 %.6 to i64
  %109 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fcmp ole double %107, %110
  %112 = select i1 %111, double -1.000000e+00, double 0.000000e+00
  %113 = add nuw nsw i32 %.6, 24
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %114
  store double %112, double* %115, align 8
  br label %116

116:                                              ; preds = %104
  %117 = add nuw nsw i32 %.6, 1
  br label %102, !llvm.loop !11

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %133, %118
  %.7 = phi i32 [ 0, %118 ], [ %134, %133 ]
  %120 = icmp ult i32 %.7, 4
  br i1 %120, label %121, label %135

121:                                              ; preds = %119
  %122 = zext i32 %.7 to i64
  %123 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %122
  %124 = load double, double* %123, align 8
  %125 = zext i32 %.7 to i64
  %126 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fcmp ugt double %124, %127
  %129 = select i1 %128, double -1.000000e+00, double 0.000000e+00
  %130 = add nuw nsw i32 %.7, 28
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %131
  store double %129, double* %132, align 8
  br label %133

133:                                              ; preds = %121
  %134 = add nuw nsw i32 %.7, 1
  br label %119, !llvm.loop !12

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %150, %135
  %.8 = phi i32 [ 0, %135 ], [ %151, %150 ]
  %137 = icmp ult i32 %.8, 4
  br i1 %137, label %138, label %152

138:                                              ; preds = %136
  %139 = zext i32 %.8 to i64
  %140 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %139
  %141 = load double, double* %140, align 8
  %142 = zext i32 %.8 to i64
  %143 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fcmp one double %141, %144
  %146 = select i1 %145, double -1.000000e+00, double 0.000000e+00
  %147 = add nuw nsw i32 %.8, 32
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %148
  store double %146, double* %149, align 8
  br label %150

150:                                              ; preds = %138
  %151 = add nuw nsw i32 %.8, 1
  br label %136, !llvm.loop !13

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %167, %152
  %.9 = phi i32 [ 0, %152 ], [ %168, %167 ]
  %154 = icmp ult i32 %.9, 4
  br i1 %154, label %155, label %169

155:                                              ; preds = %153
  %156 = zext i32 %.9 to i64
  %157 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %156
  %158 = load double, double* %157, align 8
  %159 = zext i32 %.9 to i64
  %160 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %159
  %161 = load double, double* %160, align 8
  %162 = fcmp ueq double %158, %161
  %163 = select i1 %162, double -1.000000e+00, double 0.000000e+00
  %164 = add nuw nsw i32 %.9, 36
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %165
  store double %163, double* %166, align 8
  br label %167

167:                                              ; preds = %155
  %168 = add nuw nsw i32 %.9, 1
  br label %153, !llvm.loop !14

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %184, %169
  %.10 = phi i32 [ 0, %169 ], [ %185, %184 ]
  %171 = icmp ult i32 %.10, 4
  br i1 %171, label %172, label %186

172:                                              ; preds = %170
  %173 = zext i32 %.10 to i64
  %174 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = zext i32 %.10 to i64
  %177 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = fcmp uno double %175, %178
  %180 = select i1 %179, double -1.000000e+00, double 0.000000e+00
  %181 = add nuw nsw i32 %.10, 40
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %182
  store double %180, double* %183, align 8
  br label %184

184:                                              ; preds = %172
  %185 = add nuw nsw i32 %.10, 1
  br label %170, !llvm.loop !15

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %201, %186
  %.11 = phi i32 [ 0, %186 ], [ %202, %201 ]
  %188 = icmp ult i32 %.11, 4
  br i1 %188, label %189, label %203

189:                                              ; preds = %187
  %190 = zext i32 %.11 to i64
  %191 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %190
  %192 = load double, double* %191, align 8
  %193 = zext i32 %.11 to i64
  %194 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fcmp ord double %192, %195
  %197 = select i1 %196, double -1.000000e+00, double 0.000000e+00
  %198 = add nuw nsw i32 %.11, 44
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %199
  store double %197, double* %200, align 8
  br label %201

201:                                              ; preds = %189
  %202 = add nuw nsw i32 %.11, 1
  br label %187, !llvm.loop !16

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %218, %203
  %.12 = phi i32 [ 0, %203 ], [ %219, %218 ]
  %205 = icmp ult i32 %.12, 4
  br i1 %205, label %206, label %220

206:                                              ; preds = %204
  %207 = zext i32 %.12 to i64
  %208 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %207
  %209 = load double, double* %208, align 8
  %210 = zext i32 %.12 to i64
  %211 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fcmp ogt double %209, %212
  %214 = select i1 %213, double -1.000000e+00, double 0.000000e+00
  %215 = add nuw nsw i32 %.12, 48
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %216
  store double %214, double* %217, align 8
  br label %218

218:                                              ; preds = %206
  %219 = add nuw nsw i32 %.12, 1
  br label %204, !llvm.loop !17

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %235, %220
  %.13 = phi i32 [ 0, %220 ], [ %236, %235 ]
  %222 = icmp ult i32 %.13, 4
  br i1 %222, label %223, label %237

223:                                              ; preds = %221
  %224 = zext i32 %.13 to i64
  %225 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %224
  %226 = load double, double* %225, align 8
  %227 = zext i32 %.13 to i64
  %228 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %227
  %229 = load double, double* %228, align 8
  %230 = fcmp ole double %226, %229
  %231 = select i1 %230, double -1.000000e+00, double 0.000000e+00
  %232 = add nuw nsw i32 %.13, 52
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %233
  store double %231, double* %234, align 8
  br label %235

235:                                              ; preds = %223
  %236 = add nuw nsw i32 %.13, 1
  br label %221, !llvm.loop !18

237:                                              ; preds = %221
  br label %238

238:                                              ; preds = %252, %237
  %.14 = phi i32 [ 0, %237 ], [ %253, %252 ]
  %239 = icmp ult i32 %.14, 4
  br i1 %239, label %240, label %254

240:                                              ; preds = %238
  %241 = zext i32 %.14 to i64
  %242 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %241
  %243 = load double, double* %242, align 8
  %244 = zext i32 %.14 to i64
  %245 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %244
  %246 = load double, double* %245, align 8
  %247 = fcmp olt double %243, %246
  %248 = select i1 %247, double -1.000000e+00, double 0.000000e+00
  %249 = add nuw nsw i32 %.14, 56
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %250
  store double %248, double* %251, align 8
  br label %252

252:                                              ; preds = %240
  %253 = add nuw nsw i32 %.14, 1
  br label %238, !llvm.loop !19

254:                                              ; preds = %238
  br label %255

255:                                              ; preds = %269, %254
  %.15 = phi i32 [ 0, %254 ], [ %270, %269 ]
  %256 = icmp ult i32 %.15, 4
  br i1 %256, label %257, label %271

257:                                              ; preds = %255
  %258 = zext i32 %.15 to i64
  %259 = getelementptr inbounds [4 x double], [4 x double]* @s1, i64 0, i64 %258
  %260 = load double, double* %259, align 8
  %261 = zext i32 %.15 to i64
  %262 = getelementptr inbounds [4 x double], [4 x double]* @s2, i64 0, i64 %261
  %263 = load double, double* %262, align 8
  %264 = fcmp oge double %260, %263
  %265 = select i1 %264, double -1.000000e+00, double 0.000000e+00
  %266 = add nuw nsw i32 %.15, 60
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %267
  store double %265, double* %268, align 8
  br label %269

269:                                              ; preds = %257
  %270 = add nuw nsw i32 %.15, 1
  br label %255, !llvm.loop !20

271:                                              ; preds = %255
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 0), align 16
  store double 6.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 1), align 8
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 2), align 16
  store double 0x7FF8000000000000, double* getelementptr inbounds ([4 x double], [4 x double]* @s1, i64 0, i64 3), align 8
  store double 6.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 0), align 16
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 1), align 8
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 2), align 16
  store double 5.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @s2, i64 0, i64 3), align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !21
  call void @foo()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !22
  br label %1

1:                                                ; preds = %41, %0
  %.0 = phi i32 [ 0, %0 ], [ %42, %41 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %43

3:                                                ; preds = %1
  %4 = icmp ugt i32 %.0, 47
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = and i32 %.0, 3
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = fcmp une double %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %8
  br label %40

15:                                               ; preds = %5, %3
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [64 x double], [64 x double]* @s3, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = and i32 %.0, 3
  %20 = shl i32 1, %19
  %21 = and i32 %.0, 4
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %28, label %22

22:                                               ; preds = %15
  %23 = lshr i32 %.0, 3
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @main.masks, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  br label %33

28:                                               ; preds = %15
  %29 = lshr i32 %.0, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* @main.masks, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32 [ %27, %22 ], [ %32, %28 ]
  %35 = and i32 %20, %34
  %.not1 = icmp eq i32 %35, 0
  %36 = select i1 %.not1, double 0.000000e+00, double -1.000000e+00
  %37 = fcmp une double %18, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #4
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %14
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !23

43:                                               ; preds = %1
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %38, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
!21 = !{i64 1767}
!22 = !{i64 1813}
!23 = distinct !{!23, !5}
