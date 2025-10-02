; ModuleID = './makesite.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makesite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.kbox = type { i32, i32, i32, i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@pinSpacing = external dso_local global i32, align 4
@kArray = external dso_local global %struct.kbox*, align 8
@val1 = dso_local global double 0.000000e+00, align 8
@val2 = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Vside(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %.not = icmp slt i32 %3, %2
  br i1 %.not, label %8, label %6

6:                                                ; preds = %5
  %7 = sub nsw i32 %3, %2
  br label %9

8:                                                ; preds = %5
  %.neg = sub i32 %2, %3
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ %.neg, %8 ]
  %11 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %12
  %14 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i64 0, i32 16
  %16 = load double, double* %15, align 8
  %17 = fadd double %16, 1.000000e-02
  %18 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %18, i64 %19
  %21 = load %struct.cellbox*, %struct.cellbox** %20, align 8
  %22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 15
  %23 = load double, double* %22, align 8
  %24 = fcmp ogt double %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  br label %35

26:                                               ; preds = %9
  %27 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %27, i64 %28
  %30 = load %struct.cellbox*, %struct.cellbox** %29, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i64 0, i32 13
  %32 = load double, double* %31, align 8
  %33 = fdiv double %16, %32
  %34 = call double @sqrt(double noundef %33) #2
  br label %35

35:                                               ; preds = %26, %25
  %.03 = phi double [ 1.000000e+00, %25 ], [ %34, %26 ]
  %36 = sitofp i32 %10 to double
  %37 = fmul double %.03, %36
  %38 = fptosi double %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, %.03
  %42 = sitofp i32 %10 to double
  %43 = fsub double %41, %42
  %44 = sitofp i32 %10 to double
  %45 = sitofp i32 %38 to double
  %46 = fdiv double %45, %.03
  %47 = fsub double %44, %46
  %48 = fcmp olt double %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = add nsw i32 %38, 1
  br label %51

51:                                               ; preds = %49, %35
  %.02 = phi i32 [ %50, %49 ], [ %38, %35 ]
  %52 = load i32, i32* @pinSpacing, align 4
  %53 = sdiv i32 %.02, %52
  %54 = add nsw i32 %53, -1
  %.not4 = icmp eq i32 %4, 0
  br i1 %.not4, label %132, label %55

55:                                               ; preds = %51
  %56 = icmp sgt i32 %53, 51
  br i1 %56, label %57, label %102

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %76, %57
  %.01 = phi i32 [ 1, %57 ], [ %77, %76 ]
  %59 = icmp ult i32 %.01, 51
  br i1 %59, label %60, label %78

60:                                               ; preds = %58
  %61 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %62 = zext i32 %.01 to i64
  %63 = getelementptr inbounds %struct.kbox, %struct.kbox* %61, i64 %62, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %65 = zext i32 %.01 to i64
  %66 = getelementptr inbounds %struct.kbox, %struct.kbox* %64, i64 %65, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %68 = zext i32 %.01 to i64
  %69 = getelementptr inbounds %struct.kbox, %struct.kbox* %67, i64 %68, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %71 = zext i32 %.01 to i64
  %72 = getelementptr inbounds %struct.kbox, %struct.kbox* %70, i64 %71, i32 3
  store i32 0, i32* %72, align 4
  %73 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %74 = zext i32 %.01 to i64
  %75 = getelementptr inbounds %struct.kbox, %struct.kbox* %73, i64 %74, i32 4
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %60
  %77 = add nuw nsw i32 %.01, 1
  br label %58, !llvm.loop !4

78:                                               ; preds = %58
  %79 = sdiv i32 %54, 50
  br label %80

80:                                               ; preds = %88, %78
  %.1 = phi i32 [ 1, %78 ], [ %89, %88 ]
  %81 = icmp ult i32 %.1, 51
  br i1 %81, label %82, label %90

82:                                               ; preds = %80
  %83 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %84 = zext i32 %.1 to i64
  %85 = getelementptr inbounds %struct.kbox, %struct.kbox* %83, i64 %84, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %79
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82
  %89 = add nuw nsw i32 %.1, 1
  br label %80, !llvm.loop !6

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %99, %90
  %.2 = phi i32 [ 1, %90 ], [ %100, %99 ]
  %92 = srem i32 %54, 50
  %.not13 = icmp sgt i32 %.2, %92
  br i1 %.not13, label %101, label %93

