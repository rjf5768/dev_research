; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones/c4.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones/c4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history = dso_local global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = dso_local global i64 0, align 8
@plycnt = external dso_local global i32, align 4
@height = external dso_local global [0 x i32], align 4
@colthr = external dso_local global [0 x i32], align 4
@columns = external dso_local global [0 x i32], align 4
@posed = external dso_local global i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@msecs = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c4_init() #0 {
  %1 = call i32 (...) @trans_init()
  ret void
}

declare dso_local i32 @trans_init(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ab(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [8 x i32], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i64, i64* @nodes, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @nodes, align 8
  %24 = load i32, i32* @plycnt, align 4
  %25 = icmp eq i32 %24, 41
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %360

27:                                               ; preds = %2
  %28 = load i32, i32* @plycnt, align 4
  %29 = and i32 %28, 1
  store i32 %29, i32* %21, align 4
  %30 = xor i32 %29, 1
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %117, %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %118

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = icmp sle i32 %39, 6
  br i1 %40, label %41, label %117

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %42, i32 noundef %43, i32 noundef 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp sle i32 %57, 6
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %21, align 4
  %64 = shl i32 1, %63
  %65 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %60, i32 noundef %62, i32 noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %360

68:                                               ; preds = %59, %55
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  store i32 %69, i32* %70, align 16
  br label %71

71:                                               ; preds = %96, %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = icmp sle i32 %73, 7
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = icmp sle i32 %79, 6
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %82, i32 noundef %83, i32 noundef 3)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86, %81
  store i32 -2, i32* %3, align 4
  br label %360

96:                                               ; preds = %86, %75
  br label %71, !llvm.loop !4

97:                                               ; preds = %71
  store i32 1, i32* %17, align 4
  br label %118

98:                                               ; preds = %46
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp sle i32 %100, 6
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %21, align 4
  %107 = shl i32 1, %106
  %108 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %103, i32 noundef %105, i32 noundef %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %102, %98
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %102
  br label %117

117:                                              ; preds = %116, %35
  br label %31, !llvm.loop !6

118:                                              ; preds = %97, %31
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 -2, i32* %3, align 4
  br label %360

122:                                              ; preds = %118
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %127)
  %129 = load i32, i32* %5, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* %4, align 4
  %132 = sub nsw i32 0, %131
  %133 = call i32 @ab(i32 noundef %130, i32 noundef %132)
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  %135 = call i32 (...) @backmove()
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %3, align 4
  br label %360

137:                                              ; preds = %122
  %138 = call i32 (...) @transpose()
  store i32 %138, i32* %14, align 4
  %139 = icmp ne i32 %138, -128
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = ashr i32 %141, 5
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp sle i32 0, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %3, align 4
  br label %360

150:                                              ; preds = %145
  br label %163

151:                                              ; preds = %140
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp sge i32 0, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %3, align 4
  br label %360

159:                                              ; preds = %154
  br label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %3, align 4
  br label %360

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %137
  %165 = load i64, i64* @posed, align 8
  store i64 %165, i64* %19, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 -999999, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %258, %164
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %261

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %8, align 4
  store i32 -999999, i32* %12, align 4
  br label %172

172:                                              ; preds = %201, %170
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %182
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 3
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [56 x i32], [56 x i32]* %183, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %176
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %197, %176
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %172, !llvm.loop !7

204:                                              ; preds = %172
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %218
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %222
  store i32 %220, i32* %223, align 4
  br label %224

224:                                              ; preds = %212, %204
  %225 = load i32, i32* %8, align 4
  %226 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %225)
  %227 = load i32, i32* %5, align 4
  %228 = sub nsw i32 0, %227
  %229 = load i32, i32* %4, align 4
  %230 = sub nsw i32 0, %229
  %231 = call i32 @ab(i32 noundef %228, i32 noundef %230)
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %12, align 4
  %233 = call i32 (...) @backmove()
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %257

237:                                              ; preds = %224
  %238 = load i32, i32* %7, align 4
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %237
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp sge i32 %243, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %17, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 1, i32* %13, align 4
  br label %255

255:                                              ; preds = %254, %249, %246
  br label %261

256:                                              ; preds = %242, %237
  br label %257

257:                                              ; preds = %256, %224
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %166, !llvm.loop !8

261:                                              ; preds = %255, %166
  %262 = load i32, i32* %6, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %315

264:                                              ; preds = %261
  store i32 0, i32* %7, align 4
  br label %265

265:                                              ; preds = %290, %264
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %293

269:                                              ; preds = %265
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %271
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 3
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %280, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [56 x i32], [56 x i32]* %272, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %269
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %7, align 4
  br label %265, !llvm.loop !9