93:                                               ; preds = %91
  %94 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %95 = zext i32 %.2 to i64
  %96 = getelementptr inbounds %struct.kbox, %struct.kbox* %94, i64 %95, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93
  %100 = add nuw nsw i32 %.2, 1
  br label %91, !llvm.loop !7

101:                                              ; preds = %91
  br label %131

102:                                              ; preds = %55
  br label %103

103:                                              ; preds = %120, %102
  %.3 = phi i32 [ 1, %102 ], [ %121, %120 ]
  %.not11.not = icmp slt i32 %.3, %53
  br i1 %.not11.not, label %104, label %122

104:                                              ; preds = %103
  %105 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %106 = zext i32 %.3 to i64
  %107 = getelementptr inbounds %struct.kbox, %struct.kbox* %105, i64 %106, i32 0
  store i32 0, i32* %107, align 4
  %108 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %109 = zext i32 %.3 to i64
  %110 = getelementptr inbounds %struct.kbox, %struct.kbox* %108, i64 %109, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %112 = zext i32 %.3 to i64
  %113 = getelementptr inbounds %struct.kbox, %struct.kbox* %111, i64 %112, i32 2
  store i32 0, i32* %113, align 4
  %114 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %115 = zext i32 %.3 to i64
  %116 = getelementptr inbounds %struct.kbox, %struct.kbox* %114, i64 %115, i32 3
  store i32 0, i32* %116, align 4
  %117 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %118 = zext i32 %.3 to i64
  %119 = getelementptr inbounds %struct.kbox, %struct.kbox* %117, i64 %118, i32 4
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %104
  %121 = add nuw nsw i32 %.3, 1
  br label %103, !llvm.loop !8

122:                                              ; preds = %103
  br label %123

123:                                              ; preds = %128, %122
  %.4 = phi i32 [ 1, %122 ], [ %129, %128 ]
  %.not12.not = icmp slt i32 %.4, %53
  br i1 %.not12.not, label %124, label %130

124:                                              ; preds = %123
  %125 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %126 = zext i32 %.4 to i64
  %127 = getelementptr inbounds %struct.kbox, %struct.kbox* %125, i64 %126, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %124
  %129 = add nuw nsw i32 %.4, 1
  br label %123, !llvm.loop !9

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %101
  br label %132

132:                                              ; preds = %131, %51
  %133 = icmp slt i32 %53, 52
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  br label %136

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %134
  %.0 = phi i32 [ %54, %134 ], [ 50, %135 ]
  %137 = sitofp i32 %10 to double
  %138 = add nsw i32 %.0, 1
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %137, %139
  %.not5 = icmp eq i32 %4, 0
  br i1 %.not5, label %276, label %141

141:                                              ; preds = %136
  %142 = icmp sgt i32 %3, %2
  br i1 %142, label %143, label %209

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %206, %143
  %.5 = phi i32 [ 1, %143 ], [ %207, %206 ]
  %.not9 = icmp sgt i32 %.5, %.0
  br i1 %.not9, label %208, label %145

145:                                              ; preds = %144
  %146 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %147 = zext i32 %.5 to i64
  %148 = getelementptr inbounds %struct.kbox, %struct.kbox* %146, i64 %147, i32 3
  store i32 %1, i32* %148, align 4
  %149 = add nuw nsw i32 %.5, 1
  %150 = sitofp i32 %149 to double
  %151 = fmul double %140, %150
  store double %151, double* @val1, align 8
  %152 = sitofp i32 %.5 to double
  %153 = fmul double %140, %152
  store double %153, double* @val2, align 8
  %154 = fptosi double %153 to i32
  %155 = sitofp i32 %154 to double
  %156 = fsub double %153, %155
  %157 = fcmp ult double %156, 5.000000e-01
  br i1 %157, label %162, label %158

158:                                              ; preds = %145
  %159 = load double, double* @val2, align 8
  %160 = fptosi double %159 to i32
  %161 = add nsw i32 %160, 1
  br label %165

162:                                              ; preds = %145
  %163 = load double, double* @val2, align 8
  %164 = fptosi double %163 to i32
  br label %165

165:                                              ; preds = %162, %158
  %166 = phi i32 [ %161, %158 ], [ %164, %162 ]
  %167 = add nsw i32 %166, %2
  %168 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %169 = zext i32 %.5 to i64
  %170 = getelementptr inbounds %struct.kbox, %struct.kbox* %168, i64 %169, i32 4
  store i32 %167, i32* %170, align 4
  %171 = load double, double* @val1, align 8
  %172 = fptosi double %171 to i32
  %173 = sitofp i32 %172 to double
  %174 = fsub double %171, %173
  %175 = fcmp ult double %174, 5.000000e-01
  br i1 %175, label %180, label %176

176:                                              ; preds = %165
  %177 = load double, double* @val1, align 8
  %178 = fptosi double %177 to i32
  %179 = add nsw i32 %178, 1
  br label %183

180:                                              ; preds = %165
  %181 = load double, double* @val1, align 8
  %182 = fptosi double %181 to i32
  br label %183

183:                                              ; preds = %180, %176
  %184 = phi i32 [ %179, %176 ], [ %182, %180 ]
  %185 = load double, double* @val2, align 8
  %186 = fptosi double %185 to i32
  %187 = sitofp i32 %186 to double
  %188 = fsub double %185, %187
  %189 = fcmp ult double %188, 5.000000e-01
  br i1 %189, label %194, label %190

190:                                              ; preds = %183
  %191 = load double, double* @val2, align 8
  %192 = fptosi double %191 to i32
  %193 = add nsw i32 %192, 1
  br label %197

194:                                              ; preds = %183
  %195 = load double, double* @val2, align 8
  %196 = fptosi double %195 to i32
  br label %197

197:                                              ; preds = %194, %190
  %198 = phi i32 [ %193, %190 ], [ %196, %194 ]
  %199 = sub nsw i32 %184, %198
  %200 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %201 = zext i32 %.5 to i64
  %202 = getelementptr inbounds %struct.kbox, %struct.kbox* %200, i64 %201, i32 2
  store i32 %199, i32* %202, align 4
  %203 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %204 = zext i32 %.5 to i64
  %205 = getelementptr inbounds %struct.kbox, %struct.kbox* %203, i64 %204, i32 1
  store i32 1, i32* %205, align 4
  br label %206

206:                                              ; preds = %197
  %207 = add nuw nsw i32 %.5, 1
  br label %144, !llvm.loop !10

208:                                              ; preds = %144
  br label %275

209:                                              ; preds = %141
  br label %210

210:                                              ; preds = %272, %209
  %.6 = phi i32 [ 1, %209 ], [ %273, %272 ]
  %.not6 = icmp sgt i32 %.6, %.0
  br i1 %.not6, label %274, label %211

211:                                              ; preds = %210
  %212 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %213 = zext i32 %.6 to i64
  %214 = getelementptr inbounds %struct.kbox, %struct.kbox* %212, i64 %213, i32 3
  store i32 %1, i32* %214, align 4
  %215 = add nuw nsw i32 %.6, 1
  %216 = sitofp i32 %215 to double
  %217 = fmul double %140, %216
  store double %217, double* @val1, align 8
  %218 = sitofp i32 %.6 to double
  %219 = fmul double %140, %218
  store double %219, double* @val2, align 8
  %220 = fptosi double %219 to i32
  %221 = sitofp i32 %220 to double
  %222 = fsub double %219, %221
  %223 = fcmp ult double %222, 5.000000e-01
  br i1 %223, label %228, label %224

224:                                              ; preds = %211
  %225 = load double, double* @val2, align 8
  %226 = fptosi double %225 to i32
  %227 = add nsw i32 %226, 1
  br label %231

228:                                              ; preds = %211
  %229 = load double, double* @val2, align 8
  %230 = fptosi double %229 to i32
  br label %231