293:                                              ; preds = %265
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %20, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %296
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 3
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %305, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [56 x i32], [56 x i32]* %297, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %294
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %293, %261
  %316 = load i64, i64* @posed, align 8
  %317 = load i64, i64* %19, align 8
  %318 = sub nsw i64 %316, %317
  store i64 %318, i64* %19, align 8
  store i32 1, i32* %16, align 4
  br label %319

319:                                              ; preds = %324, %315
  %320 = load i64, i64* %19, align 8
  %321 = ashr i64 %320, 1
  store i64 %321, i64* %19, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %16, align 4
  br label %319, !llvm.loop !10

327:                                              ; preds = %319
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, -128
  br i1 %329, label %330, label %341

330:                                              ; preds = %327
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = ashr i32 %332, 5
  %334 = sub nsw i32 0, %333
  %335 = icmp eq i32 %331, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %336, %330
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %16, align 4
  %340 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transrestore to i32 (i32, i32, ...)*)(i32 noundef %338, i32 noundef %339)
  br label %345

341:                                              ; preds = %327
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* %16, align 4
  %344 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transtore to i32 (i32, i32, ...)*)(i32 noundef %342, i32 noundef %343)
  br label %345

345:                                              ; preds = %341, %337
  %346 = load i32, i32* @plycnt, align 4
  %347 = icmp eq i32 %346, 8
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = call i32 (...) @printMoves()
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 4, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = load i32, i32* %16, align 4
  %357 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %355, i32 noundef %356)
  br label %358

358:                                              ; preds = %348, %345
  %359 = load i32, i32* %13, align 4
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %358, %160, %157, %148, %125, %121, %95, %67, %26
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local i32 @wins(...) #1

declare dso_local i32 @makemove(...) #1

declare dso_local i32 @backmove(...) #1

declare dso_local i32 @transpose(...) #1

declare dso_local i32 @transrestore(...) #1

declare dso_local i32 @transtore(...) #1

declare dso_local i32 @printMoves(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @solve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, 1
  %10 = and i32 %9, 1
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %49, %0
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  %14 = icmp sle i32 %13, 7
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 6
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %22, i32 noundef %26, i32 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 1, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31, %21
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 -2
  %47 = shl i32 %46, 5
  store i32 %47, i32* %1, align 4
  br label %81

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %15
  br label %11, !llvm.loop !11

50:                                               ; preds = %11
  %51 = call i32 (...) @transpose()
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, -128
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %1, align 4
  br label %81

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %50
  %61 = call i64 (...) @millisecs()
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* @msecs, align 8
  %63 = call i32 @ab(i32 noundef -2, i32 noundef 2)
  store i32 %63, i32* %6, align 4
  %64 = load i64, i64* @posed, align 8
  store i64 %64, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %70, %60
  %66 = load i64, i64* %7, align 8
  %67 = ashr i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %65, !llvm.loop !12

73:                                               ; preds = %65
  %74 = call i64 (...) @millisecs()
  %75 = load i64, i64* @msecs, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* @msecs, align 8
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 5
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %73, %57, %42
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i64 @millisecs(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @c4_init()
  %5 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1050011, i32 noundef 8)
  br label %7

7:                                                ; preds = %56, %0
  %8 = call i32 (...) @reset()
  br label %9

9:                                                ; preds = %51, %7
  %10 = call i32 @getchar()
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 49
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %16, 55
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 48
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %20)
  br label %51

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp sle i32 %26, 71
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 65
  %31 = add nsw i32 %30, 1
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %31)
  br label %50

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %2, align 4
  %35 = icmp sge i32 %34, 97
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = icmp sle i32 %37, 103
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %40, 97
  %42 = add nsw i32 %41, 1
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %42)
  br label %49

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %52

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %18
  br label %9, !llvm.loop !13

52:                                               ; preds = %47, %9
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %84

56:                                               ; preds = %52
  %57 = load i32, i32* @plycnt, align 4
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 noundef %57)
  %59 = call i32 (...) @printMoves()
  %60 = call i32 @puts(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 (...) @emptyTT()
  %62 = call i32 @solve()
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 5
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 5
  %67 = add nsw i32 4, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 31
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef %64, i32 noundef %71, i32 noundef %73)
  %75 = load i64, i64* @nodes, align 8
  %76 = load i64, i64* @msecs, align 8
  %77 = load i64, i64* @nodes, align 8
  %78 = sitofp i64 %77 to double
  %79 = load i64, i64* @msecs, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 noundef %75, i64 noundef %76, double noundef %81)
  %83 = call i32 (...) @htstat()
  br label %7

84:                                               ; preds = %55
  ret i32 0
}

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @reset(...) #1

declare dso_local i32 @getchar() #1

declare dso_local i32 @emptyTT(...) #1

declare dso_local i32 @htstat(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