231:                                              ; preds = %228, %224
  %232 = phi i32 [ %227, %224 ], [ %230, %228 ]
  %233 = sub nsw i32 %2, %232
  %234 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %235 = zext i32 %.6 to i64
  %236 = getelementptr inbounds %struct.kbox, %struct.kbox* %234, i64 %235, i32 4
  store i32 %233, i32* %236, align 4
  %237 = load double, double* @val1, align 8
  %238 = fptosi double %237 to i32
  %239 = sitofp i32 %238 to double
  %240 = fsub double %237, %239
  %241 = fcmp ult double %240, 5.000000e-01
  br i1 %241, label %246, label %242

242:                                              ; preds = %231
  %243 = load double, double* @val1, align 8
  %244 = fptosi double %243 to i32
  %245 = add nsw i32 %244, 1
  br label %249

246:                                              ; preds = %231
  %247 = load double, double* @val1, align 8
  %248 = fptosi double %247 to i32
  br label %249

249:                                              ; preds = %246, %242
  %250 = phi i32 [ %245, %242 ], [ %248, %246 ]
  %251 = load double, double* @val2, align 8
  %252 = fptosi double %251 to i32
  %253 = sitofp i32 %252 to double
  %254 = fsub double %251, %253
  %255 = fcmp ult double %254, 5.000000e-01
  br i1 %255, label %260, label %256

256:                                              ; preds = %249
  %257 = load double, double* @val2, align 8
  %258 = fptosi double %257 to i32
  %259 = add nsw i32 %258, 1
  br label %263

260:                                              ; preds = %249
  %261 = load double, double* @val2, align 8
  %262 = fptosi double %261 to i32
  br label %263

263:                                              ; preds = %260, %256
  %264 = phi i32 [ %259, %256 ], [ %262, %260 ]
  %265 = sub nsw i32 %250, %264
  %266 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %267 = zext i32 %.6 to i64
  %268 = getelementptr inbounds %struct.kbox, %struct.kbox* %266, i64 %267, i32 2
  store i32 %265, i32* %268, align 4
  %269 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %270 = zext i32 %.6 to i64
  %271 = getelementptr inbounds %struct.kbox, %struct.kbox* %269, i64 %270, i32 1
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %263
  %273 = add nuw nsw i32 %.6, 1
  br label %210, !llvm.loop !11

274:                                              ; preds = %210
  br label %275

275:                                              ; preds = %274, %208
  br label %276

276:                                              ; preds = %275, %136
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hside(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %.not = icmp slt i32 %2, %1
  br i1 %.not, label %8, label %6

6:                                                ; preds = %5
  %7 = sub nsw i32 %2, %1
  br label %9

8:                                                ; preds = %5
  %.neg = sub i32 %1, %2
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ %.neg, %8 ]
  %11 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %12
  %14 = load %struct.cellbox*, %struct.cellbox** %13, align 8
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %14, i64 0, i32 15
  %16 = load double, double* %15, align 8
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %11, i64 %17
  %19 = load %struct.cellbox*, %struct.cellbox** %18, align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 16
  %21 = load double, double* %20, align 8
  %22 = fadd double %21, 1.000000e-02
  %23 = fcmp ogt double %22, %16
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  br label %34

25:                                               ; preds = %9
  %26 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %27 = sext i32 %0 to i64
  %28 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %26, i64 %27
  %29 = load %struct.cellbox*, %struct.cellbox** %28, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i64 0, i32 13
  %31 = load double, double* %30, align 8
  %32 = fdiv double %31, %16
  %33 = call double @sqrt(double noundef %32) #2
  br label %34

34:                                               ; preds = %25, %24
  %.03 = phi double [ 1.000000e+00, %24 ], [ %33, %25 ]
  %35 = sitofp i32 %10 to double
  %36 = fmul double %.03, %35
  %37 = fptosi double %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, %.03
  %41 = sitofp i32 %10 to double
  %42 = fsub double %40, %41
  %43 = sitofp i32 %10 to double
  %44 = sitofp i32 %37 to double
  %45 = fdiv double %44, %.03
  %46 = fsub double %43, %45
  %47 = fcmp olt double %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = add nsw i32 %37, 1
  br label %50

50:                                               ; preds = %48, %34
  %.02 = phi i32 [ %49, %48 ], [ %37, %34 ]
  %51 = load i32, i32* @pinSpacing, align 4
  %52 = sdiv i32 %.02, %51
  %53 = add nsw i32 %52, -1
  %.not4 = icmp eq i32 %4, 0
  br i1 %.not4, label %131, label %54

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 51
  br i1 %55, label %56, label %101

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %75, %56
  %.01 = phi i32 [ 1, %56 ], [ %76, %75 ]
  %58 = icmp ult i32 %.01, 51
  br i1 %58, label %59, label %77

59:                                               ; preds = %57
  %60 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %61 = zext i32 %.01 to i64
  %62 = getelementptr inbounds %struct.kbox, %struct.kbox* %60, i64 %61, i32 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %64 = zext i32 %.01 to i64
  %65 = getelementptr inbounds %struct.kbox, %struct.kbox* %63, i64 %64, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %67 = zext i32 %.01 to i64
  %68 = getelementptr inbounds %struct.kbox, %struct.kbox* %66, i64 %67, i32 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %70 = zext i32 %.01 to i64
  %71 = getelementptr inbounds %struct.kbox, %struct.kbox* %69, i64 %70, i32 3
  store i32 0, i32* %71, align 4
  %72 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %73 = zext i32 %.01 to i64
  %74 = getelementptr inbounds %struct.kbox, %struct.kbox* %72, i64 %73, i32 4
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = add nuw nsw i32 %.01, 1
  br label %57, !llvm.loop !12

77:                                               ; preds = %57
  %78 = sdiv i32 %53, 50
  br label %79

79:                                               ; preds = %87, %77
  %.1 = phi i32 [ 1, %77 ], [ %88, %87 ]
  %80 = icmp ult i32 %.1, 51
  br i1 %80, label %81, label %89

81:                                               ; preds = %79
  %82 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %83 = zext i32 %.1 to i64
  %84 = getelementptr inbounds %struct.kbox, %struct.kbox* %82, i64 %83, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %78
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81
  %88 = add nuw nsw i32 %.1, 1
  br label %79, !llvm.loop !13

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %98, %89
  %.2 = phi i32 [ 1, %89 ], [ %99, %98 ]
  %91 = srem i32 %53, 50
  %.not13 = icmp sgt i32 %.2, %91
  br i1 %.not13, label %100, label %92

92:                                               ; preds = %90
  %93 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %94 = zext i32 %.2 to i64
  %95 = getelementptr inbounds %struct.kbox, %struct.kbox* %93, i64 %94, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92
  %99 = add nuw nsw i32 %.2, 1
  br label %90, !llvm.loop !14

100:                                              ; preds = %90
  br label %130

101:                                              ; preds = %54
  br label %102

102:                                              ; preds = %119, %101
  %.3 = phi i32 [ 1, %101 ], [ %120, %119 ]
  %.not11.not = icmp slt i32 %.3, %52
  br i1 %.not11.not, label %103, label %121

103:                                              ; preds = %102
  %104 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %105 = zext i32 %.3 to i64
  %106 = getelementptr inbounds %struct.kbox, %struct.kbox* %104, i64 %105, i32 0
  store i32 0, i32* %106, align 4
  %107 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %108 = zext i32 %.3 to i64
  %109 = getelementptr inbounds %struct.kbox, %struct.kbox* %107, i64 %108, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %111 = zext i32 %.3 to i64
  %112 = getelementptr inbounds %struct.kbox, %struct.kbox* %110, i64 %111, i32 2
  store i32 0, i32* %112, align 4
  %113 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %114 = zext i32 %.3 to i64
  %115 = getelementptr inbounds %struct.kbox, %struct.kbox* %113, i64 %114, i32 3
  store i32 0, i32* %115, align 4
  %116 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %117 = zext i32 %.3 to i64
  %118 = getelementptr inbounds %struct.kbox, %struct.kbox* %116, i64 %117, i32 4
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %103
  %120 = add nuw nsw i32 %.3, 1
  br label %102, !llvm.loop !15

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %127, %121
  %.4 = phi i32 [ 1, %121 ], [ %128, %127 ]
  %.not12.not = icmp slt i32 %.4, %52
  br i1 %.not12.not, label %123, label %129

123:                                              ; preds = %122
  %124 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %125 = zext i32 %.4 to i64
  %126 = getelementptr inbounds %struct.kbox, %struct.kbox* %124, i64 %125, i32 0
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %123
  %128 = add nuw nsw i32 %.4, 1
  br label %122, !llvm.loop !16

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %100
  br label %131

131:                                              ; preds = %130, %50
  %132 = icmp slt i32 %52, 52
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  br label %135

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %133
  %.0 = phi i32 [ %53, %133 ], [ 50, %134 ]
  %136 = sitofp i32 %10 to double
  %137 = add nsw i32 %.0, 1
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %136, %138
  %.not5 = icmp eq i32 %4, 0
  br i1 %.not5, label %275, label %140

140:                                              ; preds = %135
  %141 = icmp sgt i32 %2, %1
  br i1 %141, label %142, label %208

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %205, %142
  %.5 = phi i32 [ 1, %142 ], [ %206, %205 ]
  %.not9 = icmp sgt i32 %.5, %.0
  br i1 %.not9, label %207, label %144

144:                                              ; preds = %143
  %145 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %146 = zext i32 %.5 to i64
  %147 = getelementptr inbounds %struct.kbox, %struct.kbox* %145, i64 %146, i32 4
  store i32 %3, i32* %147, align 4
  %148 = add nuw nsw i32 %.5, 1
  %149 = sitofp i32 %148 to double
  %150 = fmul double %139, %149
  store double %150, double* @val1, align 8
  %151 = sitofp i32 %.5 to double
  %152 = fmul double %139, %151
  store double %152, double* @val2, align 8
  %153 = fptosi double %152 to i32
  %154 = sitofp i32 %153 to double
  %155 = fsub double %152, %154
  %156 = fcmp ult double %155, 5.000000e-01
  br i1 %156, label %161, label %157

157:                                              ; preds = %144
  %158 = load double, double* @val2, align 8
  %159 = fptosi double %158 to i32
  %160 = add nsw i32 %159, 1
  br label %164

161:                                              ; preds = %144
  %162 = load double, double* @val2, align 8
  %163 = fptosi double %162 to i32
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi i32 [ %160, %157 ], [ %163, %161 ]
  %166 = add nsw i32 %165, %1
  %167 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %168 = zext i32 %.5 to i64
  %169 = getelementptr inbounds %struct.kbox, %struct.kbox* %167, i64 %168, i32 3
  store i32 %166, i32* %169, align 4
  %170 = load double, double* @val1, align 8
  %171 = fptosi double %170 to i32
  %172 = sitofp i32 %171 to double
  %173 = fsub double %170, %172
  %174 = fcmp ult double %173, 5.000000e-01
  br i1 %174, label %179, label %175

175:                                              ; preds = %164
  %176 = load double, double* @val1, align 8
  %177 = fptosi double %176 to i32
  %178 = add nsw i32 %177, 1
  br label %182

179:                                              ; preds = %164
  %180 = load double, double* @val1, align 8
  %181 = fptosi double %180 to i32
  br label %182

182:                                              ; preds = %179, %175
  %183 = phi i32 [ %178, %175 ], [ %181, %179 ]
  %184 = load double, double* @val2, align 8
  %185 = fptosi double %184 to i32
  %186 = sitofp i32 %185 to double
  %187 = fsub double %184, %186
  %188 = fcmp ult double %187, 5.000000e-01
  br i1 %188, label %193, label %189

189:                                              ; preds = %182
  %190 = load double, double* @val2, align 8
  %191 = fptosi double %190 to i32
  %192 = add nsw i32 %191, 1
  br label %196

193:                                              ; preds = %182
  %194 = load double, double* @val2, align 8
  %195 = fptosi double %194 to i32
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi i32 [ %192, %189 ], [ %195, %193 ]
  %198 = sub nsw i32 %183, %197
  %199 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %200 = zext i32 %.5 to i64
  %201 = getelementptr inbounds %struct.kbox, %struct.kbox* %199, i64 %200, i32 2
  store i32 %198, i32* %201, align 4
  %202 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %203 = zext i32 %.5 to i64
  %204 = getelementptr inbounds %struct.kbox, %struct.kbox* %202, i64 %203, i32 1
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %196
  %206 = add nuw nsw i32 %.5, 1
  br label %143, !llvm.loop !17

207:                                              ; preds = %143
  br label %274

208:                                              ; preds = %140
  br label %209

209:                                              ; preds = %271, %208
  %.6 = phi i32 [ 1, %208 ], [ %272, %271 ]
  %.not6 = icmp sgt i32 %.6, %.0
  br i1 %.not6, label %273, label %210

210:                                              ; preds = %209
  %211 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %212 = zext i32 %.6 to i64
  %213 = getelementptr inbounds %struct.kbox, %struct.kbox* %211, i64 %212, i32 4
  store i32 %3, i32* %213, align 4
  %214 = add nuw nsw i32 %.6, 1
  %215 = sitofp i32 %214 to double
  %216 = fmul double %139, %215
  store double %216, double* @val1, align 8
  %217 = sitofp i32 %.6 to double
  %218 = fmul double %139, %217
  store double %218, double* @val2, align 8
  %219 = fptosi double %218 to i32
  %220 = sitofp i32 %219 to double
  %221 = fsub double %218, %220
  %222 = fcmp ult double %221, 5.000000e-01
  br i1 %222, label %227, label %223

223:                                              ; preds = %210
  %224 = load double, double* @val2, align 8
  %225 = fptosi double %224 to i32
  %226 = add nsw i32 %225, 1
  br label %230

227:                                              ; preds = %210
  %228 = load double, double* @val2, align 8
  %229 = fptosi double %228 to i32
  br label %230

230:                                              ; preds = %227, %223
  %231 = phi i32 [ %226, %223 ], [ %229, %227 ]
  %232 = sub nsw i32 %1, %231
  %233 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %234 = zext i32 %.6 to i64
  %235 = getelementptr inbounds %struct.kbox, %struct.kbox* %233, i64 %234, i32 3
  store i32 %232, i32* %235, align 4
  %236 = load double, double* @val1, align 8
  %237 = fptosi double %236 to i32
  %238 = sitofp i32 %237 to double
  %239 = fsub double %236, %238
  %240 = fcmp ult double %239, 5.000000e-01
  br i1 %240, label %245, label %241

241:                                              ; preds = %230
  %242 = load double, double* @val1, align 8
  %243 = fptosi double %242 to i32
  %244 = add nsw i32 %243, 1
  br label %248

245:                                              ; preds = %230
  %246 = load double, double* @val1, align 8
  %247 = fptosi double %246 to i32
  br label %248

248:                                              ; preds = %245, %241
  %249 = phi i32 [ %244, %241 ], [ %247, %245 ]
  %250 = load double, double* @val2, align 8
  %251 = fptosi double %250 to i32
  %252 = sitofp i32 %251 to double
  %253 = fsub double %250, %252
  %254 = fcmp ult double %253, 5.000000e-01
  br i1 %254, label %259, label %255

255:                                              ; preds = %248
  %256 = load double, double* @val2, align 8
  %257 = fptosi double %256 to i32
  %258 = add nsw i32 %257, 1
  br label %262

259:                                              ; preds = %248
  %260 = load double, double* @val2, align 8
  %261 = fptosi double %260 to i32
  br label %262

262:                                              ; preds = %259, %255
  %263 = phi i32 [ %258, %255 ], [ %261, %259 ]
  %264 = sub nsw i32 %249, %263
  %265 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %266 = zext i32 %.6 to i64
  %267 = getelementptr inbounds %struct.kbox, %struct.kbox* %265, i64 %266, i32 2
  store i32 %264, i32* %267, align 4
  %268 = load %struct.kbox*, %struct.kbox** @kArray, align 8
  %269 = zext i32 %.6 to i64
  %270 = getelementptr inbounds %struct.kbox, %struct.kbox* %268, i64 %269, i32 1
  store i32 0, i32* %270, align 4
  br label %271

271:                                              ; preds = %262
  %272 = add nuw nsw i32 %.6, 1
  br label %209, !llvm.loop !18

273:                                              ; preds = %209
  br label %274

274:                                              ; preds = %273, %207
  br label %275

275:                                              ; preds = %274, %135
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
